using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;
using System.IO;
using System.Configuration;

public partial class User_Edit : System.Web.UI.Page
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
                DoctorGUID.Text = Convert.ToString(Session["DoctorGUID"]);
                if (Request.QueryString["GUID"] != null)
                {
                    DoctorGUID.Text = Request.QueryString["GUID"].ToString();
                }
                using (SqlConnection conn = new DB().GetConnection())
                {
                    string sql = "Select * from Department order by ID asc";
                    SqlCommand cmd = new SqlCommand(sql, conn);
                    conn.Open();
                    SqlDataReader rd = cmd.ExecuteReader();
                    DepartmentDDL.DataSource = rd;
                    DepartmentDDL.DataTextField = "Department";
                    DepartmentDDL.DataValueField = "GUID";
                    DepartmentDDL.DataBind();
                    rd.Close();

                    cmd.CommandText = "select * from Doctor where GUID=@DoctorGUID";
                    cmd.Parameters.AddWithValue("@DoctorGUID", DoctorGUID.Text);
                    rd = cmd.ExecuteReader();
                    string IsAdmin = "";
                    if (rd.Read())
                    {
                        DoctorName.Text = rd["DoctorName"].ToString();
                        IDCard.Text = Util.AESDecrypt(rd["IDCard"].ToString());
                        IsAdmin = Util.AESDecrypt(rd["IsAdmin"].ToString());
                        if (IDCard.Text.Length>3)
                        {
                            IDC.Text = IDCard.Text.Substring(0, 3) + "**********";
                        }
                        else
                        {
                            IDC.Text = "**********";
                        }
                        if (IsAdmin == "True")
                        {
                            UpdateBtn.Visible = true;
                            RolePanel.Visible = true;
                            Role2.Checked = true;
                        }
                        else
                        {
                            UpdateBtn.Visible = false;
                            RolePanel.Visible = false;
                            Role1.Checked = true;
                        }
                        Phone.Text = rd["Phone"].ToString();
                        EmployeeNum.Text = rd["EmployeeNum"].ToString();
                        string DepartmentGUID = rd["DepartmentGUID"].ToString();
                        if (DepartmentDDL.Items.FindByValue(DepartmentGUID) != null)
                        {
                            DepartmentDDL.ClearSelection();
                            DepartmentDDL.Items.FindByValue(DepartmentGUID).Selected = true;
                        }
                    }
                    rd.Close();
                    conn.Close();
                }
            }
        }
    } 

    protected void Button2_Click(object sender, EventArgs e)
    {
        ErrorLabel.Text = "";
        int i = 0;
        string role = "";
        if (Role1.Checked)
        {
            role = "False";
        }
        if (Role2.Checked)
        {
            role = "True";
        }
        using (SqlConnection conn = new DB().GetConnection())
        {
            string sql = "Update [Doctor] set Phone=@Phone,EmployeeNum=@EmployeeNum,DepartmentGUID=@DepartmentGUID,Department=@Department,IsAdmin=@IsAdmin where GUID = @DoctorGUID;";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@DoctorGUID", DoctorGUID.Text);
            cmd.Parameters.AddWithValue("@Phone", Phone.Text);
            cmd.Parameters.AddWithValue("@EmployeeNum", EmployeeNum.Text);
            cmd.Parameters.AddWithValue("@DepartmentGUID", DepartmentDDL.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Department", DepartmentDDL.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@IsAdmin", Util.AESEncrypt(role));
            conn.Open();
            i = cmd.ExecuteNonQuery();
            conn.Close();
        }

        if (i == 1)
        {
            ErrorLabel.Text = "个人信息更新成功！";
        }
        else
        {
            ErrorLabel.Text = "个人信息更新失败，请重试！";
        }
    }
    protected void UpdateButton_Click(object sender, EventArgs e)
    {
        ErrorLabel.Text = "";
        if (IDCard1.Text != IDCard.Text)
        {
            ErrorLabel.Text = "旧身份证号输入错误！";
        }
        else if (IDCard2.Text != IDCard3.Text)
        {
            ErrorLabel.Text = "新身份证号两次输入不一致！";
        }
        else if (IDCard3.Text != "")
        {
            int i = 0;
            using (SqlConnection conn = new DB().GetConnection())
            {
                string sql = "Update [Doctor] set IDCard=@IDCard where GUID = @DoctorGUID;";
                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@DoctorGUID", DoctorGUID.Text);
                cmd.Parameters.AddWithValue("@IDCard", Util.AESEncrypt(IDCard3.Text));
                conn.Open();
                i = cmd.ExecuteNonQuery();
                conn.Close();
            }

            if (i == 1)
            {
                ErrorLabel.Text = "身份证号更新成功！";
            }
            else
            {
                ErrorLabel.Text = "身份证号更新失败，请重试！";
            }
        }
        else
        {
            ErrorLabel.Text = "身份证号不能为空！";
        }
        
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        if (CheckBox1.Checked)
        {
            IDCard1.TextMode = TextBoxMode.SingleLine;
            IDCard2.TextMode = TextBoxMode.SingleLine;
            IDCard3.TextMode = TextBoxMode.SingleLine;
        }
        else
        {
            IDCard1.TextMode = TextBoxMode.Password;
            IDCard2.TextMode = TextBoxMode.Password;
            IDCard3.TextMode = TextBoxMode.Password;
        }
    }
}