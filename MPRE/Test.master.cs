using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Test : System.Web.UI.MasterPage
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

                if (Request.QueryString["GUID"] != null)
                {
                    IDLabel.Text = Request.QueryString["GUID"].ToString();
                    using (SqlConnection conn = new DB().GetConnection())
                    {
                        SqlCommand cmd = conn.CreateCommand();
                        cmd.CommandText = "select * from Patient where GUID=@GUID";
                        cmd.Parameters.AddWithValue("@GUID", IDLabel.Text);
                        conn.Open();
                        SqlDataReader rd = cmd.ExecuteReader();
                        if (rd.Read())
                        {
                            PatientNameLabel.Text = rd["PatientName"].ToString();
                            SexLabel.Text = rd["Sex"].ToString();
                            Num1Label.Text = rd["Num1"].ToString();
                        }
                        rd.Close();
                        conn.Close();
                    }
                  
                 
                }
            }
        }
    }

}
