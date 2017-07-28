using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data.SqlClient;

public partial class Index : System.Web.UI.Page
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
                MyInit();
            }
        }
  
    }


    private void MyInit()
    {
        HospitalGUID.Text = Session["HospitalGUID"].ToString();
        using (SqlConnection conn = new DB().GetConnection())
        {
            SqlCommand cmd = conn.CreateCommand();    
            conn.Open();
            SqlDataReader rd;

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
            

            conn.Close();
        }
    }
}