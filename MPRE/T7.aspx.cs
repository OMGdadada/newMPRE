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

public partial class T7 : System.Web.UI.Page
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
                TestName.Text = "北京精神分裂症操作性功能评估量表(BP)";
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
        decimal RawScore, RS1, RS2, RS3, D1, D2, D3, D4, D5, C1, C2, C3, C4, C5, C6, W1, W3, W4, W5, W6, W7 = 0;
        D1 = Convert.ToDecimal(Request["1"].ToString());
        D2 = Convert.ToDecimal(Request["2"].ToString());
        D3 = Convert.ToDecimal(Request["3"].ToString());
        D4 = Convert.ToDecimal(Request["4"].ToString());
        D5 = Convert.ToDecimal(Request["5"].ToString());
        C1 = Convert.ToDecimal(Request["6"].ToString());
        C2 = Convert.ToDecimal(Request["7"].ToString());
        C3 = Convert.ToDecimal(Request["8"].ToString());
        C4 = Convert.ToDecimal(Request["9"].ToString());
        C5 = Convert.ToDecimal(Request["10"].ToString());
        C6 = Convert.ToDecimal(Request["11"].ToString());
        W1 = Convert.ToDecimal(Request["12"].ToString());
        W3 = Convert.ToDecimal(Request["13"].ToString());
        W4 = Convert.ToDecimal(Request["14"].ToString());
        W5 = Convert.ToDecimal(Request["15"].ToString());
        W6 = Convert.ToDecimal(Request["16"].ToString());
        W7 = Convert.ToDecimal(Request["17"].ToString());
        RS1 = (D1 + D2 + D3 + D4 + D5) / 10 * 100;
        RS2 = (C1 + C2 + C3 + C4 + C5 + C6) / 8 * 100;
        RS3 = (W1 + W3 + W4 + W5 + W6 + W7) / 12 * 100;
        RawScore = (RS1 + RS2 + RS3) / 3;

        //***插入数据库***
        //动态生成数组
        ArrayList fields = new ArrayList();//字段数组
        fields.Add("GUID"); fields.Add("TestName"); fields.Add("PatientGUID"); fields.Add("StartDT"); fields.Add("EndDT"); fields.Add("RawScore");
        fields.Add("RS1"); fields.Add("RS2"); fields.Add("RS3"); fields.Add("DoctorGUID"); fields.Add("D1"); fields.Add("D2"); fields.Add("D3"); fields.Add("D4"); fields.Add("D5"); fields.Add("C1"); fields.Add("C2"); fields.Add("C3"); fields.Add("C4"); fields.Add("C5"); fields.Add("C6"); fields.Add("W1"); fields.Add("W3"); fields.Add("W4"); fields.Add("W5"); fields.Add("W6"); fields.Add("W7"); 

        ArrayList values = new ArrayList();//插入值数组（务必与字段数组的添加顺序一样）
        values.Add(GUID.Text); values.Add(TestName.Text); values.Add(PatientGUID.Text); values.Add(StartDT.Text); values.Add(EndDT.Text); values.Add(RawScore);
        values.Add(RS1); values.Add(RS2); values.Add(RS3); values.Add(DoctorGUID.Text); values.Add(D1); values.Add(D2); values.Add(D3); values.Add(D4); values.Add(D5); values.Add(C1); values.Add(C2); values.Add(C3); values.Add(C4); values.Add(C5); values.Add(C6); values.Add(W1); values.Add(W3); values.Add(W4); values.Add(W5); values.Add(W6); values.Add(W7); 

        //调用Util中写好的函数将值插入数据库
        i = Util.InsertDatabase("T7", fields, values, fields.Count);

        if (i == 1)
        {
            if (Session["Code"] == null)
            {
                Response.Write(" <script> alert(\"成功提交！\");;window.location='R7.aspx?TGUID=" + GUID.Text + "&TNum=7'; </script> ");
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


    protected void Button1_Click(object sender, EventArgs e)
    {
        //***后台插入数据库前再次判断必做题目是否完成（此判断会刷掉已选项）***
        string error = "";
        for (int i = 1; i <= 17; i++)//条件：i应小于等于必做题目的总数
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