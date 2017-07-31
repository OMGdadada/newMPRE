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

public partial class T15 : System.Web.UI.Page
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
                    TestName.Text = "阳性与阴性症状量表(PANSS)";
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

        //***算分***
        decimal RawScore1, RawScore2, RS1, RS2, RS3, RS4, RS5, PScore, NScore, GScore, RRate, P1, P2, P3, P4, P5, P6, P7, N1, N2, N3, N4, N5, N6, N7, G1, G2, G3, G4, G5, G6, G7, G8, G9, G10, G11, G12, G13, G14, G15, G16 = 0;
        P1 = Convert.ToDecimal(Request["1"].ToString());//获取所选项的value值
        P2 = Convert.ToDecimal(Request["2"].ToString());
        P3 = Convert.ToDecimal(Request["3"].ToString());
        P4 = Convert.ToDecimal(Request["4"].ToString());
        P5 = Convert.ToDecimal(Request["5"].ToString());
        P6 = Convert.ToDecimal(Request["6"].ToString());
        P7 = Convert.ToDecimal(Request["7"].ToString());
        N1 = Convert.ToDecimal(Request["8"].ToString());
        N2 = Convert.ToDecimal(Request["9"].ToString());
        N3 = Convert.ToDecimal(Request["10"].ToString());
        N4 = Convert.ToDecimal(Request["11"].ToString());
        N5 = Convert.ToDecimal(Request["12"].ToString());
        N6 = Convert.ToDecimal(Request["13"].ToString());
        N7 = Convert.ToDecimal(Request["14"].ToString());
        G1 = Convert.ToDecimal(Request["15"].ToString());
        G2 = Convert.ToDecimal(Request["16"].ToString());
        G3 = Convert.ToDecimal(Request["17"].ToString());
        G4 = Convert.ToDecimal(Request["18"].ToString());
        G5 = Convert.ToDecimal(Request["19"].ToString());
        G6 = Convert.ToDecimal(Request["20"].ToString());
        G7 = Convert.ToDecimal(Request["21"].ToString());
        G8 = Convert.ToDecimal(Request["22"].ToString());
        G9 = Convert.ToDecimal(Request["23"].ToString());
        G10 = Convert.ToDecimal(Request["24"].ToString());
        G11 = Convert.ToDecimal(Request["25"].ToString());
        G12 = Convert.ToDecimal(Request["26"].ToString());
        G13 = Convert.ToDecimal(Request["27"].ToString());
        G14 = Convert.ToDecimal(Request["28"].ToString());
        G15 = Convert.ToDecimal(Request["29"].ToString());
        G16 = Convert.ToDecimal(Request["30"].ToString());

        PScore = P1 + P2 + P3 + P4 + P5 + P6 + P7;
        NScore = N1 + N2 + N3 + N4 + N5 + N6 + N7;
        GScore = G1 + G2 + G3 + G4 + G5 + G6 + G7 + G8 + G9 + G10 + G11 + G12 + G13 + G14 + G15 + G16;
        RawScore1 = PScore + NScore + GScore;
        RRate = (210 - RawScore1) / 210;

        RS1 = P1 + P3 + P5 + G9;
        RS2 = N1 + N2 + N3 + N4 + N6 + G7;
        RS3 = P2 + N5 + G11;
        RS4 = G2 + G3 + G6;
        RS5 = P4 + P7 + G8 + G14;
        RawScore2 = RS1 + RS2 + RS3 + RS4 + RS5;


        //***插入数据库***
        //动态生成数组
        ArrayList fields = new ArrayList();//字段数组
        fields.Add("GUID"); fields.Add("TestName"); fields.Add("PatientGUID"); fields.Add("StartDT"); fields.Add("EndDT"); fields.Add("RawScore1"); fields.Add("RawScore2"); fields.Add("PScore"); fields.Add("NScore"); fields.Add("GScore"); fields.Add("RRate"); fields.Add("RS1"); fields.Add("RS2"); fields.Add("RS3"); fields.Add("RS4"); fields.Add("RS5"); fields.Add("DoctorGUID"); fields.Add("P1"); fields.Add("P2"); fields.Add("P3"); fields.Add("P4"); fields.Add("P5"); fields.Add("P6"); fields.Add("P7"); fields.Add("N1"); fields.Add("N2"); fields.Add("N3"); fields.Add("N4"); fields.Add("N5"); fields.Add("N6"); fields.Add("N7"); fields.Add("G1"); fields.Add("G2"); fields.Add("G3"); fields.Add("G4"); fields.Add("G5"); fields.Add("G6"); fields.Add("G7"); fields.Add("G8"); fields.Add("G9"); fields.Add("G10"); fields.Add("G11"); fields.Add("G12"); fields.Add("G13"); fields.Add("G14"); fields.Add("G15"); fields.Add("G16");

        ArrayList values = new ArrayList();//插入值数组（务必与字段数组的添加顺序一样）
        values.Add(GUID.Text); values.Add(TestName.Text); values.Add(PatientGUID.Text); values.Add(StartDT.Text); values.Add(EndDT.Text); values.Add(RawScore1); values.Add(RawScore2); values.Add(PScore); values.Add(NScore); values.Add(GScore); values.Add(RRate);
        values.Add(RS1); values.Add(RS2); values.Add(RS3); values.Add(RS4); values.Add(RS5); values.Add(DoctorGUID.Text); values.Add(P1); values.Add(P2); values.Add(P3); values.Add(P4); values.Add(P5); values.Add(P6); values.Add(P7); values.Add(N1); values.Add(N2); values.Add(N3); values.Add(N4); values.Add(N5); values.Add(N6); values.Add(N7); values.Add(G1); values.Add(G2); values.Add(G3); values.Add(G4); values.Add(G5); values.Add(G6); values.Add(G7); values.Add(G8); values.Add(G9); values.Add(G10); values.Add(G11); values.Add(G12); values.Add(G13); values.Add(G14); values.Add(G15); values.Add(G16);
        //调用Util中写好的函数将值插入数据库
        i = Util.InsertDatabase("T15", fields, values, fields.Count);

        if (i == 1)
        {
            if (Session["Code"] == null)
            {
                 Response.Write(" <script> alert(\"成功提交！\");;window.location='R15.aspx?TGUID=" + GUID.Text + "&TNum=15'; </script> ");
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
        for (int i = 1; i <= 30; i++)//条件：i应小于等于必做题目的总数
        {
            if (Request.Form["" + i + ""] == null)
            {
                error += "第" + i + "题" + "、";
            }
        }
        if (error != "")
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