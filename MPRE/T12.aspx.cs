﻿using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Text;

public partial class T12 : System.Web.UI.Page
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
                    TestName.Text = "精神分裂症希望量表 (SHS-9)";
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
        decimal RawScore, D1, D2, D3, D4, D5, D6, D7, D8, D9= 0;
        D1 = Convert.ToDecimal(Request["1"].ToString());//获取所选项的value值
        D2 = Convert.ToDecimal(Request["2"].ToString());
        D3 = Convert.ToDecimal(Request["3"].ToString());
        D4 = Convert.ToDecimal(Request["4"].ToString());
        D5 = Convert.ToDecimal(Request["5"].ToString());
        D6 = Convert.ToDecimal(Request["6"].ToString());
        D7 = Convert.ToDecimal(Request["7"].ToString());
        D8 = Convert.ToDecimal(Request["8"].ToString());
        D9 = Convert.ToDecimal(Request["9"].ToString());


        RawScore = D1 + D2 + D3 + D4 + D5 + D6 + D7 + D8 + D9;

        //***插入数据库***
        //动态生成数组
        ArrayList fields = new ArrayList();//字段数组
        fields.Add("GUID"); fields.Add("TestName"); fields.Add("PatientGUID"); fields.Add("StartDT"); fields.Add("EndDT"); fields.Add("RawScore");
        fields.Add("DoctorGUID"); fields.Add("D1"); fields.Add("D2"); fields.Add("D3"); fields.Add("D4"); fields.Add("D5"); fields.Add("D6"); fields.Add("D7"); fields.Add("D8"); fields.Add("D9"); 

        ArrayList values = new ArrayList();//插入值数组（务必与字段数组的添加顺序一样）
        values.Add(GUID.Text); values.Add(TestName.Text); values.Add(PatientGUID.Text); values.Add(StartDT.Text); values.Add(EndDT.Text); values.Add(RawScore);
        values.Add(DoctorGUID.Text); values.Add(D1); values.Add(D2); values.Add(D3); values.Add(D4); values.Add(D5); values.Add(D6); values.Add(D7); values.Add(D8); values.Add(D9); 

        //调用Util中写好的函数将值插入数据库
        i = Util.InsertDatabase("T12", fields, values, fields.Count);

        if (i == 1)
        {
            if (Session["Code"] == null)
            {
                Response.Write(" <script> alert(\"成功提交！\");;window.location='R12.aspx?TGUID=" + GUID.Text + "&TNum=12'; </script> ");
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
        for (int i = 1; i <= 9; i++)//条件：i应小于等于必做题目的总数
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