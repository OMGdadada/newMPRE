using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;
using System.IO;

public partial class NewPage_Question_Add : System.Web.UI.Page
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
            else
            {
                if (Request.QueryString["TestGUID"].Length>0) 
                {
                    MyDataBind();
                  
                }
            }
        }

    }

    private void MyDataBind() 
    {
        using (SqlConnection conn = new DB().GetConnection())
        {
            string sql = "select * from [Test] where GUID = @GUID";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@GUID", Request.QueryString["TestGUID"].ToString());
            conn.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                TextName.Text = rd["TestName"].ToString();
                TextGUID.Text=rd["GUID"].ToString();
            }
            rd.Close();

            cmd.CommandText = "select * from QView where TestGUID=@TestGUID order by Serial asc";
            cmd.Parameters.AddWithValue("@TestGUID", Request.QueryString["TestGUID"].ToString());
            rd = cmd.ExecuteReader();
            Repeater1.DataSource = rd;
            Repeater1.DataBind();
            rd.Close();
       
        }

    }
    private void ItemData()
    {
        using (SqlConnection conn = new DB().GetConnection())
        {
            string sql = "select * from [QuestionItem] where QuestionGUID = @QGUID order by Serial asc ";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@QGUID", ita_hidf.Value.ToString());
            conn.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            Repeater2.DataSource = rd;
            Repeater2.DataBind();
            rd.Close();

        }
    }
  
    protected void readbtn_Click(object sender, EventArgs e)
    {
        Repeater2.Visible = true;
        ItemData();
      
    }

    protected void Add_Click(object sender, EventArgs e)
    {

        //using (SqlConnection conn = new DB().GetConnection())
        //{
        //    if (ItemID2.Text == "0")
        //    {
        //        StringBuilder sb = new StringBuilder("insert into QuestionItem(QuestionGUID,ItemText,Serial,Score,HasTextBox)");
        //        sb.Append(" values ( @QuestionGUID,@ItemText,@Serial,@Score,@HasTextBox) ");
        //        SqlCommand cmd = new SqlCommand(sb.ToString(), conn);
        //        conn.Open();
        //        cmd.Parameters.AddWithValue("@QuestionGUID", ita_hidf.Value.ToString());
        //        cmd.Parameters.AddWithValue("@ItemText", ItemText.Text);
        //        cmd.Parameters.AddWithValue("@Score", ItemtScore.Text);
        //        cmd.Parameters.AddWithValue("@Serial", ItemtSerial.Text);
        //        string HasTextBox0 = "";
        //        if (true1.Checked)
        //        {
        //            HasTextBox0 = "1";
        //        }
        //        else if (false1.Checked)
        //        {
        //            HasTextBox0 = "0";
        //        }
        //        cmd.Parameters.AddWithValue("@HasTextBox", HasTextBox0);
        //        cmd.ExecuteNonQuery();

        //    }
            

     
        //}


        Repeater2.Visible = true;
        ItemData();

    }
    protected void Sure_Click(object sender, EventArgs e)
    {
        //using (SqlConnection conn = new DB().GetConnection())
        //{
        //    string sql = "select * from [Question] where GUID = @QGUID ";
        //    SqlCommand cmd = new SqlCommand(sql, conn);
        //    cmd.Parameters.AddWithValue("@QGUID", ita_hidf.Value.ToString());
        //    conn.Open();
        //    SqlDataReader rd = cmd.ExecuteReader();
        //    if (rd.Read())
        //    {
               
        //        UpData();
        //        Label2.Text = "updata";
        //    }
        //    else {
               
        //       InsetData();
        //       Label2.Text = "InsetData";
        //    }
        //    rd.Close();

        //}
        MyDataBind();
        Repeater2.Visible = false;
    }
    private void UpData()
    {
        using (SqlConnection conn = new DB().GetConnection())
        {
            StringBuilder sb = new StringBuilder("Update Question set QuestionText=@QuestionText,Serial=@Serial,Weight=@Weight,QuestionType=@QuestionType where GUID=@QGUID");
            SqlCommand cmd = new SqlCommand(sb.ToString(), conn);
            cmd.Parameters.AddWithValue("@QGUID", ita_hidf.Value.ToString().Trim());
            cmd.Parameters.AddWithValue("@QuestionText", Centent.InnerText);
            cmd.Parameters.AddWithValue("@Serial", Serial.Text);
            cmd.Parameters.AddWithValue("@Weight", Weight.Text);
            cmd.Parameters.AddWithValue("@QuestionType", Convert.ToInt16(QTypeValue.Text));
            conn.Open();
             cmd.ExecuteNonQuery();
            cmd.Dispose();
            conn.Close();
        }
    }
    private void InsetData()
    {

        using (SqlConnection conn = new DB().GetConnection())
        {
            StringBuilder sb = new StringBuilder("INSERT INTO Question (GUID,TestGUID,QuestionText,Serial,Weight,QuestionType) VALUES (@GUID,@TestGUID,@QuestionText,@Serial,@Weight,@QuestionType)");
            SqlCommand cmd = new SqlCommand(sb.ToString(), conn);
            cmd.Parameters.AddWithValue("@GUID", ita_hidf.Value.ToString().Trim());
            cmd.Parameters.AddWithValue("@TestGUID", Request.QueryString["TestGUID"].ToString());
            cmd.Parameters.AddWithValue("@QuestionText", Centent.InnerText);
            cmd.Parameters.AddWithValue("@Serial", Serial.Text);
            cmd.Parameters.AddWithValue("@Weight", Weight.Text);
            cmd.Parameters.AddWithValue("@QuestionType", Convert.ToInt16( QTypeValue.Text));
            conn.Open();
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            conn.Close();
        }
    }
}