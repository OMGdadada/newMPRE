using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;
using System.IO;

public partial class R2 : System.Web.UI.Page
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
                    cmd.CommandText = "select * from T2 where GUID=@TGUID";
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

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["RS3"].ToString()));
                        dec = Math.Round(dec, 0);
                        RS3.Text = dec.ToString();

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["RS4"].ToString()));
                        dec = Math.Round(dec, 0);
                        RS4.Text = dec.ToString();

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["RawScore"].ToString()));
                        dec = Math.Round(dec, 0);
                        RawScore.Text = dec.ToString();
                    }
                    rd.Close();
                    conn.Close();
                }

                switch (RS1.Text)
                {
                    case "0":
                        RS1Add.Text = "无";
                        break;
                    case "1":
                        RS1Add.Text = "轻度";
                        break;
                    case "2":
                        RS1Add.Text = "中度";
                        break;
                    case "3":
                        RS1Add.Text = "偏重";
                        break;
                    case "4":
                        RS1Add.Text = "重度";
                        break;
                    case "5":
                        RS1Add.Text = "极重";
                        break;
                    default:
                        RS1Add.Text = "得分出错";
                        break;
                }
                switch (RS2.Text)
                {
                    case "0":
                        RS2Add.Text = "无";
                        break;
                    case "1":
                        RS2Add.Text = "轻度";
                        break;
                    case "2":
                        RS2Add.Text = "中度";
                        break;
                    case "3":
                        RS2Add.Text = "偏重";
                        break;
                    case "4":
                        RS2Add.Text = "重度";
                        break;
                    case "5":
                        RS2Add.Text = "极重";
                        break;
                    default:
                        RS2Add.Text = "得分出错";
                        break;
                }
                switch (RS3.Text)
                {
                    case "0":
                        RS3Add.Text = "无";
                        break;
                    case "1":
                        RS3Add.Text = "轻度";
                        break;
                    case "2":
                        RS3Add.Text = "中度";
                        break;
                    case "3":
                        RS3Add.Text = "偏重";
                        break;
                    case "4":
                        RS3Add.Text = "重度";
                        break;
                    case "5":
                        RS3Add.Text = "极重";
                        break;
                    default:
                        RS3Add.Text = "得分出错";
                        break;
                }
                switch (RS4.Text)
                {
                    case "0":
                        RS4Add.Text = "无";
                        break;
                    case "1":
                        RS4Add.Text = "轻度";
                        break;
                    case "2":
                        RS4Add.Text = "中度";
                        break;
                    case "3":
                        RS4Add.Text = "偏重";
                        break;
                    case "4":
                        RS4Add.Text = "重度";
                        break;
                    case "5":
                        RS4Add.Text = "极重";
                        break;
                    default:
                        RS4Add.Text = "得分出错";
                        break;
                }

                int Score = Convert.ToInt16(RawScore.Text);
                if (Score <= 100 && Score >= 71) { RawScoreAdd.Text = "仅有轻度困难"; }
                else if (Score <= 70 && Score >= 31) { RawScoreAdd.Text = "存在不同程度的残疾"; }
                else { RawScoreAdd.Text = "功能极差，病人需要加强支持或密切监护"; }
             
            }
        }
    }
}