using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;
using System.IO;

public partial class Test_Select : System.Web.UI.Page
{
    public string GUIDS = "";
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
                    using (SqlConnection conn = new DB().GetConnection())
                    {
                        GUIDS = Request.QueryString["GUID"].ToString();
                        SqlCommand cmd = conn.CreateCommand();
                        cmd.CommandText = "select * from Patient where GUID=@GUID";
                        cmd.Parameters.AddWithValue("@GUID", Request.QueryString["GUID"].ToString());
                        conn.Open();
                        SqlDataReader rd = cmd.ExecuteReader();
                        if (rd.Read())
                        {
                            Patient.Text = rd["PatientName"].ToString();
                            GUID.Text = rd["GUID"].ToString();
                            Sex.Text = rd["Sex"].ToString();
                            Birthday.Text = String.Format("{0:yyyy-MM-dd}", rd["Birthday"]);
                            Num1.Text = rd["Num1"].ToString();

                            Phone1.Text = rd["Phone1"].ToString();
                        }
                        rd.Close();

                        DoctorGUID.Text = Session["DoctorGUID"].ToString();
                        cmd.CommandText = "select * from Doctor where GUID=@DoctorGUID";
                        cmd.Parameters.AddWithValue("@DoctorGUID", DoctorGUID.Text);
                        rd = cmd.ExecuteReader();
                        if (rd.Read())
                        {
                            DoctorName.Text = rd["DoctorName"].ToString();
                        }
                        rd.Close();

                        // T1
                        cmd.CommandText = "select GUID,EndDT from T1 where PatientGUID=@GUID Order by EndDT Desc";
                        rd = cmd.ExecuteReader();
                        Repeater1.DataSource = rd;
                        Repeater1.DataBind();
                        rd.Close();

                        // T2
                        cmd.CommandText = "select GUID,EndDT from T2 where PatientGUID=@GUID Order by EndDT Desc";
                        rd = cmd.ExecuteReader();
                        Repeater2.DataSource = rd;
                        Repeater2.DataBind();
                        rd.Close();

                        // T3
                        cmd.CommandText = "select GUID,EndDT from T3 where PatientGUID=@GUID Order by EndDT Desc";
                        rd = cmd.ExecuteReader();
                        Repeater3.DataSource = rd;
                        Repeater3.DataBind();
                        rd.Close();

                        // T4
                        cmd.CommandText = "select GUID,EndDT from T4 where PatientGUID=@GUID Order by EndDT Desc";
                        rd = cmd.ExecuteReader();
                        Repeater4.DataSource = rd;
                        Repeater4.DataBind();
                        rd.Close();

                        // T5
                        cmd.CommandText = "select GUID,EndDT from T5 where PatientGUID=@GUID Order by EndDT Desc";
                        rd = cmd.ExecuteReader();
                        Repeater5.DataSource = rd;
                        Repeater5.DataBind();
                        rd.Close();

                        // T6
                        cmd.CommandText = "select GUID,EndDT from T6 where PatientGUID=@GUID Order by EndDT Desc";
                        rd = cmd.ExecuteReader();
                        Repeater6.DataSource = rd;
                        Repeater6.DataBind();
                        rd.Close();

                        // T7
                        cmd.CommandText = "select GUID,EndDT from T7 where PatientGUID=@GUID Order by EndDT Desc";
                        rd = cmd.ExecuteReader();
                        Repeater7.DataSource = rd;
                        Repeater7.DataBind();
                        rd.Close();

                         //T8
                        cmd.CommandText = "select GUID,EndDT from T8 where PatientGUID=@GUID Order by EndDT Desc";
                        rd = cmd.ExecuteReader();
                        Repeater8.DataSource = rd;
                        Repeater8.DataBind();
                        rd.Close();

                        // T9
                        cmd.CommandText = "select GUID,EndDT from T9 where PatientGUID=@GUID Order by EndDT Desc";
                        rd = cmd.ExecuteReader();
                        Repeater9.DataSource = rd;
                        Repeater9.DataBind();
                        rd.Close();

                        // T10
                        cmd.CommandText = "select GUID,EndDT from T10 where PatientGUID=@GUID Order by EndDT Desc";
                        rd = cmd.ExecuteReader();
                        Repeater10.DataSource = rd;
                        Repeater10.DataBind();
                        rd.Close();

                        // T11
                        cmd.CommandText = "select GUID,EndDT from T11 where PatientGUID=@GUID Order by EndDT Desc";
                        rd = cmd.ExecuteReader();
                        Repeater11.DataSource = rd;
                        Repeater11.DataBind();
                        rd.Close();

                        // T12
                        cmd.CommandText = "select GUID,EndDT from T12 where PatientGUID=@GUID Order by EndDT Desc";
                        rd = cmd.ExecuteReader();
                        Repeater12.DataSource = rd;
                        Repeater12.DataBind();
                        rd.Close();

                        // T13
                        cmd.CommandText = "select GUID,EndDT from T13 where PatientGUID=@GUID Order by EndDT Desc";
                        rd = cmd.ExecuteReader();
                        Repeater13.DataSource = rd;
                        Repeater13.DataBind();
                        rd.Close();

                        // T14
                        cmd.CommandText = "select GUID,EndDT from T14 where PatientGUID=@GUID Order by EndDT Desc";
                        rd = cmd.ExecuteReader();
                        Repeater14.DataSource = rd;
                        Repeater14.DataBind();
                        rd.Close();

                        // T15
                        cmd.CommandText = "select GUID,EndDT from T15 where PatientGUID=@GUID Order by EndDT Desc";
                        rd = cmd.ExecuteReader();
                        Repeater15.DataSource = rd;
                        Repeater15.DataBind();
                        rd.Close();

                        // T16
                        cmd.CommandText = "select GUID,EndDT from T16 where PatientGUID=@GUID Order by EndDT Desc";
                        rd = cmd.ExecuteReader();
                        Repeater16.DataSource = rd;
                        Repeater16.DataBind();
                        rd.Close();

                        // T17
                        cmd.CommandText = "select GUID,EndDT from T17 where PatientGUID=@GUID Order by EndDT Desc";
                        rd = cmd.ExecuteReader();
                        Repeater17.DataSource = rd;
                        Repeater17.DataBind();
                        rd.Close();

                        // T18
                        cmd.CommandText = "select GUID,EndDT from T18 where PatientGUID=@GUID Order by EndDT Desc";
                        rd = cmd.ExecuteReader();
                        Repeater18.DataSource = rd;
                        Repeater18.DataBind();
                        rd.Close();

                        // T19
                        cmd.CommandText = "select GUID,EndDT from T19 where PatientGUID=@GUID Order by EndDT Desc";
                        rd = cmd.ExecuteReader();
                        Repeater19.DataSource = rd;
                        Repeater19.DataBind();
                        rd.Close();

                        // T20
                        cmd.CommandText = "select GUID,EndDT from T20 where PatientGUID=@GUID Order by EndDT Desc";
                        rd = cmd.ExecuteReader();
                        Repeater20.DataSource = rd;
                        Repeater20.DataBind();
                        rd.Close();

                        // T21
                        cmd.CommandText = "select GUID,EndDT from T21 where PatientGUID=@GUID Order by EndDT Desc";
                        rd = cmd.ExecuteReader();
                        Repeater21.DataSource = rd;
                        Repeater21.DataBind();
                        rd.Close();

                        // T22
                        cmd.CommandText = "select GUID,EndDT from T22 where PatientGUID=@GUID Order by EndDT Desc";
                        rd = cmd.ExecuteReader();
                        Repeater22.DataSource = rd;
                        Repeater22.DataBind();
                        rd.Close();

                        // T23
                        cmd.CommandText = "select GUID,EndDT from T23 where PatientGUID=@GUID Order by EndDT Desc";
                        rd = cmd.ExecuteReader();
                        Repeater23.DataSource = rd;
                        Repeater23.DataBind();
                        rd.Close();

                        // T24
                        cmd.CommandText = "select GUID,EndDT from T24 where PatientGUID=@GUID Order by EndDT Desc";
                        rd = cmd.ExecuteReader();
                        Repeater24.DataSource = rd;
                        Repeater24.DataBind();
                        rd.Close();

                        // T25
                        cmd.CommandText = "select GUID,EndDT from T25 where PatientGUID=@GUID Order by EndDT Desc";
                        rd = cmd.ExecuteReader();
                        Repeater25.DataSource = rd;
                        Repeater25.DataBind();
                        rd.Close();

                        // T26
                        cmd.CommandText = "select GUID,EndDT from T26 where PatientGUID=@GUID Order by EndDT Desc";
                        rd = cmd.ExecuteReader();
                        Repeater26.DataSource = rd;
                        Repeater26.DataBind();
                        rd.Close();

                        // T27
                        cmd.CommandText = "select GUID,EndDT from T27 where PatientGUID=@GUID Order by EndDT Desc";
                        rd = cmd.ExecuteReader();
                        Repeater27.DataSource = rd;
                        Repeater27.DataBind();
                        rd.Close();

                        // T28
                        cmd.CommandText = "select GUID,EndDT from T28 where PatientGUID=@GUID Order by EndDT Desc";
                        rd = cmd.ExecuteReader();
                        Repeater28.DataSource = rd;
                        Repeater28.DataBind();
                        rd.Close();

                        conn.Close();
                    }


                }
                else
                {
                    Response.Write(" <script> alert(\"请先选择测试对象，再选择其完成的测试进行打印！\");;window.location='Patient_List.aspx'; </script> ");
                }
            }


        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int j = 0,flag = 0,print = 0;
        Hashtable hs = new Hashtable();
        System.Guid guid = System.Guid.NewGuid();
        string strGUID = System.Guid.NewGuid().ToString();
        string CDT = DateTime.Now.ToString();

        using (SqlConnection conn = new DB().GetConnection())
        {
            SqlCommand cmd = conn.CreateCommand();         
            cmd.CommandText = " ";
            for (int i = 1; i <= 28; i++)
            {
                if (Request.Form[""+i+""] != null && i!=15)
                {
                    cmd.CommandText += "select RawScore from T" + i + " where GUID=@GUID" + i + ";";
                    cmd.Parameters.AddWithValue("@GUID"+i+"", Request["" + i + ""].ToString());
                }
            }
            if (cmd.CommandText == " ")
            {
                Response.Write(" <script> alert(\"该病人未做过测试，无法打印报告单！\");;window.location='Test_Select.aspx?GUID=" + Request.QueryString["GUID"].ToString() + "'; </script> ");
            }
            else
            {
                print = 1;
                conn.Open();
                SqlDataReader rd = cmd.ExecuteReader();
                do
                {
                    if (rd.Read())
                    {
                        hs[j] = Convert.ToDecimal(Util.AESDecrypt(rd["RawScore"].ToString()));//获取查询的结果  
                    }
                    else
                    {
                        hs[j] = "0";//如果没有，则赋值为0
                    }
                    j++;
                } while (rd.NextResult());
                rd.Close();

                conn.Close();
            }
            
        }

        if(print==1)
        {
            //***插入数据库***
            //动态生成数组
            ArrayList fields = new ArrayList();//字段数组
            fields.Add("GUID"); fields.Add("PatientGUID"); fields.Add("PatientName"); fields.Add("CDT"); fields.Add("DoctorGUID"); fields.Add("DoctorName");

            ArrayList values = new ArrayList();//插入值数组（务必与字段数组的添加顺序一样）
            values.Add(strGUID); values.Add(GUID.Text); values.Add(Patient.Text); values.Add(CDT); values.Add(DoctorGUID.Text); values.Add(DoctorName.Text);

            j = 0;
            for (int i = 1; i <= 28; i++)
            {
                if (Request.Form["" + i + ""] != null && i != 15)
                {
                    fields.Add("T" + i + "Score");
                    values.Add(hs[j]);
                    j++;
                }
            }

            if (Request.Form["2"] != null)
            {
                using (SqlConnection conn = new DB().GetConnection())
                {
                    SqlCommand cmd = conn.CreateCommand();
                    cmd.CommandText = "select * from T2 where GUID=@T2GUID";
                    cmd.Parameters.AddWithValue("@T2GUID", Request["2"].ToString());
                    conn.Open();
                    SqlDataReader rd = cmd.ExecuteReader();
                    if (rd.Read())
                    {
                        hs[j] = Convert.ToDecimal(Util.AESDecrypt(rd["RS1"].ToString()));
                        fields.Add("T2ScoreRS1");
                        values.Add(hs[j]);
                        j++;
                        hs[j] = Convert.ToDecimal(Util.AESDecrypt(rd["RS2"].ToString()));
                        fields.Add("T2ScoreRS2");
                        values.Add(hs[j]);
                        j++;
                        hs[j] = Convert.ToDecimal(Util.AESDecrypt(rd["RS3"].ToString()));
                        fields.Add("T2ScoreRS3");
                        values.Add(hs[j]);
                        j++;
                    }
                    rd.Close();
                    conn.Close();
                }
            }
            if (Request.Form["7"] != null)
            {
                using (SqlConnection conn = new DB().GetConnection())
                {
                    SqlCommand cmd = conn.CreateCommand();
                    cmd.CommandText = "select * from T7 where GUID=@T7GUID";
                    cmd.Parameters.AddWithValue("@T7GUID", Request["7"].ToString());
                    conn.Open();
                    SqlDataReader rd = cmd.ExecuteReader();
                    if (rd.Read())
                    {
                        hs[j] = Convert.ToDecimal(Util.AESDecrypt(rd["RS1"].ToString()));
                        fields.Add("T7ScoreRS1");
                        values.Add(hs[j]);
                        j++;

                        hs[j] = Convert.ToDecimal(Util.AESDecrypt(rd["RS2"].ToString()));
                        fields.Add("T7ScoreRS2");
                        values.Add(hs[j]);
                        j++;

                        hs[j] = Convert.ToDecimal(Util.AESDecrypt(rd["RS3"].ToString()));
                        fields.Add("T7ScoreRS3");
                        values.Add(hs[j]);
                        j++;
                    }
                    rd.Close();
                    conn.Close();
                }
            }
            if (Request.Form["8"] != null)
            {
                using (SqlConnection conn = new DB().GetConnection())
                {
                    SqlCommand cmd = conn.CreateCommand();
                    cmd.CommandText = "select * from T8 where GUID=@T8GUID";
                    cmd.Parameters.AddWithValue("@T8GUID", Request["8"].ToString());
                    conn.Open();
                    SqlDataReader rd = cmd.ExecuteReader();
                    if (rd.Read())
                    {
                        hs[j] = Convert.ToDecimal(Util.AESDecrypt(rd["RS1"].ToString()));
                        fields.Add("T8ScoreRS1");
                        values.Add(hs[j]);
                        j++;

                        hs[j] = Convert.ToDecimal(Util.AESDecrypt(rd["RS2"].ToString()));
                        fields.Add("T8ScoreRS2");
                        values.Add(hs[j]);
                        j++;

                        hs[j] = Convert.ToDecimal(Util.AESDecrypt(rd["RS3"].ToString()));
                        fields.Add("T8ScoreRS5");
                        values.Add(hs[j]);
                        j++;

                        hs[j] = Convert.ToDecimal(Util.AESDecrypt(rd["RS4"].ToString()));
                        fields.Add("T8ScoreRS6");
                        values.Add(hs[j]);
                        j++;

                        hs[j] = Convert.ToDecimal(Util.AESDecrypt(rd["RS5"].ToString()));
                        fields.Add("T8ScoreRS34");
                        values.Add(hs[j]);
                        j++;

                        hs[j] = Convert.ToDecimal(Util.AESDecrypt(rd["RS6"].ToString()));
                        fields.Add("T8ScoreRS7");
                        values.Add(hs[j]);
                        j++;
                    }
                    rd.Close();
                    conn.Close();
                }
            }
            if (Request.Form["15"] != null)
            {
                using (SqlConnection conn = new DB().GetConnection())
                {
                    SqlCommand cmd = conn.CreateCommand();
                    cmd.CommandText = "select * from T15 where GUID=@T15GUID";
                    cmd.Parameters.AddWithValue("@T15GUID", Request["15"].ToString());
                    conn.Open();
                    SqlDataReader rd = cmd.ExecuteReader();
                    if (rd.Read())
                    {
                        hs[j] = Convert.ToDecimal(Util.AESDecrypt(rd["RS1"].ToString()));
                        fields.Add("T15ScoreRS1");
                        values.Add(hs[j]);
                        j++;

                        hs[j] = Convert.ToDecimal(Util.AESDecrypt(rd["RS2"].ToString()));
                        fields.Add("T15ScoreRS2");
                        values.Add(hs[j]);
                        j++;

                        hs[j] = Convert.ToDecimal(Util.AESDecrypt(rd["RS3"].ToString()));
                        fields.Add("T15ScoreRS3");
                        values.Add(hs[j]);
                        j++;

                        hs[j] = Convert.ToDecimal(Util.AESDecrypt(rd["RS4"].ToString()));
                        fields.Add("T15ScoreRS4");
                        values.Add(hs[j]);
                        j++;

                        hs[j] = Convert.ToDecimal(Util.AESDecrypt(rd["RS5"].ToString()));
                        fields.Add("T15ScoreRS5");
                        values.Add(hs[j]);
                        j++;

                        hs[j] = Convert.ToDecimal(Util.AESDecrypt(rd["RawScore2"].ToString()));
                        fields.Add("T15Score");
                        values.Add(hs[j]);
                        j++;
                    }
                    rd.Close();
                    conn.Close();
                }
            }

            //调用Util中写好的函数将值插入数据库
            flag = Util.InsertDatabase("Report", fields, values, fields.Count);

            if (flag == 1)
            {
                Response.Write(" <script> alert(\"成功提交！\");;window.location='Report.aspx?TGUID=" + strGUID + "'; </script> ");
            }
            else
            {
                Response.Write(" <script> alert(\"提交失败！请重试或关闭页面。\"); </script> ");
            }
        }
        
    }
}