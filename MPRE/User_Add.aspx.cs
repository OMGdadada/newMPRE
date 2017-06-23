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

public partial class User_Add : System.Web.UI.Page
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
                    DepartmentDDL.Items.Insert(0, new ListItem(" ", "-1"));
                }
            }
        }
    }
    private bool AlreadyExisted(string param)
    {
        bool a = false;

        using (SqlConnection conn = new DB().GetConnection())
        {
            string sql = "select GUID from [Doctor] where DoctorName = @DoctorName";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@DoctorName", param);
            conn.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                a = true;
            }
            rd.Close();
        }
        return a;
    }

    private void AddNewUser()
    {
        int i = 0;
        System.Guid guid = System.Guid.NewGuid();
        string strGUID = System.Guid.NewGuid().ToString();
        GUIDLabel.Text = strGUID;
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
            StringBuilder sb = new StringBuilder("insert into [Doctor]( GUID,DoctorName,Password,IDCard,Phone,EmployeeNum,DepartmentGUID,Department,HospitalGUID,IsAdmin)");
            sb.Append(" values ( @GUID,@DoctorName,@Password,@IDCard,@Phone,@EmployeeNum,@DepartmentGUID,@Department,@HospitalGUID,@IsAdmin) ");
            SqlCommand cmd = new SqlCommand(sb.ToString(), conn);
            cmd.Parameters.AddWithValue("@GUID", GUIDLabel.Text);
            cmd.Parameters.AddWithValue("@DoctorName", UserName.Text);
            cmd.Parameters.AddWithValue("@Password", Util.GetHash(Password.Text.Trim()));
            cmd.Parameters.AddWithValue("@IDCard", Util.AESEncrypt(IDCard.Text));
            cmd.Parameters.AddWithValue("@Phone", Phone.Text);
            cmd.Parameters.AddWithValue("@EmployeeNum", EmployeeNum.Text);
            cmd.Parameters.AddWithValue("@DepartmentGUID", DepartmentDDL.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Department", DepartmentDDL.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@HospitalGUID", Session["HospitalGUID"].ToString());
            cmd.Parameters.AddWithValue("@IsAdmin", Util.AESEncrypt(role));
            conn.Open();
            i = cmd.ExecuteNonQuery();
            cmd.Dispose();
        }
        if (i == 1)
        {
            ErrorLabel.Text = "用户添加成功！";
            Response.Redirect("User_Man.aspx");
        }
        else
        {
            ErrorLabel.Text = "用户添加失败，请重试或重新打开页面！";
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Password.Text != Password1.Text)
        {
            ErrorLabel.Text = "密码不相等！";
        }
        else
        {
            bool a = AlreadyExisted(UserName.Text);
            if(a)
            {
                ErrorLabel.Text = "用户已存在！";
            }
            else
            {
                AddNewUser();
            }
        }
        
    }

 
}