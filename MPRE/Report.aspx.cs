using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;
using System.IO;

public partial class Report : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["DoctorGUID"] == null)
            {
                Util.ShowMessage("用户登录超时，请重新登录！", "Login.aspx");
                Response.End();
            }
            else
            {
                RSTime.Text = DateTime.Now.ToString("yyyy 年 MM 月 dd 日");
                if (Request.QueryString["TGUID"] != null)
                {
                    MyInit();

                }
                
                MyDataBind();
            }
         
        }  

    }

    private void MyInit()
    {
        GUID.Text = Request.QueryString["TGUID"].ToString();
        decimal dec;
        using (SqlConnection conn = new DB().GetConnection())
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select * from Report where GUID=@TGUID";
            cmd.Parameters.AddWithValue("@TGUID", GUID.Text);
            conn.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                PatientGUID.Text = rd["PatientGUID"].ToString();
                Remark.Text = rd["Remark"].ToString();

                if (rd["T1Score"].ToString() != "")
                {
                    dec = Convert.ToDecimal(Util.AESDecrypt(rd["T1Score"].ToString()));
                    dec = Math.Round(dec, 0);
                    T1Score.Text = dec.ToString();
                    T1ScoreAdd.Text = "分数越低，功能越差";
                    R1.Text = T1Score.Text;
                }

                if (rd["T2Score"].ToString() != "")
                {
                    dec = Convert.ToDecimal(Util.AESDecrypt(rd["T2Score"].ToString()));
                    dec = Math.Round(dec, 0);
                    T2Score.Text = dec.ToString();
                    int Score = Convert.ToInt16(T2Score.Text);
                    if (Score <= 100 && Score >= 71) { T2ScoreAdd.Text = "仅有轻度困难"; }
                    else if (Score <= 70 && Score >= 31) { T2ScoreAdd.Text = "有不同程度的残疾"; }
                    else { T2ScoreAdd.Text = "功能极差，病人需要加强支持或密切监护"; }
                    //T2ScoreAdd.Text += "<p>71-100分：表示仅有轻度困难；</p><p>31-70分：表示有不同程度的残疾；</p><p>30-0分：表示功能极差，病人需要加强支持或密切监护</p>";
                    if (T1Score.Text != "N/A")
                    {
                        Double r = Convert.ToDouble(R1.Text) * 0.5 + Convert.ToDouble(T2Score.Text) * 0.5;
                        r = Math.Round(r, 2);
                        R1.Text = r.ToString();
                    }
                    else
                    {
                        R1.Text = T2Score.Text;
                    }

                    R1C1.Text = Math.Round((Convert.ToDecimal(Util.AESDecrypt(rd["T2ScoreRS1"].ToString())) / 6 * 100), 2).ToString();
                    R1C2.Text = Math.Round((Convert.ToDecimal(Util.AESDecrypt(rd["T2ScoreRS3"].ToString())) / 6 * 100), 2).ToString();
                    R1C3.Text = Math.Round((Convert.ToDecimal(Util.AESDecrypt(rd["T2ScoreRS2"].ToString())) / 6 * 100), 2).ToString();

                }

                if (rd["T3Score"].ToString() != "")
                {
                    dec = Convert.ToDecimal(Util.AESDecrypt(rd["T3Score"].ToString()));
                    dec = Math.Round(dec, 0);
                    T3Score.Text = dec.ToString();
                    int RawScore1 = Convert.ToInt16(T3Score.Text);
                    if (RawScore1 >= 116) { T3ScoreAdd.Text = "精神残疾一级"; }
                    if (106 <= RawScore1 && RawScore1 <= 115) { T3ScoreAdd.Text = "精神残疾二级"; }
                    if (96 <= RawScore1 && RawScore1 <= 105) { T3ScoreAdd.Text = "精神残疾三级"; }
                    if (52 <= RawScore1 && RawScore1 <= 95) { T3ScoreAdd.Text = "精神残疾四级"; }
                    if (RawScore1 <= 51) { T3ScoreAdd.Text = "正常"; }
                    Double r = Convert.ToDouble(T3Score.Text) / 9 * 5;
                    int j = 1;
                    if (T1Score.Text != "N/A")
                    {
                        r += Convert.ToDouble(T1Score.Text);
                        j++;
                    }
                    if (T2Score.Text != "N/A")
                    {
                        r += Convert.ToDouble(T2Score.Text);
                        j++;
                    }
                    r = r / j;
                    r = Math.Round(r, 2);
                    R1.Text = r.ToString();
                }

                if (rd["T4Score"].ToString() != "")
                {
                    dec = Convert.ToDecimal(Util.AESDecrypt(rd["T4Score"].ToString()));
                    dec = Math.Round(dec, 2);
                    T4Score.Text = dec.ToString();
                    T4ScoreAdd.Text = "百分比越高，影响程度越大";
                    Double r = Convert.ToDouble(T4Score.Text) * 100;
                    Double c = r;
                    c = Math.Round(c, 2);
                    R1C1.Text = c.ToString();
                    int j = 1;
                    if (T1Score.Text != "N/A")
                    {
                        r += Convert.ToDouble(T1Score.Text);
                        j++;
                    }
                    if (T2Score.Text != "N/A")
                    {
                        r += Convert.ToDouble(T2Score.Text);
                        j++;

                        Double c1 = Convert.ToDouble(T4Score.Text) * 100;
                        Double c2 = Convert.ToDouble(Util.AESDecrypt(rd["T2ScoreRS1"].ToString())) / 6 * 100;
                        c1 = (c1 + c2) / 2;
                        c1 = Math.Round(c1, 2);
                        R1C1.Text = c1.ToString();
                    }
                    if (T3Score.Text != "N/A")
                    {
                        r += Convert.ToDouble(T3Score.Text) / 9 * 5;
                        j++;
                    }
                    r = r / j;
                    r = Math.Round(r, 2);
                    R1.Text = r.ToString();
                }

                if (rd["T5Score"].ToString() != "")
                {
                    dec = Convert.ToDecimal(Util.AESDecrypt(rd["T5Score"].ToString()));
                    dec = Math.Round(dec, 0);
                    T5Score.Text = dec.ToString();
                    T5ScoreAdd.Text = "得分越高显示功能越好";

                    Double r = Convert.ToDouble(T5Score.Text) / 156 * 100;
                    Double c = r;
                    c = Math.Round(c, 2);
                    R1C2.Text = c.ToString();
                    int j = 1;
                    if (T1Score.Text != "N/A")
                    {
                        r += Convert.ToDouble(T1Score.Text);
                        j++;
                    }
                    if (T2Score.Text != "N/A")
                    {
                        r += Convert.ToDouble(T2Score.Text);
                        j++;

                        Double c1 = Convert.ToDouble(T5Score.Text) / 156 * 100;
                        Double c2 = Convert.ToDouble(Util.AESDecrypt(rd["T2ScoreRS3"].ToString())) / 6 * 100;
                        c1 = (c1 + c2) / 2;
                        c1 = Math.Round(c1, 2);
                        R1C2.Text = c1.ToString();
                    }
                    if (T3Score.Text != "N/A")
                    {
                        r += Convert.ToDouble(T3Score.Text) / 9 * 5;
                        j++;
                    }
                    if (T4Score.Text != "N/A")
                    {
                        r += Convert.ToDouble(T4Score.Text) * 100;
                        j++;
                    }
                    r = r / j;
                    r = Math.Round(r, 2);
                    R1.Text = r.ToString();
                }

                if (rd["T6Score"].ToString() != "")
                {
                    dec = Convert.ToDecimal(Util.AESDecrypt(rd["T6Score"].ToString()));
                    dec = Math.Round(dec, 0);
                    T6Score.Text = dec.ToString();
                    T6ScoreAdd.Text = "得分越高显示功能越好";

                    Double r = Convert.ToDouble(T6Score.Text) / 129 * 100;
                    Double c = r;
                    c = Math.Round(c, 2);
                    R1C3.Text = c.ToString();
                    int j = 1;
                    if (T1Score.Text != "N/A")
                    {
                        r += Convert.ToDouble(T1Score.Text);
                        j++;
                    }
                    if (T2Score.Text != "N/A")
                    {
                        r += Convert.ToDouble(T2Score.Text);
                        j++;

                        Double c1 = Convert.ToDouble(T6Score.Text) / 129 * 100;
                        Double c2 = Convert.ToDouble(Util.AESDecrypt(rd["T2ScoreRS2"].ToString())) / 6 * 100;
                        c1 = (c1 + c2) / 2;
                        c1 = Math.Round(c1, 2);
                        R1C3.Text = c1.ToString();
                    }
                    if (T3Score.Text != "N/A")
                    {
                        r += Convert.ToDouble(T3Score.Text) / 9 * 5;
                        j++;
                    }
                    if (T4Score.Text != "N/A")
                    {
                        r += Convert.ToDouble(T4Score.Text) * 100;
                        j++;
                    }
                    if (T5Score.Text != "N/A")
                    {
                        r += Convert.ToDouble(T5Score.Text) / 156 * 100;
                        j++;
                    }
                    r = r / j;
                    r = Math.Round(r, 2);
                    R1.Text = r.ToString();
                }

                if (rd["T7Score"].ToString() != "")
                {
                    dec = Convert.ToDecimal(Util.AESDecrypt(rd["T7Score"].ToString()));
                    dec = Math.Round(dec, 0);
                    T7Score.Text = dec.ToString();
                    T7ScoreAdd.Text = "得分越高提示功能越好";

                    Double r = 0, c1 = 0, c2 = 0;
                    int j = 0, c1j = 1, c2j = 2;
                    if (T1Score.Text != "N/A")
                    {
                        r += Convert.ToDouble(T1Score.Text);
                        j++;
                    }
                    if (T2Score.Text != "N/A")
                    {
                        r += Convert.ToDouble(T2Score.Text);
                        j++;

                        c1 += Convert.ToDouble(Util.AESDecrypt(rd["T2ScoreRS1"].ToString())) / 6 * 100;
                        c1j++;

                        c2 += Convert.ToDouble(Util.AESDecrypt(rd["T2ScoreRS3"].ToString())) / 6 * 100;
                        c2j++;
                    }
                    if (T3Score.Text != "N/A")
                    {
                        r += Convert.ToDouble(T3Score.Text) / 9 * 5;
                        j++;
                    }
                    if (T4Score.Text != "N/A")
                    {
                        r += Convert.ToDouble(T4Score.Text) * 100;
                        j++;

                        c1 += Convert.ToDouble(T4Score.Text) * 100;
                        c1j++;
                    }
                    if (T5Score.Text != "N/A")
                    {
                        r += Convert.ToDouble(T5Score.Text) / 156 * 100;
                        j++;

                        c2 += Convert.ToDouble(T5Score.Text) / 156 * 100;
                        c2j++;
                    }
                    if (T6Score.Text != "N/A")
                    {
                        r += Convert.ToDouble(T6Score.Text) / 129 * 100;
                        j++;
                    }
                    if (j != 0)
                    {
                        r = r / j;
                    }
                    c1 = c1 + Convert.ToDouble(Util.AESDecrypt(rd["T7ScoreRS1"].ToString()));
                    c1 = c1 / c1j;
                    c1 = Math.Round(c1, 2);
                    R1C1.Text = c1.ToString();

                    c2 = c2 + Convert.ToDouble(Util.AESDecrypt(rd["T7ScoreRS2"].ToString())) + Convert.ToDouble(Util.AESDecrypt(rd["T7ScoreRS3"].ToString()));
                    c2 = c2 / c2j;
                    c2 = Math.Round(c2, 2);
                    R1C2.Text = c2.ToString();

                    r = (Convert.ToDouble(T7Score.Text) + r) / 2;
                    r = Math.Round(r, 2);
                    R1.Text = r.ToString();
                }

                if (rd["T8Score"].ToString() != "")
                {
                    dec = Convert.ToDecimal(Util.AESDecrypt(rd["T8Score"].ToString()));
                    dec = Math.Round(dec, 0);
                    T8Score.Text = dec.ToString();
                    T8ScoreAdd.Text = "得分越高显示躯体健康状况越好";
                    Double r = Convert.ToDouble(T8Score.Text) / 6;
                    r = Math.Round(r, 2);
                    R2.Text = r.ToString();

                    R2C1.Text = Math.Round(Convert.ToDecimal(Util.AESDecrypt(rd["T8ScoreRS1"].ToString())), 2).ToString();
                    R2C2.Text = Math.Round(Convert.ToDecimal(Util.AESDecrypt(rd["T8ScoreRS2"].ToString())), 2).ToString();
                    R2C3.Text = Math.Round(Convert.ToDecimal(Util.AESDecrypt(rd["T8ScoreRS5"].ToString())), 2).ToString();
                    R2C4.Text = Math.Round(Convert.ToDecimal(Util.AESDecrypt(rd["T8ScoreRS6"].ToString())), 2).ToString();
                    R2C5.Text = Math.Round(Convert.ToDecimal(Util.AESDecrypt(rd["T8ScoreRS34"].ToString())), 2).ToString();
                    R2C6.Text = Math.Round(Convert.ToDecimal(Util.AESDecrypt(rd["T8ScoreRS7"].ToString())), 2).ToString();
                }

                if (rd["T9Score"].ToString() != "")
                {
                    dec = Convert.ToDecimal(Util.AESDecrypt(rd["T9Score"].ToString()));
                    dec = Math.Round(dec, 0);
                    T9Score.Text = dec.ToString();
                    T9ScoreAdd.Text = "得分越高，表示生活质量越高";
                    Double r = Convert.ToDouble(T9Score.Text) / 8;
                    r = Math.Round(r, 2);
                    R3.Text = r.ToString();
                    R3C3.Text = r.ToString();
                }

                if (rd["T10Score"].ToString() != "")
                {
                    dec = Convert.ToDecimal(Util.AESDecrypt(rd["T10Score"].ToString()));
                    dec = Math.Round(dec, 2);
                    T10Score.Text = dec.ToString();
                    if (Convert.ToInt16(dec) <= 60) { T10ScoreAdd.Text = "低等水平"; }
                    else if (Convert.ToInt16(dec) > 60 && Convert.ToInt16(dec) < 80) { T10ScoreAdd.Text = "中等水平"; }
                    else { T10ScoreAdd.Text = "高等水平"; }

                    T10ScoreAdd.Text += "；得分指标越高，自我效能水平越高";

                    Double c = Convert.ToDouble(T10Score.Text) * 100;
                    c = Math.Round(c, 2);
                    R3C2.Text = c.ToString();

                    if (T9Score.Text != "N/A")
                    {
                        Double r = Convert.ToDouble(R3.Text) * 0.5 + Convert.ToDouble(T10Score.Text) * 50;
                        r = Math.Round(r, 2);
                        R3.Text = r.ToString();
                    }
                    else
                    {
                        Double r = Convert.ToDouble(T10Score.Text) * 100;
                        r = Math.Round(r, 2);
                        R3.Text = r.ToString();
                    }
                }

                if (rd["T11Score"].ToString() != "")
                {
                    dec = Convert.ToDecimal(Util.AESDecrypt(rd["T11Score"].ToString()));
                    dec = Math.Round(dec, 0);
                    T11Score.Text = dec.ToString();
                    T11ScoreAdd.Text = "得分越高，表示耻感越重";

                    Double r = Convert.ToDouble(T11Score.Text) / 96 * 100;
                    Double c = r;
                    c = Math.Round(c, 2);
                    R3C1.Text = c.ToString();
                    int j = 1;
                    if (T9Score.Text != "N/A")
                    {
                        r += Convert.ToDouble(T9Score.Text) / 8;
                        j++;
                    }
                    if (T10Score.Text != "N/A")
                    {
                        r += Convert.ToDouble(T10Score.Text) * 100;
                        j++;
                    }
                    r = r / j;
                    r = Math.Round(r, 2);
                    R3.Text = r.ToString();
                }

                if (rd["T12Score"].ToString() != "")
                {
                    dec = Convert.ToDecimal(Util.AESDecrypt(rd["T12Score"].ToString()));
                    dec = Math.Round(dec, 0);
                    T12Score.Text = dec.ToString();
                    T12ScoreAdd.Text = "得分越高，表示对自身康复和未来的希望越大";

                    Double r = Convert.ToDouble(T12Score.Text) / 18 * 100;
                    Double c = r;
                    c = Math.Round(c, 2);
                    R3C4.Text = c.ToString();
                    int j = 1;
                    if (T9Score.Text != "N/A")
                    {
                        r += Convert.ToDouble(T9Score.Text) / 8;
                        j++;
                    }
                    if (T10Score.Text != "N/A")
                    {
                        r += Convert.ToDouble(T10Score.Text) * 100;
                        j++;
                    }
                    if (T11Score.Text != "N/A")
                    {
                        r += Convert.ToDouble(T11Score.Text) / 96 * 100;
                        j++;
                    }
                    r = r / j;
                    r = Math.Round(r, 2);
                    R3.Text = r.ToString();
                }

                if (rd["T13Score"].ToString() != "")
                {
                    dec = Convert.ToDecimal(Util.AESDecrypt(rd["T13Score"].ToString()));
                    dec = Math.Round(dec, 0);
                    T13Score.Text = dec.ToString();
                    T13ScoreAdd.Text = "得分越高，个体越有人生意义";

                    Double r = Convert.ToDouble(T13Score.Text) / 70 * 100;
                    Double c = r;
                    c = Math.Round(c, 2);
                    R3C4.Text = c.ToString();
                    int j = 1;
                    if (T9Score.Text != "N/A")
                    {
                        r += Convert.ToDouble(T9Score.Text) / 8;
                        j++;
                    }
                    if (T10Score.Text != "N/A")
                    {
                        r += Convert.ToDouble(T10Score.Text) * 100;
                        j++;
                    }
                    if (T11Score.Text != "N/A")
                    {
                        r += Convert.ToDouble(T11Score.Text) / 96 * 100;
                        j++;
                    }
                    if (T12Score.Text != "N/A")
                    {
                        r += Convert.ToDouble(T12Score.Text) / 18 * 100;
                        j++;

                        c = c / 2 + Convert.ToDouble(T12Score.Text) / 18 * 50;
                        c = Math.Round(c, 2);
                        R3C4.Text = c.ToString();
                    }
                    r = r / j;
                    r = Math.Round(r, 2);
                    R3.Text = r.ToString();
                }

                if (rd["T14Score"].ToString() != "")
                {
                    dec = Convert.ToDecimal(Util.AESDecrypt(rd["T14Score"].ToString()));
                    dec = Math.Round(dec, 0);
                    T14Score.Text = dec.ToString();
                    switch (T14Score.Text)
                    {
                        case "1":
                            T14ScoreAdd.Text = "正常，无病";
                            break;
                        case "2":
                            T14ScoreAdd.Text = "病情极轻";
                            break;
                        case "3":
                            T14ScoreAdd.Text = "轻度有病";
                            break;
                        case "4":
                            T14ScoreAdd.Text = "中度有病";
                            break;
                        case "5":
                            T14ScoreAdd.Text = "明显有病";
                            break;
                        case "6":
                            T14ScoreAdd.Text = "严重有病";
                            break;
                        case "7":
                            T14ScoreAdd.Text = "病情极重";
                            break;
                        default:
                            T14ScoreAdd.Text = "得分出错";
                            break;
                    }
                    //T14ScoreAdd.Text = "疗效指数1.0以上者所研究的药物方有价值";

                    Double r = Convert.ToDouble(T14Score.Text) /7 * 100;
                    r = Math.Round(r, 2);
                    R4.Text = r.ToString();
                }

                if (rd["T15Score"].ToString() != "")
                {
                    dec = Convert.ToDecimal(Util.AESDecrypt(rd["T15Score"].ToString()));
                    dec = Math.Round(dec, 0);
                    T15Score.Text = dec.ToString();
                    T15ScoreAdd.Text = "得分越高，反映病情越严重";

                    R4C1.Text = Math.Round((Convert.ToDecimal(Util.AESDecrypt(rd["T15ScoreRS1"].ToString())) / 28 * 100), 2).ToString();
                    R4C2.Text = Math.Round((Convert.ToDecimal(Util.AESDecrypt(rd["T15ScoreRS2"].ToString())) / 42 * 100), 2).ToString();
                    R4C3.Text = Math.Round((Convert.ToDecimal(Util.AESDecrypt(rd["T15ScoreRS3"].ToString())) / 21 * 100), 2).ToString();
                    R4C4.Text = Math.Round((Convert.ToDecimal(Util.AESDecrypt(rd["T15ScoreRS4"].ToString())) / 21 * 100), 2).ToString();
                    R4C5.Text = Math.Round((Convert.ToDecimal(Util.AESDecrypt(rd["T15ScoreRS5"].ToString())) / 28 * 100), 2).ToString();

                    if (T14Score.Text != "N/A")
                    {
                        Double r = Convert.ToDouble(R4.Text) / 7 * 50 + Convert.ToDouble(T15Score.Text) / 14 * 5;
                        r = Math.Round(r, 2);
                        R4.Text = r.ToString();
                    }
                    else
                    {
                        Double r = Convert.ToDouble(T15Score.Text) / 14 * 10;
                        r = Math.Round(r, 2);
                        R4.Text = r.ToString();
                    }
                }

                if (rd["T16Score"].ToString() != "")
                {
                    dec = Convert.ToDecimal(Util.AESDecrypt(rd["T16Score"].ToString()));
                    dec = Math.Round(dec, 0);
                    T16Score.Text = dec.ToString();
                    T16ScoreAdd.Text = "分数越高，个体认知功能越好";

                    //...暂定得分范围。。。。
                    Double r = Convert.ToDouble(T16Score.Text);
                    int j = 1;
                    if (T14Score.Text != "N/A")
                    {
                        r += Convert.ToDouble(T14Score.Text) / 7 * 100;
                        j++;
                    }
                    if (T15Score.Text != "N/A")
                    {
                        r += Convert.ToDouble(T15Score.Text) / 14 * 10;
                        j++;

                        Double c1 = Convert.ToDouble(T16Score.Text);
                        Double c2 = Convert.ToDouble(Util.AESDecrypt(rd["T15ScoreRS3"].ToString())) / 21 * 100;
                        c1 = (c1 + c2) / 2;
                        c1 = Math.Round(c1, 2);
                        R4C3.Text = c1.ToString();
                    }
                    r = r / j;
                    r = Math.Round(r, 2);
                    R4.Text = r.ToString();
                }

                if (rd["T17Score"].ToString() != "")
                {
                    dec = Convert.ToDecimal(Util.AESDecrypt(rd["T17Score"].ToString()));
                    dec = Math.Round(dec, 0);
                    T17Score.Text = dec.ToString();
                    T17ScoreAdd.Text = "各类攻击行为得分越高表明该类攻击性越强；<p>总分越高表明总体攻击性越强</p>";


                    Double r = Convert.ToDouble(T17Score.Text) / 4 * 10;
                    Double c = r;
                    c = Math.Round(c, 2);
                    R4C5.Text = c.ToString();
                    int j = 1;
                    if (T14Score.Text != "N/A")
                    {
                        r += Convert.ToDouble(T14Score.Text) /7 * 100;
                        j++;
                    }
                    if (T15Score.Text != "N/A")
                    {
                        r += Convert.ToDouble(T15Score.Text) / 14 * 10;
                        j++;

                        Double c1 = Convert.ToDouble(T17Score.Text) / 4 * 10;
                        Double c2 = Convert.ToDouble(Util.AESDecrypt(rd["T15ScoreRS5"].ToString())) / 28 * 100;
                        c1 = (c1 + c2)/2;
                        c1 = Math.Round(c1, 2);
                        R4C5.Text = c1.ToString();
                    }
                    if (T16Score.Text != "N/A")
                    {
                        r += Convert.ToDouble(T16Score.Text);
                        j++;
                    }
                    r = r / j;
                    r = Math.Round(r, 2);
                    R4.Text = r.ToString();
                }

                if (rd["T18Score"].ToString() != "")
                {
                    dec = Convert.ToDecimal(Util.AESDecrypt(rd["T18Score"].ToString()));
                    dec = Math.Round(dec, 0);
                    T18Score.Text = dec.ToString();
                    switch (T18Score.Text)
                    {
                        case "0":
                        case "1":
                        case "2":
                        case "3":
                        case "4":
                        case "5":
                            T18ScoreAdd.Text = "得分低于或等于5分，为低自杀风险";
                            break;
                        case "6":
                        case "7":
                        case "8":
                            T18ScoreAdd.Text = "得分在6~8分范围内，为中自杀风险";
                            break;
                        case "9":
                        case "10":
                        case "11":
                            T18ScoreAdd.Text = "得分在9~11分范围内，为高自杀风险";
                            break;
                        case "12":
                        case "13":
                        case "14":
                        case "15":
                        case "16":
                        case "17":
                        case "18":
                        case "19":
                        case "20":
                        case "21":
                        case "22":
                        case "23":
                        case "24":
                        case "25":
                            T18ScoreAdd.Text = "得分大于或等于12分，为极高自杀风险";
                            break;

                        default:
                            T18ScoreAdd.Text = "得分出错";
                            break;
                    }

                    Double r = Convert.ToDouble(T18Score.Text) / 15 * 100;
                    Double c = r;
                    c = Math.Round(c, 2);
                    R4C4.Text = c.ToString();
                    int j = 1;
                    if (T14Score.Text != "N/A")
                    {
                        r += Convert.ToDouble(T14Score.Text) / 7 * 100;
                        j++;
                    }
                    if (T15Score.Text != "N/A")
                    {
                        r += Convert.ToDouble(T15Score.Text) / 14 * 10;
                        j++;

                        Double c1 = Convert.ToDouble(T18Score.Text) / 15 * 100;
                        Double c2 = Convert.ToDouble(Util.AESDecrypt(rd["T15ScoreRS4"].ToString())) / 21 * 100;
                        c1 = (c1 + c2) / 2;
                        c1 = Math.Round(c1, 2);
                        R4C4.Text = c1.ToString();
                    }
                    if (T16Score.Text != "N/A")
                    {
                        r += Convert.ToDouble(T16Score.Text);
                        j++;
                    }
                    if (T17Score.Text != "N/A")
                    {
                        r += Convert.ToDouble(T17Score.Text) / 4 * 10;
                        j++;
                    }
                    r = r / j;
                    r = Math.Round(r, 2);
                    R4.Text = r.ToString();
                }

                if (rd["T19Score"].ToString() != "")
                {
                    dec = Convert.ToDecimal(Util.AESDecrypt(rd["T19Score"].ToString()));
                    dec = Math.Round(dec, 0);
                    T19Score.Text = dec.ToString();
                    T19ScoreAdd.Text = "常以总分等于6分作为是否存在抑郁症状划界分；<p>分数越高，抑郁越严重</p>";

                    Double r = Convert.ToDouble(T19Score.Text) / 27 * 100;
                    Double c = r;
                    c = Math.Round(c, 2);
                    R4C4.Text = c.ToString();
                    int j = 1;
                    if (T14Score.Text != "N/A")
                    {
                        r += Convert.ToDouble(T14Score.Text) / 7 * 100;
                        j++;
                    }
                    if (T15Score.Text != "N/A")
                    {
                        r += Convert.ToDouble(T15Score.Text) / 14 * 10;
                        j++;

                        Double c1 = Convert.ToDouble(T19Score.Text) / 27 * 100;
                        Double c2 = Convert.ToDouble(Util.AESDecrypt(rd["T15ScoreRS4"].ToString())) / 21 * 100;
                        c1 = (c1 + c2) / 2;
                        c1 = Math.Round(c1, 2);
                        R4C4.Text = c1.ToString();
                    }
                    if (T16Score.Text != "N/A")
                    {
                        r += Convert.ToDouble(T16Score.Text);
                        j++;
                    }
                    if (T17Score.Text != "N/A")
                    {
                        r += Convert.ToDouble(T17Score.Text) / 4 * 10;
                        j++;
                    }
                    if (T18Score.Text != "N/A")
                    {
                        r += Convert.ToDouble(T18Score.Text) / 15 * 100;
                        j++;

                        c = c / 2 + Convert.ToDouble(T18Score.Text) / 15 * 50;
                        c = Math.Round(c, 2);
                        R4C4.Text = c.ToString();
                    }
                    r = r / j;
                    r = Math.Round(r, 2);
                    R4.Text = r.ToString();

                    if ((T15Score.Text != "N/A")&&(T18Score.Text != "N/A"))
                    {
                        Double c0 = Convert.ToDouble(T18Score.Text) / 15 * 100;
                        Double c1 = Convert.ToDouble(T19Score.Text) / 27 * 100;
                        Double c2 = Convert.ToDouble(Util.AESDecrypt(rd["T15ScoreRS4"].ToString())) / 21 * 100;
                        c1 = (((c0 + c1) / 2) + c2) / 2;
                        c1 = Math.Round(c1, 2);
                        R4C4.Text = c1.ToString();
                    }
                }

                if (rd["T20Score"].ToString() != "")
                {
                    dec = Convert.ToDecimal(Util.AESDecrypt(rd["T20Score"].ToString()));
                    dec = Math.Round(dec, 0);
                    T20Score.Text = dec.ToString();
                    T20ScoreAdd.Text = "得分越高症状越重";
                }

                if (rd["T21Score"].ToString() != "")
                {
                    dec = Convert.ToDecimal(Util.AESDecrypt(rd["T21Score"].ToString()));
                    dec = Math.Round(dec, 0);
                    T21Score.Text = dec.ToString();
                    T21ScoreAdd.Text = "得分越高，锥体外系副反应越重";
                }

                if (rd["T22Score"].ToString() != "")
                {
                    dec = Convert.ToDecimal(Util.AESDecrypt(rd["T22Score"].ToString()));
                    dec = Math.Round(dec, 0);
                    T22Score.Text = dec.ToString();
                    switch (T22Score.Text)
                    {
                        case "0":
                            T22ScoreAdd.Text = "依从性良好";
                            break;

                        case "1":
                        case "2":
                            T22ScoreAdd.Text = "依从性中等";
                            break;

                        case "3":
                        case "4":
                            T22ScoreAdd.Text = "依从性差";
                            break;
                        default:
                            T22ScoreAdd.Text = "得分出错";
                            break;
                    }

                    Double r = Convert.ToDouble(T22Score.Text) / 4 * 100;
                    r = Math.Round(r, 2);
                    R5.Text = r.ToString();
                    R5C1.Text = r.ToString();
                }

                if (rd["T23Score"].ToString() != "")
                {
                    dec = Convert.ToDecimal(Util.AESDecrypt(rd["T23Score"].ToString()));
                    dec = Math.Round(dec, 0);
                    T23Score.Text = dec.ToString();
                    T23ScoreAdd.Text = "得分越高，则自知力和治疗态度越好";

                    if (T22Score.Text != "N/A")
                    {
                        Double r = Convert.ToDouble(R5.Text) * 0.5 + Convert.ToDouble(T23Score.Text) / 22 * 50;
                        r = Math.Round(r, 2);
                        R5.Text = r.ToString();
                        R5C1.Text = r.ToString();
                    }
                    else
                    {
                        Double r = Convert.ToDouble(T23Score.Text) / 22 * 100;
                        r = Math.Round(r, 2);
                        R5.Text = r.ToString();
                        R5C1.Text = r.ToString();
                    }
                }

                if (rd["T24Score"].ToString() != "")
                {
                    dec = Convert.ToDecimal(Util.AESDecrypt(rd["T24Score"].ToString()));
                    dec = Math.Round(dec, 0);
                    T24Score.Text = dec.ToString();
                    T24ScoreAdd.Text = "得分越高，药物自我管理能力越强";

                    R5C2.Text = dec.ToString();

                    Double r = 0;
                    int j = 0;
                    if (T22Score.Text != "N/A")
                    {
                        r += Convert.ToDouble(T22Score.Text) / 4 * 100;
                        j++;
                    }
                    if (T23Score.Text != "N/A")
                    {
                        r += Convert.ToDouble(T23Score.Text) / 22 * 100;
                        j++;
                    }

                    if (j != 0)
                    {
                        r = r / j;
                    }
                    r = (Convert.ToDouble(T24Score.Text) + r) / 2;
                    r = Math.Round(r, 2);
                    R5.Text = r.ToString();
                }

                if (rd["T25Score"].ToString() != "")
                {
                    dec = Convert.ToDecimal(Util.AESDecrypt(rd["T25Score"].ToString()));
                    dec = Math.Round(dec, 0);
                    T25Score.Text = dec.ToString();
                    T25ScoreAdd.Text = "得分越高，说明被试的社会支持程度越好";

                    Double r = Convert.ToDouble(T25Score.Text) / 64 * 100;
                    r = Math.Round(r, 2);
                    R6.Text = r.ToString();
                    R6C3.Text = r.ToString();
                }

                if (rd["T26Score"].ToString() != "")
                {
                    dec = Convert.ToDecimal(Util.AESDecrypt(rd["T26Score"].ToString()));
                    dec = Math.Round(dec, 0);
                    T26Score.Text = dec.ToString();
                    T26ScoreAdd.Text = "得分越低，功能越好";

                    Double c = Convert.ToDouble(T26Score.Text) / 24 * 10;
                    c = Math.Round(c, 2);
                    R6C1.Text = c.ToString();

                    if (T25Score.Text != "N/A")
                    {
                        Double r = Convert.ToDouble(R6.Text) * 0.5 + Convert.ToDouble(T26Score.Text) / 24 * 5;
                        r = Math.Round(r, 2);
                        R6.Text = r.ToString();
                    }
                    else
                    {
                        Double r = Convert.ToDouble(T26Score.Text) / 24 * 10;
                        r = Math.Round(r, 2);
                        R6.Text = r.ToString();
                    }
                }

                if (rd["T27Score"].ToString() != "")
                {
                    dec = Convert.ToDecimal(Util.AESDecrypt(rd["T27Score"].ToString()));
                    dec = Math.Round(dec, 0);
                    T27Score.Text = dec.ToString();
                    T27ScoreAdd.Text = "分数越高，则婚姻状况越好";

                    Double r = Convert.ToDouble(T27Score.Text);
                    Double c = r;
                    c = Math.Round(c, 2);
                    R6C2.Text = c.ToString();
                    int j = 1;
                    if (T25Score.Text != "N/A")
                    {
                        r += Convert.ToDouble(T25Score.Text) / 64 * 100;
                        j++;
                    }
                    if (T26Score.Text != "N/A")
                    {
                        r += Convert.ToDouble(T26Score.Text) / 24 * 10;
                        j++;
                    }
                    r = r / j;
                    r = Math.Round(r, 2);
                    R6.Text = r.ToString();
                }

                if (rd["T28Score"].ToString() != "")
                {
                    dec = Convert.ToDecimal(Util.AESDecrypt(rd["T28Score"].ToString()));
                    dec = Math.Round(dec, 0);
                    T28Score.Text = dec.ToString();
                    T28ScoreAdd.Text = "分数越高，则医疗资源越好";

                    Double r = Convert.ToDouble(T28Score.Text);
                    Double c = r;
                    c = Math.Round(c, 2);
                    R6C4.Text = c.ToString();
                    int j = 1;
                    if (T25Score.Text != "N/A")
                    {
                        r += Convert.ToDouble(T25Score.Text) / 64 * 100;
                        j++;
                    }
                    if (T26Score.Text != "N/A")
                    {
                        r += Convert.ToDouble(T26Score.Text) / 24 * 10;
                        j++;
                    }
                    if (T27Score.Text != "N/A")
                    {
                        r += Convert.ToDouble(T27Score.Text);
                        j++;
                    }
                    r = r / j;
                    r = Math.Round(r, 2);
                    R6.Text = r.ToString();
                }

            }
            rd.Close();

            cmd.CommandText = "select * from Format where GUID=@GUID";
            cmd.Parameters.AddWithValue("@GUID", Session["HospitalGUID"].ToString() + "f");
            rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                RF1Text.Text = rd["RF1Text"].ToString() + "：";
                RF2Text.Text = rd["RF2Text"].ToString() + "：";
                RF3Text.Text = rd["RF3Text"].ToString() + "：";
                RF4Text.Text = rd["RF4Text"].ToString() + "：";
                RF5Text.Text = rd["RF5Text"].ToString() + "：";
                RF6Text.Text = rd["RF6Text"].ToString() + "：";
                RF7Text.Text = rd["RF7Text"].ToString() + "：";
                RF8Text.Text = rd["RF8Text"].ToString() + "：";
                RF9Text.Text = rd["RF9Text"].ToString() + "：";
                
                RF1Value.Text = rd["RF1Value"].ToString();
                RF2Value.Text = rd["RF2Value"].ToString();
                RF3Value.Text = rd["RF3Value"].ToString();
                RF4Value.Text = rd["RF4Value"].ToString();
                RF5Value.Text = rd["RF5Value"].ToString();
                RF6Value.Text = rd["RF6Value"].ToString();
                RF7Value.Text = rd["RF7Value"].ToString();
                RF8Value.Text = rd["RF8Value"].ToString();
                RF9Value.Text = rd["RF9Value"].ToString();
                
            }
            rd.Close();

            cmd.CommandText = "select * from Patient where GUID=@PatientGUID";
            cmd.Parameters.AddWithValue("@PatientGUID", PatientGUID.Text);
            rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                if (RF1Value.Text != "")
                {
                    if (RF1Value.Text == "Birthday")
                    {
                        RF1.Text = String.Format("{0:yyyy 年 MM 月 dd日}", rd["Birthday"]);
                    }
                    else
                    {
                        RF1.Text = rd["" + RF1Value.Text + ""].ToString();
                    }
                }
                else
                {
                    RF1Text.Style["display"] = "none";
                    RF1.Style["display"] = "none";
                }

                if (RF2Value.Text != "")
                {
                    if (RF2Value.Text == "Birthday")
                    {
                        RF2.Text = String.Format("{0:yyyy 年 MM 月 dd日}", rd["Birthday"]);
                    }
                    else
                    {
                        RF2.Text = rd["" + RF2Value.Text + ""].ToString();
                    }
                }
                else
                {
                    RF2Text.Style["display"] = "none";
                    RF2.Style["display"] = "none";
                }

                if (RF3Value.Text != "")
                {
                    if (RF3Value.Text == "Birthday")
                    {
                        RF3.Text = String.Format("{0:yyyy 年 MM 月 dd日}", rd["Birthday"]);
                    }
                    else
                    {
                        RF3.Text = rd["" + RF3Value.Text + ""].ToString();
                    }
                }
                else
                {
                    RF3Text.Style["display"] = "none";
                    RF3.Style["display"] = "none";
                }

                if (RF4Value.Text != "")
                {
                    if (RF4Value.Text == "Birthday")
                    {
                        RF4.Text = String.Format("{0:yyyy 年 MM 月 dd日}", rd["Birthday"]);
                    }
                    else
                    {
                        RF4.Text = rd["" + RF4Value.Text + ""].ToString();
                    }
                }
                else
                {
                    RF4Text.Style["display"] = "none";
                    RF4.Style["display"] = "none";
                }

                if (RF5Value.Text != "")
                {
                    if (RF5Value.Text == "Birthday")
                    {
                        RF5.Text = String.Format("{0:yyyy 年 MM 月 dd日}", rd["Birthday"]);
                    }
                    else
                    {
                        RF5.Text = rd["" + RF5Value.Text + ""].ToString();
                    }
                }
                else
                {
                    RF5Text.Style["display"] = "none";
                    RF5.Style["display"] = "none";
                }

                if (RF6Value.Text != "")
                {
                    if (RF6Value.Text == "Birthday")
                    {
                        RF6.Text = String.Format("{0:yyyy 年 MM 月 dd日}", rd["Birthday"]);
                    }
                    else
                    {
                        RF6.Text = rd["" + RF6Value.Text + ""].ToString();
                    }
                }
                else
                {
                    RF6Text.Style["display"] = "none";
                    RF6.Style["display"] = "none";
                }

                if (RF7Value.Text != "")
                {
                    if (RF7Value.Text == "Birthday")
                    {
                        RF7.Text = String.Format("{0:yyyy 年 MM 月 dd日}", rd["Birthday"]);
                    }
                    else
                    {
                        RF7.Text = rd["" + RF7Value.Text + ""].ToString();
                    }
                }
                else
                {
                    RF7Text.Style["display"] = "none";
                    RF7.Style["display"] = "none";
                }

                if (RF8Value.Text != "")
                {
                    if (RF8Value.Text == "Birthday")
                    {
                        RF8.Text = String.Format("{0:yyyy 年 MM 月 dd日}", rd["Birthday"]);
                    }
                    else
                    {
                        RF8.Text = rd["" + RF8Value.Text + ""].ToString();
                    }
                }
                else
                {
                    RF8Text.Style["display"] = "none";
                    RF8.Style["display"] = "none";
                }

                if (RF9Value.Text != "")
                {
                    if (RF9Value.Text == "Birthday")
                    {
                        RF9.Text = String.Format("{0:yyyy 年 MM 月 dd日}", rd["Birthday"]);
                    }
                    else
                    {
                        RF9.Text = rd["" + RF9Value.Text + ""].ToString();
                    }
                }
                else
                {
                    RF9Text.Style["display"] = "none";
                    RF9.Style["display"] = "none";
                }

            }
            rd.Close();

            cmd.CommandText = "select * from [Hospital] where [GUID] = @HospitalGUID";
            cmd.Parameters.AddWithValue("@HospitalGUID", Session["HospitalGUID"].ToString());
            rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                HospitalName.Text = rd["HospitalName"].ToString();
            }
            rd.Close();

            conn.Close();

            Double aver = 0.0;
            int averCount = 0;
            if (R1.Text != "N/A")
            {
                aver += Convert.ToDouble(R1.Text);
                averCount++;
            }
            if (R2.Text != "N/A")
            {
                aver += Convert.ToDouble(R2.Text);
                averCount++;
            }
            if (R3.Text != "N/A")
            {
                aver += Convert.ToDouble(R3.Text);
                averCount++;
            }
            if (R4.Text != "N/A")
            {
                aver += Convert.ToDouble(R4.Text);
                averCount++;
            }
            if (R5.Text != "N/A")
            {
                aver += Convert.ToDouble(R5.Text);
                averCount++;
            }
            if (R6.Text != "N/A")
            {
                aver += Convert.ToDouble(R6.Text);
                averCount++;
            }
            aver = aver / averCount;
            aver = Math.Round(aver, 2);
            Average.Text = aver.ToString();
            
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int i = 0;
        using (SqlConnection conn = new DB().GetConnection())
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "Update Report set Remark = @Remark where GUID=@GUID";
            cmd.Parameters.AddWithValue("@GUID", GUID.Text);
            cmd.Parameters.AddWithValue("@Remark", Remark.Text);
            conn.Open();
            i = cmd.ExecuteNonQuery();
            conn.Close();
        }
        if (i == 1)
        {
            Response.Write(" <script> alert(\"保存成功！\"); </script> ");
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect(Server.HtmlEncode("ReportS_List.aspx"));
    }
    protected void Button4_Click(object sender, EventArgs e)
    {

        Cover1.Style["display"] = "block";
    }
    protected void Close_Click(object sender, EventArgs e)
    {
        Label1.Text = "";
        ArTagName.Text = "";
        Cover1.Style["display"] = "none";
    }
    protected void Sure2_Click(object sender, EventArgs e)
    {
        ArticleTagAdd();
        Cover1.Style["display"] = "none";
    }
    private void MyDataBind()
    {
        using (SqlConnection conn = new DB().GetConnection())
        {
            SqlCommand cmd = conn.CreateCommand();
            conn.Open();
            cmd.CommandText = "select * from  [CommonWord]  order by ID desc  ";

            SqlDataReader rd = cmd.ExecuteReader();
            TagsList.DataSource = rd;
            TagsList.DataTextField = "CommonWord";
            TagsList.DataValueField = "ID";
            TagsList.DataBind();

            rd.Close();

        }

    }

    protected void AddArTag_Click(object sender, EventArgs e)
    {
        if (ArTagName.Text == "")
        {
            Label1.Text = "请输入文字";
            Label1.ForeColor = System.Drawing.Color.Red;
        }
        else { ArticleTag(); }

    }

    private void ArticleTag()
    {

        using (SqlConnection conn = new DB().GetConnection())
        {

            SqlCommand cmd = conn.CreateCommand();
            conn.Open();
            cmd.CommandText = "select * from  [CommonWord] where CommonWord=@CommonWord";
            cmd.Parameters.AddWithValue("@CommonWord", ArTagName.Text);
            SqlDataReader rd = cmd.ExecuteReader();

            if (!rd.Read())
            {
                Label1.Text = "";
                using (SqlConnection conn1 = new DB().GetConnection())
                {
                    StringBuilder sb = new StringBuilder("insert into CommonWord(CommonWord)");
                    sb.Append(" values ( @CommonWord) ");
                    SqlCommand cmd1 = new SqlCommand(sb.ToString(), conn1);
                    cmd1.Parameters.AddWithValue("@CommonWord", ArTagName.Text);

                    conn1.Open();
                    cmd1.ExecuteNonQuery();

                }
                MyDataBind();
                TagsList.Items[0].Selected = true;
            }
            else
            {
                Label1.Text = "该常用语已经存在，无需添加！";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
            rd.Close();
            conn.Close();

        }



    }

    private void ArticleTagAdd()
    {
        string tags = "";
        for (int i = 0; i <= TagsList.Items.Count - 1; i++)
        {
            if (TagsList.Items[i].Selected == true)
            {
                tags += "，" + TagsList.Items[i].Text;
            }

        }
        if (tags != "")
        {
            tags = tags.Substring(1);
            Remark.Text = Remark.Text + tags;   ///选择的“文章标签”对应的ID
            for (int i = 0; i <= TagsList.Items.Count - 1; i++)
            {
                if (TagsList.Items[i].Selected == true)
                {
                    TagsList.Items[i].Selected = false;
                }

            }
        }
    }

}
