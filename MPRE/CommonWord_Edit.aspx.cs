using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;
using System.IO;

public partial class CommonWord_Edit : System.Web.UI.Page
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
                string ID = Request.QueryString["ID"].ToString();
                using (SqlConnection conn = new DB().GetConnection())
                {
                    SqlCommand cmd = conn.CreateCommand();
                    cmd.CommandText = "select * from CommonWord where ID=@ID";
                    cmd.Parameters.AddWithValue("@ID", ID);
                    conn.Open();
                    SqlDataReader rd = cmd.ExecuteReader();
                    if (rd.Read())
                    {
                        CommonWord.Text = rd["CommonWord"].ToString();
                    }
                    rd.Close();
                    conn.Close();
                }
            }


        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        ErrorLabel.Text = Check();
        if (ErrorLabel.Text == "")
        {
            Update();
        }
    }

    private string Check()
    {
        int i = 0;
        string[] s = new string[6];
        s[0] = "";
        s[1] = "常用语不能为空！";
        s[4] = "常用语已经存在，请输入另外一个科室名！";

        string DepartmentNameStr = CommonWord.Text;
        if (!String.IsNullOrEmpty(DepartmentNameStr))
        {
            if (AlreadyExisted(DepartmentNameStr.Trim()))
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

    private void Update()
    {
        int i;
        string ID = Request.QueryString["ID"].ToString();
        using (SqlConnection conn = new DB().GetConnection())
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "update CommonWord set CommonWord = @CommonWord where ID=@ID";
            cmd.Parameters.AddWithValue("@ID", ID);
            cmd.Parameters.AddWithValue("@CommonWord", CommonWord.Text);
            conn.Open();
            i = cmd.ExecuteNonQuery();
            conn.Close();
        }
        if (i == 1)
        {
            ErrorLabel.Text = "修改常用语成功！";
        }
        else
        {
            ErrorLabel.Text = "修改常用语失败！";
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
