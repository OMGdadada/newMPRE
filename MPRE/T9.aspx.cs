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

public partial class T9 : System.Web.UI.Page
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
                TestName.Text = "SF-36健康调查量表(SF-36)";
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

        }

    }

    private void InsertDatabase()
    {
        int i = 0;
        EndDT.Text = DateTime.Now.ToString();

        //***算分***
        decimal RawScore, RS1, RS2, PF, RP, BP, GH,VT, SF, RE, MH, A1, A2, A3, B3, C3, D3, E3, F3, G3, H3, I3, J3, A4, B4, C4, D4, A5, B5, C5, A6, A7, A8, A9, B9, C9, D9, E9, F9, G9, H9, I9, A10, A11, B11, C11, D11 = 0;
        A1 = Convert.ToDecimal(Request["1"].ToString());
        A2 = Convert.ToDecimal(Request["2"].ToString());
        A3 = Convert.ToDecimal(Request["3"].ToString());
        B3 = Convert.ToDecimal(Request["4"].ToString());
        C3 = Convert.ToDecimal(Request["5"].ToString());
        D3 = Convert.ToDecimal(Request["6"].ToString());
        E3 = Convert.ToDecimal(Request["7"].ToString());
        F3 = Convert.ToDecimal(Request["8"].ToString());
        G3 = Convert.ToDecimal(Request["9"].ToString());
        H3 = Convert.ToDecimal(Request["10"].ToString());
        I3 = Convert.ToDecimal(Request["11"].ToString());
        J3 = Convert.ToDecimal(Request["12"].ToString());
        A4 = Convert.ToDecimal(Request["13"].ToString());
        B4 = Convert.ToDecimal(Request["14"].ToString());
        C4 = Convert.ToDecimal(Request["15"].ToString());
        D4 = Convert.ToDecimal(Request["16"].ToString());
        A5 = Convert.ToDecimal(Request["17"].ToString());
        B5 = Convert.ToDecimal(Request["18"].ToString());
        C5 = Convert.ToDecimal(Request["19"].ToString());
        A6 = Convert.ToDecimal(Request["20"].ToString());
        A7= Convert.ToDecimal(Request["21"].ToString());
        A8 = Convert.ToDecimal(Request["22"].ToString());
        A9 = Convert.ToDecimal(Request["23"].ToString());
        B9 = Convert.ToDecimal(Request["24"].ToString());
        C9 = Convert.ToDecimal(Request["25"].ToString());
        D9 = Convert.ToDecimal(Request["26"].ToString());
        E9 = Convert.ToDecimal(Request["27"].ToString());
        F9 = Convert.ToDecimal(Request["28"].ToString());
        G9 = Convert.ToDecimal(Request["29"].ToString());
        H9 = Convert.ToDecimal(Request["30"].ToString());
        I9 = Convert.ToDecimal(Request["31"].ToString());
        A10 = Convert.ToDecimal(Request["32"].ToString());
        A11 = Convert.ToDecimal(Request["33"].ToString());
        B11 = Convert.ToDecimal(Request["34"].ToString());
        C11 = Convert.ToDecimal(Request["35"].ToString());
        D11 = Convert.ToDecimal(Request["36"].ToString());
        PF = ((A3 + B3 + C3 + D3 + E3 + F3 + G3 + H3 + I3 + J3) - 10) / 20 * 100;
        RP = ((A4 + B4 + C4 + D4) - 4) / 4 * 100;
        BP = ((A7 + A8) - 2) / 8 * 100;
        GH = ((A1 + A11 + B11 + C11 + D11) - 5) / 20 * 100;
        VT = ((A9 + C9 + G9 + I9) - 4) / 20 * 100;
        SF = ((A6 + A10) - 2) / 8 * 100;
        RE = ((A5 + B5 + C5) - 3) / 3 * 100;
        MH = ((B9 + C9 + D9 + F9 + H9) - 5) / 25 * 100;
        RS1 = PF + RP + BP + GH;
        RS2 = VT + SF + RE + MH;
        RawScore = RS1 + RS2;

        //***插入数据库***
        //动态生成数组
        ArrayList fields = new ArrayList();//字段数组
        fields.Add("GUID"); fields.Add("TestName"); fields.Add("PatientGUID"); fields.Add("StartDT"); fields.Add("EndDT"); fields.Add("RawScore");
        fields.Add("RS1"); fields.Add("RS2"); fields.Add("PF"); fields.Add("RP"); fields.Add("BP"); fields.Add("GH"); fields.Add("VT"); fields.Add("SF"); fields.Add("RE"); fields.Add("MH"); fields.Add("DoctorGUID"); fields.Add("A1"); fields.Add("A2"); fields.Add("A3"); fields.Add("B3"); fields.Add("C3"); fields.Add("D3"); fields.Add("E3"); fields.Add("F3"); fields.Add("G3"); fields.Add("H3"); fields.Add("I3"); fields.Add("J3"); fields.Add("A4"); fields.Add("B4"); fields.Add("C4"); fields.Add("D4"); fields.Add("A5"); fields.Add("B5"); fields.Add("C5"); fields.Add("A6"); fields.Add("A7"); fields.Add("A8"); fields.Add("A9"); fields.Add("B9"); fields.Add("C9"); fields.Add("D9"); fields.Add("E9"); fields.Add("F9"); fields.Add("G9"); fields.Add("H9"); fields.Add("I9"); fields.Add("A10"); fields.Add("A11"); fields.Add("B11"); fields.Add("C11"); fields.Add("D11");

        ArrayList values = new ArrayList();//插入值数组（务必与字段数组的添加顺序一样）
        values.Add(GUID.Text); values.Add(TestName.Text); values.Add(PatientGUID.Text); values.Add(StartDT.Text); values.Add(EndDT.Text); values.Add(RawScore);
        values.Add(RS1); values.Add(RS2); values.Add(PF); values.Add(RP); values.Add(BP); values.Add(GH); values.Add(VT); values.Add(SF); values.Add(RE); values.Add(MH); values.Add(DoctorGUID.Text); values.Add(A1); values.Add(A2); values.Add(A3); values.Add(B3); values.Add(C3); values.Add(D3); values.Add(E3); values.Add(F3); values.Add(G3); values.Add(H3); values.Add(I3); values.Add(J3); values.Add(A4); values.Add(B4); values.Add(C4); values.Add(D4); values.Add(A5); values.Add(B5); values.Add(C5); values.Add(A6); values.Add(A7); values.Add(A8); values.Add(A9); values.Add(B9); values.Add(C9); values.Add(D9); values.Add(E9); values.Add(F9); values.Add(G9); values.Add(H9); values.Add(I9); values.Add(A10); values.Add(A11); values.Add(B11); values.Add(C11); values.Add(D11);

        //调用Util中写好的函数将值插入数据库
        i = Util.InsertDatabase("T9", fields, values, fields.Count);

        if (i == 1)
        {
            if (Session["Code"] == null)
            {
                  Response.Write(" <script> alert(\"成功提交！\");;window.location='R9.aspx?TGUID=" + GUID.Text + "&TNum=9'; </script> ");
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
        //***后台插入数据库前再次判断必做题目是否完成（此判断会刷掉已选项）***
        string error = "";
        for (int i = 1; i <= 36; i++)//条件：i应小于等于必做题目的总数
        {
            if (Request.Form["" + i + ""] == null)
            {
                error += "第"+i+"题" + "、";
            }
        }
        if(error != "")
        {
            error = error.Substring(0, error.Length - 1);//截取字符串，去掉末尾多余的一个“、”
            error += "未完成";
            Response.Write(" <script> alert('" + error + "');</script>");//弹框提示未完成题目
        }
        else
        {
            InsertDatabase();//插入数据库
        }
    }


}