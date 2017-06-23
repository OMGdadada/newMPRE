using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;
using System.IO;
public partial class R21 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //if (Session["UserID"] == null)
            //{
            //    Util.ShowMessage("用户登录超时，请重新登录！", "Login.aspx");
            //}
            //else
            //{
            //}
            if (Request.QueryString["TGUID"] != null && Request.QueryString["TNum"] != null)
            {
                GUID.Text = Request.QueryString["TGUID"].ToString();
                decimal dec;
                using (SqlConnection conn = new DB().GetConnection())
                {
                    SqlCommand cmd = conn.CreateCommand();
                    cmd.CommandText = "select * from T21 where GUID=@TGUID";
                    cmd.Parameters.AddWithValue("@TGUID", GUID.Text);
                    conn.Open();
                    SqlDataReader rd = cmd.ExecuteReader();
                    if (rd.Read())
                    {
                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["D1"].ToString()));
                        dec = Math.Round(dec, 2);
                        D1.Text = dec.ToString();

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["D2"].ToString()));
                        dec = Math.Round(dec, 2);
                        D2.Text = dec.ToString();

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["D3"].ToString()));
                        dec = Math.Round(dec, 2);
                        D3.Text = dec.ToString();

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["D4"].ToString()));
                        dec = Math.Round(dec, 2);
                        D4.Text = dec.ToString();

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["D5"].ToString()));
                        dec = Math.Round(dec, 2);
                        D5.Text = dec.ToString();

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["D6"].ToString()));
                        dec = Math.Round(dec, 2);
                        D6.Text = dec.ToString();

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["D7"].ToString()));
                        dec = Math.Round(dec, 2);
                        D7.Text = dec.ToString();

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["D8"].ToString()));
                        dec = Math.Round(dec, 2);
                        D8.Text = dec.ToString();

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["D9"].ToString()));
                        dec = Math.Round(dec, 2);
                        D9.Text = dec.ToString();

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["D10"].ToString()));
                        dec = Math.Round(dec, 2);
                        D10.Text = dec.ToString();

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["RawScore"].ToString()));
                        dec = Math.Round(dec, 2);
                        RS.Text = dec.ToString();
                    }
                    rd.Close();
                    conn.Close();
                }
            }
        }
    }
}