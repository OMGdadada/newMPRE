using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;
using System.IO;

public partial class R14 : System.Web.UI.Page
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
                    cmd.CommandText = "select * from T14 where GUID=@TGUID";
                    cmd.Parameters.AddWithValue("@TGUID", GUID.Text);
                    conn.Open();
                    SqlDataReader rd = cmd.ExecuteReader();
                    if (rd.Read())
                    {
                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["RS1"].ToString()));
                        dec = Math.Round(dec, 0);//Math.Round(X,N)，X是数据，N是保留小数点后N位。同时四舍五入
                        CGIS.Text = dec.ToString();

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["RS2"].ToString()));
                        dec = Math.Round(dec, 0);
                        CGII.Text = dec.ToString();

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["RawScore"].ToString()));
                        dec = Math.Round(dec, 2);
                        RawScore.Text = dec.ToString();
                    }
                    rd.Close();
                    conn.Close();
                }

                switch (CGIS.Text)
                {
                    case "1":
                        CGIS2.Text = "正常，无病";
                        break;
                    case "2":
                        CGIS2.Text = "病情极轻";
                        break;
                    case "3":
                        CGIS2.Text = "轻度有病";
                        break;
                    case "4":
                        CGIS2.Text = "中度有病";
                        break;
                    case "5":
                        CGIS2.Text = "明显有病";
                        break;
                    case "6":
                        CGIS2.Text = "严重有病";
                        break;
                    case "7":
                        CGIS2.Text = "病情极重";
                        break;
                    default:
                        CGIS2.Text = "得分出错";
                        break;
                }
                switch (CGII.Text)
                {
                    case "1":
                        CGII2.Text = "进步非常明显";
                        break;
                    case "2":
                        CGII2.Text = "进步明显";
                        break;
                    case "3":
                        CGII2.Text = "稍有进步";
                        break;
                    case "4":
                        CGII2.Text = "无变化";
                        break;
                    case "5":
                        CGII2.Text = "稍有恶化";
                        break;
                    case "6":
                        CGII2.Text = "明显恶化";
                        break;
                    case "7":
                        CGII2.Text = "恶化非常明显";
                        break;
                    default:
                        CGII2.Text = "得分出错";
                        break;
                }
            }
        }
    }
}