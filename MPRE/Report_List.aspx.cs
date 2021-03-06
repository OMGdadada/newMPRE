﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;

public partial class Report_List : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            if (Session["DoctorGUID"] == null)
            {
                Util.ShowMessage("用户登录超时，请重新登录！", "Login.aspx");
                Response.End();
            }
            else
            {
                SearchTB.Focus();
                MyInit();
                MyDataBind();
            }

        }

    }


    private void MyInit()
    {
        using (SqlConnection conn = new DB().GetConnection())
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select * from Doctor order by ID desc;";
            conn.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            DoctorDDL.DataSource = rd;
            DoctorDDL.DataValueField = "GUID";
            DoctorDDL.DataTextField = "DoctorName";
            DoctorDDL.DataBind();
            rd.Close();
            DoctorDDL.Items.Insert(0, new ListItem("按医生分类", "-1"));

            cmd.CommandText = "select * from Doctor where GUID=@GUID";
            cmd.Parameters.AddWithValue("@GUID", Session["DoctorGUID"].ToString());
            rd = cmd.ExecuteReader();
            string IsAdmin = "";
            if (rd.Read())
            {
                IsAdmin = Util.AESDecrypt(rd["IsAdmin"].ToString());
            }
            rd.Close();
            if (IsAdmin == "True")
            {
                DelBtn.Visible = true;
            }
            else
            {
                DelBtn.Visible = false;
            }

            conn.Close();
        }
    }



    protected void AspNetPager1_PageChanged(object sender, EventArgs e)
    {
        MyDataBind();
    }

    private void MyDataBind()
    {
        AspNetPager1.PageSize = Convert.ToInt16(PageSizeDDL.SelectedValue);
        string param = SearchTB.Text;
        StringBuilder whereStr = new StringBuilder("where IsDel= 0 ");
        if (!String.IsNullOrEmpty(param))
        {
            whereStr.Append("  and [PatientName] like '%").Append(Server.HtmlEncode(param.Trim().Replace("'", ""))).Append("%' ");
        }
        if (DoctorDDL.SelectedIndex > 0)
        {
            whereStr.Append(" and DoctorGUID = '").Append(DoctorDDL.SelectedValue).Append("' ");
        }
        if (TestDDL.SelectedIndex > 0)
        {
            whereStr.Append(TestDDL.SelectedValue);
        }

        string sql = "select count(GUID) as total from TSView " + whereStr.ToString();

        using (SqlConnection conn = (SqlConnection)new DB().GetConnection())
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = sql;
            conn.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                AspNetPager1.RecordCount = Convert.ToInt16(rd[0]);
            }
            else
            {
                AspNetPager1.RecordCount = 0;
            }
            rd.Close();

            Label1.Text = AspNetPager1.RecordCount + "";//总记录数
            Label2.Text = (AspNetPager1.RecordCount / AspNetPager1.PageSize) + 1 + "";//总页数            

            if (AspNetPager1.CurrentPageIndex == 1)
            {
                sql = "Select top " + AspNetPager1.PageSize + " * from TSView " + whereStr.ToString() + " " + TestDDL.SelectedValue + " " + OrderDDL.SelectedValue;
            }
            else
            {
                // Select Top 页容量 * from 表 where 条件 and id not in	(Select Top 页容量*（当前页数-1） id 	from 表 where 条件 order by 排序条件) order by 排序条件
                sql = "Select top " + AspNetPager1.PageSize + " * from TSView " + whereStr.ToString() + " and GUID not in ( select top " + AspNetPager1.PageSize * (AspNetPager1.CurrentPageIndex - 1) + " GUID  from TSView " + whereStr.ToString() + " " + TestDDL.SelectedValue + " " + OrderDDL.SelectedValue + " ) " + " " + TestDDL.SelectedValue + " " + OrderDDL.SelectedValue;
                //sql = "SELECT * FROM (SELECT ROW_NUMBER() OVER ( " + orderStr + ") AS MyRank,* FROM Article " + whereStr +" ) AS Rank " + whereStr + " and MyRank BETWEEN " +AspNetPager1.StartRecordIndex+" AND "+ (AspNetPager1.StartRecordIndex+AspNetPager1.PageSize-1) +orderStr;
            }
            //TestLabel.Text = sql;
            cmd.CommandText = sql;
            rd = cmd.ExecuteReader();
            GridView1.DataSource = rd;
            GridView1.DataBind();
            rd.Close();
        }
    }



    protected void PageSizeDDL_SelectedIndexChanged(object sender, EventArgs e)
    {
        MyDataBind();
    }

    protected void UpdateBtn_Click(object sender, EventArgs e)
    {
        string ids = "";
        for (int i = 0; i <= GridView1.Rows.Count - 1; i++)
        {
            CheckBox checkBox = (CheckBox)GridView1.Rows[i].FindControl("ChechBox1");
            if (checkBox.Checked == true)
            {
                ids = GridView1.DataKeys[i].Value.ToString();
            }
        }
        if (!String.IsNullOrEmpty(ids))
        {
            //Response.Redirect(Server.HtmlEncode("Patient_Info.aspx?ID=" + ids));
        }
    }

    protected void OrderDDL_SelectedIndexChanged(object sender, EventArgs e)
    {
        MyDataBind();
    }

    protected void SearchBtn_Click(object sender, EventArgs e)
    {
        MyDataBind();
    }

    protected void AddBtn_Click(object sender, EventArgs e)
    {
        //Response.Redirect(Server.HtmlEncode("Patient_Info.aspx"));
    }

    protected void DelBtn_Click(object sender, EventArgs e)
    {
        string ids = "";
        for (int i = 0; i <= GridView1.Rows.Count - 1; i++)
        {
            CheckBox checkBox = (CheckBox)GridView1.Rows[i].FindControl("ChechBox1");
            if (checkBox.Checked == true)
            {
                ids += "," + GridView1.DataKeys[i].Value;
            }
        }
        if (!String.IsNullOrEmpty(ids))
        {
            ids = ids.Substring(1);
            Response.Redirect(Server.HtmlEncode("Report_Del.aspx?IDS=" + ids));
        }
    }

    protected void DoctorDDL_SelectedIndexChanged(object sender, EventArgs e)
    {
        MyDataBind();
    }
    protected void TestDDL_SelectedIndexChanged(object sender, EventArgs e)
    {
        MyDataBind();
    }
}