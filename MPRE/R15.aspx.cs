using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;
using System.IO;

public partial class R15 : System.Web.UI.Page
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
                    cmd.CommandText = "select * from T15 where GUID=@TGUID";
                    cmd.Parameters.AddWithValue("@TGUID", GUID.Text);
                    conn.Open();
                    SqlDataReader rd = cmd.ExecuteReader();
                    if (rd.Read())
                    {
                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["PScore"].ToString()));
                        dec = Math.Round(dec, 0);//Math.Round(X,N)，X是数据，N是保留小数点后N位。同时四舍五入
                        PScore.Text = dec.ToString();

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["NScore"].ToString()));
                        dec = Math.Round(dec, 0);
                        NScore.Text = dec.ToString();

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["GScore"].ToString()));
                        dec = Math.Round(dec, 0);
                        GScore.Text = dec.ToString();

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["RawScore1"].ToString()));
                        dec = Math.Round(dec, 0);
                        RawScore1.Text = dec.ToString();

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["RRate"].ToString()));
                        dec = Math.Round(dec, 2)*100;
                        RRate.Text = dec.ToString()+"%";

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["RS1"].ToString()));
                        dec = Math.Round(dec, 0);
                        RS1.Text = dec.ToString();

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["RS2"].ToString()));
                        dec = Math.Round(dec, 0);
                        RS2.Text = dec.ToString();

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["RS3"].ToString()));
                        dec = Math.Round(dec, 0);
                        RS3.Text = dec.ToString();

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["RS4"].ToString()));
                        dec = Math.Round(dec, 0);
                        RS4.Text = dec.ToString();

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["RS5"].ToString()));
                        dec = Math.Round(dec, 0);
                        RS5.Text = dec.ToString();

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["RawScore2"].ToString()));
                        dec = Math.Round(dec, 0);
                        RawScore2.Text = dec.ToString();
                    }
                    rd.Close();
                    conn.Close();
                }


            }
        }
    }
}