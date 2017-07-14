using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;
using System.IO;
using System.Text.RegularExpressions;

public partial class NewPage_Question_Add : System.Web.UI.Page
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
                if (Request.QueryString["TestGUID"].Length>0) 
                {
                    MyDataBind();
                  
                }
            }
        }

    }

    private void MyDataBind() 
    {
        using (SqlConnection conn = new DB().GetConnection())
        {
            string sql = "select * from [Test] where GUID = @GUID";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@GUID", Request.QueryString["TestGUID"].ToString());
            conn.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                TextName.Text = rd["TestName"].ToString();
                TextGUID.Text=rd["GUID"].ToString();
            }
            rd.Close();

            cmd.CommandText = "select * from QView where TestGUID=@TestGUID order by Serial asc";
            cmd.Parameters.AddWithValue("@TestGUID", Request.QueryString["TestGUID"].ToString());
            rd = cmd.ExecuteReader();
            Repeater1.DataSource = rd;
            Repeater1.DataBind();
            rd.Close();

       
       
        }

    }
    private void ItemData()
    {
        using (SqlConnection conn = new DB().GetConnection())
        {
            string sql = "select * from [QuestionItem] where QuestionGUID = @QGUID order by Serial asc ";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@QGUID", ita_hidf.Value.ToString());
            conn.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            Repeater2.DataSource = rd;
            Repeater2.DataBind();
            rd.Close();

        }
    }
  
    protected void readbtn_Click(object sender, EventArgs e)
    {
        ItemData();
        Repeater2.Visible = true;     
      
    }

    protected void Add_Click(object sender, EventArgs e)
    { 
        ItemData();
        Repeater2.Visible = true;
       

    }
    protected void Sure_Click(object sender, EventArgs e)
    {
        MyDataBind();
        Repeater2.Visible = false;
    }

    public string ReturninnerText(string str)
    {
        str = Regex.Replace(str, "<br />", "  ");
        string regexstr = @"<[^>]*>";
        str = Regex.Replace(str, regexstr, string.Empty, RegexOptions.IgnoreCase);
        return str;
    }
}