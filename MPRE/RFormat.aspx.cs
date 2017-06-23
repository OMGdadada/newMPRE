using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class RFormat : System.Web.UI.Page
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
                MyInit();
            }

        }
    }

    private void MyDataBind()
    {
        using (SqlConnection conn = new DB().GetConnection())
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select * from PatientText where GUID=@GUID";
            cmd.Parameters.AddWithValue("@GUID", Session["HospitalGUID"].ToString() + "p");
            conn.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                RF1DDL.Items.Add(new ListItem("", ""));
                RF2DDL.Items.Add(new ListItem("", ""));
                RF3DDL.Items.Add(new ListItem("", ""));
                RF4DDL.Items.Add(new ListItem("", ""));
                RF5DDL.Items.Add(new ListItem("", ""));
                RF6DDL.Items.Add(new ListItem("", ""));
                RF7DDL.Items.Add(new ListItem("", ""));
                RF8DDL.Items.Add(new ListItem("", ""));
                RF9DDL.Items.Add(new ListItem("", ""));

                RF1DDL.Items.Add(new ListItem("" + rd["PatientName"].ToString() + "", "PatientName"));
                RF2DDL.Items.Add(new ListItem("" + rd["PatientName"].ToString() + "", "PatientName"));
                RF3DDL.Items.Add(new ListItem("" + rd["PatientName"].ToString() + "", "PatientName"));
                RF4DDL.Items.Add(new ListItem("" + rd["PatientName"].ToString() + "", "PatientName"));
                RF5DDL.Items.Add(new ListItem("" + rd["PatientName"].ToString() + "", "PatientName"));
                RF6DDL.Items.Add(new ListItem("" + rd["PatientName"].ToString() + "", "PatientName"));
                RF7DDL.Items.Add(new ListItem("" + rd["PatientName"].ToString() + "", "PatientName"));
                RF8DDL.Items.Add(new ListItem("" + rd["PatientName"].ToString() + "", "PatientName"));
                RF9DDL.Items.Add(new ListItem("" + rd["PatientName"].ToString() + "", "PatientName"));

                RF1DDL.Items.Add(new ListItem("" + rd["Initials"].ToString() + "", "Initials"));
                RF2DDL.Items.Add(new ListItem("" + rd["Initials"].ToString() + "", "Initials"));
                RF3DDL.Items.Add(new ListItem("" + rd["Initials"].ToString() + "", "Initials"));
                RF4DDL.Items.Add(new ListItem("" + rd["Initials"].ToString() + "", "Initials"));
                RF5DDL.Items.Add(new ListItem("" + rd["Initials"].ToString() + "", "Initials"));
                RF6DDL.Items.Add(new ListItem("" + rd["Initials"].ToString() + "", "Initials"));
                RF7DDL.Items.Add(new ListItem("" + rd["Initials"].ToString() + "", "Initials"));
                RF8DDL.Items.Add(new ListItem("" + rd["Initials"].ToString() + "", "Initials"));
                RF9DDL.Items.Add(new ListItem("" + rd["Initials"].ToString() + "", "Initials"));

                RF1DDL.Items.Add(new ListItem("" + rd["Sex"].ToString() + "", "Sex"));
                RF2DDL.Items.Add(new ListItem("" + rd["Sex"].ToString() + "", "Sex"));
                RF3DDL.Items.Add(new ListItem("" + rd["Sex"].ToString() + "", "Sex"));
                RF4DDL.Items.Add(new ListItem("" + rd["Sex"].ToString() + "", "Sex"));
                RF5DDL.Items.Add(new ListItem("" + rd["Sex"].ToString() + "", "Sex"));
                RF6DDL.Items.Add(new ListItem("" + rd["Sex"].ToString() + "", "Sex"));
                RF7DDL.Items.Add(new ListItem("" + rd["Sex"].ToString() + "", "Sex"));
                RF8DDL.Items.Add(new ListItem("" + rd["Sex"].ToString() + "", "Sex"));
                RF9DDL.Items.Add(new ListItem("" + rd["Sex"].ToString() + "", "Sex"));

                RF1DDL.Items.Add(new ListItem("" + rd["Birthday"].ToString() + "", "Birthday"));
                RF2DDL.Items.Add(new ListItem("" + rd["Birthday"].ToString() + "", "Birthday"));
                RF3DDL.Items.Add(new ListItem("" + rd["Birthday"].ToString() + "", "Birthday"));
                RF4DDL.Items.Add(new ListItem("" + rd["Birthday"].ToString() + "", "Birthday"));
                RF5DDL.Items.Add(new ListItem("" + rd["Birthday"].ToString() + "", "Birthday"));
                RF6DDL.Items.Add(new ListItem("" + rd["Birthday"].ToString() + "", "Birthday"));
                RF7DDL.Items.Add(new ListItem("" + rd["Birthday"].ToString() + "", "Birthday"));
                RF8DDL.Items.Add(new ListItem("" + rd["Birthday"].ToString() + "", "Birthday"));
                RF9DDL.Items.Add(new ListItem("" + rd["Birthday"].ToString() + "", "Birthday"));

                RF1DDL.Items.Add(new ListItem("" + rd["Certificates"].ToString() + "", "Certificates"));
                RF2DDL.Items.Add(new ListItem("" + rd["Certificates"].ToString() + "", "Certificates"));
                RF3DDL.Items.Add(new ListItem("" + rd["Certificates"].ToString() + "", "Certificates"));
                RF4DDL.Items.Add(new ListItem("" + rd["Certificates"].ToString() + "", "Certificates"));
                RF5DDL.Items.Add(new ListItem("" + rd["Certificates"].ToString() + "", "Certificates"));
                RF6DDL.Items.Add(new ListItem("" + rd["Certificates"].ToString() + "", "Certificates"));
                RF7DDL.Items.Add(new ListItem("" + rd["Certificates"].ToString() + "", "Certificates"));
                RF8DDL.Items.Add(new ListItem("" + rd["Certificates"].ToString() + "", "Certificates"));
                RF9DDL.Items.Add(new ListItem("" + rd["Certificates"].ToString() + "", "Certificates"));

                RF1DDL.Items.Add(new ListItem("" + rd["Department"].ToString() + "", "Department"));
                RF2DDL.Items.Add(new ListItem("" + rd["Department"].ToString() + "", "Department"));
                RF3DDL.Items.Add(new ListItem("" + rd["Department"].ToString() + "", "Department"));
                RF4DDL.Items.Add(new ListItem("" + rd["Department"].ToString() + "", "Department"));
                RF5DDL.Items.Add(new ListItem("" + rd["Department"].ToString() + "", "Department"));
                RF6DDL.Items.Add(new ListItem("" + rd["Department"].ToString() + "", "Department"));
                RF7DDL.Items.Add(new ListItem("" + rd["Department"].ToString() + "", "Department"));
                RF8DDL.Items.Add(new ListItem("" + rd["Department"].ToString() + "", "Department"));
                RF9DDL.Items.Add(new ListItem("" + rd["Department"].ToString() + "", "Department"));

                RF1DDL.Items.Add(new ListItem("" + rd["Num1"].ToString() + "", "Num1"));
                RF2DDL.Items.Add(new ListItem("" + rd["Num1"].ToString() + "", "Num1"));
                RF3DDL.Items.Add(new ListItem("" + rd["Num1"].ToString() + "", "Num1"));
                RF4DDL.Items.Add(new ListItem("" + rd["Num1"].ToString() + "", "Num1"));
                RF5DDL.Items.Add(new ListItem("" + rd["Num1"].ToString() + "", "Num1"));
                RF6DDL.Items.Add(new ListItem("" + rd["Num1"].ToString() + "", "Num1"));
                RF7DDL.Items.Add(new ListItem("" + rd["Num1"].ToString() + "", "Num1"));
                RF8DDL.Items.Add(new ListItem("" + rd["Num1"].ToString() + "", "Num1"));
                RF9DDL.Items.Add(new ListItem("" + rd["Num1"].ToString() + "", "Num1"));

                RF1DDL.Items.Add(new ListItem("" + rd["Num2"].ToString() + "", "Num2"));
                RF2DDL.Items.Add(new ListItem("" + rd["Num2"].ToString() + "", "Num2"));
                RF3DDL.Items.Add(new ListItem("" + rd["Num2"].ToString() + "", "Num2"));
                RF4DDL.Items.Add(new ListItem("" + rd["Num2"].ToString() + "", "Num2"));
                RF5DDL.Items.Add(new ListItem("" + rd["Num2"].ToString() + "", "Num2"));
                RF6DDL.Items.Add(new ListItem("" + rd["Num2"].ToString() + "", "Num2"));
                RF7DDL.Items.Add(new ListItem("" + rd["Num2"].ToString() + "", "Num2"));
                RF8DDL.Items.Add(new ListItem("" + rd["Num2"].ToString() + "", "Num2"));
                RF9DDL.Items.Add(new ListItem("" + rd["Num2"].ToString() + "", "Num2"));

                RF1DDL.Items.Add(new ListItem("" + rd["Phone1"].ToString() + "", "Phone1"));
                RF2DDL.Items.Add(new ListItem("" + rd["Phone1"].ToString() + "", "Phone1"));
                RF3DDL.Items.Add(new ListItem("" + rd["Phone1"].ToString() + "", "Phone1"));
                RF4DDL.Items.Add(new ListItem("" + rd["Phone1"].ToString() + "", "Phone1"));
                RF5DDL.Items.Add(new ListItem("" + rd["Phone1"].ToString() + "", "Phone1"));
                RF6DDL.Items.Add(new ListItem("" + rd["Phone1"].ToString() + "", "Phone1"));
                RF7DDL.Items.Add(new ListItem("" + rd["Phone1"].ToString() + "", "Phone1"));
                RF8DDL.Items.Add(new ListItem("" + rd["Phone1"].ToString() + "", "Phone1"));
                RF9DDL.Items.Add(new ListItem("" + rd["Phone1"].ToString() + "", "Phone1"));

                RF1DDL.Items.Add(new ListItem("" + rd["Phone2"].ToString() + "", "Phone2"));
                RF2DDL.Items.Add(new ListItem("" + rd["Phone2"].ToString() + "", "Phone2"));
                RF3DDL.Items.Add(new ListItem("" + rd["Phone2"].ToString() + "", "Phone2"));
                RF4DDL.Items.Add(new ListItem("" + rd["Phone2"].ToString() + "", "Phone2"));
                RF5DDL.Items.Add(new ListItem("" + rd["Phone2"].ToString() + "", "Phone2"));
                RF6DDL.Items.Add(new ListItem("" + rd["Phone2"].ToString() + "", "Phone2"));
                RF7DDL.Items.Add(new ListItem("" + rd["Phone2"].ToString() + "", "Phone2"));
                RF8DDL.Items.Add(new ListItem("" + rd["Phone2"].ToString() + "", "Phone2"));
                RF9DDL.Items.Add(new ListItem("" + rd["Phone2"].ToString() + "", "Phone2"));

                RF1DDL.Items.Add(new ListItem("" + rd["EducationYears"].ToString() + "", "EducationYears"));
                RF2DDL.Items.Add(new ListItem("" + rd["EducationYears"].ToString() + "", "EducationYears"));
                RF3DDL.Items.Add(new ListItem("" + rd["EducationYears"].ToString() + "", "EducationYears"));
                RF4DDL.Items.Add(new ListItem("" + rd["EducationYears"].ToString() + "", "EducationYears"));
                RF5DDL.Items.Add(new ListItem("" + rd["EducationYears"].ToString() + "", "EducationYears"));
                RF6DDL.Items.Add(new ListItem("" + rd["EducationYears"].ToString() + "", "EducationYears"));
                RF7DDL.Items.Add(new ListItem("" + rd["EducationYears"].ToString() + "", "EducationYears"));
                RF8DDL.Items.Add(new ListItem("" + rd["EducationYears"].ToString() + "", "EducationYears"));
                RF9DDL.Items.Add(new ListItem("" + rd["EducationYears"].ToString() + "", "EducationYears"));

                RF1DDL.Items.Add(new ListItem("" + rd["EducationLevel"].ToString() + "", "EducationLevel"));
                RF2DDL.Items.Add(new ListItem("" + rd["EducationLevel"].ToString() + "", "EducationLevel"));
                RF3DDL.Items.Add(new ListItem("" + rd["EducationLevel"].ToString() + "", "EducationLevel"));
                RF4DDL.Items.Add(new ListItem("" + rd["EducationLevel"].ToString() + "", "EducationLevel"));
                RF5DDL.Items.Add(new ListItem("" + rd["EducationLevel"].ToString() + "", "EducationLevel"));
                RF6DDL.Items.Add(new ListItem("" + rd["EducationLevel"].ToString() + "", "EducationLevel"));
                RF7DDL.Items.Add(new ListItem("" + rd["EducationLevel"].ToString() + "", "EducationLevel"));
                RF8DDL.Items.Add(new ListItem("" + rd["EducationLevel"].ToString() + "", "EducationLevel"));
                RF9DDL.Items.Add(new ListItem("" + rd["EducationLevel"].ToString() + "", "EducationLevel"));

                RF1DDL.Items.Add(new ListItem("" + rd["Handedness"].ToString() + "", "Handedness"));
                RF2DDL.Items.Add(new ListItem("" + rd["Handedness"].ToString() + "", "Handedness"));
                RF3DDL.Items.Add(new ListItem("" + rd["Handedness"].ToString() + "", "Handedness"));
                RF4DDL.Items.Add(new ListItem("" + rd["Handedness"].ToString() + "", "Handedness"));
                RF5DDL.Items.Add(new ListItem("" + rd["Handedness"].ToString() + "", "Handedness"));
                RF6DDL.Items.Add(new ListItem("" + rd["Handedness"].ToString() + "", "Handedness"));
                RF7DDL.Items.Add(new ListItem("" + rd["Handedness"].ToString() + "", "Handedness"));
                RF8DDL.Items.Add(new ListItem("" + rd["Handedness"].ToString() + "", "Handedness"));
                RF9DDL.Items.Add(new ListItem("" + rd["Handedness"].ToString() + "", "Handedness"));

                RF1DDL.Items.Add(new ListItem("" + rd["Marriage"].ToString() + "", "Marriage"));
                RF2DDL.Items.Add(new ListItem("" + rd["Marriage"].ToString() + "", "Marriage"));
                RF3DDL.Items.Add(new ListItem("" + rd["Marriage"].ToString() + "", "Marriage"));
                RF4DDL.Items.Add(new ListItem("" + rd["Marriage"].ToString() + "", "Marriage"));
                RF5DDL.Items.Add(new ListItem("" + rd["Marriage"].ToString() + "", "Marriage"));
                RF6DDL.Items.Add(new ListItem("" + rd["Marriage"].ToString() + "", "Marriage"));
                RF7DDL.Items.Add(new ListItem("" + rd["Marriage"].ToString() + "", "Marriage"));
                RF8DDL.Items.Add(new ListItem("" + rd["Marriage"].ToString() + "", "Marriage"));
                RF9DDL.Items.Add(new ListItem("" + rd["Marriage"].ToString() + "", "Marriage"));

                RF1DDL.Items.Add(new ListItem("" + rd["FMH"].ToString() + "", "FMH"));
                RF2DDL.Items.Add(new ListItem("" + rd["FMH"].ToString() + "", "FMH"));
                RF3DDL.Items.Add(new ListItem("" + rd["FMH"].ToString() + "", "FMH"));
                RF4DDL.Items.Add(new ListItem("" + rd["FMH"].ToString() + "", "FMH"));
                RF5DDL.Items.Add(new ListItem("" + rd["FMH"].ToString() + "", "FMH"));
                RF6DDL.Items.Add(new ListItem("" + rd["FMH"].ToString() + "", "FMH"));
                RF7DDL.Items.Add(new ListItem("" + rd["FMH"].ToString() + "", "FMH"));
                RF8DDL.Items.Add(new ListItem("" + rd["FMH"].ToString() + "", "FMH"));
                RF9DDL.Items.Add(new ListItem("" + rd["FMH"].ToString() + "", "FMH"));

                RF1DDL.Items.Add(new ListItem("" + rd["Working"].ToString() + "", "Working"));
                RF2DDL.Items.Add(new ListItem("" + rd["Working"].ToString() + "", "Working"));
                RF3DDL.Items.Add(new ListItem("" + rd["Working"].ToString() + "", "Working"));
                RF4DDL.Items.Add(new ListItem("" + rd["Working"].ToString() + "", "Working"));
                RF5DDL.Items.Add(new ListItem("" + rd["Working"].ToString() + "", "Working"));
                RF6DDL.Items.Add(new ListItem("" + rd["Working"].ToString() + "", "Working"));
                RF7DDL.Items.Add(new ListItem("" + rd["Working"].ToString() + "", "Working"));
                RF8DDL.Items.Add(new ListItem("" + rd["Working"].ToString() + "", "Working"));
                RF9DDL.Items.Add(new ListItem("" + rd["Working"].ToString() + "", "Working"));

                RF1DDL.Items.Add(new ListItem("" + rd["Ethnicity"].ToString() + "", "Ethnicity"));
                RF2DDL.Items.Add(new ListItem("" + rd["Ethnicity"].ToString() + "", "Ethnicity"));
                RF3DDL.Items.Add(new ListItem("" + rd["Ethnicity"].ToString() + "", "Ethnicity"));
                RF4DDL.Items.Add(new ListItem("" + rd["Ethnicity"].ToString() + "", "Ethnicity"));
                RF5DDL.Items.Add(new ListItem("" + rd["Ethnicity"].ToString() + "", "Ethnicity"));
                RF6DDL.Items.Add(new ListItem("" + rd["Ethnicity"].ToString() + "", "Ethnicity"));
                RF7DDL.Items.Add(new ListItem("" + rd["Ethnicity"].ToString() + "", "Ethnicity"));
                RF8DDL.Items.Add(new ListItem("" + rd["Ethnicity"].ToString() + "", "Ethnicity"));
                RF9DDL.Items.Add(new ListItem("" + rd["Ethnicity"].ToString() + "", "Ethnicity"));

                RF1DDL.Items.Add(new ListItem("" + rd["Career"].ToString() + "", "Career"));
                RF2DDL.Items.Add(new ListItem("" + rd["Career"].ToString() + "", "Career"));
                RF3DDL.Items.Add(new ListItem("" + rd["Career"].ToString() + "", "Career"));
                RF4DDL.Items.Add(new ListItem("" + rd["Career"].ToString() + "", "Career"));
                RF5DDL.Items.Add(new ListItem("" + rd["Career"].ToString() + "", "Career"));
                RF6DDL.Items.Add(new ListItem("" + rd["Career"].ToString() + "", "Career"));
                RF7DDL.Items.Add(new ListItem("" + rd["Career"].ToString() + "", "Career"));
                RF8DDL.Items.Add(new ListItem("" + rd["Career"].ToString() + "", "Career"));
                RF9DDL.Items.Add(new ListItem("" + rd["Career"].ToString() + "", "Career"));

                RF1DDL.Items.Add(new ListItem("" + rd["AI"].ToString() + "", "AI"));
                RF2DDL.Items.Add(new ListItem("" + rd["AI"].ToString() + "", "AI"));
                RF3DDL.Items.Add(new ListItem("" + rd["AI"].ToString() + "", "AI"));
                RF4DDL.Items.Add(new ListItem("" + rd["AI"].ToString() + "", "AI"));
                RF5DDL.Items.Add(new ListItem("" + rd["AI"].ToString() + "", "AI"));
                RF6DDL.Items.Add(new ListItem("" + rd["AI"].ToString() + "", "AI"));
                RF7DDL.Items.Add(new ListItem("" + rd["AI"].ToString() + "", "AI"));
                RF8DDL.Items.Add(new ListItem("" + rd["AI"].ToString() + "", "AI"));
                RF9DDL.Items.Add(new ListItem("" + rd["AI"].ToString() + "", "AI"));

                RF1DDL.Items.Add(new ListItem("" + rd["AHI"].ToString() + "", "AHI"));
                RF2DDL.Items.Add(new ListItem("" + rd["AHI"].ToString() + "", "AHI"));
                RF3DDL.Items.Add(new ListItem("" + rd["AHI"].ToString() + "", "AHI"));
                RF4DDL.Items.Add(new ListItem("" + rd["AHI"].ToString() + "", "AHI"));
                RF5DDL.Items.Add(new ListItem("" + rd["AHI"].ToString() + "", "AHI"));
                RF6DDL.Items.Add(new ListItem("" + rd["AHI"].ToString() + "", "AHI"));
                RF7DDL.Items.Add(new ListItem("" + rd["AHI"].ToString() + "", "AHI"));
                RF8DDL.Items.Add(new ListItem("" + rd["AHI"].ToString() + "", "AHI"));
                RF9DDL.Items.Add(new ListItem("" + rd["AHI"].ToString() + "", "AHI"));

                RF1DDL.Items.Add(new ListItem("" + rd["GrowingPlace"].ToString() + "", "GrowingPlace"));
                RF2DDL.Items.Add(new ListItem("" + rd["GrowingPlace"].ToString() + "", "GrowingPlace"));
                RF3DDL.Items.Add(new ListItem("" + rd["GrowingPlace"].ToString() + "", "GrowingPlace"));
                RF4DDL.Items.Add(new ListItem("" + rd["GrowingPlace"].ToString() + "", "GrowingPlace"));
                RF5DDL.Items.Add(new ListItem("" + rd["GrowingPlace"].ToString() + "", "GrowingPlace"));
                RF6DDL.Items.Add(new ListItem("" + rd["GrowingPlace"].ToString() + "", "GrowingPlace"));
                RF7DDL.Items.Add(new ListItem("" + rd["GrowingPlace"].ToString() + "", "GrowingPlace"));
                RF8DDL.Items.Add(new ListItem("" + rd["GrowingPlace"].ToString() + "", "GrowingPlace"));
                RF9DDL.Items.Add(new ListItem("" + rd["GrowingPlace"].ToString() + "", "GrowingPlace"));

                RF1DDL.Items.Add(new ListItem("" + rd["Residence"].ToString() + "", "Residence"));
                RF2DDL.Items.Add(new ListItem("" + rd["Residence"].ToString() + "", "Residence"));
                RF3DDL.Items.Add(new ListItem("" + rd["Residence"].ToString() + "", "Residence"));
                RF4DDL.Items.Add(new ListItem("" + rd["Residence"].ToString() + "", "Residence"));
                RF5DDL.Items.Add(new ListItem("" + rd["Residence"].ToString() + "", "Residence"));
                RF6DDL.Items.Add(new ListItem("" + rd["Residence"].ToString() + "", "Residence"));
                RF7DDL.Items.Add(new ListItem("" + rd["Residence"].ToString() + "", "Residence"));
                RF8DDL.Items.Add(new ListItem("" + rd["Residence"].ToString() + "", "Residence"));
                RF9DDL.Items.Add(new ListItem("" + rd["Residence"].ToString() + "", "Residence"));
            }
            rd.Close();
            conn.Close();
        }
    }

    private void MyInit()
    {
        using (SqlConnection conn = new DB().GetConnection())
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select * from Format where GUID=@GUID";
            cmd.Parameters.AddWithValue("@GUID", Session["HospitalGUID"].ToString() + "f");
            conn.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                string RF1Value = rd["RF1Value"].ToString();
                if (RF1DDL.Items.FindByValue(RF1Value) != null)
                {
                    RF1DDL.ClearSelection();
                    RF1DDL.Items.FindByValue(RF1Value).Selected = true;
                }

                string RF2Value = rd["RF2Value"].ToString();
                if (RF2DDL.Items.FindByValue(RF2Value) != null)
                {
                    RF2DDL.ClearSelection();
                    RF2DDL.Items.FindByValue(RF2Value).Selected = true;
                }

                string RF3Value = rd["RF3Value"].ToString();
                if (RF3DDL.Items.FindByValue(RF3Value) != null)
                {
                    RF3DDL.ClearSelection();
                    RF3DDL.Items.FindByValue(RF3Value).Selected = true;
                }

                string RF4Value = rd["RF4Value"].ToString();
                if (RF4DDL.Items.FindByValue(RF4Value) != null)
                {
                    RF4DDL.ClearSelection();
                    RF4DDL.Items.FindByValue(RF4Value).Selected = true;
                }

                string RF5Value = rd["RF5Value"].ToString();
                if (RF5DDL.Items.FindByValue(RF5Value) != null)
                {
                    RF5DDL.ClearSelection();
                    RF5DDL.Items.FindByValue(RF5Value).Selected = true;
                }

                string RF6Value = rd["RF6Value"].ToString();
                if (RF6DDL.Items.FindByValue(RF6Value) != null)
                {
                    RF6DDL.ClearSelection();
                    RF6DDL.Items.FindByValue(RF6Value).Selected = true;
                }

                string RF7Value = rd["RF7Value"].ToString();
                if (RF7DDL.Items.FindByValue(RF7Value) != null)
                {
                    RF7DDL.ClearSelection();
                    RF7DDL.Items.FindByValue(RF7Value).Selected = true;
                }

                string RF8Value = rd["RF8Value"].ToString();
                if (RF8DDL.Items.FindByValue(RF8Value) != null)
                {
                    RF8DDL.ClearSelection();
                    RF8DDL.Items.FindByValue(RF8Value).Selected = true;
                }

                string RF9Value = rd["RF9Value"].ToString();
                if (RF9DDL.Items.FindByValue(RF9Value) != null)
                {
                    RF9DDL.ClearSelection();
                    RF9DDL.Items.FindByValue(RF9Value).Selected = true;
                }

            }
            rd.Close();

            cmd.CommandText = "Update [Format] set RF1Value = @RF1Value,RF1Text=@RF1Text,RF2Value = @RF2Value,RF2Text=@RF2Text,RF3Value = @RF3Value,RF3Text=@RF3Text,RF4Value = @RF4Value,RF4Text=@RF4Text,RF5Value = @RF5Value,RF5Text=@RF5Text,RF6Value = @RF6Value,RF6Text=@RF6Text,RF7Value = @RF7Value,RF7Text=@RF7Text,RF8Value = @RF8Value,RF8Text=@RF8Text,RF9Value = @RF9Value,RF9Text=@RF9Text where GUID = @GUID";
            cmd.Parameters.AddWithValue("@RF1Value", RF1DDL.SelectedValue);
            cmd.Parameters.AddWithValue("@RF1Text", RF1DDL.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@RF2Value", RF2DDL.SelectedValue);
            cmd.Parameters.AddWithValue("@RF2Text", RF2DDL.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@RF3Value", RF3DDL.SelectedValue);
            cmd.Parameters.AddWithValue("@RF3Text", RF3DDL.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@RF4Value", RF4DDL.SelectedValue);
            cmd.Parameters.AddWithValue("@RF4Text", RF4DDL.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@RF5Value", RF5DDL.SelectedValue);
            cmd.Parameters.AddWithValue("@RF5Text", RF5DDL.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@RF6Value", RF6DDL.SelectedValue);
            cmd.Parameters.AddWithValue("@RF6Text", RF6DDL.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@RF7Value", RF7DDL.SelectedValue);
            cmd.Parameters.AddWithValue("@RF7Text", RF7DDL.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@RF8Value", RF8DDL.SelectedValue);
            cmd.Parameters.AddWithValue("@RF8Text", RF8DDL.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@RF9Value", RF9DDL.SelectedValue);
            cmd.Parameters.AddWithValue("@RF9Text", RF9DDL.SelectedItem.Text);
            cmd.ExecuteNonQuery();

            conn.Close();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        using (SqlConnection conn = new DB().GetConnection())
        {
            SqlCommand cmd = (SqlCommand)conn.CreateCommand();
            cmd.CommandText = "Update [Format] set RF1Value = @RF1Value,RF1Text=@RF1Text,RF2Value = @RF2Value,RF2Text=@RF2Text,RF3Value = @RF3Value,RF3Text=@RF3Text,RF4Value = @RF4Value,RF4Text=@RF4Text,RF5Value = @RF5Value,RF5Text=@RF5Text,RF6Value = @RF6Value,RF6Text=@RF6Text,RF7Value = @RF7Value,RF7Text=@RF7Text,RF8Value = @RF8Value,RF8Text=@RF8Text,RF9Value = @RF9Value,RF9Text=@RF9Text where GUID = @GUID";
            cmd.Parameters.AddWithValue("@GUID", Session["HospitalGUID"].ToString() + "f");
            cmd.Parameters.AddWithValue("@RF1Value", RF1DDL.SelectedValue);
            cmd.Parameters.AddWithValue("@RF1Text", RF1DDL.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@RF2Value", RF2DDL.SelectedValue);
            cmd.Parameters.AddWithValue("@RF2Text", RF2DDL.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@RF3Value", RF3DDL.SelectedValue);
            cmd.Parameters.AddWithValue("@RF3Text", RF3DDL.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@RF4Value", RF4DDL.SelectedValue);
            cmd.Parameters.AddWithValue("@RF4Text", RF4DDL.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@RF5Value", RF5DDL.SelectedValue);
            cmd.Parameters.AddWithValue("@RF5Text", RF5DDL.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@RF6Value", RF6DDL.SelectedValue);
            cmd.Parameters.AddWithValue("@RF6Text", RF6DDL.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@RF7Value", RF7DDL.SelectedValue);
            cmd.Parameters.AddWithValue("@RF7Text", RF7DDL.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@RF8Value", RF8DDL.SelectedValue);
            cmd.Parameters.AddWithValue("@RF8Text", RF8DDL.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@RF9Value", RF9DDL.SelectedValue);
            cmd.Parameters.AddWithValue("@RF9Text", RF9DDL.SelectedItem.Text);
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