using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Text;

public partial class T8 : System.Web.UI.Page
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

                if (Request.QueryString["GUID"] != null)
                {
                    StartDT.Text = DateTime.Now.ToString();
                    System.Guid guid = System.Guid.NewGuid();
                    string strGUID = System.Guid.NewGuid().ToString();
                    GUID.Text = strGUID;
                    TestName.Text = "躯体健康维度 (PH)";
                    PatientGUID.Text = Request.QueryString["GUID"].ToString();
                    DoctorGUID.Text = Session["DoctorGUID"].ToString();
                    if (Session["Code"] == null)
                    {
                        Cover.Style["display"] = "none";
                        Cover1.Style["display"] = "none";
                    }
                    else
                    {
                        Cover.Style["display"] = "block";
                        Cover1.Style["display"] = "block";
                    }

                    using (SqlConnection conn = new DB().GetConnection())
                    {
                        SqlCommand cmd = conn.CreateCommand();
                        cmd.CommandText = "select * from Patient where GUID=@GUID";
                        conn.Open();
                        cmd.Parameters.AddWithValue("@GUID", PatientGUID.Text);
                        SqlDataReader rd = null;
                        rd = cmd.ExecuteReader();
                        if (rd.Read())
                        {
                            Sex.Text = rd["Sex"].ToString().Trim();
                        }
                        rd.Close();

                    }
                    if (Sex.Text == "男") { QTCBoy.Visible = true; QTCGirl.Visible = false; }
                    if (Sex.Text == "女") { QTCGirl.Visible = true; QTCBoy.Visible = false; }
                }
                else
                {
                    Button1.Visible = false;
                    Button1.Enabled = false;

                }
          
            }

        }
    }

    private void InsertDatabase()
    {
        int i = 0;
        EndDT.Text = DateTime.Now.ToString();
        string QTC, BP_ScoreExplain, BS_ScoreExplain, BF_ScoreExplain, HW_ScoreExplain, Waist_ScoreExplain = "";
        decimal HW_Score, Waist_Score, QTC_Score, BP_Score, BS_Score, BF_Score, SQ_Score, RawScore, RS1, RS2, RS3, RS4, RS5, RS6 = 0;
        double R1, R5, C6, G6, L6, H6 = 0;
        int R4,S4 = 0;
       
        if (Sex.Text == "男")
        { 
            //Waist_Score腰围分数，QTC_Score心电图分数；
            QTC = QTCBoy.SelectedItem.Text;
            QTC_Score = Convert.ToDecimal(QTCBoy.SelectedItem.Value);

            if (Convert.ToInt16(Waist.Text) <= 90) { Waist_Score = 1; Waist_ScoreExplain = "正常"; }
            else if (Convert.ToInt16(Waist.Text) > 90 && Convert.ToInt16(Waist.Text) <= 101) { Waist_Score = 2; Waist_ScoreExplain = "增粗"; }
            else { Waist_Score = 3; Waist_ScoreExplain = "过粗"; }
          

        }

        else
        {
            QTC = QTCGirl.SelectedItem.Text;
            QTC_Score = Convert.ToDecimal(QTCGirl.SelectedItem.Value);

            if (Convert.ToInt16(Waist.Text) <= 80) { Waist_Score = 1; Waist_ScoreExplain = "正常"; }
            else if (Convert.ToInt16(Waist.Text) > 80 && Convert.ToInt16(Waist.Text) <= 87) { Waist_Score = 2; Waist_ScoreExplain = "加粗"; }
            else { Waist_Score = 3; Waist_ScoreExplain = "过粗"; }
            
        }

        //HW_Score体重指数
        double BeforeR1=0;
      
        R1 = Convert.ToDouble(Weight.Text) / ((Convert.ToDouble(Height.Text) / 100) * (Convert.ToDouble(Height.Text) / 100));
        R1 = Math.Round(R1,1);

        using (SqlConnection conn = new DB().GetConnection())
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select top 1* from T8  where PatientGUID=@PatientGUID order by StartDT desc";
            conn.Open();
            cmd.Parameters.AddWithValue("@PatientGUID", PatientGUID.Text);
            SqlDataReader rd = null;
            rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                BeforeR1 = Convert.ToDouble(rd["Weight"].ToString()) / ((Convert.ToDouble(rd["Height"].ToString()) / 100) * (Convert.ToDouble(rd["Height"].ToString()) / 100));
            }
            else { BeforeR1 = R1; }
            rd.Close();

        }

        double cp;
        cp =  (R1 - BeforeR1) / BeforeR1;

        if ((R1 >= 18.5 && R1 <= 24.9)|| cp<0.07) {
            HW_Score = 1;
            HW_ScoreExplain = "正常";

        }
        else if ((R1 >= 25 && R1 < 29.9) || R1 < 18.5 || (cp>0.07&&cp<0.1))
        {
            HW_Score = 2;
            HW_ScoreExplain = "超重/ 过轻";
        }
        else { HW_Score = 3;
        HW_ScoreExplain = "肥胖";
        }

        //血压分数
        
            R4 = Convert.ToInt16(BP1.Text);
            S4 = Convert.ToInt16(BP2.Text);
            if ((R4 >= 90 && R4 <= 139) || S4 >= 60 && S4 <= 89) { BP_Score = 1; BP_ScoreExplain = "正常"; }
            else if ((R4 >= 140 && R4 <= 159) || S4 >= 90 && S4 <= 99) { BP_Score = 2; BP_ScoreExplain = "高血压1期"; }
            else if ((R4 >= 160 && R4 <= 179) || S4 >= 100 && S4 <= 109) { BP_Score = 3; BP_ScoreExplain = "高血压2期"; }
            else if ((R4 >= 180) || S4 >= 110) { BP_Score = 4; BP_ScoreExplain = "高血压3期"; }
            else { BP_Score = Convert.ToDecimal(BP3.SelectedItem.Value); BP_ScoreExplain = "低血压; " + BP3.SelectedItem.Text; }
        
      
        //BS_Score血糖分数/糖代谢
            R5 = Convert.ToDouble(BS1.Text);
            if (R5 >= 2.8 && R5 < 5.6) { BS_Score = 1; BS_ScoreExplain = "正常"; }
            else if (R5 >= 5.6 && R5 <= 6.9) { BS_Score = 2; BS_ScoreExplain = "轻度异常"; }
            else if (R5 > 6.9) { BS_Score = 3; BS_ScoreExplain = "明显异常"; }
            else { BS_Score = Convert.ToDecimal(BS2.SelectedItem.Value); BS_ScoreExplain = "低血糖; "+ BS2.SelectedItem.Text; }
        
     
        //BF_Score血脂分数

        C6 = Convert.ToDouble(TC.Text);
        G6 = Convert.ToDouble(TG.Text);
        L6 = Convert.ToDouble(HDLC.Text);
        H6 = Convert.ToDouble(LDLC.Text);

        if (C6 < 5.2 && L6 < 3.4 && H6 >= 1.0 && G6 < 1.7) { BF_Score = 1; BF_ScoreExplain = "正常水平"; }
        else if ((C6 >= 5.2 && C6 < 6.2) || (L6 >= 3.4 && L6 < 4.1) || (G6 >= 1.7 && G6 < 2.3)) { BF_Score = 2; BF_ScoreExplain = "边缘异常"; }
        else { BF_Score = 3; BF_ScoreExplain = "异常"; }


        //物质滥用分数
        SQ_Score = Convert.ToDecimal(SmokingFQ.SelectedItem.Value) + Convert.ToDecimal(SmokingDosage.SelectedItem.Value) + Convert.ToDecimal(DrinkFQ.SelectedItem.Value) + Convert.ToDecimal(DrinkDosage.SelectedItem.Value);

        //RawScore = RS1 + RS2 + RS3 + RS4 + RS5 + RS6 + RS7;

        RS1 = 100 - ((HW_Score - 1) / 2 * 100);
        RS2 = 100 - ((Waist_Score - 1) / 2 * 100);
        RS3 = 100 - ((BS_Score - 1) / 2 * 100);
        RS4 = 100 - ((BF_Score - 1) / 2 * 100);
        RS5 = (  (100 - ((QTC_Score - 1) / 2 * 100)) + (100 - ((BP_Score - 1) / 3 * 100))   ) / 2;
      //  RS5 = 100 - ((QTC_Score - 1) / 2 * 100);
      //  RS5 = RS5 + (100 - ((QTC_Score - 1) / 3 * 100));
        //RS5 = RS5 / 2;
        RS6 = 100 - ((SQ_Score - 4) / 12 * 100);
        RawScore = RS1 + RS2 + RS3 + RS4 + RS5 + RS6;

        if (HBA1c.Text == "") { HBA1c.Text = "0"; }
        if (LP.Text == "") { LP.Text = "0"; }
        if (apoA.Text == "") { apoA.Text = "0"; }
        if (apoB.Text == "") { apoB.Text = "0"; }
        if (HR.Text == "") { HR.Text = "0"; }

       //Response.Write(" <script> alert('增值： " + cp + "'); </script> ");
       //Response.Write(" <script> alert('现值值： " + R1 + "'); </script> ");
       // Response.Write(" <script> alert('体重指数_分数：" + RS1 + "'); </script> ");
        //Response.Write(" <script> alert('腰围分数：" + RS2 + "'); </script> ");
        //Response.Write(" <script> alert('心电图分数：" + RS3 + "'); </script> ");
        //Response.Write(" <script> alert('血压分数：" + RS4 + "'); </script> ");
        //Response.Write(" <script> alert('血糖分数：" + BS_Score + "'); </script> ");
        //Response.Write(" <script> alert('血脂分数：" + RS6 + "'); </script> ");
        //Response.Write(" <script> alert('物质滥用分数：" + RS7 + "'); </script> ");


        using (SqlConnection conn = new DB().GetConnection())
        {
            StringBuilder sb = new StringBuilder("Insert into T8 ( GUID,TestName,PatientGUID,StartDT,EndDT,RS1,RS2,RS3,RS4,RS5,RS6,RawScore,DoctorGUID,Height,Weight,HW_Score,HW_ScoreExplain,Waist,Waist_Score,Waist_ScoreExplain,HR,QTC,QTC_Score,QTC_Add,BP1,BP2,BP3,BP_Score,BP_ScoreExplain,BS1,BS2,BS_Score,BS_ScoreExplain,HBA1c,TC,TG,HDLC,LDLC,BF_Score,BF_ScoreExplain, LP,apoA,apoB,SmokingFQ,SmokingDosage,DrinkFQ,DrinkDosage,SQ_Score,Other)");
            sb.Append(" values ( @GUID,@TestName,@PatientGUID,@StartDT,@EndDT,@RS1,@RS2,@RS3,@RS4,@RS5,@RS6,@RawScore,@DoctorGUID,@Height,@Weight,@HW_Score,@HW_ScoreExplain,@Waist,@Waist_Score,@Waist_ScoreExplain,@HR,@QTC,@QTC_Score,@QTC_Add,@BP1,@BP2,@BP3,@BP_Score,@BP_ScoreExplain,@BS1,@BS2,@BS_Score,@BS_ScoreExplain,@HBA1c,@TC,@TG,@HDLC,@LDLC,@BF_Score,@BF_ScoreExplain,@LP,@apoA,@apoB,@SmokingFQ,@SmokingDosage,@DrinkFQ,@DrinkDosage,@SQ_Score,@Other)");

            SqlCommand cmd = new SqlCommand(sb.ToString(), conn);

            cmd.Parameters.AddWithValue("@GUID", GUID.Text);
            cmd.Parameters.AddWithValue("@TestName", TestName.Text);
            cmd.Parameters.AddWithValue("@PatientGUID", PatientGUID.Text);
            cmd.Parameters.AddWithValue("@StartDT", StartDT.Text);
            cmd.Parameters.AddWithValue("@EndDT", EndDT.Text);
            cmd.Parameters.AddWithValue("@HW_Score", Util.AESEncrypt(HW_Score.ToString()));
            cmd.Parameters.AddWithValue("@HW_ScoreExplain", HW_ScoreExplain);
            cmd.Parameters.AddWithValue("@Waist_Score", Util.AESEncrypt(Waist_Score.ToString()));
            cmd.Parameters.AddWithValue("@RS1", Util.AESEncrypt(RS1.ToString()));
            cmd.Parameters.AddWithValue("@RS2", Util.AESEncrypt(RS2.ToString()));
            cmd.Parameters.AddWithValue("@RS3", Util.AESEncrypt(RS3.ToString()));
            cmd.Parameters.AddWithValue("@RS4", Util.AESEncrypt(RS4.ToString()));
            cmd.Parameters.AddWithValue("@RS5", Util.AESEncrypt(RS5.ToString()));
            cmd.Parameters.AddWithValue("@RS6", Util.AESEncrypt(RS6.ToString()));

            cmd.Parameters.AddWithValue("@QTC_Score", Util.AESEncrypt(QTC_Score.ToString()));
            cmd.Parameters.AddWithValue("@BP_Score", Util.AESEncrypt(BP_Score.ToString()));
            cmd.Parameters.AddWithValue("@BS_Score", Util.AESEncrypt(BS_Score.ToString()));
            cmd.Parameters.AddWithValue("@BF_Score", Util.AESEncrypt(BF_Score.ToString()));
            cmd.Parameters.AddWithValue("@SQ_Score", Util.AESEncrypt(SQ_Score.ToString()));
            cmd.Parameters.AddWithValue("@RawScore", Util.AESEncrypt(RawScore.ToString()));
            cmd.Parameters.AddWithValue("@DoctorGUID", DoctorGUID.Text);
            cmd.Parameters.AddWithValue("@Height", Height.Text);
            cmd.Parameters.AddWithValue("@Weight", Weight.Text);
            cmd.Parameters.AddWithValue("@Waist", Waist.Text);
            cmd.Parameters.AddWithValue("@Waist_ScoreExplain", Waist_ScoreExplain);
            cmd.Parameters.AddWithValue("@HR", HR.Text);
            cmd.Parameters.AddWithValue("@QTC", QTC);
            cmd.Parameters.AddWithValue("@QTC_Add", QTC_Add.Text);
            cmd.Parameters.AddWithValue("@BP1", BP1.Text);
            cmd.Parameters.AddWithValue("@BP2", BP2.Text);
            cmd.Parameters.AddWithValue("@BP3", BP3.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@BP_ScoreExplain", BP_ScoreExplain);
            cmd.Parameters.AddWithValue("@BS1", BS1.Text);
            cmd.Parameters.AddWithValue("@BS2", BS2.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@BS_ScoreExplain", BS_ScoreExplain);
            cmd.Parameters.AddWithValue("@HBA1c", HBA1c.Text);
            cmd.Parameters.AddWithValue("@TC", TC.Text);
            cmd.Parameters.AddWithValue("@TG", TG.Text);
            cmd.Parameters.AddWithValue("@HDLC", HDLC.Text);
            cmd.Parameters.AddWithValue("@LDLC", LDLC.Text);
            cmd.Parameters.AddWithValue("@BF_ScoreExplain", BF_ScoreExplain);
            cmd.Parameters.AddWithValue("@LP", LP.Text);
            cmd.Parameters.AddWithValue("@apoA", apoA.Text);
            cmd.Parameters.AddWithValue("@apoB", apoB.Text);
            cmd.Parameters.AddWithValue("@SmokingFQ", SmokingFQ.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@SmokingDosage", SmokingDosage.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@DrinkFQ", DrinkFQ.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@DrinkDosage", DrinkDosage.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Other", Other.Text);



            conn.Open();
            i = cmd.ExecuteNonQuery();


            if (i == 1)
            {
                if (Session["Code"] == null)
                {
                     Response.Write(" <script> alert(\"成功提交！\");;window.location='R8.aspx?TGUID=" + GUID.Text + "&TNum=8'; </script> ");
                }
                else
                {
                    Response.Write(" <script> window.location='Login.aspx'; </script> ");//自评测试完成后回到登录页
                    DelectCode();//删除已完成的自评码
                }
            
              
              
            }
            else
            {
                Response.Write(" <script> alert(\"提交失败！请重试或关闭页面。\"); </script> ");
            }
        }


    }

    //删除已完成的自评码
    private void DelectCode()
    {
        string Code = Session["Code"].ToString();
        using (SqlConnection conn = new DB().GetConnection())
        {
            SqlCommand cmd = conn.CreateCommand();
            {
                cmd.CommandText = "Delete from Code where [Code] = @Code";
                cmd.Parameters.AddWithValue("@Code", Code);
                conn.Open();
                cmd.ExecuteNonQuery();
                cmd.Dispose();
                conn.Close();
            }
        }
    }

    public bool IsNumber(string str_number)
    {
        return System.Text.RegularExpressions.Regex.//使用正则表达式判断是否匹配
            IsMatch(str_number, @"^[0-9]*$");
    }

    public bool IsNumber1(string str_number1)
    {
        return System.Text.RegularExpressions.Regex.//使用正则表达式判断是否匹配
            IsMatch(str_number1, @"^[0-9]\d*(\.\d*[0-9])?");
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        string errors="";
        if (!IsNumber(Height.Text.Trim()) || Height.Text == "")
        {
            errors += "请填入正确身高值/cm" + "、";
        }
        if (!IsNumber(Weight.Text.Trim()) || Weight.Text == "")
        {
            errors += "请填入正确体重值/kg" + "、";
        }
        if (!IsNumber(Waist.Text.Trim()) || Waist.Text == "")
        {
            errors += "请填入正确腰围值/cm" + "、";
        }
       
        if (!IsNumber(BP1.Text.Trim()) || !IsNumber(BP2.Text.Trim()) || BP2.Text == "" || BP1.Text == "")
        {
            errors += "请将“血压”填写完整" + "、";
        }
        if (!IsNumber1(BS1.Text.Trim()) || BS1.Text == "")
        {
            errors += "请填入正确血糖值/ mmol/l" + "、";
        }
        if (TC.Text == "" || TG.Text == "" || HDLC.Text == "" || LDLC.Text == "" || !IsNumber1(TC.Text.Trim()) || !IsNumber1(TG.Text.Trim()) || !IsNumber1(HDLC.Text.Trim()) || !IsNumber1(LDLC.Text.Trim())) {
            errors += "请将“血脂”中TC,TG,HDLC,LDLC填写完整" + "、";
        }

        //if ((!IsNumber(Height.Text.Trim()) && Height.Text != "" )|| (!IsNumber(Weight.Text.Trim()) && Weight.Text != "" )|| !IsNumber(Waist.Text.Trim())|| !IsNumber(HR.Text.Trim()))
        //{

        //    Response.Write(" <script> alert(\"提交失败！前6道题要求输入整数且一，二题不能为空。\"); </script> ");
        //}
        //else if (!IsNumber1(BS1.Text.Trim()) || !IsNumber1(HBA1c.Text.Trim()) || !IsNumber1(TC.Text.Trim()) || !IsNumber1(TG.Text.Trim()) || !IsNumber1(HDLC.Text.Trim()) || !IsNumber1(LDLC.Text.Trim()) || !IsNumber1(LP.Text.Trim()) || !IsNumber1(apoA.Text.Trim()) || !IsNumber1(apoB.Text.Trim()))
        //{
        //    Response.Write(" <script> alert(\"提交失败！请在糖化血红蛋白，血脂中输入正确数值。（只能输入数值）\"); </script> ");
        //}
        //else if (TC.Text == null || TG.Text == null || HDLC.Text == null || LDLC.Text == null)
        //{
        //    Response.Write(" <script> alert(\"提交失败！请在糖化血红蛋白，血脂中输入正确数值。（只能输入数值）\"); </script> ");
        //}
            Error.Text=errors;
            if (Error.Text =="") {
               InsertDatabase();
                
            }
            else
            {
                 Error.Visible = true;
            }
       
    }
  
  
}