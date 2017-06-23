﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Medicine_Del : System.Web.UI.Page
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
                if (Request.QueryString["IDS"] != null)
                {
                    IDSLabel.Text = Request.QueryString["IDS"].ToString();
                    MyInit();
                }
            }
        }
    }
    private void MyInit()
    {
        using (SqlConnection conn = new DB().GetConnection())
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select * from Medicine where GUID in ('" + IDSLabel.Text + "') order by ID desc";
            conn.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            GridView1.DataSource = rd;
            GridView1.DataBind();
            rd.Close();
            conn.Close();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int i = 0;
        string sqlCon = "";
        using (SqlConnection conn = new DB().GetConnection())
        {
            SqlCommand cmd = conn.CreateCommand();
            {
                sqlCon = "Delete from Medicine where GUID in ('" + IDSLabel.Text + "')";
                cmd.CommandText = sqlCon;
                conn.Open();
                i = cmd.ExecuteNonQuery();
                cmd.Dispose();
                conn.Close();
            }

        }
        if (i > 0)
        {
            ResultLabel.Text = "成功删除" + i + "个药物！";
            ResultLabel.ForeColor = System.Drawing.Color.Green;
            Response.Redirect("Medicine_Man.aspx");
        }
        else
        {
            ResultLabel.Text = "操作失败，请重试！";
            ResultLabel.ForeColor = System.Drawing.Color.Red;
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Medicine_Man.aspx");
    }
}