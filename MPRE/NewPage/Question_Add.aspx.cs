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
                    ItemDataBind();
                    ItemData();
                  
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


    private void ItemDataBind()
    {
        using (SqlConnection conn = new DB().GetConnection())
        {
            string sql = "select DISTINCT TagID,TagName from [QuestionItemList] ";
            SqlCommand cmd = new SqlCommand(sql, conn);
            conn.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            Repeater3.DataSource = rd;
            Repeater3.DataBind();
            rd.Close();

        }
    }


    protected void readbtn_Click(object sender, EventArgs e)
    {
        ItemData();
    }

   
    protected void Sure_Click(object sender, EventArgs e)
    {
        MyDataBind();
    }

    public string ReturninnerText(string str)
    {
        str = Regex.Replace(str, "<br />", "  ");
        string regexstr = @"<[^>]*>";
        str = Regex.Replace(str, regexstr, string.Empty, RegexOptions.IgnoreCase);
        return str;
    }

    protected void ButtonItemList_Command(object sender, CommandEventArgs e)
    {
        string Tagid = e.CommandArgument.ToString();
        using (SqlConnection conn = new DB().GetConnection())
        {
            string sql = "select * from [QuestionItemList] where TagID=@TagID ";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@TagID", Tagid);
            conn.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            ListBox1.DataSource = rd;
            ListBox1.DataTextField = "ItemText";
            ListBox1.DataBind();
            rd.Close();
        }
        TagID.Text = Tagid;

    }


    private void ItemDataBindList()
    {
        string ItemName = "";
        string ItemScore = "";
        string ItemOrder = "";

        string[] ItemName1 ;
        string[] ItemScore1;
        string[] ItemOrder1 ;

        string MaxSerial0="0";
        using (SqlConnection conn = new DB().GetConnection())
        {
            string sql1 = "select  count(*) as Max from QuestionItem where  QuestionGUID=@QuestionGUID ";
            SqlCommand cmd = new SqlCommand(sql1, conn);
            cmd.Parameters.AddWithValue("@QuestionGUID", ita_hidf.Value.ToString());
            conn.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                MaxSerial0 = rd["Max"].ToString();
            }
            rd.Close();
        }

        int MaxSerial = Convert.ToInt16(MaxSerial0) + 1;


        using (SqlConnection conn = new DB().GetConnection())
        {
            string sql = "select * from [QuestionItemList] where TagID=@TagID  order by Serial ";
            SqlCommand cmd = new SqlCommand(sql, conn);
            conn.Open();
            cmd.Parameters.AddWithValue("@TagID", TagID.Text);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                ItemName += rd["ItemText"].ToString() + ",";
                ItemScore += rd["Score"].ToString() + ",";
                ItemOrder += rd["Serial"].ToString() + ",";
          
            }
            rd.Close();

            ItemName1 = ItemName.Split(',');
            ItemScore1 = ItemScore.Split(',');
            ItemOrder1 = ItemOrder.Split(',');


       
            using (SqlConnection conn1 = new DB().GetConnection())
            {   conn1.Open();
                for (int j = 0; j < ItemName1.Length-1 ; j++)
                {
                    StringBuilder sb = new StringBuilder("insert into QuestionItem(QuestionGUID,ItemText,Serial,Score,HasTextBox,Jump)");
                    sb.Append(" values ( @QuestionGUID,@ItemText,@Serial,@Score,@HasTextBox,@Jump) ");
                    SqlCommand cmd2 = new SqlCommand(sb.ToString(), conn1);
                    //  cmd2.CommandText = "insert into QuestionItem (QuestionGUID,ItemText,Serial,Score,HasTextBox) values (@QuestionGUID,@ItemText,@Serial,@Score,@HasTextBox)";
                    cmd2.Parameters.AddWithValue("@QuestionGUID", ita_hidf.Value.ToString());
                    cmd2.Parameters.AddWithValue("@ItemText", ItemName1[j]);
                    cmd2.Parameters.AddWithValue("@Serial", MaxSerial+j);
                    cmd2.Parameters.AddWithValue("@Score",  ItemScore1[j]);
                    cmd2.Parameters.AddWithValue("@HasTextBox", "0");
                    cmd2.Parameters.AddWithValue("@Jump", 0);  
                    cmd2.ExecuteNonQuery();


                }

                conn1.Close();
            }
            conn.Close();
        }
    }

    protected void ItemListSure_Click(object sender, EventArgs e)
    {
        ItemDataBindList();
        ItemData();
        
    }
    protected void Question_Click(object sender, EventArgs e)
    {
        Response.Redirect("Question_Add.aspx?TestGUID=" + Request.QueryString["TestGUID"].ToString());

    }
    protected void Report_Click(object sender, EventArgs e)
    {
        Response.Redirect("ReportCustomize.aspx?TestGUID=" + Request.QueryString["TestGUID"].ToString());
    }
}