using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;
using System.IO;


public partial class NewPage_TestList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        MyDataBind();
    }

    private void MyDataBind()
    {
        int k = 0;
        using (SqlConnection conn = new DB().GetConnection())
        {
            string sql0 = "select * from [Hospital] where GUID = @HospitalGUID";
            SqlCommand cmd = new SqlCommand(sql0, conn);
            cmd.Parameters.AddWithValue("@HospitalGUID", Session["HospitalGUID"].ToString());
            conn.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                k = Convert.ToInt16(rd["deadline"].ToString());
            }
            rd.Close();

            string sql = "select * from [Code_Cart] where CartGUID = @GUID";
            cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@GUID", Request.QueryString["TGUID"].ToString());

            rd = cmd.ExecuteReader();
            if (rd.Read())
            {
              
                System.DateTime Timers = System.DateTime.Parse(rd["CreateDate"].ToString());
                DateTime T1 = Timers.AddHours(k);
                Time.Text = String.Format("{0:yyyy-MM-dd tt: hh:mm:ss}", T1);
            }

            rd.Close();

        }

    }
}