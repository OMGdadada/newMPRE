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


public partial class T16 : System.Web.UI.Page
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
                TestName.Text = "MATRICS共识认知成套测验（MCCB）";
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
       
        
                bool Abool =false;
                
                string[] C = new string[10];
                C[0] = "0"; C[1] = C1.Text; C[2] = C2.Text; C[3] = C3.Text; C[4] = C4.Text; C[5] = C5.Text; C[6] = C6.Text; C[7] = C7.Text; C[8] = C8.Text; C[9] = C9.Text;
                string[] T = new string[10];
                T[0] = "0"; T[1] = T1.Text; T[2] = T2.Text; T[3] = T3.Text; T[4] = T4.Text; T[5] = T5.Text; T[6] = T6.Text; T[7] = T7.Text; T[8] = T8.Text; T[9] = T9.Text;
                for (int i = 1; i < 10; i++)
                {
                    if (!IsNumber(C[i].ToString()) || C[i] == ""||!IsNumber(T[i].ToString()) || T[i] == "")
                    {                           
                        Abool = false;
                        break; 
                    }
                    
                    else
                    {
                        if (Convert.ToInt16(C[i].ToString()) > 100 || Convert.ToInt16(C[i].ToString()) < 0||Convert.ToInt16(T[i].ToString()) > 100 || Convert.ToInt16(T[i].ToString()) < 0)
                        {
                            Abool = false;
                            break;
                        }
                        
                        else{
                            
                            Abool = true;
                        }
                        
                    }
                }
                if (Abool)
                {
                    InsertDatabase();
                }
                else
                {
                    Response.Write(" <script> alert('提交失败！请输入正确数值');</script>");
                }



                
            }
            
            
        
    
    private void InsertDatabase()
    {
        int i = 0;
        EndDT.Text = DateTime.Now.ToString();

        //***算分***
        decimal RawScore, RS1, RS2, RS3, RS4, RS5, RS6, RS7 = 0;

        RS1 = (Convert.ToDecimal(T1.Text) + Convert.ToDecimal(T2.Text) + Convert.ToDecimal(T7.Text))/3;
        RS2 = Convert.ToDecimal(T9.Text);
        RS3 = Convert.ToDecimal(T4.Text);
        RS4 = Convert.ToDecimal(T3.Text);
        RS5 = Convert.ToDecimal(T6.Text);
        RS6 = Convert.ToDecimal(T5.Text);
        RS7 = Convert.ToDecimal(T8.Text);
        RawScore = (RS1 + RS2 + RS3 + RS4 + RS5 + RS6 +RS7)/7;

        //***插入数据库***
        //动态生成数组
        ArrayList fields = new ArrayList();//字段数组
        fields.Add("GUID"); fields.Add("TestName"); fields.Add("PatientGUID"); fields.Add("StartDT"); fields.Add("EndDT"); fields.Add("RawScore");
        fields.Add("RS1"); fields.Add("RS2"); fields.Add("RS3"); fields.Add("RS4"); fields.Add("RS5"); fields.Add("RS6"); fields.Add("RS7");  fields.Add("DoctorGUID");
        fields.Add("T1"); fields.Add("T2"); fields.Add("T3"); fields.Add("T4"); fields.Add("T5"); fields.Add("T6"); fields.Add("T7"); fields.Add("T8"); fields.Add("T9");
        fields.Add("C1"); fields.Add("C2"); fields.Add("C3"); fields.Add("C4"); fields.Add("C5"); fields.Add("C6"); fields.Add("C7"); fields.Add("C8"); fields.Add("C9");

        ArrayList values = new ArrayList();//插入值数组（务必与字段数组的添加顺序一样）
        values.Add(GUID.Text); values.Add(TestName.Text); values.Add(PatientGUID.Text); values.Add(StartDT.Text); values.Add(EndDT.Text); values.Add(RawScore);
        values.Add(RS1); values.Add(RS2); values.Add(RS3); values.Add(RS4); values.Add(RS5); values.Add(RS6); values.Add(RS7); values.Add(DoctorGUID.Text); 
        values.Add(Convert.ToDecimal(T1.Text)); values.Add(Convert.ToDecimal(T2.Text)); values.Add(Convert.ToDecimal(T3.Text)); values.Add(Convert.ToDecimal(T4.Text));
        values.Add(Convert.ToDecimal(T5.Text)); values.Add(Convert.ToDecimal(T6.Text)); values.Add(Convert.ToDecimal(T7.Text)); values.Add(Convert.ToDecimal(T8.Text)); values.Add(Convert.ToDecimal(T9.Text));
        values.Add(Convert.ToDecimal(C1.Text)); values.Add(Convert.ToDecimal(C2.Text)); values.Add(Convert.ToDecimal(C3.Text)); values.Add(Convert.ToDecimal(C4.Text));
        values.Add(Convert.ToDecimal(C5.Text)); values.Add(Convert.ToDecimal(C6.Text)); values.Add(Convert.ToDecimal(C7.Text)); values.Add(Convert.ToDecimal(C8.Text)); values.Add(Convert.ToDecimal(C9.Text)); 
        //调用Util中写好的函数将值插入数据库
        i = Util.InsertDatabase("T16", fields, values, fields.Count);

        if (i == 1)
        {
            if (Session["Code"] == null)
            {  
                Response.Write(" <script> alert(\"成功提交！\");;window.location='R16.aspx?TGUID=" + GUID.Text + "&TNum=16'; </script> ");//TGUID=测试量表序号+GUID，用","分隔
               
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
        return System.Text.RegularExpressions.Regex.IsMatch(str_number, @"^[0-9]*$");
    }
    
}