using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ReportS_Del : System.Web.UI.Page
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
                if (Request.QueryString["IDS"] != null)
                {
                    IDSLabel.Text = Request.QueryString["IDS"].ToString();
                    MyInit();
                }
            }
        }
    }
    private void MyInit()
    {
        using (SqlConnection conn = new DB().GetConnection())
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select * from Report where GUID in ('" + IDSLabel.Text + "') and IsDel=0 order by ID desc";
            conn.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            GridView1.DataSource = rd;
            GridView1.DataBind();
            rd.Close();
            conn.Close();
        }
    }
    protected void DelButton_Click(object sender, EventArgs e)
    {
        string IC = "";
        using (SqlConnection conn = new DB().GetConnection())
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select * from Doctor where GUID=@GUID";
            cmd.Parameters.AddWithValue("@GUID", Session["DoctorGUID"].ToString());
            conn.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                IC = Util.AESDecrypt(rd["IDCard"].ToString());
            }
            rd.Close();
            conn.Close();
            if (IDCard.Text.Trim() == IC)
            {
                Del();
            }
            else
            {
                ResultLabel.Text = "身份证号输入错误！";
                ResultLabel.ForeColor = System.Drawing.Color.Red;
            }
        }
    }

    private void Del()
    {
        int i = 0;
        string sqlCon = "";
        using (SqlConnection conn = new DB().GetConnection())
        {
            SqlCommand cmd = conn.CreateCommand();
            {
                sqlCon = "Update [Report] set IsDel = 1 where GUID in ('" + IDSLabel.Text + "')";
                cmd.CommandText = sqlCon;
                conn.Open();
                i = cmd.ExecuteNonQuery();
                cmd.Dispose();
                conn.Close();
            }

        }
        if (i > 0)
        {
            ResultLabel.Text = "成功删除" + i + "个总报告单！";
            ResultLabel.ForeColor = System.Drawing.Color.Green;
            MyInit();
        }
        else
        {
            ResultLabel.Text = "操作失败，请重试！";
            ResultLabel.ForeColor = System.Drawing.Color.Red;
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("ReportS_List.aspx");
    }
}