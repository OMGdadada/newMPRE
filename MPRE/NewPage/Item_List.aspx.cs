﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;

public partial class NewPage_Item_List : System.Web.UI.Page
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
           

        }
    }


    protected void Sure_Click(object sender, EventArgs e)
    {
        TagNum.Text = ita_hidf.Value.ToString();
        ItemData();
    }
    protected void SureNew_Click(object sender, EventArgs e)
    {
        int k = 0;
        using (SqlConnection conn = new DB().GetConnection())
        {
            SqlCommand cmd = conn.CreateCommand();
            conn.Open();
            cmd.CommandText = "select top 1* from [QuestionItemList] order by TagID desc";
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                k = Convert.ToInt16(rd["TagID"].ToString()) + 1;
            }
            rd.Close();
            TagNum.Text = k.ToString();
        }
        ItemData();
        TextBox1.Text = "新标签名";
    }
    private void ItemData()
    {
        using (SqlConnection conn = new DB().GetConnection())
        {
            string sql = "select * from [QuestionItemList] where TagID = @TagID order by Serial asc ";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@TagID", TagNum.Text);
            conn.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            Repeater2.DataSource = rd;
            Repeater2.DataBind();
            rd.Close();

            cmd.CommandText = "select DISTINCT [TagName] from [QuestionItemList] where TagID=@TagID";

            rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                TextBox1.Text = rd["TagName"].ToString().Trim();
            }
            rd.Close();

        }
    }
}