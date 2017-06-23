using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;
using System.IO;
public partial class Medicine_Edit : System.Web.UI.Page
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
                string GUID = Request.QueryString["GUID"].ToString();
                using (SqlConnection conn = new DB().GetConnection())
                {
                    SqlCommand cmd = conn.CreateCommand();
                    cmd.CommandText = "select * from Medicine where GUID=@GUID";
                    cmd.Parameters.AddWithValue("@GUID", GUID);
                    conn.Open();
                    SqlDataReader rd = cmd.ExecuteReader();
                    if (rd.Read())
                    {
                        MedicineName.Text = rd["MedicineName"].ToString();
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
      s[1] = "药物名不能为空！";
      s[4] = "药物名已经存在，请输入另外一个药物名！";

      string MedicineNameStr = MedicineName.Text;
      if (!String.IsNullOrEmpty(MedicineNameStr))
      {
          if (AlreadyExisted(MedicineNameStr.Trim()))
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
      string GUID = Request.QueryString["GUID"].ToString();
      using (SqlConnection conn = new DB().GetConnection())
      {
          SqlCommand cmd = conn.CreateCommand();
          cmd.CommandText = "update Medicine set MedicineName = @MedicineName where GUID=@GUID";
          cmd.Parameters.AddWithValue("@GUID", GUID);
          cmd.Parameters.AddWithValue("@MedicineName", MedicineName.Text);
          conn.Open();
          i = cmd.ExecuteNonQuery();
          conn.Close();
      }
      if(i==1)
      {
          ErrorLabel.Text = "修改药物名成功！";
      }
      else
      {
          ErrorLabel.Text = "修改药物名失败！";
      }
  }

  private bool AlreadyExisted(string param)
  {
      bool a = false;

      using (SqlConnection conn = new DB().GetConnection())
      {
          string sql = "select GUID from [Medicine] where MedicineName = @MedicineName";
          SqlCommand cmd = new SqlCommand(sql, conn);
          cmd.Parameters.AddWithValue("@MedicineName", param);
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
