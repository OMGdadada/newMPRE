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
public partial class T6 : System.Web.UI.Page
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
                TestName.Text = "社交技能操作评估（SSES）";
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
        decimal RawScore, RS1, RS2, D1, D2, D3, D4, D5, D6, D7, D8, D9, D10, D11, D12, D13, D14, D15, D16, D17, D18, D19, D20, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18, T19, T20, T21, T22 = 0;
        D1 = Convert.ToDecimal(Request["1"].ToString());
        if (D1 == 0)
        {
            D2 = 0; D3 = 0; D4 = 0; D5 = 0;
             D6 = Convert.ToDecimal(Request["6"].ToString());
                if (D6 == 0)
                {
                    D7 = 0;
                }
                else { D7 = Convert.ToDecimal(Request["7"].ToString()); }

                D8 = Convert.ToDecimal(Request["8"].ToString());
                if (D8 == 0)
                {
                    D9 = 0;
                }
                else { D9 = Convert.ToDecimal(Request["9"].ToString()); }

            
        }
        else
        {
            D2 = Convert.ToDecimal(Request["2"].ToString());
            
            if (D2 == 1)
            {
                D3 = Convert.ToDecimal(Request["3"].ToString());
                D4 = 0; D5 = 0; D6 = 0; D7 = 0; D8 = 0; D9 = 0;
                

            }
            else if (D2 == 2)
            {
                D3 = Convert.ToDecimal(Request["3"].ToString());
                D4 = Convert.ToDecimal(Request["4"].ToString());
                D5 = 0; D6 = 0; D7 = 0; D8 = 0; D9 = 0;
            }
            else
            {
                D3 = Convert.ToDecimal(Request["3"].ToString());
                D4 = Convert.ToDecimal(Request["4"].ToString());
                D5 = Convert.ToDecimal(Request["5"].ToString());
                D6 = Convert.ToDecimal(Request["6"].ToString());
                if (D6 == 0)
                {
                    D7 = 0;
                }
                else { D7 = Convert.ToDecimal(Request["7"].ToString()); }

                D8 = Convert.ToDecimal(Request["8"].ToString());
                if (D8 == 0)
                {
                    D9 = 0;
                }
                else { D9 = Convert.ToDecimal(Request["9"].ToString()); }

            }

        }

        D10 = Convert.ToDecimal(Request["10"].ToString());
        if (D10 == 0)
        {
            D11 = 0;
        }
        else
        {
            D11 = Convert.ToDecimal(Request["11"].ToString());
        }

        D12 = Convert.ToDecimal(Request["12"].ToString());
        if (D12 == 0)
        {
            D13 = 0;
        }
        else { D13 = Convert.ToDecimal(Request["13"].ToString()); }

        D14 = Convert.ToDecimal(Request["14"].ToString());
        D15 = Convert.ToDecimal(Request["15"].ToString());
        D16 = Convert.ToDecimal(Request["16"].ToString());
        D17 = Convert.ToDecimal(Request["17"].ToString());
        D18 = Convert.ToDecimal(Request["18"].ToString());
        D19 = Convert.ToDecimal(Request["19"].ToString());
        D20 = Convert.ToDecimal(Request["20"].ToString());
        T1 = Convert.ToDecimal(Request["21"].ToString());
        T2 = Convert.ToDecimal(Request["22"].ToString());
        T3 = Convert.ToDecimal(Request["23"].ToString());
        T4 = Convert.ToDecimal(Request["24"].ToString());
        T5 = Convert.ToDecimal(Request["25"].ToString());
        T6 = Convert.ToDecimal(Request["26"].ToString());
        T7 = Convert.ToDecimal(Request["27"].ToString());
        T8 = Convert.ToDecimal(Request["28"].ToString());
        T9 = Convert.ToDecimal(Request["29"].ToString());
        T10 = Convert.ToDecimal(Request["30"].ToString());
        T11 = Convert.ToDecimal(Request["31"].ToString());
        T12 = Convert.ToDecimal(Request["32"].ToString());
        T13 = Convert.ToDecimal(Request["33"].ToString());
        T14 = Convert.ToDecimal(Request["34"].ToString());
        T15 = Convert.ToDecimal(Request["35"].ToString());
        T16 = Convert.ToDecimal(Request["36"].ToString());
        T17 = Convert.ToDecimal(Request["37"].ToString());
        T18 = Convert.ToDecimal(Request["38"].ToString());
        T19 = Convert.ToDecimal(Request["39"].ToString());
        T20 = Convert.ToDecimal(Request["40"].ToString());
        T21 = Convert.ToDecimal(Request["41"].ToString());
        T22 = Convert.ToDecimal(Request["42"].ToString());

        RS1 = D1 + D2 + D3 + D4 + D5 + D6 + D7 + D8 + D9 + D10 + D11 + D12 + D13 + D14 + D15 + D16 + D17 + D18 + D19 + D20;
        RS2 = T1 + T2 + T3 + T4 + T5 + T6 + T7 + T8 + T9 + T10 + T11 + T12 + T13 + T14 + T15 + T16 + T17 + T18 + T19 + T20 + T21 + T22;
        RawScore = RS1 + RS2;

        //***插入数据库***
        //动态生成数组
        ArrayList fields = new ArrayList();//字段数组
        fields.Add("GUID"); fields.Add("TestName"); fields.Add("PatientGUID"); fields.Add("StartDT"); fields.Add("EndDT"); fields.Add("RawScore");
        fields.Add("RS1"); fields.Add("RS2"); fields.Add("DoctorGUID"); fields.Add("D1"); fields.Add("D2"); fields.Add("D3"); fields.Add("D4"); fields.Add("D5"); fields.Add("D6"); fields.Add("D7"); fields.Add("D8"); fields.Add("D9"); fields.Add("D10"); fields.Add("D11"); fields.Add("D12"); fields.Add("D13"); fields.Add("D14"); fields.Add("D15"); fields.Add("D16"); fields.Add("D17"); fields.Add("D18"); fields.Add("D19"); fields.Add("D20"); fields.Add("T1"); fields.Add("T2"); fields.Add("T3"); fields.Add("T4"); fields.Add("T5"); fields.Add("T6"); fields.Add("T7"); fields.Add("T8"); fields.Add("T9"); fields.Add("T10"); fields.Add("T11"); fields.Add("T12"); fields.Add("T13"); fields.Add("T14"); fields.Add("T15"); fields.Add("T16"); fields.Add("T17"); fields.Add("T18"); fields.Add("T19"); fields.Add("T20"); fields.Add("T21"); fields.Add("T22");

        ArrayList values = new ArrayList();//插入值数组（务必与字段数组的添加顺序一样）
        values.Add(GUID.Text); values.Add(TestName.Text); values.Add(PatientGUID.Text); values.Add(StartDT.Text); values.Add(EndDT.Text); values.Add(RawScore);
        values.Add(RS1); values.Add(RS2); values.Add(DoctorGUID.Text); values.Add(D1); values.Add(D2); values.Add(D3); values.Add(D4); values.Add(D5); values.Add(D6); values.Add(D7); values.Add(D8); values.Add(D9); values.Add(D10); values.Add(D11); values.Add(D12); values.Add(D13); values.Add(D14); values.Add(D15); values.Add(D16); values.Add(D17); values.Add(D18); values.Add(D19); values.Add(D20); values.Add(T1); values.Add(T2); values.Add(T3); values.Add(T4); values.Add(T5); values.Add(T6); values.Add(T7); values.Add(T8); values.Add(T9); values.Add(T10); values.Add(T11); values.Add(T12); values.Add(T13); values.Add(T14); values.Add(T15); values.Add(T16); values.Add(T17); values.Add(T18); values.Add(T19); values.Add(T20); values.Add(T21); values.Add(T22);

        //调用Util中写好的函数将值插入数据库
        i = Util.InsertDatabase("T6", fields, values, fields.Count);

        if (i == 1)
        {
            if (Session["Code"] == null)
            {
                Response.Write(" <script> alert(\"成功提交！\");;window.location='R6.aspx?TGUID=" + GUID.Text + "&TNum=6'; </script> ");
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
       

        for (int i = 14; i <= 42; i++)//条件：i应小于等于必做题目的总数
        {
            if (Request.Form["" + i + ""] == null)
            {
                error += "第" + i + "题" + "、";
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