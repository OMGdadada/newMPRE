using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;
using System.IO;

public partial class CommonWord_Add : System.Web.UI.Page
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
         

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        ErrorLabel.Text = Check();
        if (ErrorLabel.Text == "")
        {
            MyDataBind();
        }
    }

    private string Check()
    {
        int i = 0;
        string[] s = new string[6];
        s[0] = "";
        s[1] = "常用语不能为空！";
        s[4] = "常用语已经存在，请重新输入！";

        string TagNameStr = TagName.Text;
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

    private void MyDataBind()
    {
        int i = 0;
        using (SqlConnection conn = new DB().GetConnection())
        {

            StringBuilder sb = new StringBuilder("insert into CommonWord(CommonWord )");
            sb.Append(" values (@CommonWord ) ");
            SqlCommand cmd = new SqlCommand(sb.ToString(), conn);
            cmd.Parameters.AddWithValue("@CommonWord", TagName.Text);
            conn.Open();
            i = cmd.ExecuteNonQuery();
            conn.Close();
            Util.ShowMessage("操作成功！", "CommonWord_Man.aspx");

        }

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



}