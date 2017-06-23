using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;
using System.IO;

public partial class R8 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
            if (Request.QueryString["TGUID"] != null && Request.QueryString["TNum"] != null)
            {
                GUID.Text = Request.QueryString["TGUID"].ToString();
                decimal dec;
                int HW_Score, Waist_Score, QTC_Score, BP_Score, BS_Score, BF_Score = 0;
                using (SqlConnection conn = new DB().GetConnection())
                {
                    SqlCommand cmd = conn.CreateCommand();
                    cmd.CommandText = "select * from T8 where GUID=@TGUID";
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

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["RS5"].ToString()));
                        dec = Math.Round(dec, 0);
                        RS5.Text = dec.ToString();

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["RS6"].ToString()));
                        dec = Math.Round(dec, 0);
                        RS6.Text = dec.ToString();
                        //dec = Convert.ToDecimal(rd["RS3"].ToString()) + Convert.ToDecimal(rd["RS4"].ToString());
                        //dec = Math.Round(dec, 0);
                        //RS34.Text = dec.ToString();
                        //RS3Add.Text = rd["ECG1"].ToString() + rd["ECG2"].ToString();
                        //RS4Add.Text=rd["BP4"].ToString();
                        //if (RS4Add.Text.Trim() == "低血压")
                        //{
                        //    RS4Add.Text = rd["BP4"].ToString() +"; "+ rd["BP3"].ToString();
                        //}

                        //dec = Convert.ToDecimal(rd["RS5"].ToString());
                        //dec = Math.Round(dec, 0);
                        //RS5.Text = dec.ToString();
                        //RS5Add.Text = rd["BS3"].ToString();
                        //if (RS5Add.Text.Trim() == "低血糖")
                        //{
                        //    RS5Add.Text = rd["BS3"].ToString() + "; " + rd["BS2"].ToString();
                        //}
                        HW_ScoreExplain.Text = rd["HW_ScoreExplain"].ToString();
                        Waist_ScoreExplain.Text = rd["Waist_ScoreExplain"].ToString();
                        BS_ScoreExplain.Text = rd["BS_ScoreExplain"].ToString();
                        BF_ScoreExplain.Text = rd["BF_ScoreExplain"].ToString();
                        QTC.Text = rd["QTC"].ToString() + rd["QTC_Add"].ToString();
                        BP_ScoreExplain.Text = rd["BP_ScoreExplain"].ToString();
                        RS7Add1.Text = rd["SmokingFQ"].ToString() + "; 吸烟的日子里" + rd["SmokingDosage"].ToString();
                        RS7Add2.Text = rd["DrinkFQ"].ToString() + "; 每次" + rd["DrinkDosage"].ToString();


                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["HW_Score"].ToString()));
                        dec = Math.Round(dec, 0);
                        HW_Score = Convert.ToInt16(dec.ToString());

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["Waist_Score"].ToString()));
                        dec = Math.Round(dec, 0);
                        Waist_Score = Convert.ToInt16(dec.ToString());

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["QTC_Score"].ToString()));
                        dec = Math.Round(dec, 0);
                        QTC_Score = Convert.ToInt16(dec.ToString());

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["BP_Score"].ToString()));
                        dec = Math.Round(dec, 0);
                        BP_Score = Convert.ToInt16(dec.ToString());

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["BS_Score"].ToString()));
                        dec = Math.Round(dec, 0);
                        BS_Score = Convert.ToInt16(dec.ToString());

                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["BF_Score"].ToString()));
                        dec = Math.Round(dec, 0);
                        BF_Score = Convert.ToInt16(dec.ToString());
                     

                    }

                    else
                    {
                        HW_Score=0;
                        Waist_Score=0;
                        QTC_Score=0;
                        BP_Score=0;
                        BS_Score=0;
                        BF_Score=0;
                       
                    }
                    rd.Close();
                    conn.Close();
                }
                switch (HW_Score)
                {
                    case 1:
                        break;
                    case 2:
                    case 3:
                        HW_ScoreExplain.ForeColor = System.Drawing.Color.Red;
                        break;
                    default:
                        break;
                }

                switch (Waist_Score)
                {
                    case 1:
                        break;
                    case 2:
                    case 3:
                        Waist_ScoreExplain.ForeColor = System.Drawing.Color.Red;
                        break;
                    default:
                        break;
                }
                switch (QTC_Score)
                {
                    case 1:
                    case 2:
                        break;
                  
                    case 3:
                        QTC.ForeColor = System.Drawing.Color.Red;
                        break;
                    default:
                        break;
                }
                switch (BP_Score)
                {
                    case 1:
                    case 2:
                        break;
                    case 3:
                    case 4:
                        BP_ScoreExplain.ForeColor = System.Drawing.Color.Red;
                        break;
                    default:
                        break;
                }
                switch (BS_Score)
                {
                    case 1:
                    case 2:
                        break;
             
                    case 3:
                        BS_ScoreExplain.ForeColor = System.Drawing.Color.Red;
                        break;
                    default:
                        break;
                }
                switch (BF_Score)
                {
                    case 1:
                    case 2:
                        break;
                    
                    case 3:
                        BF_ScoreExplain.ForeColor = System.Drawing.Color.Red;
                        break;
                    default:
                        break;
                }

                //switch (RS2.Text)
                //{
                //    case "1":
                //        RS2Add.Text = "正常";
                //        break;
                //    case "2":
                //        RS2Add.Text = "增粗";
                //        break;
                //    case "3":
                //        RS2Add.Text = "过粗";
                //        break;

                //    default:
                //        RS2Add.Text = "得分出错";
                //        break;
                //}


                //switch (RS6.Text)
                //{
                //    case "1":
                //        RS6Add.Text = "正常水平";
                //        break;
                //    case "2":
                //        RS6Add.Text = "边缘异常";
                //        break;
                //    case "3":
                //        RS6Add.Text = "异常";
                //        break;

                //    default:
                //        RS6Add.Text = "得分出错";
                //        break;
                //}



            }
        }
    }
}