using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;
using System.Web.Caching;
using System.IO;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            int Processor = (int)Application["Processor"];
            if (Processor == 0)
            {
                ErrorLabel.Text = "服务器未获得授权许可，无法使用！";
                ErrorLabel2.Text = "服务器未获得授权许可，无法使用！";
                Button1.Visible = false;
                //Button2.Visible = false;
            }
            else
            {
                ErrorLabel.Text = "";
                Cache.Remove(Session.SessionID);
                Session["DoctorGUID"] = null;
                Session["HospitalGUID"] = null;
                Session["Super"] = null;
                if (Session["Code"] != null)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "finishscript", "<script> finish();</script>");
                    Session["Code"] = null;
                }
                else
                {
                    Session["Code"] = null;
                }
                MyDataBind();
            }
            
        }
    }

    private void MyDataBind()
    {
        using (SqlConnection conn = new DB().GetConnection())
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "Select * from Doctor";
            conn.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            UserNameDDL.DataSource = rd;
            UserNameDDL.DataTextField = "DoctorName";
            UserNameDDL.DataValueField = "GUID";
            UserNameDDL.DataBind();
            rd.Close();
            UserNameDDL.Items.Insert(0, new ListItem("--请选择医生或治疗师--", "-1"));
            if (Request.Cookies["DoctorName"] != null)
            {
                string doctorname = HttpUtility.UrlDecode(Request.Cookies["DoctorName"].Value, Encoding.GetEncoding("UTF-8"));
                if (UserNameDDL.Items.FindByText(doctorname) != null)
                {
                    UserNameDDL.ClearSelection();
                    UserNameDDL.Items.FindByText(doctorname).Selected = true;
                }
            }
            conn.Close();

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int flag = 0;
        if (Session["CheckCode"] == null)
        {
            ErrorLabel.Text = "页面停留过久，请刷新验证码！";
        }
        else
        {
            using (SqlConnection conn = new DB().GetConnection())
            {
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = "select * from [Doctor] where [DoctorName] = @UserName and [Password] = @Password";
                cmd.Parameters.AddWithValue("@UserName", UserNameDDL.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Password", Util.GetHash(Password.Text.Trim()));
                conn.Open();
                SqlDataReader rd = cmd.ExecuteReader();
                if (rd.Read())
                {
                    DoctorGUID.Text = rd["GUID"].ToString();
                    HospitalGUID.Text = rd["HospitalGUID"].ToString();
                    flag = 1;
                }
                cmd.Dispose();
                rd.Close();

                cmd.CommandText = "select * from [Hospital] where GUID = @HospitalGUID";
                cmd.Parameters.AddWithValue("@HospitalGUID", HospitalGUID.Text);
                rd = cmd.ExecuteReader();
                if (rd.Read())
                {
                    StrToInt.Text =  Util.AESDecrypt(rd["Licenses"].ToString());
                    StrToInt.Text = StrToInt.Text.Substring(10, StrToInt.Text.Length - 10);
                }
                cmd.Dispose();
                rd.Close();

                conn.Close();

            }
            //判断用户输入验证码是否相等
            if (Session["CheckCode"].ToString().ToLower() == ValidateCode.Text.ToLower().Trim())
            {
                if (flag == 1)
                {
                    int OnLineUserCount = (int)Application["OnLineUserCount"];
                    if (OnLineUserCount <= Convert.ToInt32(StrToInt.Text))
                    {
                        System.Web.HttpContext.Current.Session["DoctorGUID"] = DoctorGUID.Text;
                        System.Web.HttpContext.Current.Session["HospitalGUID"] = HospitalGUID.Text;
                        HttpCookie cookie = new HttpCookie("DoctorName");
                        cookie.Value = HttpUtility.UrlEncode(UserNameDDL.SelectedItem.Text, Encoding.GetEncoding("UTF-8"));
                        cookie.Expires = DateTime.Now.AddDays(1);
                        Response.Cookies.Add(cookie);  
                        ErrorLabel.Text = "登录成功！";
                        ErrorLabel.ForeColor = System.Drawing.Color.Green;
                        Response.Redirect(Server.HtmlEncode("Index.aspx"));
                    }
                    else
                    {
                        ErrorLabel.Text = "登录失败，客户端占用过多！";
                    }

                }
                else if (UserNameDDL.SelectedItem.Text == "--请选择医生--")
                {
                    ErrorLabel.Text = "请先选择医生";
                }
                else
                {
                    ErrorLabel.Text = "用户名或密码错误！";
                }
            }
            else
            {
                ErrorLabel.Text = "验证码输入错误！";
            }
        }
        
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        int flag = 0;
        string CartGUID = "";
        //using (SqlConnection conn = new DB().GetConnection())
        //{
        //    SqlCommand cmd = conn.CreateCommand();
        //    cmd.CommandText = "select * from [Code] where [Code] = @Password";
        //    cmd.Parameters.AddWithValue("@Password", Code.Text.Trim());
        //    conn.Open();
        //    SqlDataReader rd = cmd.ExecuteReader();
        //    if (rd.Read())
        //    {
        //        TestNum.Text = rd["TestNum"].ToString();
        //        PatientGUID.Text = rd["PatientGUID"].ToString();
        //        DoctorGUID.Text = rd["DoctorGUID"].ToString();
        //        flag = 1;
        //    }
        //    cmd.Dispose();
        //    rd.Close();
        //    conn.Close();

        //}
        //if (flag == 1)
        //{
        //    System.Web.HttpContext.Current.Session["DoctorGUID"] = DoctorGUID.Text;
        //    System.Web.HttpContext.Current.Session["Code"] = Code.Text;
        //    Response.Redirect(Server.HtmlEncode("T" + TestNum.Text + ".aspx?GUID=" + PatientGUID.Text + ""));
        //}
        using (SqlConnection conn = new DB().GetConnection())
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select * from [Code_Cart] where [Code] = @Password";
            cmd.Parameters.AddWithValue("@Password", Code.Text.Trim());
            conn.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {

                CartGUID = rd["CartGUID"].ToString();
                DoctorGUID.Text = rd["DoctorGUID"].ToString();
                flag = 1;
            }
            else
            {
                rd.Close();
                cmd.CommandText = "select * from [Code] where [Code] = @Password1";
                cmd.Parameters.AddWithValue("@Password1", Code.Text.Trim());
                rd = cmd.ExecuteReader();
                if (rd.Read())
                {
                    TestNum.Text = rd["TestNum"].ToString();
                    PatientGUID.Text = rd["PatientGUID"].ToString();
                    DoctorGUID.Text = rd["DoctorGUID"].ToString();
                    flag = 2;
                }
                cmd.Dispose();
                rd.Close();

            }
            cmd.Dispose();
            rd.Close();
            conn.Close();

        }
        if (flag == 1)
        {
            System.Web.HttpContext.Current.Session["DoctorGUID"] = DoctorGUID.Text;
            System.Web.HttpContext.Current.Session["Code"] = Code.Text;
            Response.Redirect(Server.HtmlEncode("NewPage/TestList.aspx?TGUID=" + CartGUID + ""));
        }
        else if (flag == 2)
       {
            System.Web.HttpContext.Current.Session["DoctorGUID"] = DoctorGUID.Text;
            System.Web.HttpContext.Current.Session["Code"] = Code.Text;
            Response.Redirect(Server.HtmlEncode("T" + TestNum.Text + ".aspx?GUID=" + PatientGUID.Text + ""));
        }

        else
        {
            if (Code.Text.Trim().Length == 16)
            {
                string Hash = Util.GetSuperPassword();
                if (Code.Text.Trim() == Hash)
                {
                    string strFilePath = Server.MapPath("./Super_Init.aspx");
                    if (File.Exists(strFilePath))
                    {
                        System.Web.HttpContext.Current.Session["Super"] = Hash;
                        Response.Redirect(Server.HtmlEncode("Super_Init.aspx"));
                    }
                    else
                    {
                        ErrorLabel2.Text = "超级管理员登录";
                        using (SqlConnection conn = new DB().GetConnection())
                        {
                            SqlCommand cmd = conn.CreateCommand();
                            cmd.CommandText = "select * from [Doctor] where ID = 1";
                            conn.Open();
                            SqlDataReader rd = cmd.ExecuteReader();
                            if (rd.Read())
                            {
                                DoctorGUID.Text = rd["GUID"].ToString();
                                HospitalGUID.Text = rd["HospitalGUID"].ToString();
                            }
                            rd.Close();
                            conn.Close();
                        }
                        System.Web.HttpContext.Current.Session["DoctorGUID"] = DoctorGUID.Text;
                        System.Web.HttpContext.Current.Session["HospitalGUID"] = HospitalGUID.Text;
                        System.Web.HttpContext.Current.Session["Super"] = Hash;
                        Response.Redirect(Server.HtmlEncode("Super_Edit.aspx"));
                    }
                }
                else
                {
                    ErrorLabel2.Text = "自评码错误！";
                }
            }
            else
            {
                ErrorLabel2.Text = "自评码错误！";
            }
        }
    }
}