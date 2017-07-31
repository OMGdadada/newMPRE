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

public partial class T26 : System.Web.UI.Page
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
                    TestName.Text = "家庭功能评定（FAD）";
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        //***后台插入数据库前再次判断必做题目是否完成（此判断会刷掉已选项）***
        string error = "";
        for (int i = 1; i <= 60; i++)//条件：i应小于等于必做题目的总数
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

    private void InsertDatabase()
    {
        int i = 0;
        EndDT.Text = DateTime.Now.ToString();

        //***算分***
        decimal RawScore, RS1, RS2, RS3, RS4, RS5, RS6, RS7 = 0; 
        decimal D1, D2, D3, D4, D5, D6, D7, D8, D9, D10 = 0;
        decimal D11, D12, D13, D14, D15, D16, D17, D18, D19, D20 = 0;
        decimal D21, D22, D23, D24, D25, D26, D27, D28, D29, D30 = 0;
        decimal D31, D32, D33, D34, D35, D36, D37, D38, D39, D40 = 0;
        decimal D41, D42, D43, D44, D45, D46, D47, D48, D49, D50 = 0;
        decimal D51, D52, D53, D54, D55, D56, D57, D58, D59, D60 = 0;

        D1 = Convert.ToDecimal(Request["1"].ToString());//获取所选项的value值
        D2 = Convert.ToDecimal(Request["2"].ToString());
        D3 = Convert.ToDecimal(Request["3"].ToString());
        D4 = Convert.ToDecimal(Request["4"].ToString());
        D5 = Convert.ToDecimal(Request["5"].ToString());
        D6 = Convert.ToDecimal(Request["6"].ToString());
        D7 = Convert.ToDecimal(Request["7"].ToString());
        D8 = Convert.ToDecimal(Request["8"].ToString());
        D9 = Convert.ToDecimal(Request["9"].ToString());
        D10 = Convert.ToDecimal(Request["10"].ToString());
        D11 = Convert.ToDecimal(Request["11"].ToString());
        D12 = Convert.ToDecimal(Request["12"].ToString());
        D13 = Convert.ToDecimal(Request["13"].ToString());
        D14 = Convert.ToDecimal(Request["14"].ToString());
        D15 = Convert.ToDecimal(Request["15"].ToString());
        D16 = Convert.ToDecimal(Request["16"].ToString());
        D17 = Convert.ToDecimal(Request["17"].ToString());
        D18 = Convert.ToDecimal(Request["18"].ToString());
        D19 = Convert.ToDecimal(Request["19"].ToString());
        D20 = Convert.ToDecimal(Request["20"].ToString());
        D21 = Convert.ToDecimal(Request["21"].ToString());//获取所选项的value值
        D22 = Convert.ToDecimal(Request["22"].ToString());
        D23 = Convert.ToDecimal(Request["23"].ToString());
        D24 = Convert.ToDecimal(Request["24"].ToString());
        D25 = Convert.ToDecimal(Request["25"].ToString());
        D26 = Convert.ToDecimal(Request["26"].ToString());
        D27 = Convert.ToDecimal(Request["27"].ToString());
        D28 = Convert.ToDecimal(Request["28"].ToString());
        D29 = Convert.ToDecimal(Request["29"].ToString());
        D30 = Convert.ToDecimal(Request["30"].ToString());
        D31 = Convert.ToDecimal(Request["31"].ToString());//获取所选项的value值
        D32 = Convert.ToDecimal(Request["32"].ToString());
        D33 = Convert.ToDecimal(Request["33"].ToString());
        D34 = Convert.ToDecimal(Request["34"].ToString());
        D35 = Convert.ToDecimal(Request["35"].ToString());
        D36 = Convert.ToDecimal(Request["36"].ToString());
        D37 = Convert.ToDecimal(Request["37"].ToString());
        D38 = Convert.ToDecimal(Request["38"].ToString());
        D39 = Convert.ToDecimal(Request["39"].ToString());
        D40 = Convert.ToDecimal(Request["40"].ToString());
        D41 = Convert.ToDecimal(Request["41"].ToString());//获取所选项的value值
        D42 = Convert.ToDecimal(Request["42"].ToString());
        D43 = Convert.ToDecimal(Request["43"].ToString());
        D44 = Convert.ToDecimal(Request["44"].ToString());
        D45 = Convert.ToDecimal(Request["45"].ToString());
        D46 = Convert.ToDecimal(Request["46"].ToString());
        D47 = Convert.ToDecimal(Request["47"].ToString());
        D48 = Convert.ToDecimal(Request["48"].ToString());
        D49 = Convert.ToDecimal(Request["49"].ToString());
        D50 = Convert.ToDecimal(Request["50"].ToString());
        D51 = Convert.ToDecimal(Request["51"].ToString());//获取所选项的value值
        D52 = Convert.ToDecimal(Request["52"].ToString());
        D53 = Convert.ToDecimal(Request["53"].ToString());
        D54 = Convert.ToDecimal(Request["54"].ToString());
        D55 = Convert.ToDecimal(Request["55"].ToString());
        D56 = Convert.ToDecimal(Request["56"].ToString());
        D57 = Convert.ToDecimal(Request["57"].ToString());
        D58 = Convert.ToDecimal(Request["58"].ToString());
        D59 = Convert.ToDecimal(Request["59"].ToString());
        D60 = Convert.ToDecimal(Request["60"].ToString());
        RS1 = D2 + D12 + D24 + D38 + D50 + D60;//6-24
        RS2 = D3 + D14 + D18 + D22 + D29 + D35 + D43 + D52 + +D59;//9-36
        RS3 = D4 + D8 + D10 + D15 + D23 + D30 + D34 + D40 + D45 + D53 + D58;//11-44
        RS4 = D9 + D19 + D28 + D39 + D49 + D57;//6-24
        RS5 = D5 + D13 + D25 + D33 + D37 + D42 + D54;//7-28
        RS6 = D7 + D17 + D20 + D27 + D32 + D44 + D47 + D48 + D55;//9-36
        RS7 = D1 + D6 + D11 + D16 + D21 + D26 + D31 + D36 + D41 + D46 + D51 + D56;//12-48
        RawScore = RS1 + RS2 + RS3 + RS4 + RS5 + RS6 + RS7;

        //***插入数据库***
        //动态生成数组
        ArrayList fields = new ArrayList();//字段数组
        fields.Add("GUID"); fields.Add("TestName"); fields.Add("PatientGUID"); fields.Add("StartDT"); fields.Add("EndDT"); fields.Add("RawScore"); fields.Add("DoctorGUID");
        fields.Add("D1"); fields.Add("D2"); fields.Add("D3"); fields.Add("D4"); fields.Add("D5");
        fields.Add("D6"); fields.Add("D7"); fields.Add("D8"); fields.Add("D9"); fields.Add("D10");
        fields.Add("D11"); fields.Add("D12"); fields.Add("D13"); fields.Add("D14"); fields.Add("D15");
        fields.Add("D16"); fields.Add("D17"); fields.Add("D18"); fields.Add("D19"); fields.Add("D20");
        fields.Add("D21"); fields.Add("D22"); fields.Add("D23"); fields.Add("D24"); fields.Add("D25");
        fields.Add("D26"); fields.Add("D27"); fields.Add("D28"); fields.Add("D29"); fields.Add("D30");
        fields.Add("D31"); fields.Add("D32"); fields.Add("D33"); fields.Add("D34"); fields.Add("D35");
        fields.Add("D36"); fields.Add("D37"); fields.Add("D38"); fields.Add("D39"); fields.Add("D40");
        fields.Add("D41"); fields.Add("D42"); fields.Add("D43"); fields.Add("D44"); fields.Add("D45");
        fields.Add("D46"); fields.Add("D47"); fields.Add("D48"); fields.Add("D49"); fields.Add("D50");
        fields.Add("D51"); fields.Add("D52"); fields.Add("D53"); fields.Add("D54"); fields.Add("D55");
        fields.Add("D56"); fields.Add("D57"); fields.Add("D58"); fields.Add("D59"); fields.Add("D60");
        fields.Add("RS1"); fields.Add("RS2"); fields.Add("RS3"); fields.Add("RS4"); fields.Add("RS5");
        fields.Add("RS6"); fields.Add("RS7");
        ArrayList values = new ArrayList();//插入值数组（务必与字段数组的添加顺序一样）
        values.Add(GUID.Text); values.Add(TestName.Text); values.Add(PatientGUID.Text); values.Add(StartDT.Text); values.Add(EndDT.Text); values.Add(RawScore); values.Add(DoctorGUID.Text);
        values.Add(D1); values.Add(D2); values.Add(D3); values.Add(D4); values.Add(D5);
        values.Add(D6); values.Add(D7); values.Add(D8); values.Add(D9); values.Add(D10);
        values.Add(D11); values.Add(D12); values.Add(D13); values.Add(D14); values.Add(D15);
        values.Add(D16); values.Add(D17); values.Add(D18); values.Add(D19); values.Add(D20);
        values.Add(D21); values.Add(D22); values.Add(D23); values.Add(D24); values.Add(D25);
        values.Add(D26); values.Add(D27); values.Add(D28); values.Add(D29); values.Add(D30);
        values.Add(D31); values.Add(D32); values.Add(D33); values.Add(D34); values.Add(D35);
        values.Add(D36); values.Add(D37); values.Add(D38); values.Add(D39); values.Add(D40);
        values.Add(D41); values.Add(D42); values.Add(D43); values.Add(D44); values.Add(D45);
        values.Add(D46); values.Add(D47); values.Add(D48); values.Add(D49); values.Add(D50);
        values.Add(D51); values.Add(D52); values.Add(D53); values.Add(D54); values.Add(D55);
        values.Add(D56); values.Add(D57); values.Add(D58); values.Add(D59); values.Add(D60);
        values.Add(RS1); values.Add(RS2); values.Add(RS3); values.Add(RS4); values.Add(RS5);
        values.Add(RS6); values.Add(RS7);
        //调用Util中写好的函数将值插入数据库
        i = Util.InsertDatabase("T26", fields, values, fields.Count);

        if (i == 1)
        {
            if (Session["Code"] == null)
            {
                Response.Write(" <script> alert(\"成功提交！\");;window.location='R26.aspx?TGUID=" + GUID.Text + "&TNum=26'; </script> ");

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
}