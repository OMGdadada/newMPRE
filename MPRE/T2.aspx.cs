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

public partial class T2 : System.Web.UI.Page
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
                    TestName.Text = "个人与社会表现量表(PSP)";
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

        decimal RawScore, RS1, RS2, RS3, RS4, RSAverage, A, B, C, D, RS = 0;
        double RSRS = 0;
        RSRS = ((Convert.ToDouble(DDL1.SelectedValue) + Convert.ToDouble(DDL2.SelectedValue) + Convert.ToDouble(DDL3.SelectedValue) + Convert.ToDouble(DDL4.SelectedValue) + Convert.ToDouble(DDL5.SelectedValue) + Convert.ToDouble(DDL6.SelectedValue)) / 6);
        RS1 = Convert.ToDecimal(RSRS);

        RSRS = ((Convert.ToDouble(DDL7.SelectedValue) + Convert.ToDouble(DDL8.SelectedValue) + Convert.ToDouble(DDL9.SelectedValue) + Convert.ToDouble(DDL10.SelectedValue) + Convert.ToDouble(DDL11.SelectedValue) + Convert.ToDouble(DDL12.SelectedValue)) / 6);
        RS2 = Convert.ToDecimal(RSRS);

        RSRS = ((Convert.ToDouble(DDL13.SelectedValue) + Convert.ToDouble(DDL14.SelectedValue) + Convert.ToDouble(DDL15.SelectedValue) + Convert.ToDouble(DDL16.SelectedValue)) / 4);
        RS3 = Convert.ToDecimal(RSRS);

        RSRS = ((Convert.ToDouble(DDL17.SelectedValue) + Convert.ToDouble(DDL18.SelectedValue) + Convert.ToDouble(DDL19.SelectedValue) + Convert.ToDouble(DDL20.SelectedValue) + Convert.ToDouble(DDL21.SelectedValue) + Convert.ToDouble(DDL22.SelectedValue) + Convert.ToDouble(DDL23.SelectedValue)) / 7);
        RS4 = Convert.ToDecimal(RSRS);

        RSAverage = 10 - ((RS1 + RS2 + RS3 + RS4) / 4) * 2;
        RSAverage = Math.Round(RSAverage, 1);
        A = Math.Round(RS2, 0);
        B = Math.Round(RS3, 0);
        C = Math.Round(RS1, 0);
        D = Math.Round(RS4, 0);

        if (D == 0)
        {
            if (A == 0 && B == 0 && C == 0)
            {
                if (RS1 < Convert.ToDecimal(0.3) && RS2 < Convert.ToDecimal(0.3) && RS3 < Convert.ToDecimal(0.3)) { RS = 90; }
                else { RS = 80; }
            }
            else if ((A == 1 && B <= 1 && C <= 1) || (B == 1 && A <= 1 && C <= 1) || (C == 1 && B <= 1 && A <= 1)) { RS = 70; }
            else if ((A == 2 && B <= 2 && C <= 2) || (C == 2 && B <= 2 && A <= 2) || (A == 2 && C <= 2 && B <= 2)) { RS = 60; }
            else if ((A == 3 && B < 3 && C < 3) || (C == 3 && B < 3 && A < 3) || (A == 3 && C < 3 && B < 3)) { RS = 50; }
            else if ((A == 3 && B == 3 && C <= 3) || (C == 3 && B == 3 && A <= 3) || (A == 3 && C == 3 && B <= 3) || (A == 4 && B < 3 && C < 3) || (C == 4 && B < 3 && A < 3) || (A == 4 && C < 3 && B < 3)) { RS = 40; }
            else if ((A == 4 && B == 3 && C <= 3) || (A == 4 && C == 3 && B <= 3) || (C == 4 && B == 3 && A <= 3)) { RS = 30; }
            else if ((A == 4 && B == 4 && C <= 3) || (A == 4 && C == 4 && B <= 3) || (C == 4 && B == 4 && A <= 3)) { RS = 20; }
            else if (A == 4 && B == 4 && C == 4) { RS = 15; }
            else if ((A == 4 && B == 4 && C > 4) || (A == 4 && C == 4 && B > 4) || (C == 4 && B == 4 && A > 4)) { RS = 10; }
            else if ((A == 5 && B == 5 && C <= 4) || (A == 5 && C == 5 && B <= 4) || (C == 5 && B == 5 && A <= 4)) { RS = 6; }
            else if (A == 5 && B == 5 && C == 5) { RS = 1; }
            else { RS = 0; }
        }
        else if (D == 1)
        {
            if ((A == 3 && B < 3 && C < 3) || (C == 3 && B < 3 && A < 3) || (A == 3 && C < 3 && B < 3)) { RS = 50; }
            else if ((A == 3 && B == 3 && C <= 3) || (C == 3 && B == 3 && A <= 3) || (A == 3 && C == 3 && B <= 3) || (A == 4 && B < 3 && C < 3) || (C == 4 && B < 3 && A < 3) || (A == 4 && C < 3 && B < 3)) { RS = 40; }
            else if ((A == 4 && B == 3 && C <= 3) || (A == 4 && C == 3 && B <= 3) || (C == 4 && B == 3 && A <= 3)) { RS = 30; }
            else if ((A == 4 && B == 4 && C <= 3) || (A == 4 && C == 4 && B <= 3) || (C == 4 && B == 4 && A <= 3)) { RS = 20; }
            else if (A == 4 && B == 4 && C == 4) { RS = 15; }
            else if ((A == 4 && B == 4 && C > 4) || (A == 4 && C == 4 && B > 4) || (C == 4 && B == 4 && A > 4)) { RS = 10; }
            else if ((A == 5 && B == 5 && C <= 4) || (A == 5 && C == 5 && B <= 4) || (C == 5 && B == 5 && A <= 4)) { RS = 6; }
            else if (A == 5 && B == 5 && C == 5) { RS = 1; }

            else { RS = 60; }
        }
        else if (D == 2)
        {
            if ((A == 3 && B == 3 && C <= 3) || (C == 3 && B == 3 && A <= 3) || (A == 3 && C == 3 && B <= 3) || (A == 4 && B < 3 && C < 3) || (C == 4 && B < 3 && A < 3) || (A == 4 && C < 3 && B < 3)) { RS = 40; }
            else if ((A == 4 && B == 3 && C <= 3) || (A == 4 && C == 3 && B <= 3) || (C == 4 && B == 3 && A <= 3)) { RS = 30; }
            else if ((A == 4 && B == 4 && C <= 3) || (A == 4 && C == 4 && B <= 3) || (C == 4 && B == 4 && A <= 3)) { RS = 20; }
            else if (A == 4 && B == 4 && C == 4) { RS = 15; }
            else if ((A == 4 && B == 4 && C > 4) || (A == 4 && C == 4 && B > 4) || (C == 4 && B == 4 && A > 4)) { RS = 10; }
            else if ((A == 5 && B == 5 && C <= 4) || (A == 5 && C == 5 && B <= 4) || (C == 5 && B == 5 && A <= 4)) { RS = 6; }
            else if (A == 5 && B == 5 && C == 5) { RS = 1; }
            else { RS = 50; }
        }
        else if (D == 3)
        {
            if ((A == 4 && B == 4 && C <= 3) || (A == 4 && C == 4 && B <= 3) || (C == 4 && B == 4 && A <= 3)) { RS = 20; }
            else if (A == 4 && B == 4 && C == 4) { RS = 15; }
            else if ((A == 4 && B == 4 && C > 4) || (A == 4 && C == 4 && B > 4) || (C == 4 && B == 4 && A > 4)) { RS = 10; }
            else if ((A == 5 && B == 5 && C <= 4) || (A == 5 && C == 5 && B <= 4) || (C == 5 && B == 5 && A <= 4)) { RS = 6; }
            else if (A == 5 && B == 5 && C == 5) { RS = 1; }
            else { RS = 30; }
        }
        else if (D == 4)
        {
            if (A == 4 && B == 4 && C == 4) { RS = 15; }
            else if ((A == 4 && B == 4 && C > 4) || (A == 4 && C == 4 && B > 4) || (C == 4 && B == 4 && A > 4)) { RS = 10; }
            else if ((A == 5 && B == 5 && C <= 4) || (A == 5 && C == 5 && B <= 4) || (C == 5 && B == 5 && A <= 4)) { RS = 6; }
            else if (A == 5 && B == 5 && C == 5) { RS = 1; }
            else { RS = 20; }
        }
        else
        {
            //if (A + B + C <= 4) { RS = 16; }
            //if (4 < A + B + C && A + B + C <= 8) { RS = 11; }
            //if (8 < A + B + C && A + B + C <= 13) { RS = 6; }
            //if (13 < A + B + C && A + B + C <= 18) { RS = 1; }

            if ((A == 5 && B == 5 && C <= 4) || (A == 5 && C == 5 && B <= 4) || (C == 5 && B == 5 && A <= 4)) { RS = 6; }
            else if (A == 5 && B == 5 && C == 5) { RS = 1; }
            else { RS = 10; }
        }





        RawScore = RS + RSAverage;



        using (SqlConnection conn = new DB().GetConnection())
        {
            StringBuilder sb = new StringBuilder("Insert into T2 ( GUID,TestName,PatientGUID,StartDT,EndDT,RawScore,RS1,RS2,RS3,RS4,DoctorGUID,C1,C2,C3,C4,C5,C6,A1,A2,A3,A4,A5,A6,B1,B2,B3,B4,D1,D2,D3,D4,D5,D6,D7) ");
            sb.Append(" values ( @GUID,@TestName,@PatientGUID,@StartDT,@EndDT,@RawScore,@RS1,@RS2,@RS3,@RS4,@DoctorGUID,@C1,@C2,@C3,@C4,@C5,@C6,@A1,@A2,@A3,@A4,@A5,@A6,@B1,@B2,@B3,@B4,@D1,@D2,@D3,@D4,@D5,@D6,@D7) ");
            SqlCommand cmd = new SqlCommand(sb.ToString(), conn);

            cmd.Parameters.AddWithValue("@GUID", GUID.Text);
            cmd.Parameters.AddWithValue("@TestName", TestName.Text);
            cmd.Parameters.AddWithValue("@PatientGUID", PatientGUID.Text);
            cmd.Parameters.AddWithValue("@StartDT", StartDT.Text);
            cmd.Parameters.AddWithValue("@EndDT", EndDT.Text);
            cmd.Parameters.AddWithValue("@RawScore", Util.AESEncrypt(RawScore.ToString()));
            cmd.Parameters.AddWithValue("@RS1", Util.AESEncrypt(RS1.ToString()));
            cmd.Parameters.AddWithValue("@RS2", Util.AESEncrypt(RS2.ToString()));
            cmd.Parameters.AddWithValue("@RS3", Util.AESEncrypt(RS3.ToString()));
            cmd.Parameters.AddWithValue("@RS4", Util.AESEncrypt(RS4.ToString()));
            cmd.Parameters.AddWithValue("@C1", Util.AESEncrypt(Convert.ToDecimal(DDL1.SelectedValue).ToString()));
            cmd.Parameters.AddWithValue("@C2", Util.AESEncrypt(Convert.ToDecimal(DDL2.SelectedValue).ToString()));
            cmd.Parameters.AddWithValue("@C3", Util.AESEncrypt(Convert.ToDecimal(DDL3.SelectedValue).ToString()));
            cmd.Parameters.AddWithValue("@C4", Util.AESEncrypt(Convert.ToDecimal(DDL4.SelectedValue).ToString()));
            cmd.Parameters.AddWithValue("@C5", Util.AESEncrypt(Convert.ToDecimal(DDL5.SelectedValue).ToString()));
            cmd.Parameters.AddWithValue("@C6", Util.AESEncrypt(Convert.ToDecimal(DDL6.SelectedValue).ToString()));
            cmd.Parameters.AddWithValue("@A1", Util.AESEncrypt(Convert.ToDecimal(DDL7.SelectedValue).ToString()));
            cmd.Parameters.AddWithValue("@A2", Util.AESEncrypt(Convert.ToDecimal(DDL8.SelectedValue).ToString()));
            cmd.Parameters.AddWithValue("@A3", Util.AESEncrypt(Convert.ToDecimal(DDL9.SelectedValue).ToString()));
            cmd.Parameters.AddWithValue("@A4", Util.AESEncrypt(Convert.ToDecimal(DDL10.SelectedValue).ToString()));
            cmd.Parameters.AddWithValue("@A5", Util.AESEncrypt(Convert.ToDecimal(DDL11.SelectedValue).ToString()));
            cmd.Parameters.AddWithValue("@A6", Util.AESEncrypt(Convert.ToDecimal(DDL12.SelectedValue).ToString()));
            cmd.Parameters.AddWithValue("@B1", Util.AESEncrypt(Convert.ToDecimal(DDL13.SelectedValue).ToString()));
            cmd.Parameters.AddWithValue("@B2", Util.AESEncrypt(Convert.ToDecimal(DDL14.SelectedValue).ToString()));
            cmd.Parameters.AddWithValue("@B3", Util.AESEncrypt(Convert.ToDecimal(DDL15.SelectedValue).ToString()));
            cmd.Parameters.AddWithValue("@B4", Util.AESEncrypt(Convert.ToDecimal(DDL16.SelectedValue).ToString()));
            cmd.Parameters.AddWithValue("@D1", Util.AESEncrypt(Convert.ToDecimal(DDL17.SelectedValue).ToString()));
            cmd.Parameters.AddWithValue("@D2", Util.AESEncrypt(Convert.ToDecimal(DDL18.SelectedValue).ToString()));
            cmd.Parameters.AddWithValue("@D3", Util.AESEncrypt(Convert.ToDecimal(DDL19.SelectedValue).ToString()));
            cmd.Parameters.AddWithValue("@D4", Util.AESEncrypt(Convert.ToDecimal(DDL20.SelectedValue).ToString()));
            cmd.Parameters.AddWithValue("@D5", Util.AESEncrypt(Convert.ToDecimal(DDL21.SelectedValue).ToString()));
            cmd.Parameters.AddWithValue("@D6", Util.AESEncrypt(Convert.ToDecimal(DDL22.SelectedValue).ToString()));
            cmd.Parameters.AddWithValue("@D7", Util.AESEncrypt(Convert.ToDecimal(DDL23.SelectedValue).ToString()));


            cmd.Parameters.AddWithValue("@DoctorGUID", DoctorGUID.Text);

            conn.Open();
            i = cmd.ExecuteNonQuery();


            if (i == 1)
            {
                if (Session["Code"] == null)
                {
                    Response.Write(" <script> alert(\"成功提交！\");;window.location='R2.aspx?TGUID=" + GUID.Text + "&TNum=2'; </script> ");
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

    protected void Button1_Click(object sender, EventArgs e)
    {
        InsertDatabase();
    }
}