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
                if (Request.QueryString["GUID"] != null)
                {

                    ReadDataBind();

                }
                else {
                    GUID.Text = System.Guid.NewGuid().ToString(); 
                }
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
            cmd.CommandText = "select * from Test where GUID=@GUID";
            conn.Open();
            cmd.Parameters.AddWithValue("@GUID", Request.QueryString["GUID"].ToString());
            SqlDataReader rd = cmd.ExecuteReader();
            
            if (rd.Read())
            {
                TestName.Text=rd["TestName"].ToString();
                Orders.Text = rd["Orders"].ToString();
                Price.Text = rd["Price"].ToString();
                Description.Text = rd["Description"].ToString();
             
                string IsValid1 = rd["Valid"].ToString();
                if (IsValid1 == "False")
                {
                    IsValid.Items.FindByValue("0").Selected = true;
                }
                else
                { 
                    IsValid.Items.FindByValue("1").Selected = true; 
                }

                string IsView1 = rd["IsView"].ToString();
                if (IsView1 == "False")
                {
                    IsView.Items.FindByValue("0").Selected = true;
                }
                else
                {
                    IsView.Items.FindByValue("1").Selected = true;
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

            StringBuilder sb = new StringBuilder("insert into Test(TestName,GUID,Orders,Price,Description,IsPageType,Valid,IsView,Dimension1name,Dimension0name )");
            sb.Append(" values (@TestName,@GUID,@Orders,@Price,@Description,@IsPageType,@Valid,@IsView,@Dimension1name,Dimension0name ) ");
            SqlCommand cmd = new SqlCommand(sb.ToString(), conn);
            cmd.Parameters.AddWithValue("@TestName", TestName.Text);
            cmd.Parameters.AddWithValue("@GUID", GUID.Text);
            cmd.Parameters.AddWithValue("@Orders", Orders.Text);
            cmd.Parameters.AddWithValue("@Price", Price.Text);
            cmd.Parameters.AddWithValue("@Description", Description.Text);
            cmd.Parameters.AddWithValue("@IsPageType", 1);
            cmd.Parameters.AddWithValue("@Valid", IsValid.SelectedValue);
            cmd.Parameters.AddWithValue("@IsView", IsView.SelectedValue);
            cmd.Parameters.AddWithValue("@Dimension1name", "心理测评量表");
              cmd.Parameters.AddWithValue("@Dimension0name", 2);
            conn.Open();
            i = cmd.ExecuteNonQuery();
            conn.Close();
           

        }

    }
    private void UpDataBind()
    {
        int i = 0;
        using (SqlConnection conn = new DB().GetConnection())
        {
            StringBuilder sb = new StringBuilder("Update Test set TestName=@TestName,Orders=@Orders,Price=@Price,Description=@Description,IsPageType=@IsPageType,Valid=@Valid,IsView=@IsView  where GUID=@GUID ");
            SqlCommand cmd = new SqlCommand(sb.ToString(), conn);
            cmd.Parameters.AddWithValue("@GUID", Request.QueryString["GUID"].ToString());
            cmd.Parameters.AddWithValue("@TestName", TestName.Text);
            cmd.Parameters.AddWithValue("@Orders", Orders.Text);
            cmd.Parameters.AddWithValue("@Price", Price.Text);
            cmd.Parameters.AddWithValue("@Description", Description.Text);
            cmd.Parameters.AddWithValue("@IsPageType",1);
            cmd.Parameters.AddWithValue("@Valid", IsValid.SelectedValue);
            cmd.Parameters.AddWithValue("@IsView", IsView.SelectedValue);
            conn.Open();
            i = cmd.ExecuteNonQuery();
        }
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        ErrorLabel.Text = Check();
        if (ErrorLabel.Text == "")
        {
            if (Request.QueryString["GUID"] != null)
            {

                UpDataBind();
                Response.Redirect(Server.HtmlEncode("Question_Add.aspx?TestGUID=" + Request.QueryString["GUID"]));
            }
            else
            {
                MyDataBind();
                Response.Redirect(Server.HtmlEncode("Question_Add.aspx?TestGUID=" + GUID.Text));
            }
        }
    }

    protected void Back_Click(object sender, EventArgs e)
    {
        Response.Redirect(Server.HtmlEncode("Gauge_Library.aspx"));

    }
    protected void Sure_Click(object sender, EventArgs e)
    {
        ErrorLabel.Text = Check();
        if (ErrorLabel.Text == "")
        {
            if (Request.QueryString["GUID"] != null)
            {

                UpDataBind();
                Response.Redirect(Server.HtmlEncode("Gauge_Add.aspx?GUID=" + Request.QueryString["GUID"]));
            }
            else
            {
                MyDataBind();
                Response.Redirect(Server.HtmlEncode("Gauge_Add.aspx?GUID=" + GUID.Text));
            }
        }

    }
}