using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;
using System.IO;
using System.Text.RegularExpressions;
using System.Data;

public partial class Patient_Info : System.Web.UI.Page
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
                Patient.Focus();
                if (Request.QueryString["GUID"] != null)
                {
                    // 修改病人信息
                    GUIDLabel.Text = Request.QueryString["GUID"].ToString();
                    MyInitForUpdate();
                    MyInitForUpdate2();

                    //using (SqlConnection conn = new DB().GetConnection())
                    //{
                    //    SqlCommand cmd = conn.CreateCommand();
                    //    cmd.CommandText = "select * from Disease where PatientGUID=@PatientGUID";
                    //    cmd.Parameters.AddWithValue("@PatientGUID", GUID.Text);
                    //    conn.Open();
                    //    SqlDataReader rd = cmd.ExecuteReader();
                    //    if (rd.Read())
                    //    {
                    //       
                    //    }
                    //}

                }
                else
                {
                    //// 新增文章                
                    //System.Guid guid = System.Guid.NewGuid();
                    //string strGUID = System.Guid.NewGuid().ToString();
                    GUIDLabel.Text = "";
                    //科室读取
                    using (SqlConnection conn = new DB().GetConnection())
                    {
                        SqlCommand cmd = conn.CreateCommand();
                        cmd.CommandText = "select * from Department";
                        conn.Open();
                        SqlDataReader rd = cmd.ExecuteReader();
                        Department.DataSource = rd;
                        Department.DataValueField = "ID";
                        Department.DataTextField = "Department";
                        Department.DataBind();
                        rd.Close();
                        Department.Items.Insert(0, new ListItem(" ", "-1"));
                    }
                    //RandomID.Text = "";//第一次加载页面，为空
                }
                MyDataBind();
                PM_Read();
            }
        }

       

        //}

    }
    //检查操作
    private string Check()
    {
        int i = 0;
        string[] s = new string[6];
        s[0] = "";
        s[1] = "操作失败！ 请填写病人姓名！";
        s[2] = "操作失败！请填写病人的出生日期！";
     
        string Patientstr = Patient.Text;
        string BirthDaystr = Birthday.Text;
        if (!String.IsNullOrEmpty(Patientstr))
        {

            DataBind();

        }
        if (String.IsNullOrEmpty(Patientstr))
        {
            i = 1;//病人姓名不能为空
        }
        if (String.IsNullOrEmpty(BirthDaystr))
        {
            i = 2;//病人姓名不能为空
        }
       
        return s[i];
    }



    // --------文章标签操作------//
    private void MyDataBind()
    {
        using (SqlConnection conn = new DB().GetConnection())
        {
            SqlCommand cmd = conn.CreateCommand();
            conn.Open();
            cmd.CommandText = "select * from  [Medicine]  order by ID desc  ";

            SqlDataReader rd = cmd.ExecuteReader();
            TagsList.DataSource = rd;
            TagsList.DataTextField = "MedicineName";
            TagsList.DataValueField = "GUID";
            TagsList.DataBind();

            rd.Close();

            if (Request.QueryString["GUID"] != null && !String.IsNullOrEmpty(Request.QueryString["GUID"].ToString()))
            {

                string sql1 = "select count(*) as Maxrow from [Patient_Medicine] where PatientGUID=@PatientGUID";
                string sql2 = "select MedicineName from [Patient_Medicine] where PatientGUID=@PatientGUID";
                SqlCommand cmd1 = conn.CreateCommand();
                SqlCommand cmd2 = conn.CreateCommand();
                cmd1.Parameters.AddWithValue("@PatientGUID", GUIDLabel.Text);
                cmd2.Parameters.AddWithValue("@PatientGUID", GUIDLabel.Text);
                cmd1.CommandText = sql1;
                cmd2.CommandText = sql2;

                int count = int.Parse(Convert.ToString(cmd1.ExecuteScalar()));

                string[] TagName = new string[count];
                SqlDataReader rd2 = cmd2.ExecuteReader();
                for (int j = 0; j < count; j++)
                {
                    if (rd2.Read())
                    {
                        TagName[j] = rd2["MedicineName"].ToString();
                        for (int p = 0; p < TagsList.Items.Count; p++)
                        {
                            if (TagName[j] == TagsList.Items[p].Text)
                            {
                                TagsList.Items[p].Selected = true;

                                //  TextBox2.Text = TagsList.Items[p].Text;
                            }
                        }
                    }
                }
                rd2.Close();
            }

            // --------字段名称设置------//
            cmd.CommandText = "select * from PatientText where GUID=@GUID";
            cmd.Parameters.AddWithValue("@GUID", Session["HospitalGUID"].ToString() + "p");
            rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                Label1.Text = rd["PatientName"].ToString();
                Label2.Text = rd["Initials"].ToString();
                Label3.Text = rd["Sex"].ToString();

                Label5.Text = rd["Birthday"].ToString();
                Label6.Text = rd["Department"].ToString();
                Label7.Text = rd["Num1"].ToString();
                Label8.Text = rd["Num2"].ToString();
                Label9.Text = rd["Phone1"].ToString();
                Label10.Text = rd["Phone2"].ToString();
                Label11.Text = rd["EducationYears"].ToString();
                Label12.Text = rd["EducationLevel"].ToString();
                Label13.Text = rd["Handedness"].ToString();
                Label14.Text = rd["Marriage"].ToString();
                Label15.Text = rd["FMH"].ToString();
                Label16.Text = rd["Working"].ToString();
                Label17.Text = rd["Ethnicity"].ToString();
                Label18.Text = rd["Career"].ToString();
                Label19.Text = rd["AI"].ToString();
                Label20.Text = rd["AHI"].ToString();
                Label21.Text = rd["GrowingPlace"].ToString();
                Label22.Text = rd["Residence"].ToString();
            }
            rd.Close();
            conn.Close();

        }

    }

    //模态框中输入框的操作，对标签进行添加，选择 //
    private void ArticleTag()
    {
        string[] ArTag = ArTagName.Text.Split(',', '，', ' ');

        int k = ArTagName.Text.Split(',', '，', ' ').Length;

        // string[] TagName = new string[100];        
        using (SqlConnection conn = new DB().GetConnection())
        {

            for (int j = 0; j < k; j++)
            {
                TextBox1.Text = ArTag[j].ToString();
                SqlCommand cmd = conn.CreateCommand();
                conn.Open();
                cmd.CommandText = "select * from  [Medicine] where MedicineName=@MedicineName order by ID desc  ";
                cmd.Parameters.AddWithValue("@MedicineName", TextBox1.Text);
                SqlDataReader rd = cmd.ExecuteReader();

                if (!rd.Read())
                {
                    using (SqlConnection conn1 = new DB().GetConnection())
                    {
                        StringBuilder sb = new StringBuilder("insert into Medicine(MedicineName,GUID)");
                        sb.Append(" values ( @MedicineName,@GUID) ");
                        SqlCommand cmd1 = new SqlCommand(sb.ToString(), conn1);
                        cmd1.Parameters.AddWithValue("@MedicineName", TextBox1.Text);
                        cmd1.Parameters.AddWithValue("@GUID", System.Guid.NewGuid());
                       
                        conn1.Open();
                        cmd1.ExecuteNonQuery();

                    }
                    MyDataBind();
                }
                rd.Close();
                conn.Close();
            }
        }

        using (SqlConnection conn = new DB().GetConnection())
        {

            for (int j = 0; j < k; j++)
            {
                TextBox1.Text = ArTag[j].ToString();
                SqlCommand cmd = conn.CreateCommand();
                conn.Open();
                cmd.CommandText = "select * from  [Medicine] where MedicineName=@MedicineName order by ID desc  ";
                cmd.Parameters.AddWithValue("@MedicineName", TextBox1.Text);
                SqlDataReader rd = cmd.ExecuteReader();

                if (rd.Read())
                {

                    string text = string.Empty;
                    text = TextBox1.Text;

                    for (int p = 0; p < TagsList.Items.Count; p++)
                    {
                        if (text == TagsList.Items[p].Text)
                        {
                            TagsList.Items[p].Selected = true;


                            //  TextBox2.Text = TagsList.Items[p].Text;
                        }
                    }
                }

                rd.Close();
                conn.Close();
            }
        }

    }

    ///  将选择的标签 和 文章添加到关联表里/?///
    private void ArticleTagAdd()
    {
        string tags = "";
        for (int i = 0; i <= TagsList.Items.Count - 1; i++)
        {
            if (TagsList.Items[i].Selected == true)
            {
                tags += ",'" + TagsList.Items[i].Value+"'";
            }

        }
        if (tags != "")
        {
            tags = tags.Substring(1);
            TagiIDs.Text = tags;   ///选择的“文章标签”对应的ID
            string[] array = tags.Split(',');
            int k = array.Length;
            string[] ArticleTagID = new string[10];
            string[] ArticleTagName = new string[10];
         
            int p;

            using (SqlConnection conn = new DB().GetConnection())
            {
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = "select * from Medicine where GUID in (" + TagiIDs.Text + ") order by ID desc  ";
                conn.Open();
                SqlDataReader rd = cmd.ExecuteReader();
                for (p = 0; p <= k - 1; p++)
                {
                    if (rd.Read())
                    {
                        ArticleTagID[p] = rd["GUID"].ToString();
                        ArticleTagName[p] = rd["MedicineName"].ToString();
                    }
                }
                rd.Close();
                conn.Close();

                for (int j = 0; j <= k - 1; j++)
                {
                    SqlCommand cmd3 = conn.CreateCommand();
                    cmd3.CommandText = "select * from [Patient_Medicine] where MedicineGUID=@MedicineGUID and PatientGUID=@PatientGUID";
                    cmd3.Parameters.AddWithValue("@PatientGUID", Request.QueryString["GUID"]);
                    cmd3.Parameters.AddWithValue("@MedicineGUID", ArticleTagID[j]);
                    conn.Open();
                    SqlDataReader rd3 = cmd3.ExecuteReader();
                    if (rd3.Read())
                    {
                        rd3.Close();
                        conn.Close();
                    }
                    else
                    {
                        rd3.Close();
                        conn.Close();
                        StringBuilder sb = new StringBuilder("insert into Patient_Medicine(GUID,MedicineGUID,PatientGUID,MedicineName,SideEffect)");
                        sb.Append(" values ( @GUID,@MedicineGUID,@PatientGUID,@MedicineName,@SideEffect) ");
                        SqlCommand cmd1 = new SqlCommand(sb.ToString(), conn);
                        cmd1.Parameters.AddWithValue("@GUID", System.Guid.NewGuid());
                        cmd1.Parameters.AddWithValue("@PatientGUID", Request.QueryString["GUID"]);
                        cmd1.Parameters.AddWithValue("@SideEffect", 0);
                        cmd1.Parameters.AddWithValue("@MedicineGUID", ArticleTagID[j]);
                        cmd1.Parameters.AddWithValue("@MedicineName", ArticleTagName[j]);
                        conn.Open();
                        cmd1.ExecuteNonQuery();
                        conn.Close();

                    }




                }

                cmd.CommandText = "Delete from  Patient_Medicine where PatientGUID=@PatientGUID1 and MedicineGUID not in (" + TagiIDs.Text + ") ";
                cmd.Parameters.AddWithValue("@PatientGUID1", Request.QueryString["GUID"]);
                conn.Open();
                cmd.ExecuteNonQuery();
                cmd.Dispose();
                conn.Close();



            }
        }

        if (tags == "" && GUIDLabel.Text != "")
        {
            using (SqlConnection conn = new DB().GetConnection())
            {
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = "Delete from Patient_Medicine where PatientGUID=@PatientGUID2 ";
                cmd.Parameters.AddWithValue("@PatientGUID2", GUIDLabel.Text);
                conn.Open();
                cmd.ExecuteNonQuery();
                cmd.Dispose();
                conn.Close();
            }
        }

    }

    protected void AddArTag_Click(object sender, EventArgs e)
    {
        string a = Regex.Replace(ArTagName.Text.ToString(), " ", "");
        if (a == "") { }
        else ArticleTag();
    }
    protected void Sure_Click(object sender, EventArgs e)
    {
        if (Request.QueryString["GUID"] != null)
        {
            ArticleTagAdd();
            PM_Read();
        }
        else { Response.Write(" <script> alert(\"操作失败，请先录入或保存病人的基本信息资料！\"); </script> "); }

    }


    //结束操作


    //GridView1读取
    protected void PM_Read()
    {
      
        using (SqlConnection conn = new DB().GetConnection())
        {
            SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText ="select * from Patient_Medicine where PatientGUID=@PatientGUID";
            cmd.Parameters.AddWithValue("@PatientGUID", GUIDLabel.Text);
            conn.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            GridView1.DataSource = rd;
            GridView1.DataBind();


            for (int i = 0; i <= GridView1.Rows.Count - 1; i++)
            {
               
                TextBox SideEffect1 = (TextBox)GridView1.Rows[i].FindControl("SideEffect1");
                DropDownList SideEffect = (DropDownList)GridView1.Rows[i].FindControl("SideEffect");
                if (SideEffect1.Text == "True")
                {
                    SideEffect.SelectedValue = "1";
                }
                else {
                    SideEffect.SelectedValue = "0";
                }

            }
                

                rd.Close();




        }



    }


    //GridView1嵌套按钮操作
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int rowIndex = Convert.ToInt16(e.CommandArgument);
        int id = Convert.ToInt16(GridView1.DataKeys[rowIndex].Value);
        ID_Label.Text = id + "";
       
        if (e.CommandName.Equals("Del2"))
        {
            DoDel(id);
        }
    }

    protected void DoDel(int id)
    {
     
        using (SqlConnection conn = new DB().GetConnection())
        {
            SqlCommand cmd = conn.CreateCommand();

            string sql = "delete from Patient_Medicine where ID = @ID";
                cmd = new SqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@ID", id);
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
            

        }
        MyDataBind();
        PM_Read();
    }

    //GridView1嵌套DDlist操作
    //protected void SideEffect_SelectedIndexChanged(object sender, EventArgs e)
    //{

    //    DropDownList d1 = new DropDownList();
    //    TextBox d2 = new TextBox();

    //    foreach (GridViewRow row in GridView1.Rows)
    //    {
    //        d1 = (DropDownList)row.FindControl("SideEffect");
    //        d2 = (TextBox)row.FindControl("Description");
    //        if (Convert.ToInt16(d1.SelectedValue) == 0)
    //        {
    //            d2.Enabled = false;
    //            d2.Text = "无";

    //        }
    //        else { d2.Enabled = true;
    //        d2.Text = "";
    //        }
          
    //    }
    //}

    //GridView1内容修改
    protected void PM_Edit() {
        using (SqlConnection conn = new DB().GetConnection())
        {
            SqlCommand cmd = conn.CreateCommand();
            conn.Open();
            for (int i = 0; i <= GridView1.Rows.Count - 1; i++)
            {
                TextBox Dosage = (TextBox)GridView1.Rows[i].FindControl("Dosage");
                if (!GridView1.Rows[i].Cells[0].Text.Trim().Equals(Dosage.Text.Trim()))
                {
                    cmd.CommandText = "Update Patient_Medicine set Dosage = " + Dosage.Text.Trim() + " where ID = " + GridView1.DataKeys[i].Value;
                    cmd.ExecuteNonQuery();
                    cmd.Dispose();
                }
                TextBox Duration = (TextBox)GridView1.Rows[i].FindControl("Duration");
                if (!GridView1.Rows[i].Cells[0].Text.Trim().Equals(Duration.Text.Trim()))
                {
                    cmd.CommandText = "Update Patient_Medicine set Duration = " + Duration.Text.Trim() + " where ID = " + GridView1.DataKeys[i].Value;
                    cmd.ExecuteNonQuery();
                    cmd.Dispose();
                }

                DropDownList SideEffect = (DropDownList)GridView1.Rows[i].FindControl("SideEffect");
                if (!GridView1.Rows[i].Cells[0].Text.Trim().Equals(SideEffect.SelectedValue))
                {
                    cmd.CommandText = "Update Patient_Medicine set SideEffect = " + SideEffect.SelectedValue + " where ID = " + GridView1.DataKeys[i].Value;
                    cmd.ExecuteNonQuery();
                    cmd.Dispose();
                }

                TextBox Description = (TextBox)GridView1.Rows[i].FindControl("Description");
                if (!GridView1.Rows[i].Cells[0].Text.Trim().Equals(Description.Text))
                {
                    cmd.CommandText = "Update Patient_Medicine set Description = '" + Description.Text + "' where ID = " + GridView1.DataKeys[i].Value;
                    cmd.ExecuteNonQuery();
                    cmd.Dispose();
                }

            }
        }
    }

    //更新操作
    private void MyInitForUpdate()
    {
        string Handness = "";
        string Marriage = "";
        string EducationLevel = "";
        string FMH = "";
        string Working = "";
        string Role = "";
        string RoleFunction = "";

        int Valid = 1;
        using (SqlConnection conn = new DB().GetConnection())
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select * from Department";
            conn.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            Department.DataSource = rd;
            Department.DataValueField = "ID";
            Department.DataTextField = "Department";
            Department.DataBind();
            rd.Close();
            Department.Items.Insert(0, new ListItem(" ", "-1"));

           
            cmd.CommandText = "select * from Patient where GUID=@GUID";
            cmd.Parameters.AddWithValue("@GUID", GUIDLabel.Text);
            rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                Patient.Text = rd["PatientName"].ToString();
                Initials.Text = rd["Initials"].ToString();
                //  Sex.Text = rd["Sex"].ToString();
                Birthday.Text = String.Format("{0:yyyy-MM-dd}", rd["Birthday"]);
                Num1.Text = rd["Num1"].ToString();
                Num2.Text = rd["Num2"].ToString();
                Phone1.Text = rd["Phone1"].ToString();
                Phone2.Text = rd["Phone2"].ToString();
                EducationYears.Text = rd["EducationYears"].ToString();
                //   Marriage.Text = rd["Marriage"].ToString();
                CertificatesNum.Text = rd["CertificatesNum"].ToString();
                Ethnicity.Text = rd["Ethnicity"].ToString();
                Career.Text = rd["Career"].ToString();
                AI.Text = rd["AI"].ToString();
                AHI.Text = rd["AHI"].ToString();
                GrowingPlace.Text = rd["GrowingPlace"].ToString();
                Residence.Text = rd["Residence"].ToString();

                string Department0 = rd["Department"].ToString().Trim();

                if (Department.Items.FindByText(Department0) != null)
                {
                    Department.ClearSelection();
                    Department.Items.FindByText(Department0).Selected = true;
                }


                string Certificates0 = rd["Certificates"].ToString().Trim();

                if (DDLCertificates.Items.FindByText(Certificates0) != null)
                {
                    DDLCertificates.ClearSelection();
                    DDLCertificates.Items.FindByText(Certificates0).Selected = true;
                }



                Handness = rd["Handedness"].ToString().Trim();
                if (Handness == left.Text)
                {
                    left.Checked = true;
                }
                if (Handness == right.Text)
                {
                    right.Checked = true;
                }
                if (Handness == both.Text)
                {
                    both.Checked = true;
                }


                Marriage = rd["Marriage"].ToString().Trim();
                if (Marriage == marriage1.Text)
                {
                    marriage1.Checked = true;
                }
                if (Marriage == marriage2.Text)
                {
                    marriage2.Checked = true;
                }
                if (Marriage == marriage3.Text)
                {
                    marriage3.Checked = true;
                }
                if (Marriage == marriage4.Text)
                {
                    marriage4.Checked = true;
                }
                if (Marriage == marriage5.Text)
                {
                    marriage5.Checked = true;
                }
                if (Marriage == marriage6.Text)
                {
                    marriage6.Checked = true;
                }

                Role = rd["Role"].ToString().Trim();
                if (Role == Role1.Text)
                {
                    Role1.Checked = true;
                }
                if (Role == Role2.Text)
                {
                    Role2.Checked = true;
                }
                if (Role == Role3.Text)
                {
                    Role3.Checked = true;
                }
                if (Role == Role4.Text)
                {
                    Role4.Checked = true;
                }

                RoleFunction = rd["RoleFunction"].ToString().Trim();
                if (RoleFunction == RoleFunction1.Text)
                {
                    RoleFunction1.Checked = true;
                }
                if (RoleFunction == RoleFunction2.Text)
                {
                    RoleFunction2.Checked = true;
                }
                if (RoleFunction == RoleFunction3.Text)
                {
                    RoleFunction3.Checked = true;
                }
                if (RoleFunction == RoleFunction4.Text)
                {
                    RoleFunction4.Checked = true;
                }
                if (RoleFunction == RoleFunction5.Text)
                {
                    RoleFunction5.Checked = true;
                }

                EducationLevel = rd["EducationLevel"].ToString().Trim();
                if (EducationLevel == educationLevel1.Text)
                {
                    educationLevel1.Checked = true;
                }
                if (EducationLevel == educationLevel2.Text)
                {
                    educationLevel2.Checked = true;
                }
                if (EducationLevel == educationLevel3.Text)
                {
                    educationLevel3.Checked = true;
                }
                if (EducationLevel == educationLevel4.Text)
                {
                    educationLevel4.Checked = true;
                }
                if (EducationLevel == educationLevel5.Text)
                {
                    educationLevel5.Checked = true;
                }

                FMH = rd["FMH"].ToString().Trim();
                if (FMH == fmh1.Text)
                {
                    fmh1.Checked = true;
                }
                if (FMH == fmh2.Text)
                {
                    fmh2.Checked = true;
                }
                if (FMH == fmh3.Text)
                {
                    fmh3.Checked = true;
                }

                Working = rd["Working"].ToString().Trim();
                if (Working == working1.Text)
                {
                    working1.Checked = true;
                }
                if (Working == working2.Text)
                {
                    working2.Checked = true;
                }
                if (Working == working3.Text)
                {
                    working3.Checked = true;
                }
                if (Working == working4.Text)
                {
                    working4.Checked = true;
                }



                string sex0 = rd["Sex"].ToString().Trim();

                if (sex1.Items.FindByText(sex0) != null)
                {
                    sex1.ClearSelection();
                    sex1.Items.FindByText(sex0).Selected = true;
                }

                string GrowingPlace0 = rd["GrowingPlace"].ToString().Trim();

                if (GrowingPlace.Items.FindByText(GrowingPlace0) != null)
                {
                    GrowingPlace.ClearSelection();
                    GrowingPlace.Items.FindByText(GrowingPlace0).Selected = true;
                }

                string Residence0 = rd["Residence"].ToString().Trim();

                if (Residence.Items.FindByText(Residence0) != null)
                {
                    Residence.ClearSelection();
                    Residence.Items.FindByText(Residence0).Selected = true;
                }


            }
            if (Valid == 0)
            {
                Button1.Visible = false;
                Button2.Visible = false;
            }

        }
    }




    //插入操作，插入到Patients表里
    private int DoInsert(int finished)
    {
        int i = 0;

        string Handness = "";
        if (left.Checked)
        {
            Handness = left.Text;
        }
        if (right.Checked)
        {
            Handness = right.Text;
        }
        if (both.Checked)
        {
            Handness = both.Text;
        }

        string Marriage = "";
        if (marriage1.Checked)
        {
            Marriage = marriage1.Text;
        }
        if (marriage2.Checked)
        {
            Marriage = marriage2.Text;
        }
        if (marriage3.Checked)
        {
            Marriage = marriage3.Text;
        }
        if (marriage4.Checked)
        {
            Marriage = marriage4.Text;
        }
        if (marriage5.Checked)
        {
            Marriage = marriage5.Text;
        }
        if (marriage6.Checked)
        {
            Marriage = marriage6.Text;
        }



        string Role = "";
        if (Role1.Checked)
        {
            Role = Role1.Text;
        }
        if (Role2.Checked)
        {
            Role = Role2.Text;
        }
        if (Role3.Checked)
        {
            Role = Role3.Text;
        }
        if (Role4.Checked)
        {
            Role = Role4.Text;
        }

        string RoleFunction = "";
        if (RoleFunction1.Checked)
        {
            RoleFunction = RoleFunction1.Text;
        }
        if (RoleFunction2.Checked)
        {
            RoleFunction = RoleFunction2.Text;
        }
        if (RoleFunction3.Checked)
        {
            RoleFunction = RoleFunction3.Text;
        }
        if (RoleFunction4.Checked)
        {
            RoleFunction = RoleFunction4.Text;
        }
        if (RoleFunction5.Checked)
        {
            RoleFunction = RoleFunction5.Text;
        }


        string EducationLevel = "";
        if (educationLevel1.Checked)
        {
            EducationLevel = educationLevel1.Text;
        }
        if (educationLevel2.Checked)
        {
            EducationLevel = educationLevel2.Text;
        }
        if (educationLevel3.Checked)
        {
            EducationLevel = educationLevel3.Text;
        }
        if (educationLevel4.Checked)
        {
            EducationLevel = educationLevel4.Text;
        }
        if (educationLevel5.Checked)
        {
            EducationLevel = educationLevel5.Text;
        }
        string FMH = "";
        if (fmh1.Checked)
        {
            FMH = fmh1.Text;
        }
        if (fmh2.Checked)
        {
            FMH = fmh2.Text;
        }
        if (fmh3.Checked)
        {
            FMH = fmh3.Text;
        }
        string Working = "";
        if (working1.Checked)
        {
            Working = working1.Text;
        }
        if (working2.Checked)
        {
            Working = working2.Text;
        }
        if (working3.Checked)
        {
            Working = working3.Text;
        }
        if (working4.Checked)
        {
            Working = working4.Text;
        }
       

        string Sex0 = "";
        Sex0 = sex1.SelectedItem.Text;

        string GrowingPlace0 = "";
        GrowingPlace0 = GrowingPlace.SelectedItem.Text;

        string Residence0 = "";
        Residence0 = Residence.SelectedItem.Text;

        using (SqlConnection conn = new DB().GetConnection())
        {
            StringBuilder sb = new StringBuilder("Insert into Patient ( PatientName,GUID,Initials,Sex,Birthday,Certificates,CertificatesNum,Department,Num1,Num2,Phone1,Phone2,EducationYears,Handedness,Marriage,EducationLevel,Role,RoleFunction,FMH,Ethnicity,Career,Working,AI,AHI,GrowingPlace,Residence,CDT) ");
            sb.Append(" values ( @PatientName,@GUID,@Initials,@Sex,@Birthday,@Certificates,@CertificatesNum,@Department,@Num1,@Num2,@Phone1,@Phone2,@EducationYears,@Handedness,@Marriage,@EducationLevel,@Role,@RoleFunction,@FMH,@Ethnicity,@Career,@Working,@AI,@AHI,@GrowingPlace,@Residence,@CDT) ");
            SqlCommand cmd = new SqlCommand(sb.ToString(), conn);

            cmd.Parameters.AddWithValue("@PatientName", Patient.Text);
            cmd.Parameters.AddWithValue("@Initials", Initials.Text);
            cmd.Parameters.AddWithValue("@GUID", GUIDLabel.Text);
            cmd.Parameters.AddWithValue("@Sex", Sex0);
            cmd.Parameters.AddWithValue("@Certificates", DDLCertificates.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@CertificatesNum",CertificatesNum.Text);
            cmd.Parameters.AddWithValue("@Department", Department.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Birthday", Birthday.Text);
            cmd.Parameters.AddWithValue("@Num1", Num1.Text);
            cmd.Parameters.AddWithValue("@Num2", Num2.Text);
            cmd.Parameters.AddWithValue("@Phone1", Phone1.Text);
            cmd.Parameters.AddWithValue("@Phone2", Phone2.Text);
            cmd.Parameters.AddWithValue("@EducationYears", EducationYears.Text);
            cmd.Parameters.AddWithValue("@EducationLevel", EducationLevel);
            cmd.Parameters.AddWithValue("@Role", Role);
            cmd.Parameters.AddWithValue("@RoleFunction", RoleFunction);
            cmd.Parameters.AddWithValue("@Handedness", Handness);
            cmd.Parameters.AddWithValue("@Marriage", Marriage);
            cmd.Parameters.AddWithValue("@FMH", FMH);
            cmd.Parameters.AddWithValue("@Ethnicity", Ethnicity.Text);
            cmd.Parameters.AddWithValue("@Career", Career.Text);
            cmd.Parameters.AddWithValue("@Working", Working);
            cmd.Parameters.AddWithValue("@AI", AI.Text);
            cmd.Parameters.AddWithValue("@AHI", AHI.Text);
            cmd.Parameters.AddWithValue("@GrowingPlace", GrowingPlace0);
            cmd.Parameters.AddWithValue("@Residence", Residence0);
            cmd.Parameters.AddWithValue("@CDT", DateTime.Now);


            conn.Open();
            i = cmd.ExecuteNonQuery();
        }
        return i;
    }


    //更新病人基本资料操作
    private int DoUpdate(int finished)
    {
        string Handness = "";
        if (left.Checked)
        {
            Handness = left.Text;
        }
        if (right.Checked)
        {
            Handness = right.Text;
        }
        if (both.Checked)
        {
            Handness = both.Text;
        }

        string Marriage = "";
        if (marriage1.Checked)
        {
            Marriage = marriage1.Text;
        }
        if (marriage2.Checked)
        {
            Marriage = marriage2.Text;
        }
        if (marriage3.Checked)
        {
            Marriage = marriage3.Text;
        }
        if (marriage4.Checked)
        {
            Marriage = marriage4.Text;
        }
        if (marriage5.Checked)
        {
            Marriage = marriage5.Text;
        }

        string EducationLevel = "";
        if (educationLevel1.Checked)
        {
            EducationLevel = educationLevel1.Text;
        }
        if (educationLevel2.Checked)
        {
            EducationLevel = educationLevel2.Text;
        }
        if (educationLevel3.Checked)
        {
            EducationLevel = educationLevel3.Text;
        }
        if (educationLevel4.Checked)
        {
            EducationLevel = educationLevel4.Text;
        }
        if (educationLevel5.Checked)
        {
            EducationLevel = educationLevel5.Text;
        }

        string Role= "";
        if (Role1.Checked)
        {
            Role = Role1.Text;
        }
        if (Role2.Checked)
        {
            Role = Role2.Text;
        }
        if (Role3.Checked)
        {
            Role = Role3.Text;
        }
        if (Role4.Checked)
        {
            Role = Role4.Text;
        }

        string RoleFunction = "";
        if (RoleFunction1.Checked)
        {
            RoleFunction = RoleFunction1.Text;
        }
        if (RoleFunction2.Checked)
        {
            RoleFunction = RoleFunction2.Text;
        }
        if (RoleFunction3.Checked)
        {
            RoleFunction = RoleFunction3.Text;
        }
        if (RoleFunction4.Checked)
        {
            RoleFunction = RoleFunction4.Text;
        }
        if (RoleFunction5.Checked)
        {
            RoleFunction = RoleFunction5.Text;
        }


        string FMH = "";
        if (fmh1.Checked)
        {
            FMH = fmh1.Text;
        }
        if (fmh2.Checked)
        {
            FMH = fmh2.Text;
        }
        if (fmh3.Checked)
        {
            FMH = fmh3.Text;
        }
        string Working = "";
        if (working1.Checked)
        {
            Working = working1.Text;
        }
        if (working2.Checked)
        {
            Working = working2.Text;
        }
        if (working3.Checked)
        {
            Working = working3.Text;
        }
        if (working4.Checked)
        {
            Working = working4.Text;
        }
       

        string Sex0 = "";
        Sex0 = sex1.SelectedItem.Text;

        string GrowingPlace0 = "";
        GrowingPlace0 = GrowingPlace.SelectedItem.Text;

        string Residence0 = "";
        Residence0 = Residence.SelectedItem.Text;


        int i = 0;
        using (SqlConnection conn = new DB().GetConnection())
        {
            StringBuilder sb = new StringBuilder("Update Patient set  PatientName=@PatientName,Initials=@Initials,Sex=@Sex,Birthday=@Birthday,Certificates=@Certificates,CertificatesNum=@CertificatesNum,Department=@Department,Num1=@Num1,Num2=@Num2,Phone1=@Phone1,Phone2=@Phone2,EducationYears=@EducationYears,Handedness=@Handedness,EducationLevel=@EducationLevel,Role=@Role,RoleFunction=@RoleFunction,");
            sb.Append("Marriage=@Marriage,FMH=@FMH,Ethnicity=@Ethnicity,Career=@Career,Working=@Working,AI=@AI,AHI=@AHI,GrowingPlace=@GrowingPlace,Residence=@Residence where GUID=@GUID ");
            SqlCommand cmd = new SqlCommand(sb.ToString(), conn);
            cmd.Parameters.AddWithValue("@PatientName", Patient.Text);
            cmd.Parameters.AddWithValue("@Initials", Initials.Text);
            cmd.Parameters.AddWithValue("@GUID", GUIDLabel.Text);
            cmd.Parameters.AddWithValue("@Sex", Sex0);
            cmd.Parameters.AddWithValue("@Birthday", Birthday.Text);
            cmd.Parameters.AddWithValue("@Certificates", DDLCertificates.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@CertificatesNum", CertificatesNum.Text);
            cmd.Parameters.AddWithValue("@Department", Department.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Num1", Num1.Text);
            cmd.Parameters.AddWithValue("@Num2", Num2.Text);
            cmd.Parameters.AddWithValue("@Phone1", Phone1.Text);
            cmd.Parameters.AddWithValue("@Phone2", Phone2.Text);
            cmd.Parameters.AddWithValue("@EducationYears", EducationYears.Text);
            cmd.Parameters.AddWithValue("@EducationLevel", EducationLevel);
            cmd.Parameters.AddWithValue("@Role", Role);
            cmd.Parameters.AddWithValue("@RoleFunction", RoleFunction);
            cmd.Parameters.AddWithValue("@Handedness", Handness);
            cmd.Parameters.AddWithValue("@Marriage", Marriage);
            cmd.Parameters.AddWithValue("@FMH", FMH);
            cmd.Parameters.AddWithValue("@Ethnicity", Ethnicity.Text);
            cmd.Parameters.AddWithValue("@Career", Career.Text);
            cmd.Parameters.AddWithValue("@Working", Working);
            cmd.Parameters.AddWithValue("@AI", AI.Text);
            cmd.Parameters.AddWithValue("@AHI", AHI.Text);
            cmd.Parameters.AddWithValue("@GrowingPlace", GrowingPlace0);
            cmd.Parameters.AddWithValue("@Residence", Residence0);

            conn.Open();
            i = cmd.ExecuteNonQuery();
        }


        using (SqlConnection conn = new DB().GetConnection())
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "Update Disease set  PatientName=@PatientName where  PatientGUID=@PatientGUID";
            cmd.Parameters.AddWithValue("@PatientName", Patient.Text);
            cmd.Parameters.AddWithValue("@PatientGUID", GUIDLabel.Text);
            conn.Open();
            cmd.ExecuteNonQuery();

        }


        return i;


    }



    protected void Button1_Click(object sender, EventArgs e)
    {
         ResultLabel.Text = Check();
        ResultLabel.ForeColor = System.Drawing.Color.Red;
        if (ResultLabel.Text == "")
        {
            int i = 0;
            if (String.IsNullOrEmpty(GUIDLabel.Text))
            {
                //System.Guid guid = System.Guid.NewGuid();
                //string strGUID = System.Guid.NewGuid().ToString();
                System.Guid guid = System.Guid.NewGuid();
                string strGUID = System.Guid.NewGuid().ToString();
                GUIDLabel.Text = strGUID;
                i = DoInsert(1);
                Response.Redirect("Patient_Info.aspx?GUID=" + GUIDLabel.Text);

            }
            else
            {
                i = DoUpdate(1);
            }

            if (i == 1)
            {
                ResultLabel.Text = "操作成功！";
                ResultLabel.ForeColor = System.Drawing.Color.Green;
                //Timer1.Enabled = true;            
            }
            else
            {
                ResultLabel.Text = "操作失败，请重试！";
                ResultLabel.ForeColor = System.Drawing.Color.Red;
            }
        }
    }


    //  病人基本信息操作结束


    //病人疾病信息的操作

    // 疾病信息更新时读取操作
    private void MyInitForUpdate2()
    {
        string AcuteOnset = "";

        using (SqlConnection conn = new DB().GetConnection())
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select * from Disease where PatientGUID=@PatientGUID";
            cmd.Parameters.AddWithValue("@PatientGUID", GUIDLabel.Text);
            conn.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                DiseaseGUID.Text = rd["GUID"].ToString();
                Diagnosis.Text = rd["Diagnosis"].ToString();
               // AcuteOnset.Text = rd["AcuteOnset"].ToString();
                OnsetTime.Text = String.Format("{0:yyyy-MM-dd}", rd["OnsetTime"]);
                DiseaseCourse1.Text = rd["DiseaseCourse"].ToString().Substring(0, rd["DiseaseCourse"].ToString().IndexOf('-'));
                DiseaseCourse2.Text = rd["DiseaseCourse"].ToString().Substring(rd["DiseaseCourse"].ToString().IndexOf('-') + 1);
              
             
                UntreatedTime1.Text = rd["UntreatedTime"].ToString().Substring(0, rd["UntreatedTime"].ToString().IndexOf('-'));
                UntreatedTime2.Text = rd["UntreatedTime"].ToString().Substring(rd["UntreatedTime"].ToString().IndexOf('-') + 1);

                LastTime.Text = String.Format("{0:yyyy-MM-dd}", rd["LastTime"]);
               
                Attacks.Text = rd["Attacks"].ToString();
                Hospitalizations.Text = rd["Hospitalizations"].ToString();
                Medication.Text = rd["Medication"].ToString();
                BodyDisease.Text = rd["BodyDisease"].ToString();

                AcuteOnset = rd["AcuteOnset"].ToString().Trim();
                if (AcuteOnset == AcuteOnset1.Text)
                {
                    AcuteOnset1.Checked = true;
                }
                if (AcuteOnset == AcuteOnset2.Text)
                {
                    AcuteOnset2.Checked = true;
                }

            }
        }
    }

    //插入操作，插入到Disease表里
    private int DoInsert2(int finished)
    {
        int i = 0;
        DiseaseGUID.Text = System.Guid.NewGuid().ToString();
        string AcuteOnset = "";
        if (AcuteOnset1.Checked)
        {
            AcuteOnset = AcuteOnset1.Text;
        }
        if (AcuteOnset2.Checked)
        {
            AcuteOnset = AcuteOnset2.Text;
        }
        string DiseaseCourse = DiseaseCourse1.Text + "-" + DiseaseCourse2.Text;
        string UntreatedTime = UntreatedTime1.Text + "-" + UntreatedTime2.Text;
      

        using (SqlConnection conn = new DB().GetConnection())
        {
            StringBuilder sb = new StringBuilder("Insert into Disease ( PatientName,GUID,PatientGUID,Diagnosis,AcuteOnset,OnsetTime,DiseaseCourse,UntreatedTime,Attacks,LastTime,Hospitalizations,Medication,BodyDisease,CDT) ");
            sb.Append(" values ( @PatientName,@GUID,@PatientGUID,@Diagnosis,@AcuteOnset,@OnsetTime,@DiseaseCourse,@UntreatedTime,@Attacks,@LastTime,@Hospitalizations,@Medication,@BodyDisease,@CDT) ");
            SqlCommand cmd = new SqlCommand(sb.ToString(), conn);

            cmd.Parameters.AddWithValue("@PatientName", Patient.Text);
            cmd.Parameters.AddWithValue("@GUID", DiseaseGUID.Text);
            cmd.Parameters.AddWithValue("@PatientGUID", GUIDLabel.Text);
            cmd.Parameters.AddWithValue("@Diagnosis", Diagnosis.Text);
            cmd.Parameters.AddWithValue("@AcuteOnset", AcuteOnset);
            cmd.Parameters.AddWithValue("@OnsetTime", OnsetTime.Text);
            cmd.Parameters.AddWithValue("@DiseaseCourse", DiseaseCourse);
         
            cmd.Parameters.AddWithValue("@UntreatedTime", UntreatedTime);
            cmd.Parameters.AddWithValue("@Attacks", Attacks.Text);
            cmd.Parameters.AddWithValue("@LastTime", LastTime.Text);
            cmd.Parameters.AddWithValue("@Hospitalizations", Hospitalizations.Text);
            cmd.Parameters.AddWithValue("@Medication", Medication.Text);
            cmd.Parameters.AddWithValue("@BodyDisease", BodyDisease.Text);
            cmd.Parameters.AddWithValue("@CDT", DateTime.Now);
            conn.Open();
            i = cmd.ExecuteNonQuery();
        }
        return i;
    }


    //更新病人病情资料操作
    private int DoUpdate2(int finished)
    {
        int i = 0;
        string AcuteOnset = "";
        if (AcuteOnset1.Checked)
        {
            AcuteOnset = AcuteOnset1.Text;
        }
        if (AcuteOnset2.Checked)
        {
            AcuteOnset = AcuteOnset2.Text;
        }
        string DiseaseCourse = DiseaseCourse1.Text + "-" + DiseaseCourse2.Text;
        string UntreatedTime = UntreatedTime1.Text + "-" + UntreatedTime2.Text;
       

        using (SqlConnection conn = new DB().GetConnection())
        {
            StringBuilder sb = new StringBuilder("Update Disease set  PatientName=@PatientName,Diagnosis=@Diagnosis,AcuteOnset=@AcuteOnset,OnsetTime=@OnsetTime,DiseaseCourse=@DiseaseCourse,UntreatedTime=@UntreatedTime,LastTime=@LastTime,");
            sb.Append("Attacks=@Attacks,Hospitalizations=@Hospitalizations,Medication=@Medication,BodyDisease=@BodyDisease,CDT=@CDT where PatientGUID=@PatientGUID ");
            SqlCommand cmd = new SqlCommand(sb.ToString(), conn);
            cmd.Parameters.AddWithValue("@PatientName", Patient.Text);
            cmd.Parameters.AddWithValue("@PatientGUID", GUIDLabel.Text);
            cmd.Parameters.AddWithValue("@Diagnosis", Diagnosis.Text);
            cmd.Parameters.AddWithValue("@AcuteOnset", AcuteOnset);
            cmd.Parameters.AddWithValue("@OnsetTime", OnsetTime.Text);
            cmd.Parameters.AddWithValue("@DiseaseCourse", DiseaseCourse);

            cmd.Parameters.AddWithValue("@UntreatedTime", UntreatedTime);
            cmd.Parameters.AddWithValue("@LastTime", LastTime.Text);
            cmd.Parameters.AddWithValue("@Attacks", Attacks.Text);
            cmd.Parameters.AddWithValue("@Hospitalizations", Hospitalizations.Text);
            cmd.Parameters.AddWithValue("@Medication", Medication.Text);
            cmd.Parameters.AddWithValue("@BodyDisease", BodyDisease.Text);
            cmd.Parameters.AddWithValue("@CDT",DateTime.Now);

            conn.Open();
            i = cmd.ExecuteNonQuery();
        }
        return i;


    }












    protected void Button2_Click(object sender, EventArgs e)
    {
        int i = 0;
        if (String.IsNullOrEmpty(GUIDLabel.Text))
        {
            ResultLabel.Text = "操作失败，没有该患者的基本信息！请保存新病人资料后再进行填写！";
            ResultLabel.ForeColor = System.Drawing.Color.Red;

        }
        else
        {
            if (String.IsNullOrEmpty(DiseaseGUID.Text))
            {
                i = DoInsert2(1);
                PM_Edit();

            }
            else
            {
                i = DoUpdate2(1);
                PM_Edit();
            }


            if (i == 1)
            {
                ResultLabel.Text = "操作成功！";
                ResultLabel.ForeColor = System.Drawing.Color.Green;
                //Timer1.Enabled = true;            
            }
            else
            {
                ResultLabel.Text = "操作失败，请重试！";
                ResultLabel.ForeColor = System.Drawing.Color.Red;
            }

        }

    }




 
}