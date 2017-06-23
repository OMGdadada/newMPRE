using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class PatientText : System.Web.UI.Page
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
                MyDataBind();
            }

        }
    }

    private void MyDataBind()
    {
        using (SqlConnection conn = new DB().GetConnection())
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select * from PatientText where GUID=@GUID";
            cmd.Parameters.AddWithValue("@GUID", Session["HospitalGUID"].ToString()+"p");
            conn.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                TextBox1.Text = rd["PatientName"].ToString();
                TextBox2.Text = rd["Initials"].ToString();
                TextBox3.Text = rd["Sex"].ToString();
                TextBox4.Text = rd["Birthday"].ToString();
                TextBox5.Text = rd["Certificates"].ToString();
                TextBox6.Text = rd["Department"].ToString();
                TextBox7.Text = rd["Num1"].ToString();
                TextBox8.Text = rd["Num2"].ToString();
                TextBox9.Text = rd["Phone1"].ToString();
                TextBox10.Text = rd["Phone2"].ToString();
                TextBox11.Text = rd["EducationYears"].ToString();
                TextBox12.Text = rd["EducationLevel"].ToString();
                TextBox13.Text = rd["Handedness"].ToString();
                TextBox14.Text = rd["Marriage"].ToString();
                TextBox15.Text = rd["FMH"].ToString();
                TextBox16.Text = rd["Working"].ToString();
                TextBox17.Text = rd["Ethnicity"].ToString();
                TextBox18.Text = rd["Career"].ToString();
                TextBox19.Text = rd["AI"].ToString();
                TextBox20.Text = rd["AHI"].ToString();
                TextBox21.Text = rd["GrowingPlace"].ToString();
                TextBox22.Text = rd["Residence"].ToString();
            }
            rd.Close();
            conn.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        using (SqlConnection conn = new DB().GetConnection())
        {
            SqlCommand cmd = (SqlCommand)conn.CreateCommand();
            cmd.CommandText = "Update [PatientText] set PatientName = @PatientName,Initials=@Initials,Sex=@Sex,Birthday=@Birthday,Certificates=@Certificates,Department=@Department,Num1=@Num1,Num2=@Num2,Phone1=@Phone1,Phone2=@Phone2,EducationYears=@EducationYears,EducationLevel=@EducationLevel,Handedness=@Handedness,Marriage=@Marriage,FMH=@FMH,Working=@Working,Ethnicity=@Ethnicity,Career=@Career,AI=@AI,AHI=@AHI,GrowingPlace=@GrowingPlace,Residence=@Residence where GUID = @GUID";
            cmd.Parameters.AddWithValue("@GUID", Session["HospitalGUID"].ToString() + "p");
            cmd.Parameters.AddWithValue("@PatientName", TextBox1.Text.Trim());
            cmd.Parameters.AddWithValue("@Initials", TextBox2.Text.Trim());
            cmd.Parameters.AddWithValue("@Sex", TextBox3.Text.Trim());
            cmd.Parameters.AddWithValue("@Birthday", TextBox4.Text.Trim());
            cmd.Parameters.AddWithValue("@Certificates", TextBox5.Text.Trim());
            cmd.Parameters.AddWithValue("@Department", TextBox6.Text.Trim());
            cmd.Parameters.AddWithValue("@Num1", TextBox7.Text.Trim());
            cmd.Parameters.AddWithValue("@Num2", TextBox8.Text.Trim());
            cmd.Parameters.AddWithValue("@Phone1", TextBox9.Text.Trim());
            cmd.Parameters.AddWithValue("@Phone2", TextBox10.Text.Trim());
            cmd.Parameters.AddWithValue("@EducationYears", TextBox11.Text.Trim());
            cmd.Parameters.AddWithValue("@EducationLevel", TextBox12.Text.Trim());
            cmd.Parameters.AddWithValue("@Handedness", TextBox13.Text.Trim());
            cmd.Parameters.AddWithValue("@Marriage", TextBox14.Text.Trim());
            cmd.Parameters.AddWithValue("@FMH", TextBox15.Text.Trim());
            cmd.Parameters.AddWithValue("@Working", TextBox16.Text.Trim());
            cmd.Parameters.AddWithValue("@Ethnicity", TextBox17.Text.Trim());
            cmd.Parameters.AddWithValue("@Career", TextBox18.Text.Trim());
            cmd.Parameters.AddWithValue("@AI", TextBox19.Text.Trim());
            cmd.Parameters.AddWithValue("@AHI", TextBox20.Text.Trim());
            cmd.Parameters.AddWithValue("@GrowingPlace", TextBox21.Text.Trim());
            cmd.Parameters.AddWithValue("@Residence", TextBox22.Text.Trim());
            conn.Open();
            int i = cmd.ExecuteNonQuery();
            conn.Close();

            if (i == 1)
            {
                ResultLabel.Text = "保存信息成功！";
            }
            else
            {
                ResultLabel.Text = "保存信息失败，请重试或与管理员联系！";
            }
        }
    }
}