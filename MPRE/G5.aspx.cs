using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class G5 : System.Web.UI.Page
{
    public object Score { get; private set; }

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
                PatientGUID.Text = Request.QueryString["GUID"].ToString();
                DoctorGUID.Text = Session["DoctorGUID"].ToString();

                
                using (SqlConnection conn = new DB().GetConnection())
                {
                    SqlCommand cmd = conn.CreateCommand();
                    cmd.CommandText = "select * from Test where GUID=@TGUID ";
                    cmd.Parameters.AddWithValue("@TGUID", "c4af0b8e-b4fa-48b2-ae9a-8b8c60a42962");
                    conn.Open();
                    SqlDataReader rd = cmd.ExecuteReader();
                    if (rd.Read())
                    {
                        TestName.Text = rd["TestName"].ToString();
                        TestName1.Text = rd["TestName"].ToString();
                        Description.Text = rd["Description"].ToString();
                    }
                    rd.Close();
                    conn.Close();
                }
                BindRepeater();

            }
        }
        else
        {
            Hands.Style["display"] = "none";
            Testbox.Style["display"] = "block";
        }
    }

    private void BindRepeater()
    {
        String TGUID = "c4af0b8e-b4fa-48b2-ae9a-8b8c60a42962";
        using (SqlConnection conn = new DB().GetConnection())
        {
            
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "SELECT * FROM [Question] WHERE TestGUID =@TGUID ORDER BY [Serial]";
            cmd.Parameters.AddWithValue("@TGUID", TGUID);
            conn.Open();//打开数据库连接 
            SqlDataReader sda = cmd.ExecuteReader();
            Repeater1.DataSource = sda;
            Repeater1.DataBind();
            conn.Close();
            cmd.CommandText = "SELECT count(*) as maxrow FROM [Question] WHERE TestGUID =@TGUID";
            conn.Open();//打开数据库连接 
            sda = cmd.ExecuteReader();
            if (sda.Read())
            {
                Label2.Text = sda["maxrow"].ToString();
                
            }
        }
        String Q_GUID = GetQUID(TGUID,1);
        UpdataQuestion(Q_GUID);
    }

    private string GetQUID(string tGUID, int v)
    {
        String QUID = "";
        using (SqlConnection conn = new DB().GetConnection())
        {

            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "SELECT TOP (1) * FROM (SELECT Top (@QSerial) * FROM [Question] WHERE TestGUID =@TGUID ORDER BY Serial) [Question] ORDER BY Serial desc";
            cmd.Parameters.AddWithValue("@TGUID", tGUID);
            cmd.Parameters.AddWithValue("@QSerial",v);
            conn.Open();//打开数据库连接 
            SqlDataReader sda = cmd.ExecuteReader();
            if (sda.Read())
            {
                QUID = sda["GUID"].ToString();
            }
            conn.Close();
        }


        return QUID;
        
    }

    private void UpdataQuestion(string Q_GUID) {
        using (SqlConnection conn = new DB().GetConnection())
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "SELECT * FROM [IView] WHERE QuestionGUID =@QGUID ORDER BY [Serial]";
            cmd.Parameters.AddWithValue("@QGUID", Q_GUID);
            conn.Open();//打开数据库连接 
            SqlDataReader sda = cmd.ExecuteReader();
            Repeater2.DataSource = sda;
            Repeater2.DataBind();
            conn.Close();
            conn.Open();//打开数据库连接 
            sda = cmd.ExecuteReader();
            if (sda.Read())
            {
                QuestionSerial.Text = sda["QuestionSerial"].ToString();
                QuestionText.Text = sda["QuestionText"].ToString();
                Label1.Text = sda["QuestionSerial"].ToString();
            }
            conn.Close();
            
        }
    }


    private void InsertDatabase()
    {
        /*int i = 0;
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
            // cmd.Parameters.AddWithValue("@RawScore", Util.AESEncrypt(Score.Text));
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
        }*/
    }

    //删除已完成的自评码
    private void DelectCode()
    {
        
    }




    public bool IsNumber(string str_number)
    {
        return System.Text.RegularExpressions.Regex.//使用正则表达式判断是否匹配
            IsMatch(str_number, @"^[0-9]*$");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        


    }
    protected void ButtonUp_Click(object sender, EventArgs e)
    {
        if (int.Parse(Label1.Text) == 1)
        {
            Util.ShowMessage("已经是第一道题了！", "####");
            String TGUID = "c4af0b8e-b4fa-48b2-ae9a-8b8c60a42962";
            String Q_GUID = GetQUID(TGUID, 1);
            UpdataQuestion(Q_GUID);
        }
        else
        {
            String TGUID = "c4af0b8e-b4fa-48b2-ae9a-8b8c60a42962";
            int V = int.Parse(Label1.Text) - 1;
            String Q_GUID = GetQUID(TGUID, V);
            UpdataQuestion(Q_GUID);
        }
        

    }
    protected void ButtonDown_Click(object sender, EventArgs e)
    {
        if (int.Parse(Label1.Text) == int.Parse(Label2.Text)-1)
        {
            Button1.Style["display"] = "none";
            Button3.Style["display"] = "block";
        }
        else if (int.Parse(Label1.Text) == int.Parse(Label2.Text) )
        {
            Util.ShowMessage("已经是最后一道题了！", "#");
        }
        else{
            String TGUID = "c4af0b8e-b4fa-48b2-ae9a-8b8c60a42962";
            int V = int.Parse(Label1.Text) + 1;
            String Q_GUID = GetQUID(TGUID, V);
            UpdataQuestion(Q_GUID);
        }
        
    }
}