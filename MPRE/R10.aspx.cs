using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;
using System.IO;

public partial class R10 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            if (Request.QueryString["TGUID"] != null && Request.QueryString["TNum"] != null)
            {
                GUID.Text = Request.QueryString["TGUID"].ToString();
                decimal dec=0;
                using (SqlConnection conn = new DB().GetConnection())
                {
                    SqlCommand cmd = conn.CreateCommand();
                    cmd.CommandText = "select * from T10 where GUID=@TGUID";
                    cmd.Parameters.AddWithValue("@TGUID", GUID.Text);
                    conn.Open();
                    SqlDataReader rd = cmd.ExecuteReader();
                    if (rd.Read())
                    {
                      

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["RawScore"].ToString()));
                        dec = Math.Round(dec, 2)*100;
                        RawScore.Text = dec.ToString()+"%";
                    }
                    rd.Close();
                    conn.Close();
                }

                if (Convert.ToInt16(dec) <= 60) { Explain.Text = "低等水平"; }
                else if (Convert.ToInt16(dec) > 60 && Convert.ToInt16(dec) < 80) { Explain.Text = "中等水平"; }
                else{ Explain.Text = "高等水平"; }

                Explain.Text += "；得分指标越高，自我效能水平越高。";
                 
            }
        }
    }
}