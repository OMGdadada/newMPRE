using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;
using System.Web.UI.HtmlControls;

public partial class NewPage_Multidimensional_Test : System.Web.UI.Page
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
                MyDataBind2();
                MyDataBind();
            }


        }
    }

    protected void AspNetPager1_PageChanged(object sender, EventArgs e)
    {
        MyDataBind();
    }

    public void MyDataBind()
    {
        AspNetPager1.PageSize = Convert.ToInt16(PageSizeDDL.SelectedValue);
        string param = SearchTB.Text;
        StringBuilder whereStr = new StringBuilder(" ");
        if (!String.IsNullOrEmpty(param))
        {
          //  whereStr.Append(" where " + SearchDDL.SelectedValue + " like '%").Append(Server.HtmlEncode(param.Trim().Replace("'", ""))).Append("%' ");
            whereStr.Append(" where PatientName like '%").Append(Server.HtmlEncode(param.Trim().Replace("'", ""))).Append("%' or Num1 like '%").Append(Server.HtmlEncode(param.Trim().Replace("'", ""))).Append("%' ");
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
            Repeater2.DataSource = rd;
            Repeater2.DataBind();
            rd.Close();
        }
    }


    protected void PageSizeDDL_SelectedIndexChanged(object sender, EventArgs e)
    {
        MyDataBind();
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
        Response.Redirect(Server.HtmlEncode("../Patient_Info.aspx"));
    }
  
    public void MyDataBind2()
    {
        AspNetPager3.PageSize = Convert.ToInt16(28);
        string param = SearchText.Text;
        StringBuilder OrderStr = new StringBuilder(" where Dimension0name=1");
        if (!String.IsNullOrEmpty(param))
        {
           // OrderStr.Append(OrderText.SelectedValue + " like '%").Append(Server.HtmlEncode(param.Trim().Replace("'", ""))).Append("%' ");
            OrderStr.Append(" and [TestName] like '%").Append(Server.HtmlEncode(param.Trim().Replace("'", ""))).Append("%' ");
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

         

            if (AspNetPager3.CurrentPageIndex == 1)
            {
                sql = "Select top " + AspNetPager3.PageSize + " * from Test " + OrderStr.ToString() + "Order by Serial asc ";
            }
            else
            {
                // Select Top 页容量 * from 表 where 条件 and id not in	(Select Top 页容量*（当前页数-1） id 	from 表 where 条件 order by 排序条件) order by 排序条件
                string where = OrderStr.ToString();
                if (where == " ")
                {
                    sql = "Select top " + AspNetPager3.PageSize + " * from Test where id not in ( select top " + AspNetPager3.PageSize * (AspNetPager3.CurrentPageIndex - 1) + " id  from Test " + OrderStr.ToString() + " Order by Serial asc )  Order by Serial asc ";
                }
                else
                {
                    sql = "Select top " + AspNetPager3.PageSize + " * from Test " + OrderStr.ToString() + " and id not in ( select top " + AspNetPager3.PageSize * (AspNetPager3.CurrentPageIndex - 1) + " id  from Test " + OrderStr.ToString() + " Order by Serial asc )  Order by Serial asc" ;
                }
                //sql = "SELECT * FROM (SELECT ROW_NUMBER() OVER ( " + orderStr + ") AS MyRank,* FROM Article " + whereStr +" ) AS Rank " + whereStr + " and MyRank BETWEEN " +AspNetPager1.StartRecordIndex+" AND "+ (AspNetPager1.StartRecordIndex+AspNetPager1.PageSize-1) +orderStr;
            }
            //TestLabel.Text = sql;
            cmd.CommandText = sql;
            rd = cmd.ExecuteReader();
            Repeater1.DataSource = rd;
            Repeater1.DataBind();
            rd.Close();
        }
    }


    protected void SearchBtnText_Click(object sender, EventArgs e)
    {
        MyDataBind2();
    }
 
    protected void AspNetPager3_PageChanged(object sender, EventArgs e)
    {
        MyDataBind2();
    }

  
 

}