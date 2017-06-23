using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;
using System.IO;
public partial class R3 : System.Web.UI.Page
{
    private static string R1, R2, R33, R4, R5, R6; 

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            if (Request.QueryString["TGUID"] != null && Request.QueryString["TNum"] != null)
            {
                GUID.Text = Request.QueryString["TGUID"].ToString();
                decimal dec,D58;
        

                using (SqlConnection conn = new DB().GetConnection())
                {
                    SqlCommand cmd = conn.CreateCommand();
                    cmd.CommandText = "select * from T3 where GUID=@TGUID";
                    cmd.Parameters.AddWithValue("@TGUID", GUID.Text);
                    conn.Open();
                    SqlDataReader rd = cmd.ExecuteReader();
                    if (rd.Read())
                    {
                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["RS1"].ToString()));
                        dec = Math.Round(dec, 0);//Math.Round(X,N)，X是数据，N是保留小数点后N位
                        RS1.Text = dec.ToString();
                        R1 = (Math.Round(dec / 6, 0)).ToString(); ;

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["RS2"].ToString()));
                        dec = Math.Round(dec, 0);
                        RS2.Text = dec.ToString();
                        R2 = (Math.Round(dec / 5, 0)).ToString(); ;

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["RS3"].ToString()));
                        dec = Math.Round(dec, 0);//Math.Round(X,N)，X是数据，N是保留小数点后N位
                        RS3.Text = dec.ToString();
                        R33 = (Math.Round(dec / 4, 0)).ToString(); ;

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["RS4"].ToString()));
                        dec = Math.Round(dec, 0);
                        RS4.Text = dec.ToString();
                        R4 = (Math.Round(dec / 5, 0)).ToString(); ;

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["RS5"].ToString()));
                        dec = Math.Round(dec, 0);//Math.Round(X,N)，X是数据，N是保留小数点后N位
                        RS5.Text = dec.ToString();
                        D58 = Convert.ToDecimal(Util.AESDecrypt(rd["D58"].ToString()));
                        if (D58 == 0)
                        { R5 = (Math.Round(dec / 4, 0)).ToString();
                       
                        }
                        else {
                        R5 = (Math.Round(dec / 8, 0)).ToString();
                      
                        }

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["RS6"].ToString()));
                        dec = Math.Round(dec, 0);
                        RS6.Text = dec.ToString();
                        R6 = (Math.Round(dec / 8, 0)).ToString(); ;

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["RawScore"].ToString()));
                        dec = Math.Round(dec, 0);
                        RawScore.Text = dec.ToString();
                    }
                    rd.Close();
                    conn.Close();
                }

                switch ( R1)
                {
                    case "1":
                        RS1Add.Text = "无";
                        break;
                    case "2":
                        RS1Add.Text = "轻度";
                        break;
                    case "3":
                        RS1Add.Text = "中度";
                        break;
                    case "4":
                        RS1Add.Text = "重度";
                        break;
                    case "5":
                        RS1Add.Text = "极重度/不能做";
                        break;
                   
                }
                switch (R2)
                {
                    case "1":
                        RS2Add.Text = "无";
                        break;
                    case "2":
                        RS2Add.Text = "轻度";
                        break;
                    case "3":
                        RS2Add.Text = "中度";
                        break;
                    case "4":
                        RS2Add.Text = "重度";
                        break;
                    case "5":
                        RS2Add.Text = "极重度/不能做";
                        break;
                   

                }
                switch (R33)
                {
                    case "1":
                        RS3Add.Text = "无";
                        break;
                    case "2":
                        RS3Add.Text = "轻度";
                        break;
                    case "3":
                        RS3Add.Text = "中度";
                        break;
                    case "4":
                        RS3Add.Text = "重度";
                        break;
                    case "5":
                        RS3Add.Text = "极重度/不能做";
                        break;

                }
                switch (R4)
                {
                    case "1":
                        RS4Add.Text = "无";
                        break;
                    case "2":
                        RS4Add.Text = "轻度";
                        break;
                    case "3":
                        RS4Add.Text = "中度";
                        break;
                    case "4":
                        RS4Add.Text = "重度";
                        break;
                    case "5":
                        RS4Add.Text = "极重度/不能做";
                        break;

                }
                switch (R5)
                {
                    case "1":
                        RS5Add.Text = "无";
                        break;
                    case "2":
                        RS5Add.Text = "轻度";
                        break;
                    case "3":
                        RS5Add.Text = "中度";
                        break;
                    case "4":
                        RS5Add.Text = "重度";
                        break;
                    case "5":
                        RS5Add.Text = "极重度/不能做";
                        break;

                }
                switch (R6)
                {
                    case "1":
                        RS6Add.Text = "无";
                        break;
                    case "2":
                        RS6Add.Text = "轻度";
                        break;
                    case "3":
                        RS6Add.Text = "中度";
                        break;
                    case "4":
                        RS6Add.Text = "重度";
                        break;
                    case "5":
                        RS6Add.Text = "极重度/不能做";
                        break;

                }
                int RawScore1 = Convert.ToInt16(RawScore.Text);
                if (RawScore1 >= 116) { RawScoreAdd.Text = "精神残疾一级"; }
                if (106 <= RawScore1 && RawScore1 <= 115) { RawScoreAdd.Text = "精神残疾二级"; }
                if (96 <= RawScore1 && RawScore1 <= 105) { RawScoreAdd.Text = "精神残疾三级"; }
                if (52 <= RawScore1 && RawScore1 <= 95) { RawScoreAdd.Text = "精神残疾四级"; }
                if (RawScore1 <= 51) { RawScoreAdd.Text = "正常"; }
             
            }
        }
    }
}