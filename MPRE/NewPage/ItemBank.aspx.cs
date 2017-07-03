using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;

public partial class NewPage_ItemBank : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["DoctorGUID"] == null)
            {
                Util.ShowMessage("用户登录超时，请重新登录！", "../Login.aspx");
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


    protected void AspNetPager1_PageChanged(object sender, EventArgs e)
    {
        MyDataBind();
    }
    private void MyInit()
    {
        using (SqlConnection conn = new DB().GetConnection())
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select * from Test order by Orders desc;";
            conn.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            DDLTest.DataSource = rd;
            DDLTest.DataTextField = "TestName";
            DDLTest.DataValueField = "ID";
            DDLTest.DataBind();
            rd.Close();
            DDLTest.Items.Insert(0, new ListItem("所有量表", "-1"));

            cmd.CommandText = "select * from QuestionType";
            rd = cmd.ExecuteReader();
            DDLQType.DataSource = rd;
            DDLQType.DataTextField = "Type";
            DDLQType.DataValueField = "ID";
            DDLQType.DataBind();
            rd.Close();
            DDLQType.Items.Insert(0, new ListItem("题型", "-1"));
        }
    }

    private void MyDataBind()
    {
        AspNetPager1.PageSize = Convert.ToInt16(PageSizeDDL.SelectedValue);
        string param = SearchTB.Text;
        StringBuilder whereStr = new StringBuilder("where IsQuestion = 1 ");
        if (!String.IsNullOrEmpty(param))
        {
            whereStr.Append("  and [QuestionText] like '%").Append(Server.HtmlEncode(param.Trim().Replace("'", ""))).Append("%' ");
        }

        if (Convert.ToInt16(DDLTest.SelectedValue) > 0)
        {
            whereStr.Append(" and TestID = ").Append(DDLTest.SelectedValue);
        }
        if (Convert.ToInt16(DDLQType.SelectedValue) > 0)
        {
            whereStr.Append(" and QuestionType = ").Append(DDLQType.SelectedValue);
        }

        string sql = "select count(ID) as total from QView " + whereStr.ToString();

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
                sql = "Select top " + AspNetPager1.PageSize + " * from QView " + whereStr.ToString();
            }
            else
            {
                // Select Top 页容量 * from 表 where 条件 and id not in	(Select Top 页容量*（当前页数-1） id 	from 表 where 条件 order by 排序条件) order by 排序条件
                string where = whereStr.ToString();
                if (where == " ")
                {
                    sql = "Select top " + AspNetPager1.PageSize + " * from QView where id not in ( select top " + AspNetPager1.PageSize * (AspNetPager1.CurrentPageIndex - 1) + " id  from QView " + whereStr.ToString() + " ) ";
                }
                else
                {
                    sql = "Select top " + AspNetPager1.PageSize + " * from QView " + whereStr.ToString() + " and id not in ( select top " + AspNetPager1.PageSize * (AspNetPager1.CurrentPageIndex - 1) + " id  from QView " + whereStr.ToString() + " ) ";
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

    protected void SearchBtn_Click(object sender, EventArgs e)
    {
        MyDataBind();
    }
    protected void DDLTest_SelectedIndexChanged(object sender, EventArgs e)
    {
        MyDataBind();
    }

    protected void PageSizeDDL_SelectedIndexChanged(object sender, EventArgs e)
    {
        MyDataBind();
    }


    protected void AddBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect(Server.HtmlDecode("Question_Add.aspx"));

    }

    protected void DDLQType_SelectedIndexChanged(object sender, EventArgs e)
    {
        MyDataBind();
    }

    protected void DelBtn_Click(object sender, EventArgs e)
    {

    }
}