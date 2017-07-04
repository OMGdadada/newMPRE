using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;
using System.IO;

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
                Label1.Text = rd["TestName"].ToString();
            }
            rd.Close();

            cmd.CommandText = "select * from QView where TestGUID=@TestGUID and Level=1";
            cmd.Parameters.AddWithValue("@TestGUID", Request.QueryString["TestGUID"].ToString());
            rd = cmd.ExecuteReader();
            Repeater1.DataSource = rd;
            Repeater1.DataBind();
            rd.Close();
        }

    }
}