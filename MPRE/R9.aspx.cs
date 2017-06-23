using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;
using System.IO;

public partial class R9 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            if (Request.QueryString["TGUID"] != null && Request.QueryString["TNum"] != null)
            {
                GUID.Text = Request.QueryString["TGUID"].ToString();
                decimal dec;
                using (SqlConnection conn = new DB().GetConnection())
                {
                    SqlCommand cmd = conn.CreateCommand();
                    cmd.CommandText = "select * from T9 where GUID=@TGUID";
                    cmd.Parameters.AddWithValue("@TGUID", GUID.Text);
                    conn.Open();
                    SqlDataReader rd = cmd.ExecuteReader();
                    if (rd.Read())
                    {
                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["RS1"].ToString()));
                        dec = Math.Round(dec, 0);//Math.Round(X,N)，X是数据，N是保留小数点后N位。同时四舍五入
                        RS1.Text = dec.ToString();

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["RS2"].ToString()));
                        dec = Math.Round(dec, 0);
                        RS2.Text = dec.ToString();

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["RawScore"].ToString()));
                        dec = Math.Round(dec, 0);
                        RawScore.Text = dec.ToString();

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["PF"].ToString()));
                        dec = Math.Round(dec, 0);//Math.Round(X,N)，X是数据，N是保留小数点后N位。同时四舍五入
                        PF.Text = dec.ToString();

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["RP"].ToString()));
                        dec = Math.Round(dec, 0);
                        RP.Text = dec.ToString();

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["BP"].ToString()));
                        dec = Math.Round(dec, 0);
                        BP.Text = dec.ToString();

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["GH"].ToString()));
                        dec = Math.Round(dec, 0);//Math.Round(X,N)，X是数据，N是保留小数点后N位。同时四舍五入
                        GH.Text = dec.ToString();

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["VT"].ToString()));
                        dec = Math.Round(dec, 0);
                        VT.Text = dec.ToString();

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["SF"].ToString()));
                        dec = Math.Round(dec, 0);
                        SF.Text = dec.ToString();

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["RE"].ToString()));
                        dec = Math.Round(dec, 0);//Math.Round(X,N)，X是数据，N是保留小数点后N位。同时四舍五入
                        RE.Text = dec.ToString();

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["MH"].ToString()));
                        dec = Math.Round(dec, 0);
                        MH.Text = dec.ToString();

                    }
                    rd.Close();
                    conn.Close();
                }

               
            }
        }
    }
}