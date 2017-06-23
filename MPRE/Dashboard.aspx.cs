using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;

public partial class Dashboard : System.Web.UI.Page
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
                MyDataBind1();
                MyDataBind2();
            }
            

        }
    }

    private void MyInit()
    {
        HospitalGUID.Text = Session["HospitalGUID"].ToString();
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

            cmd.CommandText = "select count(*) as maxrow from [Patient] ";
            rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                PatientNum.Text = rd["maxrow"].ToString();
            }
            rd.Close();


            cmd.CommandText = "select count(*) as maxrow from [TSView] where IsDel=0"; 
            rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                TestNum.Text = rd["maxrow"].ToString();
            }
            rd.Close();

            cmd.CommandText = "select count(*) as maxrow from [Report] where IsDel=0"; 
            rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                ReportNum.Text = rd["maxrow"].ToString();
            }
            rd.Close();

            cmd.CommandText = "select * from [Hospital] where [GUID] = @HospitalGUID";
            cmd.Parameters.AddWithValue("@HospitalGUID", HospitalGUID.Text);
            rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                Image1.ImageUrl = rd["Avatar"].ToString();
                HospitalName.Text = rd["HospitalName"].ToString();
                Introduction.Text = rd["Introduction"].ToString();
            }
            rd.Close();

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
        StringBuilder whereStr = new StringBuilder(" ");
        if (!String.IsNullOrEmpty(param))
        {
            whereStr.Append(" where " + SearchDDL.SelectedValue + " like '%").Append(Server.HtmlEncode(param.Trim().Replace("'", ""))).Append("%' ");
        }
        string sql = "select count(ID) as total from Patient " + whereStr.ToString();

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
                sql = "Select top " + AspNetPager1.PageSize + " * from Patient " + whereStr.ToString() + " " + OrderDDL.SelectedValue;
            }
            else
            {
                // Select Top 页容量 * from 表 where 条件 and id not in	(Select Top 页容量*（当前页数-1） id 	from 表 where 条件 order by 排序条件) order by 排序条件
                string where = whereStr.ToString();
                if (where == " ")
                {
                    sql = "Select top " + AspNetPager1.PageSize + " * from Patient where id not in ( select top " + AspNetPager1.PageSize * (AspNetPager1.CurrentPageIndex - 1) + " id  from Patient " + whereStr.ToString() + " " + OrderDDL.SelectedValue + " ) " + OrderDDL.SelectedValue;
                }
                else
                {
                    sql = "Select top " + AspNetPager1.PageSize + " * from Patient " + whereStr.ToString() + " and id not in ( select top " + AspNetPager1.PageSize * (AspNetPager1.CurrentPageIndex - 1) + " id  from Patient " + whereStr.ToString() + " " + OrderDDL.SelectedValue + " ) " + OrderDDL.SelectedValue;
                }
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
            Response.Redirect(Server.HtmlEncode("Patient_Info.aspx?GUID=" + ids));
        }
    }

    //报告单删除
    protected void DelBtn_Click(object sender, EventArgs e)
    {
        string ids = "";
        for (int i = 0; i <= GridView2.Rows.Count - 1; i++)
        {
            CheckBox checkBox = (CheckBox)GridView2.Rows[i].FindControl("ChechBox2");
            if (checkBox.Checked == true)
            {
                ids += "," + GridView2.DataKeys[i].Value;
            }
        }
        if (!String.IsNullOrEmpty(ids))
        {
            ids = ids.Substring(1);
            Response.Redirect(Server.HtmlEncode("Report_Del.aspx?IDS=" + ids));
        }
    }





    protected void OrderDDL_SelectedIndexChanged(object sender, EventArgs e)
    {
        MyDataBind();
    }
    protected void SearchDDL_SelectedIndexChanged(object sender, EventArgs e)
    {
        MyDataBind();
    }

    protected void SearchBtn_Click(object sender, EventArgs e)
    {
        MyDataBind();
    }






    protected void AddBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect(Server.HtmlEncode("Patient_Info.aspx"));
    }




    protected void StartTest_Click(object sender, EventArgs e)
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
            Response.Redirect(Server.HtmlEncode("Test_Start.aspx?GUID=" + ids));
        }
    }

    //报告单列表
    protected void AspNetPager2_PageChanged(object sender, EventArgs e)
    {
        MyDataBind1();
    }

    private void MyDataBind1()
    {
        AspNetPager2.PageSize = Convert.ToInt16(PageSizeDDL1.SelectedValue);
        string param = SearchTB1.Text;
        StringBuilder whereStr = new StringBuilder("where IsDel=0 ");
        if (!String.IsNullOrEmpty(param))
        {
            whereStr.Append("  and [PatientName] like '%").Append(Server.HtmlEncode(param.Trim().Replace("'", ""))).Append("%' ");
        }
        if (Convert.ToString(DoctorDDL.SelectedValue) != "-1")
        {
            whereStr.Append(" and DoctorGUID = '").Append(DoctorDDL.SelectedValue).Append("' ");
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
                AspNetPager2.RecordCount = Convert.ToInt16(rd[0]);
            }
            else
            {
                AspNetPager2.RecordCount = 0;
            }
            rd.Close();

            Label3.Text = AspNetPager2.RecordCount + "";//总记录数
            Label4.Text = (AspNetPager2.RecordCount / AspNetPager2.PageSize) + 1 + "";//总页数            

            if (AspNetPager2.CurrentPageIndex == 1)
            {
                sql = "Select top " + AspNetPager2.PageSize + " * from TSView " + whereStr.ToString() + " " + TestDDL.SelectedValue + " " + OrderDDL1.SelectedValue;
            }
            else
            {
                // Select Top 页容量 * from 表 where 条件 and id not in	(Select Top 页容量*（当前页数-1） id 	from 表 where 条件 order by 排序条件) order by 排序条件
                sql = "Select top " + AspNetPager2.PageSize + " * from TSView " + whereStr.ToString() + " and GUID not in ( select top " + AspNetPager2.PageSize * (AspNetPager2.CurrentPageIndex - 1) + " GUID  from TSView " + whereStr.ToString() + " " + TestDDL.SelectedValue + " " + OrderDDL1.SelectedValue + " ) " + " " + TestDDL.SelectedValue + " " + OrderDDL1.SelectedValue;
                //sql = "SELECT * FROM (SELECT ROW_NUMBER() OVER ( " + orderStr + ") AS MyRank,* FROM Article " + whereStr +" ) AS Rank " + whereStr + " and MyRank BETWEEN " +AspNetPager1.StartRecordIndex+" AND "+ (AspNetPager1.StartRecordIndex+AspNetPager1.PageSize-1) +orderStr;
            }
            //TestLabel.Text = sql;
            cmd.CommandText = sql;
            rd = cmd.ExecuteReader();
            GridView2.DataSource = rd;
            GridView2.DataBind();
            rd.Close();
        }
    }



    protected void PageSizeDDL_SelectedIndexChanged1(object sender, EventArgs e)
    {
        MyDataBind1();
    }

    protected void UpdateBtn_Click1(object sender, EventArgs e)
    {
        string ids = "";
        for (int i = 0; i <= GridView2.Rows.Count - 1; i++)
        {
            CheckBox checkBox = (CheckBox)GridView2.Rows[i].FindControl("ChechBox2");
            if (checkBox.Checked == true)
            {
                ids = GridView2.DataKeys[i].Value.ToString();
            }
        }
        if (!String.IsNullOrEmpty(ids))
        {
            //Response.Redirect(Server.HtmlEncode("Patient_Info.aspx?ID=" + ids));
        }
    }

    protected void OrderDDL_SelectedIndexChanged1(object sender, EventArgs e)
    {
        MyDataBind1();
    }

    protected void SearchBtn_Click1(object sender, EventArgs e)
    {
        MyDataBind1();
    }

    protected void AddBtn_Click1(object sender, EventArgs e)
    {
        //Response.Redirect(Server.HtmlEncode("Patient_Info.aspx"));
    }
    protected void TestPrint_Click(object sender, EventArgs e)
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
            Response.Redirect(Server.HtmlEncode("Test_Select.aspx?GUID=" + ids));
        }
    }
    protected void DoctorDDL_SelectedIndexChanged(object sender, EventArgs e)
    {
        MyDataBind1();
    }
    protected void TestDDL_SelectedIndexChanged(object sender, EventArgs e)
    {
        MyDataBind1();
    }
    private void MyDataBind2()
    {
        AspNetPager3.PageSize = Convert.ToInt16(PageSizeText.SelectedValue);
        string param = SearchText.Text;
        StringBuilder OrderStr = new StringBuilder(" ");
        if (!String.IsNullOrEmpty(param))
        {
            OrderStr.Append(OrderText.SelectedValue + " like '%").Append(Server.HtmlEncode(param.Trim().Replace("'", ""))).Append("%' ");
        }

        string sql = "select count(ID) from Test " + OrderStr.ToString();

        using (SqlConnection conn = (SqlConnection)new DB().GetConnection())
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = sql;
            conn.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                AspNetPager3.RecordCount = Convert.ToInt16(rd[0]);
            }
            else
            {
                AspNetPager3.RecordCount = 0;
            }
            rd.Close();

            Label6.Text = AspNetPager3.RecordCount + "";//总记录数
            Label7.Text = (AspNetPager3.RecordCount / AspNetPager3.PageSize) + 1 + "";//总页数            

            if (AspNetPager3.CurrentPageIndex == 1)
            {
                sql = "Select top " + AspNetPager3.PageSize + " * from Test " + OrderStr.ToString() + " " + OrderText.SelectedValue;
            }
            else
            {
                // Select Top 页容量 * from 表 where 条件 and id not in	(Select Top 页容量*（当前页数-1） id 	from 表 where 条件 order by 排序条件) order by 排序条件
                string where = OrderStr.ToString();
                if (where == " ")
                {
                    sql = "Select top " + AspNetPager3.PageSize + " * from Test where id not in ( select top " + AspNetPager3.PageSize * (AspNetPager3.CurrentPageIndex - 1) + " id  from Test " + OrderStr.ToString() + " " + OrderText.SelectedValue + " ) " + OrderText.SelectedValue;
                }
                else
                {
                    sql = "Select top " + AspNetPager3.PageSize + " * from Test " + OrderStr.ToString() + " and id not in ( select top " + AspNetPager3.PageSize * (AspNetPager3.CurrentPageIndex - 1) + " id  from Test " + OrderStr.ToString() + " " + OrderText.SelectedValue + " ) " + OrderText.SelectedValue;
                }
                //sql = "SELECT * FROM (SELECT ROW_NUMBER() OVER ( " + orderStr + ") AS MyRank,* FROM Article " + whereStr +" ) AS Rank " + whereStr + " and MyRank BETWEEN " +AspNetPager1.StartRecordIndex+" AND "+ (AspNetPager1.StartRecordIndex+AspNetPager1.PageSize-1) +orderStr;
            }
            //TestLabel.Text = sql;
            cmd.CommandText = sql;
            rd = cmd.ExecuteReader();
            GridView3.DataSource = rd;
            GridView3.DataBind();
            rd.Close();
        }
    }
    protected void OrderText_SelectedIndexChanged(object sender, EventArgs e)
    {
        MyDataBind2();
    }
    protected void SearchBtnText_Click(object sender, EventArgs e)
    {
        MyDataBind2();
    }
    protected void PageSizeText_SelectedIndexChanged(object sender, EventArgs e)
    {
        MyDataBind2();
    }
}