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

public partial class T1 : System.Web.UI.Page
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
                    TestName.Text = "大体功能评定量表（GAF）";
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

        using (SqlConnection conn = new DB().GetConnection())
        {
            StringBuilder sb = new StringBuilder("Insert into T1 ( GUID,TestName,PatientGUID,StartDT,EndDT,RawScore,DoctorGUID) ");
            sb.Append(" values ( @GUID,@TestName,@PatientGUID,@StartDT,@EndDT,@RawScore,@DoctorGUID) ");
            SqlCommand cmd = new SqlCommand(sb.ToString(), conn);

            cmd.Parameters.AddWithValue("@GUID", GUID.Text);
            cmd.Parameters.AddWithValue("@TestName", TestName.Text);
            cmd.Parameters.AddWithValue("@PatientGUID", PatientGUID.Text);
            cmd.Parameters.AddWithValue("@StartDT", StartDT.Text);
            cmd.Parameters.AddWithValue("@EndDT", EndDT.Text);
            cmd.Parameters.AddWithValue("@RawScore", Util.AESEncrypt(Score.Text));
            cmd.Parameters.AddWithValue("@DoctorGUID", DoctorGUID.Text);

            conn.Open();
            i = cmd.ExecuteNonQuery();


            if (i == 1)
            {
                if (Session["Code"] == null)
                {
                    Response.Write(" <script> alert(\"成功提交！\");;window.location='R1.aspx?TGUID=" + GUID.Text + "&TNum=1'; </script> ");
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

        if (!IsNumber(Score.Text.Trim()) || Score.Text == "")
        {
            Response.Write(" <script> alert(\"提交失败！请能输入0到100之间的整数。\"); </script> ");
        }
        else
        {
            if (Convert.ToInt16(Score.Text.ToString()) > 100 || Convert.ToInt16(Score.Text.ToString()) < 0)
            { Response.Write(" <script> alert(\"提交失败！请能输入0到100之间的整数。\"); </script> "); }
            else
            {
                InsertDatabase();
            }
        }


    }
}