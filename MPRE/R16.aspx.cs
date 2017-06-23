using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;
using System.IO;

public partial class R16 : System.Web.UI.Page
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
                    cmd.CommandText = "select * from T16 where GUID=@TGUID";
                    cmd.Parameters.AddWithValue("@TGUID",GUID.Text);
                    conn.Open();
                    SqlDataReader rd = cmd.ExecuteReader();
                    if (rd.Read())
                    {
                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["RS1"].ToString()));
                        dec = Math.Round(dec, 0);//Math.Round(X,N)，X是数据，N是保留小数点后N位
                        RS1.Text = dec.ToString();

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["RS2"].ToString()));
                        dec = Math.Round(dec, 0);
                        RS2.Text = dec.ToString();

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["RS3"].ToString()));
                        dec = Math.Round(dec, 0);//Math.Round(X,N)，X是数据，N是保留小数点后N位
                        RS3.Text = dec.ToString();

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["RS4"].ToString()));
                        dec = Math.Round(dec, 0);
                        RS4.Text = dec.ToString();

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["RS5"].ToString()));
                        dec = Math.Round(dec, 0);//Math.Round(X,N)，X是数据，N是保留小数点后N位
                        RS5.Text = dec.ToString();

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["RS6"].ToString()));
                        dec = Math.Round(dec, 0);
                        RS6.Text = dec.ToString();

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["RS7"].ToString()));
                        dec = Math.Round(dec, 0);//Math.Round(X,N)，X是数据，N是保留小数点后N位
                        RS7.Text = dec.ToString();

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["C1"].ToString()));
                        dec = Math.Round(dec, 0);
                        C1.Text = dec.ToString();

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["T1"].ToString()));
                        dec = Math.Round(dec, 0);
                        T1.Text = dec.ToString();

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["C2"].ToString()));
                        dec = Math.Round(dec, 0);
                        C2.Text = dec.ToString();

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["T2"].ToString()));
                        dec = Math.Round(dec, 0);
                        T2.Text = dec.ToString();

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["C3"].ToString()));
                        dec = Math.Round(dec, 0);
                        C3.Text = dec.ToString();

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["T3"].ToString()));
                        dec = Math.Round(dec, 0);
                        T3.Text = dec.ToString();

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["C4"].ToString()));
                        dec = Math.Round(dec, 0);
                        C4.Text = dec.ToString();

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["T4"].ToString()));
                        dec = Math.Round(dec, 0);
                        T4.Text = dec.ToString();

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["C5"].ToString()));
                        dec = Math.Round(dec, 0);
                        C5.Text = dec.ToString();

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["T5"].ToString()));
                        dec = Math.Round(dec, 0);
                        T5.Text = dec.ToString();

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["C6"].ToString()));
                        dec = Math.Round(dec, 0);
                        C6.Text = dec.ToString();

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["T6"].ToString()));
                        dec = Math.Round(dec, 0);
                        T6.Text = dec.ToString();

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["C7"].ToString()));
                        dec = Math.Round(dec, 0);
                        C7.Text = dec.ToString();

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["T7"].ToString()));
                        dec = Math.Round(dec, 0);
                        T7.Text = dec.ToString();

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["C8"].ToString()));
                        dec = Math.Round(dec, 0);
                        C8.Text = dec.ToString();

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["T8"].ToString()));
                        dec = Math.Round(dec, 0);
                        T8.Text = dec.ToString();

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["C9"].ToString()));
                        dec = Math.Round(dec, 0);
                        C9.Text = dec.ToString();

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["T9"].ToString()));
                        dec = Math.Round(dec, 0);
                        T9.Text = dec.ToString();

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["RawScore"].ToString()));
                        dec = Math.Round(dec, 2);
                        RawScore.Text = dec.ToString();
                    }
                    rd.Close();
                    conn.Close();
                }

                

            }
        }
    
    }
}