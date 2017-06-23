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

public partial class T3 : System.Web.UI.Page
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
                StartDT.Text = DateTime.Now.ToString();
                System.Guid guid = System.Guid.NewGuid();
                string strGUID = System.Guid.NewGuid().ToString();
                GUID.Text = strGUID;
                TestName.Text = "世界卫生组织残疾评估量表(WHO DAS)";
                PatientGUID.Text = Request.QueryString["GUID"].ToString();
                DoctorGUID.Text = Session["DoctorGUID"].ToString();
                CDate.Text = DateTime.Now.ToString("yyyy-MM-dd");

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

                PatientInfo();
            }
        }
    }

    private void PatientInfo()
    {

        using (SqlConnection conn = new DB().GetConnection())
        {
            string marriage;;
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select * from Patient where GUID=@GUID";
            conn.Open();
            cmd.Parameters.AddWithValue("@GUID", PatientGUID.Text);
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                Num1.Text = rd["Num1"].ToString();
                Sex.Text = rd["Sex"].ToString();
                DateTime dt = DateTime.Parse(rd["Birthday"].ToString());
                Age.Text = (DateTime.Now.Year - dt.Year).ToString();
                EducationYears.Text = rd["EducationYears"].ToString();
                marriage = rd["Marriage"].ToString().Trim();
                if (marriage == "未婚") {  Marriages.Text = Convert.ToString(1); }
                if (marriage == "现婚") { Marriages.Text = Convert.ToString(2); }
                if (marriage == "分居") { Marriages.Text = Convert.ToString(3); }
                if (marriage == "离婚") { Marriages.Text = Convert.ToString(4); }
                if (marriage == "丧偶") { Marriages.Text = Convert.ToString(5); }
                if (marriage == "同居") { Marriages.Text = Convert.ToString(6); }
                
            }
            rd.Close();
        }

    }

    private void UpdatePatientInfo()
    {
        int T1;

        T1 = Convert.ToInt16(Request["TT"].ToString());
        if (T1 == 1) { Marriage.Text = "未婚"; }
        if (T1 == 2) { Marriage.Text = "现婚"; }
        if (T1 == 3) { Marriage.Text = "分居"; }
        if (T1 == 4) { Marriage.Text = "离婚"; }
        if (T1 == 5) { Marriage.Text = "丧偶"; }
        if (T1 == 6) { Marriage.Text = "同居"; }

        using (SqlConnection conn = new DB().GetConnection())
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "update Patient set Num1=@Num1,Sex=@Sex,EducationYears=@EducationYears,Marriage=@Marriage where GUID=@GUID";

            cmd.Parameters.AddWithValue("@GUID", PatientGUID.Text);
            cmd.Parameters.AddWithValue("@Num1", Num1.Text);
            cmd.Parameters.AddWithValue("@Sex", Sex.Text);
            cmd.Parameters.AddWithValue("@EducationYears", EducationYears.Text);
            cmd.Parameters.AddWithValue("@Marriage", Marriage.Text);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
        }
    }


    //private string Check()
    //{
    //    int Check1 = Convert.ToInt16(Request["RR"].ToString());
    //    int Check2 = Convert.ToInt16(Request["XX"].ToString());
    //    int i = 0;
    //    string[] s = new string[6];
    //    s[0] = "";
    //    s[1] = "操作失败！ F3选择“其他”是要补充说明！";
    //    s[2] = "操作失败！ A5选择“其他”是要补充说明！";
    //    string TitleStr = F3Add.Text;
    //    string Content = A5Add.Text;
    //    if (Check1==6 &&String.IsNullOrEmpty(TitleStr))
    //    {
    //        i = 1;//第二种情况，用户名密码为空
    //    }
    //    if (Check2 == 8 && String.IsNullOrEmpty(Content))
    //    {
    //        i = 2;
    //    }
    //    return s[i];
    //}


    private void InsertDatabase()
    {
        int i = 0;
        EndDT.Text = DateTime.Now.ToString();

        //***算分***
        decimal RawScore, RS1, RS2, RS3, RS4, RS5, RS6, F3, F4, A5, D11, D12, D13, D14, D15, D16, P11, D21, D22, D23, D24, D25, P21, D31, D32, D33, D34, P31, D41, D42, D43, D44, D45, P41, D52, D53, D54, D55, P51, D58, D59, D510, D511, P52, D61, D62, D63, D64, D65, D66, D67, D68, P61 = 0;
        D11 = Convert.ToDecimal(Request["a"].ToString());//获取所选项的value值
        D12 = Convert.ToDecimal(Request["b"].ToString());
        D13 = Convert.ToDecimal(Request["c"].ToString());
        D14 = Convert.ToDecimal(Request["d"].ToString());
        D15 = Convert.ToDecimal(Request["e"].ToString());
        D16 = Convert.ToDecimal(Request["f"].ToString());
        if (Request.Form["g"] != null)
        {
            P11 = Convert.ToDecimal(Request["g"].ToString());
        }
        else { P11 = 0; }

        D21 = Convert.ToDecimal(Request["h"].ToString());
        D22 = Convert.ToDecimal(Request["i"].ToString());
        D23 = Convert.ToDecimal(Request["j"].ToString());
        D24 = Convert.ToDecimal(Request["k"].ToString());
        D25 = Convert.ToDecimal(Request["l"].ToString());
        if (Request.Form["m"] != null)
        {
            P21 = Convert.ToDecimal(Request["m"].ToString());
        }
        else { P21 = 0; }

        D31 = Convert.ToDecimal(Request["n"].ToString());
        D32 = Convert.ToDecimal(Request["o"].ToString());
        D33 = Convert.ToDecimal(Request["p"].ToString());
        D34 = Convert.ToDecimal(Request["q"].ToString());
        if (Request.Form["r"] != null)
        {
            P31 = Convert.ToDecimal(Request["r"].ToString());
        }
        else { P31 = 0; }

        D41 = Convert.ToDecimal(Request["s"].ToString());
        D42 = Convert.ToDecimal(Request["t"].ToString());
        D43 = Convert.ToDecimal(Request["u"].ToString());
        D44 = Convert.ToDecimal(Request["v"].ToString());
        D45 = Convert.ToDecimal(Request["w"].ToString());
        if (Request.Form["x"] != null)
        {
            P41 = Convert.ToDecimal(Request["x"].ToString());
        }
        else { P41 = 0; }    
       

        D52 = Convert.ToDecimal(Request["y"].ToString());
        D53 = Convert.ToDecimal(Request["z"].ToString());
        D54 = Convert.ToDecimal(Request["AA"].ToString());
        D55 = Convert.ToDecimal(Request["BB"].ToString());
        if (Request.Form["CC"] != null)
        {
            P51 = Convert.ToDecimal(Request["CC"].ToString());
        }
        else { P51 = 0; }
        

        D61 = Convert.ToDecimal(Request["II"].ToString());
        D62 = Convert.ToDecimal(Request["JJ"].ToString());
        D63 = Convert.ToDecimal(Request["KK"].ToString());
        D64 = Convert.ToDecimal(Request["LL"].ToString());
        D65 = Convert.ToDecimal(Request["MM"].ToString());
        D66 = Convert.ToDecimal(Request["NN"].ToString());
        D67 = Convert.ToDecimal(Request["OO"].ToString());
        D68 = Convert.ToDecimal(Request["PP"].ToString());
        if (Request.Form["QQ"] != null)
        {
            P61 = Convert.ToDecimal(Request["QQ"].ToString());
        }
        else { P61 = 0; }

        F3 = Convert.ToDecimal(Request["RR"].ToString());
        F4 = Convert.ToDecimal(Request["SS"].ToString());
        A5 = Convert.ToDecimal(Request["XX"].ToString());
        if (A5 > 4) {
            D58 = 0;
            D59 =0;
            D510 =0;
            D511 =0;
            P52 = 0;
            
        }
        else
        {
            D58 = Convert.ToDecimal(Request["DD"].ToString());
            D59 = Convert.ToDecimal(Request["EE"].ToString());
            D510 = Convert.ToDecimal(Request["FF"].ToString());
            D511 = Convert.ToDecimal(Request["GG"].ToString());
            if (Request.Form["HH"] != null)
            {
                P52 = Convert.ToDecimal(Request["HH"].ToString());
            }
            else { P52 = 0; }
        }


        RS1 = D11 + D12 + D13 + D14 + D15 + D16;
        RS2 = D21 + D22 + D23 + D24 + D25;
        RS3 = D31 + D32 + D33 + D34;
        RS4 = D41 + D42 + D43 + D44 + D45;
        RS5 = D52 + D53 + D54 + D55 + D58 + D59 + D510 + D511;
        RS6 = D61 + D62 + D63 + D64 + D65 + D66 + D67 + D68;

       RawScore = RS1 + RS2 + RS3 + RS4 + RS5 + RS6;

        //***插入数据库***
        //动态生成数组
        ArrayList fields = new ArrayList();//字段数组
        fields.Add("GUID"); fields.Add("TestName"); fields.Add("PatientGUID"); fields.Add("StartDT"); fields.Add("EndDT"); fields.Add("RawScore");
        fields.Add("RS1"); fields.Add("RS2"); fields.Add("RS3"); fields.Add("RS4"); fields.Add("RS5"); fields.Add("RS6"); fields.Add("DoctorGUID"); fields.Add("F3"); fields.Add("F3Add"); fields.Add("F4"); fields.Add("A5"); fields.Add("A5Add"); fields.Add("D11"); fields.Add("D12"); fields.Add("D13"); fields.Add("D14"); fields.Add("D15"); fields.Add("D16"); fields.Add("P11"); fields.Add("D21"); fields.Add("D22"); fields.Add("D23"); fields.Add("D24"); fields.Add("D25"); fields.Add("P21"); fields.Add("D31"); fields.Add("D32"); fields.Add("D33"); fields.Add("D34"); fields.Add("P31"); fields.Add("D41"); fields.Add("D42"); fields.Add("D43"); fields.Add("D44"); fields.Add("D45"); fields.Add("P41"); fields.Add("D52"); fields.Add("D53"); fields.Add("D54"); fields.Add("D55"); fields.Add("P51"); fields.Add("D58"); fields.Add("D59"); fields.Add("D510"); fields.Add("D511"); fields.Add("P52"); fields.Add("D61"); fields.Add("D62"); fields.Add("D63"); fields.Add("D64"); fields.Add("D65"); fields.Add("D66"); fields.Add("D67"); fields.Add("D68"); fields.Add("P61");
        fields.Add("D11D"); fields.Add("D12D"); fields.Add("D13D"); fields.Add("D14D"); fields.Add("D15D"); fields.Add("D16D"); fields.Add("P11D"); fields.Add("D21D"); fields.Add("D22D"); fields.Add("D23D"); fields.Add("D24D"); fields.Add("D25D"); fields.Add("P21D"); fields.Add("D31D"); fields.Add("D32D"); fields.Add("D33D"); fields.Add("D34D"); fields.Add("P31D"); fields.Add("D41D"); fields.Add("D42D"); fields.Add("D43D"); fields.Add("D44D"); fields.Add("D45D"); fields.Add("P41D"); fields.Add("D52D"); fields.Add("D53D"); fields.Add("D54D"); fields.Add("D55D"); fields.Add("P51D"); fields.Add("D58D"); fields.Add("D59D"); fields.Add("D510D"); fields.Add("D511D"); fields.Add("D51"); fields.Add("D56"); fields.Add("D57"); fields.Add("D512"); fields.Add("D513"); fields.Add("D514"); fields.Add("P62"); fields.Add("H3"); 

        ArrayList values = new ArrayList();//插入值数组（务必与字段数组的添加顺序一样）
        values.Add(GUID.Text); values.Add(TestName.Text); values.Add(PatientGUID.Text); values.Add(StartDT.Text); values.Add(EndDT.Text); values.Add(RawScore);
        values.Add(RS1); values.Add(RS2); values.Add(RS3); values.Add(RS4); values.Add(RS5); values.Add(RS6); values.Add(DoctorGUID.Text); values.Add(F3); values.Add(F3Add.Text); values.Add(F4); values.Add(A5); values.Add(A5Add.Text); values.Add(D11); values.Add(D12); values.Add(D13); values.Add(D14); values.Add(D15); values.Add(D16); values.Add(P11); values.Add(D21); values.Add(D22); values.Add(D23); values.Add(D24); values.Add(D25); values.Add(P21); values.Add(D31); values.Add(D32); values.Add(D33); values.Add(D34); values.Add(P31); values.Add(D41); values.Add(D42); values.Add(D43); values.Add(D44); values.Add(D45); values.Add(P41); values.Add(D52); values.Add(D53); values.Add(D54); values.Add(D55); values.Add(P51); values.Add(D58); values.Add(D59); values.Add(D510); values.Add(D511); values.Add(P52); values.Add(D61); values.Add(D62); values.Add(D63); values.Add(D64); values.Add(D65); values.Add(D66); values.Add(D67); values.Add(D68); values.Add(P61);
        values.Add(D11D.SelectedItem.Text); values.Add(D12D.SelectedItem.Text); values.Add(D13D.SelectedItem.Text); values.Add(D14D.SelectedItem.Text); values.Add(D15D.SelectedItem.Text); values.Add(D16D.SelectedItem.Text); values.Add(P11D.SelectedItem.Text); values.Add(D21D.SelectedItem.Text); values.Add(D22D.SelectedItem.Text); values.Add(D23D.SelectedItem.Text); values.Add(D24D.SelectedItem.Text); values.Add(D25D.SelectedItem.Text); values.Add(P21D.SelectedItem.Text); values.Add(D31D.SelectedItem.Text); values.Add(D32D.SelectedItem.Text); values.Add(D33D.SelectedItem.Text); values.Add(D34D.SelectedItem.Text); values.Add(P31D.SelectedItem.Text); values.Add(D41D.SelectedItem.Text); values.Add(D42D.SelectedItem.Text); values.Add(D43D.SelectedItem.Text); values.Add(D44D.SelectedItem.Text); values.Add(D45D.SelectedItem.Text); values.Add(P41D.SelectedItem.Text); values.Add(D52D.SelectedItem.Text); values.Add(D53D.SelectedItem.Text); values.Add(D54D.SelectedItem.Text); values.Add(D55D.SelectedItem.Text); values.Add(P51D.SelectedItem.Text); values.Add(D58D.SelectedItem.Text); values.Add(D59D.SelectedItem.Text); values.Add(D510D.SelectedItem.Text); values.Add(D511D.SelectedItem.Text); values.Add(D51.Text); values.Add(D56.Text); values.Add(D57.Text); values.Add(D512.SelectedItem.Value); values.Add(D513.SelectedItem.Value); values.Add(D514.Text); values.Add(P62.Text); values.Add(H3.Text);

        //调用Util中写好的函数将值插入数据库
        i = Util.InsertDatabase("T3", fields, values, fields.Count);

        if (i == 1)
        {
            if (Session["Code"] == null)
            {
                Response.Write(" <script> alert(\"成功提交！\");;window.location='R3.aspx?TGUID=" + GUID.Text + "&TNum=3'; </script> ");
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


    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Request.Form["a"] != null && Request.Form["b"] != null && Request.Form["c"] != null && Request.Form["d"] != null && Request.Form["e"] != null && Request.Form["f"] != null && Request.Form["h"] != null && Request.Form["i"] != null && Request.Form["j"] != null && Request.Form["k"] != null && Request.Form["l"] != null && Request.Form["n"] != null && Request.Form["o"] != null && Request.Form["p"] != null && Request.Form["q"] != null && Request.Form["s"] != null && Request.Form["t"] != null && Request.Form["u"] != null && Request.Form["v"] != null && Request.Form["w"] != null && Request.Form["y"] != null && Request.Form["z"] != null && Request.Form["AA"] != null && Request.Form["BB"] != null && Request.Form["II"] != null && Request.Form["JJ"] != null && Request.Form["KK"] != null && Request.Form["LL"] != null && Request.Form["MM"] != null && Request.Form["NN"] != null && Request.Form["OO"] != null && Request.Form["PP"] != null && Request.Form["RR"] != null && Request.Form["SS"] != null && Request.Form["TT"] != null && Request.Form["XX"] != null)
        {
        //     Error.Text = Check();
        //     Error.ForeColor = System.Drawing.Color.Red;
        //     if (Error.Text == "")
        //{
            InsertDatabase();
            UpdatePatientInfo();
        //}


        }
        else
        {
         
            Response.Write(" <script> alert('所有题目都为必选项，请都完成后再提交！');</script>");
        }

    }
}