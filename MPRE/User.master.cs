using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class User : System.Web.UI.MasterPage
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
                string IsAdmin = "";
                DoctorGUID.Text = Session["DoctorGUID"].ToString();
                using (SqlConnection conn = new DB().GetConnection())
                {
                    SqlCommand cmd = conn.CreateCommand();
                    cmd.CommandText = "select * from Doctor where GUID=@GUID";
                    cmd.Parameters.AddWithValue("@GUID", DoctorGUID.Text);
                    conn.Open();
                    SqlDataReader rd = cmd.ExecuteReader();
                    if (rd.Read())
                    {
                        DoctorName.Text = rd["DoctorName"].ToString();
                        IsAdmin = Util.AESDecrypt(rd["IsAdmin"].ToString());
                    }
                    rd.Close();
                    conn.Close();
                }
                if (IsAdmin == "True")
                {
                    AdminUser.Visible = true;
                }
                else
                {
                    AdminUser.Visible = false;
                }
                string Hash = Util.GetSuperPassword();
                if ((string)Session["Super"] == Hash)
                {
                    Super.Visible = true;
                }
                else {
                    Super.Visible = false;
                }
            }
        }
       
        
    }

}
  

