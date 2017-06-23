using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Super_Licenses : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["Super"] == null)
            {
                Util.ShowMessage("用户登录超时，请重新登录！", "Login.aspx");
                Response.End();
            }
            else
            {
                string Hash = Util.GetSuperPassword();
                if (Session["Super"].ToString() != Hash)
                {
                    Util.ShowMessage("密码错误，请重新登录！", "Login.aspx");
                    Response.End();
                }

            }

        }
        
        using (SqlConnection conn = new DB().GetConnection())
        {
            
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select * from Hospital where GUID=@HGUID";
            cmd.Parameters.AddWithValue("@HGUID", Session["HospitalGUID"]);
            conn.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {
               
                Licensesnum.Text = Util.AESDecrypt(rd["Licenses"].ToString());
                Licensesnum.Text = Licensesnum.Text.Substring(10, Licensesnum.Text.Length - 10);


            }
            rd.Close();
            conn.Close();
        }
    }
    protected void InitBtn_Click(object sender, EventArgs e)
    {
        int i = 0;
        if (Licenses.Text != "")
        {
            string str = "GZKZYL_201";
            Licenses.Text = str + Licenses.Text;
        }
        using (SqlConnection conn = new DB().GetConnection())
        {
            string sql = "Update [Hospital] set Licenses=@Licenses";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@Licenses", Util.AESEncrypt(Licenses.Text));
            conn.Open();
            i = cmd.ExecuteNonQuery();
            conn.Close();
        }
        if (i == 1)
        {
            ErrorLabel.Text = "授权登录数更新成功！";
            Licenses.Text = "";

            using (SqlConnection conn = new DB().GetConnection())
            {

                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = "select * from Hospital where GUID=@HGUID";
                cmd.Parameters.AddWithValue("@HGUID", Session["HospitalGUID"]);
                conn.Open();
                SqlDataReader rd = cmd.ExecuteReader();
                if (rd.Read())
                {
                    Licensesnum.Text = Util.AESDecrypt(rd["Licenses"].ToString());
                    Licensesnum.Text = Licensesnum.Text.Substring(10, Licensesnum.Text.Length - 10);
                }
                rd.Close();
                conn.Close();
            }
        }
        else
        {
            ErrorLabel.Text = "授权登录数更新失败，请重试！";
        }

    }
}