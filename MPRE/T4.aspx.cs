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

public partial class T4 : System.Web.UI.Page
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
                    TestName.Text = "工作与学习维度影响量表 （SIWS）";
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
        decimal RawScore, RS1, RS2, D1, D5, D6 = 0;
        D1 = Convert.ToDecimal(Request["a"].ToString());
        if (D1 == 1)
        {

            if (D4.Text == "0")
            {
                D5 = 0;
                D6 = Convert.ToDecimal(Request["c"].ToString());
            }
            else
            {
                D5 = Convert.ToDecimal(Request["b"].ToString());
                D6 = Convert.ToDecimal(Request["c"].ToString());
            }
            RS1 = D5 / 10;
            RS2 = D6 / 10;
            int Q2 = Convert.ToInt16(D2.Text), Q4 = Convert.ToInt16(D4.Text);
            if (Q2 == 0) { RawScore = 1; }
            else {  RawScore = Q2 / (Q2 + Q4) + ((1 - (Q2 / (Q2 + Q4))) * (D5 / 10));}



        }
        else
        {
            D2.Text = D3.Text = D4.Text = "0";
            D5 = 0; D6 = 0; RS1 = 0; RS2 = 0; RawScore = 0;
        }



        //***插入数据库***
        //动态生成数组
        ArrayList fields = new ArrayList();//字段数组
        fields.Add("GUID"); fields.Add("TestName"); fields.Add("PatientGUID"); fields.Add("StartDT"); fields.Add("EndDT"); fields.Add("RawScore");
        fields.Add("RS1"); fields.Add("RS2"); fields.Add("DoctorGUID"); fields.Add("D1"); fields.Add("D2"); fields.Add("D3"); fields.Add("D4"); fields.Add("D5"); fields.Add("D6");
        ArrayList values = new ArrayList();//插入值数组（务必与字段数组的添加顺序一样）
        values.Add(GUID.Text); values.Add(TestName.Text); values.Add(PatientGUID.Text); values.Add(StartDT.Text); values.Add(EndDT.Text); values.Add(RawScore);
        values.Add(RS1); values.Add(RS2); values.Add(DoctorGUID.Text); values.Add(D1); values.Add(Convert.ToDecimal(D2.Text)); values.Add(Convert.ToDecimal(D3.Text)); values.Add(Convert.ToDecimal(D4.Text)); values.Add(D5); values.Add(D6);
        //调用Util中写好的函数将值插入数据库
        i = Util.InsertDatabase("T4", fields, values, fields.Count);

        if (i == 1)
        {
            if (Session["Code"] == null)
            {
                   Response.Write(" <script> alert(\"成功提交！\");;window.location='R4.aspx?TGUID=" + GUID.Text + "&TNum=4'; </script> ");
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

    public bool IsNumber(string str_number)
    {
        return System.Text.RegularExpressions.Regex.//使用正则表达式判断是否匹配
            IsMatch(str_number, @"^[0-9]*$");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        if (!IsNumber(D3.Text.Trim()) || !IsNumber(D4.Text.Trim()) || !IsNumber(D2.Text.Trim()))
        {
            Response.Write(" <script> alert(\"提交失败！输入框内只能输入0到168之间的整数。\"); </script> ");
        }
        else
        {
            if (Convert.ToInt16(D3.Text.ToString()) > 168 || Convert.ToInt16(D3.Text.ToString()) < 0 || Convert.ToInt16(D4.Text.ToString()) > 168 || Convert.ToInt16(D4.Text.ToString()) < 0 || Convert.ToInt16(D2.Text.ToString()) > 168 || Convert.ToInt16(D2.Text.ToString()) < 0)
            { Response.Write(" <script> alert(\"提交失败！输入框内只能输入0到168之间的整数。\"); </script> "); }
            else
            {
                if (Request.Form["a"] != null)
                {
                    if (Request["a"].ToString() == "0") { InsertDatabase(); }
                    if (Request["a"].ToString() == "1")
                    {
                        if (Request.Form["c"] == null)
                        {
                            Response.Write(" <script> alert('提交失败，第六题未选择，请重做！');</script>");
                        }
                        else if (D4.Text != "0" && Request.Form["c"] == null) { Response.Write(" <script> alert('提交失败，第五题未选择，请重做！');</script>"); }
                       
                        else { InsertDatabase(); }
                    }
                }
                else
                {
                    Response.Write(" <script> alert('提交失败，第一题未选择，请重做！');</script>");
                }


            }
        }

    }



}