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

public partial class T20 : System.Web.UI.Page
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
                TestName.Text = "治疗副反应量表（TESS）";
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
    protected void Button1_Click(object sender, EventArgs e)
    {


        InsertDatabase();//插入数据库

    }

    private void InsertDatabase()
    {
        int i = 0;
        EndDT.Text = DateTime.Now.ToString();


        using (SqlConnection conn = new DB().GetConnection())
        {
            StringBuilder sb = new StringBuilder("Insert into T20 ( GUID,TestName,PatientGUID,StartDT,EndDT,DoctorGUID,severity1,severity2,severity3,severity4,severity5,severity6,severity7,severity8,severity9,severity10,severity11,severity12,severity13,severity14,severity15,severity16,severity17,severity18,severity19,severity20,severity21,severity22,severity23,severity24,severity25,severity26,severity27,severity28,severity29,severity30,severity31,severity32,severity33,severity34,manage1,manage2,manage3,manage4,manage5,manage6,manage7,manage8,manage9,manage10,manage11,manage12,manage13,manage14,manage15,manage16,manage17,manage18,manage19,manage20,manage21,manage22,manage23,manage24,manage25,manage26,manage27,manage28,manage29,manage30,manage31,manage32,manage33,manage34,relation1,relation2,relation3,relation4,relation5,relation6,relation7,relation8,relation9,relation10,relation11,relation12,relation13,relation14,relation15,relation16,relation17,relation18,relation19,relation20,relation21,relation22,relation23,relation24,relation25,relation26,relation27,relation28,relation29,relation30,relation31,relation32,relation33,relation34,Name34,severity_RawScore,manage_RawScore,relation_RawScore,RawScore) ");
            sb.Append(" values ( @GUID,@TestName,@PatientGUID,@StartDT,@EndDT,@DoctorGUID,@severity1,@severity2,@severity3,@severity4,@severity5,@severity6,@severity7,@severity8,@severity9,@severity10,@severity11,@severity12,@severity13,@severity14,@severity15,@severity16,@severity17,@severity18,@severity19,@severity20,@severity21,@severity22,@severity23,@severity24,@severity25,@severity26,@severity27,@severity28,@severity29,@severity30,@severity31,@severity32,@severity33,@severity34,@manage1,@manage2,@manage3,@manage4,@manage5,@manage6,@manage7,@manage8,@manage9,@manage10,@manage11,@manage12,@manage13,@manage14,@manage15,@manage16,@manage17,@manage18,@manage19,@manage20,@manage21,@manage22,@manage23,@manage24,@manage25,@manage26,@manage27,@manage28,@manage29,@manage30,@manage31,@manage32,@manage33,@manage34,@relation1,@relation2,@relation3,@relation4,@relation5,@relation6,@relation7,@relation8,@relation9,@relation10,@relation11,@relation12,@relation13,@relation14,@relation15,@relation16,@relation17,@relation18,@relation19,@relation20,@relation21,@relation22,@relation23,@relation24,@relation25,@relation26,@relation27,@relation28,@relation29,@relation30,@relation31,@relation32,@relation33,@relation34,@Name34,@severity_RawScore,@manage_RawScore,@relation_RawScore,@RawScore) ");
            SqlCommand cmd = new SqlCommand(sb.ToString(), conn);
            int severity_RawScore, manage_RawScore, relation_RawScore,RawScore = 0;
            severity_RawScore = Convert.ToInt16(severity1.Text) + Convert.ToInt16(severity2.Text) + Convert.ToInt16(severity3.Text) + Convert.ToInt16(severity4.Text) + Convert.ToInt16(severity5.Text) + Convert.ToInt16(severity6.Text) + Convert.ToInt16(severity7.Text) + Convert.ToInt16(severity8.Text) + Convert.ToInt16(severity9.Text) + Convert.ToInt16(severity10.Text) + Convert.ToInt16(severity11.Text) + Convert.ToInt16(severity12.Text) + Convert.ToInt16(severity13.Text) + Convert.ToInt16(severity14.Text) + Convert.ToInt16(severity15.Text) + Convert.ToInt16(severity16.Text) + Convert.ToInt16(severity17.Text) + Convert.ToInt16(severity18.Text) + Convert.ToInt16(severity19.Text) + Convert.ToInt16(severity20.Text) + Convert.ToInt16(severity21.Text) + Convert.ToInt16(severity22.Text) + Convert.ToInt16(severity23.Text) + Convert.ToInt16(severity24.Text) + Convert.ToInt16(severity25.Text) + Convert.ToInt16(severity26.Text) + Convert.ToInt16(severity27.Text) + Convert.ToInt16(severity28.Text) + Convert.ToInt16(severity29.Text) + Convert.ToInt16(severity30.Text) + Convert.ToInt16(severity31.Text) + Convert.ToInt16(severity32.Text) + Convert.ToInt16(severity33.Text) + Convert.ToInt16(severity34.Text);
            manage_RawScore = Convert.ToInt16(manage1.Text) + Convert.ToInt16(manage2.Text) + Convert.ToInt16(manage3.Text) + Convert.ToInt16(manage4.Text) + Convert.ToInt16(manage5.Text) + Convert.ToInt16(manage6.Text) + Convert.ToInt16(manage7.Text) + Convert.ToInt16(manage8.Text) + Convert.ToInt16(manage9.Text) + Convert.ToInt16(manage10.Text) + Convert.ToInt16(manage11.Text) + Convert.ToInt16(manage12.Text) + Convert.ToInt16(manage13.Text) + Convert.ToInt16(manage14.Text) + Convert.ToInt16(manage15.Text) + Convert.ToInt16(manage16.Text) + Convert.ToInt16(manage17.Text) + Convert.ToInt16(manage18.Text) + Convert.ToInt16(manage19.Text) + Convert.ToInt16(manage20.Text) + Convert.ToInt16(manage21.Text) + Convert.ToInt16(manage22.Text) + Convert.ToInt16(manage23.Text) + Convert.ToInt16(manage24.Text) + Convert.ToInt16(manage25.Text) + Convert.ToInt16(manage26.Text) + Convert.ToInt16(manage27.Text) + Convert.ToInt16(manage28.Text) + Convert.ToInt16(manage29.Text) + Convert.ToInt16(manage30.Text) + Convert.ToInt16(manage31.Text) + Convert.ToInt16(manage32.Text) + Convert.ToInt16(manage33.Text) + Convert.ToInt16(manage34.Text);
            relation_RawScore = Convert.ToInt16(relation1.Text) + Convert.ToInt16(relation2.Text) + Convert.ToInt16(relation3.Text) + Convert.ToInt16(relation4.Text) + Convert.ToInt16(relation5.Text) + Convert.ToInt16(relation6.Text) + Convert.ToInt16(relation7.Text) + Convert.ToInt16(relation8.Text) + Convert.ToInt16(relation9.Text) + Convert.ToInt16(relation10.Text) + Convert.ToInt16(relation11.Text) + Convert.ToInt16(relation12.Text) + Convert.ToInt16(relation13.Text) + Convert.ToInt16(relation14.Text) + Convert.ToInt16(relation15.Text) + Convert.ToInt16(relation16.Text) + Convert.ToInt16(relation17.Text) + Convert.ToInt16(relation18.Text) + Convert.ToInt16(relation19.Text) + Convert.ToInt16(relation20.Text) + Convert.ToInt16(relation21.Text) + Convert.ToInt16(relation22.Text) + Convert.ToInt16(relation23.Text) + Convert.ToInt16(relation24.Text) + Convert.ToInt16(relation25.Text) + Convert.ToInt16(relation26.Text) + Convert.ToInt16(relation27.Text) + Convert.ToInt16(relation28.Text) + Convert.ToInt16(relation29.Text) + Convert.ToInt16(relation30.Text) + Convert.ToInt16(relation31.Text) + Convert.ToInt16(relation32.Text) + Convert.ToInt16(relation33.Text) + Convert.ToInt16(relation34.Text);
            RawScore = severity_RawScore + manage_RawScore + relation_RawScore;
            cmd.Parameters.AddWithValue("@GUID", GUID.Text);
            cmd.Parameters.AddWithValue("@TestName", TestName.Text);
            cmd.Parameters.AddWithValue("@PatientGUID", PatientGUID.Text);
            cmd.Parameters.AddWithValue("@StartDT", StartDT.Text);
            cmd.Parameters.AddWithValue("@EndDT", EndDT.Text);
            cmd.Parameters.AddWithValue("@DoctorGUID", DoctorGUID.Text);
            cmd.Parameters.AddWithValue("@severity1", severity1.Text);
            cmd.Parameters.AddWithValue("@severity2", severity2.Text);
            cmd.Parameters.AddWithValue("@severity3", severity3.Text);
            cmd.Parameters.AddWithValue("@severity4", severity4.Text);
            cmd.Parameters.AddWithValue("@severity5", severity5.Text);
            cmd.Parameters.AddWithValue("@severity6", severity6.Text);
            cmd.Parameters.AddWithValue("@severity7", severity7.Text);
            cmd.Parameters.AddWithValue("@severity8", severity8.Text);
            cmd.Parameters.AddWithValue("@severity9", severity9.Text);
            cmd.Parameters.AddWithValue("@severity10", severity10.Text);
            cmd.Parameters.AddWithValue("@severity11", severity11.Text);
            cmd.Parameters.AddWithValue("@severity12", severity12.Text);
            cmd.Parameters.AddWithValue("@severity13", severity13.Text);
            cmd.Parameters.AddWithValue("@severity14", severity14.Text);
            cmd.Parameters.AddWithValue("@severity15", severity15.Text);
            cmd.Parameters.AddWithValue("@severity16", severity16.Text);
            cmd.Parameters.AddWithValue("@severity17", severity17.Text);
            cmd.Parameters.AddWithValue("@severity18", severity18.Text);
            cmd.Parameters.AddWithValue("@severity19", severity19.Text);
            cmd.Parameters.AddWithValue("@severity20", severity20.Text);
            cmd.Parameters.AddWithValue("@severity21", severity21.Text);
            cmd.Parameters.AddWithValue("@severity22", severity22.Text);
            cmd.Parameters.AddWithValue("@severity23", severity23.Text);
            cmd.Parameters.AddWithValue("@severity24", severity24.Text);
            cmd.Parameters.AddWithValue("@severity25", severity25.Text);
            cmd.Parameters.AddWithValue("@severity26", severity26.Text);
            cmd.Parameters.AddWithValue("@severity27", severity27.Text);
            cmd.Parameters.AddWithValue("@severity28", severity28.Text);
            cmd.Parameters.AddWithValue("@severity29", severity29.Text);
            cmd.Parameters.AddWithValue("@severity30", severity30.Text);
            cmd.Parameters.AddWithValue("@severity31", severity31.Text);
            cmd.Parameters.AddWithValue("@severity32", severity32.Text);
            cmd.Parameters.AddWithValue("@severity33", severity33.Text);
            cmd.Parameters.AddWithValue("@severity34", severity34.Text);
            cmd.Parameters.AddWithValue("@manage1", manage1.Text);
            cmd.Parameters.AddWithValue("@manage2", manage2.Text);
            cmd.Parameters.AddWithValue("@manage3", manage3.Text);
            cmd.Parameters.AddWithValue("@manage4", manage4.Text);
            cmd.Parameters.AddWithValue("@manage5", manage5.Text);
            cmd.Parameters.AddWithValue("@manage6", manage6.Text);
            cmd.Parameters.AddWithValue("@manage7", manage7.Text);
            cmd.Parameters.AddWithValue("@manage8", manage8.Text);
            cmd.Parameters.AddWithValue("@manage9", manage9.Text);
            cmd.Parameters.AddWithValue("@manage10", manage10.Text);
            cmd.Parameters.AddWithValue("@manage11", manage11.Text);
            cmd.Parameters.AddWithValue("@manage12", manage12.Text);
            cmd.Parameters.AddWithValue("@manage13", manage13.Text);
            cmd.Parameters.AddWithValue("@manage14", manage14.Text);
            cmd.Parameters.AddWithValue("@manage15", manage15.Text);
            cmd.Parameters.AddWithValue("@manage16", manage16.Text);
            cmd.Parameters.AddWithValue("@manage17", manage17.Text);
            cmd.Parameters.AddWithValue("@manage18", manage18.Text);
            cmd.Parameters.AddWithValue("@manage19", manage19.Text);
            cmd.Parameters.AddWithValue("@manage20", manage20.Text);
            cmd.Parameters.AddWithValue("@manage21", manage21.Text);
            cmd.Parameters.AddWithValue("@manage22", manage22.Text);
            cmd.Parameters.AddWithValue("@manage23", manage23.Text);
            cmd.Parameters.AddWithValue("@manage24", manage24.Text);
            cmd.Parameters.AddWithValue("@manage25", manage25.Text);
            cmd.Parameters.AddWithValue("@manage26", manage26.Text);
            cmd.Parameters.AddWithValue("@manage27", manage27.Text);
            cmd.Parameters.AddWithValue("@manage28", manage28.Text);
            cmd.Parameters.AddWithValue("@manage29", manage29.Text);
            cmd.Parameters.AddWithValue("@manage30", manage30.Text);
            cmd.Parameters.AddWithValue("@manage31", manage31.Text);
            cmd.Parameters.AddWithValue("@manage32", manage32.Text);
            cmd.Parameters.AddWithValue("@manage33", manage33.Text);
            cmd.Parameters.AddWithValue("@manage34", manage34.Text);
            cmd.Parameters.AddWithValue("@relation1", relation1.Text);
            cmd.Parameters.AddWithValue("@relation2", relation2.Text);
            cmd.Parameters.AddWithValue("@relation3", relation3.Text);
            cmd.Parameters.AddWithValue("@relation4", relation4.Text);
            cmd.Parameters.AddWithValue("@relation5", relation5.Text);
            cmd.Parameters.AddWithValue("@relation6", relation6.Text);
            cmd.Parameters.AddWithValue("@relation7", relation7.Text);
            cmd.Parameters.AddWithValue("@relation8", relation8.Text);
            cmd.Parameters.AddWithValue("@relation9", relation9.Text);
            cmd.Parameters.AddWithValue("@relation10", relation10.Text);
            cmd.Parameters.AddWithValue("@relation11", relation11.Text);
            cmd.Parameters.AddWithValue("@relation12", relation12.Text);
            cmd.Parameters.AddWithValue("@relation13", relation13.Text);
            cmd.Parameters.AddWithValue("@relation14", relation14.Text);
            cmd.Parameters.AddWithValue("@relation15", relation15.Text);
            cmd.Parameters.AddWithValue("@relation16", relation16.Text);
            cmd.Parameters.AddWithValue("@relation17", relation17.Text);
            cmd.Parameters.AddWithValue("@relation18", relation18.Text);
            cmd.Parameters.AddWithValue("@relation19", relation19.Text);
            cmd.Parameters.AddWithValue("@relation20", relation20.Text);
            cmd.Parameters.AddWithValue("@relation21", relation21.Text);
            cmd.Parameters.AddWithValue("@relation22", relation22.Text);
            cmd.Parameters.AddWithValue("@relation23", relation23.Text);
            cmd.Parameters.AddWithValue("@relation24", relation24.Text);
            cmd.Parameters.AddWithValue("@relation25", relation25.Text);
            cmd.Parameters.AddWithValue("@relation26", relation26.Text);
            cmd.Parameters.AddWithValue("@relation27", relation27.Text);
            cmd.Parameters.AddWithValue("@relation28", relation28.Text);
            cmd.Parameters.AddWithValue("@relation29", relation29.Text);
            cmd.Parameters.AddWithValue("@relation30", relation30.Text);
            cmd.Parameters.AddWithValue("@relation31", relation31.Text);
            cmd.Parameters.AddWithValue("@relation32", relation32.Text);
            cmd.Parameters.AddWithValue("@relation33", relation33.Text);
            cmd.Parameters.AddWithValue("@relation34", relation34.Text);
            cmd.Parameters.AddWithValue("@Name34", Name34.Text);
            cmd.Parameters.AddWithValue("@severity_RawScore", Util.AESEncrypt(severity_RawScore.ToString()));
            cmd.Parameters.AddWithValue("@manage_RawScore", Util.AESEncrypt(manage_RawScore.ToString()));
            cmd.Parameters.AddWithValue("@relation_RawScore", Util.AESEncrypt(relation_RawScore.ToString()));
            cmd.Parameters.AddWithValue("@RawScore", Util.AESEncrypt(RawScore.ToString()));






            conn.Open();
            i = cmd.ExecuteNonQuery();





            if (i == 1)
            {
                if (Session["Code"] == null)
                {
                    Response.Write(" <script> alert(\"成功提交！\");;window.location='R20.aspx?TGUID=" + GUID.Text + "&TNum=20'; </script> ");
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