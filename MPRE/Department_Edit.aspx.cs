﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;
using System.IO;
public partial class Department_Edit : System.Web.UI.Page
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
                    cmd.CommandText = "select * from Department where GUID=@GUID";
                    cmd.Parameters.AddWithValue("@GUID", GUID);
                    conn.Open();
                    SqlDataReader rd = cmd.ExecuteReader();
                    if (rd.Read())
                    {
                        Department.Text = rd["Department"].ToString();
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
      s[1] = "科室名不能为空！";
      s[4] = "科室名已经存在，请输入另外一个科室名！";

      string DepartmentNameStr = Department.Text;
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
      string GUID = Request.QueryString["GUID"].ToString();
      using (SqlConnection conn = new DB().GetConnection())
      {
          SqlCommand cmd = conn.CreateCommand();
          cmd.CommandText = "update Department set Department = @DepartmentName where GUID=@GUID";
          cmd.Parameters.AddWithValue("@GUID", GUID);
          cmd.Parameters.AddWithValue("@DepartmentName", Department.Text);
          conn.Open();
          i = cmd.ExecuteNonQuery();
          conn.Close();
      }
      if(i==1)
      {
          ErrorLabel.Text = "修改科室名成功！";
      }
      else
      {
          ErrorLabel.Text = "修改科室名失败！";
      }
  }

  private bool AlreadyExisted(string param)
  {
      bool a = false;

      using (SqlConnection conn = new DB().GetConnection())
      {
          string sql = "select GUID from [Department] where Department = @DepartmentName";
          SqlCommand cmd = new SqlCommand(sql, conn);
          cmd.Parameters.AddWithValue("@DepartmentName", param);
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
