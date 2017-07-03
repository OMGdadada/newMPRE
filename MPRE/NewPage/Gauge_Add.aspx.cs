using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;
using System.IO;
public partial class NewPage_Gauge_Add : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            if (Session["DoctorGUID"] == null)
            {
                Util.ShowMessage("用户登录超时，请重新登录！", "../Login.aspx");
                Response.End();
            }
            else {
                if (Request.QueryString["ID"] != null) {

                   ReadDataBind ();

                }
            }


        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ErrorLabel.Text = Check();
        if (ErrorLabel.Text == "")
        {
            if (Request.QueryString["ID"] != null)
            {
               
                UpDataBind();
            }
            else { 
            MyDataBind();
            }
        }
    }

    private string Check()
    {
        int i = 0;
        string[] s = new string[6];
        s[0] = "";
        s[1] = "量表名不能为空！";
        s[4] = "量表名已经存在，请重新输入！";

        string TagNameStr = TestName.Text;
        if (!String.IsNullOrEmpty(TagNameStr))
        {
            if (AlreadyExisted(TagNameStr.Trim()))
            {
                i = 4;//第五种情况，用户名已经存在
            }
            else
            {
                DataBind();

            }

        }
        else
        {
            i = 1;//第二种情况，用户名密码为空
        }
        return s[i];
    }


    private bool AlreadyExisted(string param)
    {
        bool a = false;

        using (SqlConnection conn = new DB().GetConnection())
        {
            string sql = "select ID from [CommonWord] where CommonWord = @CommonWord";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@CommonWord", param);
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

    private void ReadDataBind()
    {
        using (SqlConnection conn = new DB().GetConnection())
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select * from Test where ID=@ID";
            conn.Open();
            cmd.Parameters.AddWithValue("@ID", Request.QueryString["ID"].ToString());
            SqlDataReader rd = cmd.ExecuteReader();
            
            if (rd.Read())
            {
                TestName.Text=rd["TestName"].ToString();
                Orders.Text = rd["Orders"].ToString();
                Price.Text = rd["Price"].ToString();
                Description.Text = rd["Description"].ToString();
                Serial.Text = rd["Serial"].ToString();
               // string  Dimension1name =rd["Dimension1name"].ToString();
             //   DDLDimension1name.Items.FindByText(rd["Dimension1name"].ToString().Trim()).Selected = true;

                string Dimension1name = rd["Dimension1name"].ToString().Trim();

                if (DDLDimension1name.Items.FindByText(Dimension1name) != null)
                {
                    DDLDimension1name.ClearSelection();
                    DDLDimension1name.Items.FindByText(Dimension1name).Selected = true;
                }

                string PageType = rd["IsPageType"].ToString();
                if (PageType == "False")
                {
                    IsPageType.Items.FindByValue("0").Selected = true;
                }
                else
                { 
                    IsPageType.Items.FindByValue("1").Selected = true; 
                }

                string IsValid1 = rd["Valid"].ToString();
                if (IsValid1 == "False")
                {
                    IsValid.Items.FindByValue("0").Selected = true;
                }
                else
                { 
                    IsValid.Items.FindByValue("1").Selected = true; 
                }
           

            }
            rd.Close();
            conn.Close();
        }
    }
    private void MyDataBind()
    {
        int i = 0;
        using (SqlConnection conn = new DB().GetConnection())
        {

            StringBuilder sb = new StringBuilder("insert into Test(TestName,Orders,Price,Description,IsPageType,Valid,Serial，Dimension1name )");
            sb.Append(" values (@TestName,@Orders,@Price,@Description,@IsPageType,@Valid,@Serial，@Dimension1name ) ");
            SqlCommand cmd = new SqlCommand(sb.ToString(), conn);
            cmd.Parameters.AddWithValue("@TestName", TestName.Text);
            cmd.Parameters.AddWithValue("@Orders", Orders.Text);
            cmd.Parameters.AddWithValue("@Price", Price.Text);
            cmd.Parameters.AddWithValue("@Description", Description.Text);
            cmd.Parameters.AddWithValue("@IsPageType", IsPageType.SelectedValue);
            cmd.Parameters.AddWithValue("@Valid", IsValid.SelectedValue);
            cmd.Parameters.AddWithValue("@Dimension1name", DDLDimension1name.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Serial", Serial.Text);
            conn.Open();
            i = cmd.ExecuteNonQuery();
            conn.Close();
            Util.ShowMessage("操作成功！", "Gauge_Library.aspx");

        }

    }
    private void UpDataBind()
    {
        int i = 0;
        using (SqlConnection conn = new DB().GetConnection())
        {
            StringBuilder sb = new StringBuilder("Update Test set TestName=@TestName,Orders=@Orders,Price=@Price,Description=@Description,IsPageType=@IsPageType,Valid=@Valid,Serial=@Serial,Dimension1name=@Dimension1name where ID=@ID ");
            SqlCommand cmd = new SqlCommand(sb.ToString(), conn);
            cmd.Parameters.AddWithValue("@ID", Request.QueryString["ID"].ToString());
            cmd.Parameters.AddWithValue("@TestName", TestName.Text);
            cmd.Parameters.AddWithValue("@Orders", Orders.Text);
            cmd.Parameters.AddWithValue("@Price", Price.Text);
            cmd.Parameters.AddWithValue("@Description", Description.Text);
            cmd.Parameters.AddWithValue("@IsPageType", IsPageType.SelectedValue);
            cmd.Parameters.AddWithValue("@Valid", IsValid.SelectedValue);
            cmd.Parameters.AddWithValue("@Dimension1name", DDLDimension1name.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Serial", Serial.Text);
            conn.Open();
            i = cmd.ExecuteNonQuery();
        }
        
    }
}