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
using System.Data;

public partial class NewPage_ReportCustomize : System.Web.UI.Page
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
                MyDataBind();
                DDLRead();
                Header();
                TextQUID.Text = Request.QueryString["TestGUID"].ToString();
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
            }
            rd.Close();
     


            cmd.CommandText = "select * from ReportHeaderList ";
             rd = cmd.ExecuteReader();
                RC1DDL.DataSource = rd;
                RC1DDL.DataTextField = "Header";
                RC1DDL.DataValueField = "ID";
                RC1DDL.DataBind();
                RC1DDL.Items.Insert(0, new ListItem("", "-1"));
                rd.Close();

                cmd.CommandText = "select * from ReportHeaderList ";
                rd = cmd.ExecuteReader();
                RC2DDL.DataSource = rd;
                RC2DDL.DataTextField = "Header";
                RC2DDL.DataValueField = "ID";
                RC2DDL.DataBind();
                RC2DDL.Items.Insert(0, new ListItem("", "-1"));
                rd.Close();

                cmd.CommandText = "select * from ReportHeaderList ";
                rd = cmd.ExecuteReader();  
                RC3DDL.DataSource = rd;
                RC3DDL.DataTextField = "Header";
                RC3DDL.DataValueField = "ID";
                RC3DDL.DataBind();
                RC3DDL.Items.Insert(0, new ListItem("", "-1"));
                rd.Close();

                cmd.CommandText = "select * from ReportHeaderList ";
                rd = cmd.ExecuteReader();
                RC4DDL.DataSource = rd;
                RC4DDL.DataTextField = "Header";
                RC4DDL.DataValueField = "ID";
                RC4DDL.DataBind();
                RC4DDL.Items.Insert(0, new ListItem("", "-1"));
                rd.Close();

                cmd.CommandText = "select * from ReportHeaderList ";
                rd = cmd.ExecuteReader();
                RC5DDL.DataSource = rd;
                RC5DDL.DataTextField = "Header";
                RC5DDL.DataValueField = "ID";
                RC5DDL.DataBind();
                RC5DDL.Items.Insert(0, new ListItem("", "-1"));
                rd.Close();

                cmd.CommandText = "select * from ReportHeaderList ";
                rd = cmd.ExecuteReader();
                RC6DDL.DataSource = rd;
                RC6DDL.DataTextField = "Header";
                RC6DDL.DataValueField = "ID";
                RC6DDL.DataBind();
                RC6DDL.Items.Insert(0, new ListItem("", "-1"));
                rd.Close();

        }
    }

    private void DDLRead() {
        
        string headerid="";
        string[] Header6 = new string[6];
        using (SqlConnection conn = new DB().GetConnection())
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select * from [ReportHeader] where QGUID=@QGUID  order by Serial asc";
            cmd.Parameters.AddWithValue("@QGUID", Request.QueryString["TestGUID"].ToString());
            conn.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                headerid += rd["HeaderID"].ToString() + ",";
            
            }
            rd.Close();
        }

        string[] Header = headerid.Split(',');
        for (int j = 0; j <6; j++)
        {
            for (int i = 0; i < Header.Length; i++)
            {
                Header6[i] = Header[i];
            }
        }

        string RF1Value = Header6[0];
        if (RC1DDL.Items.FindByValue(RF1Value) != null)
        {
            RC1DDL.ClearSelection();
            RC1DDL.Items.FindByValue(RF1Value).Selected = true;
        }

        string RF2Value = Header6[1];
        if (RC2DDL.Items.FindByValue(RF2Value) != null)
        {
            RC2DDL.ClearSelection();
            RC2DDL.Items.FindByValue(RF2Value).Selected = true;
        }

        string RF3Value = Header6[2];
        if (RC3DDL.Items.FindByValue(RF3Value) != null)
        {
            RC3DDL.ClearSelection();
            RC3DDL.Items.FindByValue(RF3Value).Selected = true;
        }

        string RF4Value = Header6[3];
        if (RC4DDL.Items.FindByValue(RF4Value) != null)
        {
            RC4DDL.ClearSelection();
            RC4DDL.Items.FindByValue(RF4Value).Selected = true;
        }

        string RF5Value = Header6[4];
        if (RC5DDL.Items.FindByValue(RF5Value) != null)
        {
            RC5DDL.ClearSelection();
            RC5DDL.Items.FindByValue(RF5Value).Selected = true;
        }

        string RF6Value = Header6[5];
        if (RC6DDL.Items.FindByValue(RF6Value) != null)
        {
            RC6DDL.ClearSelection();
            RC6DDL.Items.FindByValue(RF6Value).Selected = true;
        }
    }

    protected void Question_Click(object sender, EventArgs e)
    {
        Response.Redirect("Question_Add.aspx?TestGUID=" + Request.QueryString["TestGUID"].ToString());
        //  Response.Redirect(Server.HtmlEncode("Question_Add.aspx?TestGUID=" + Request.QueryString["TestGUID"].ToString()));

    }
    protected void Report_Click(object sender, EventArgs e)
    {
        Response.Redirect("ReportCustomize.aspx?TestGUID=" + Request.QueryString["TestGUID"].ToString());
    }
    protected void Next_Click(object sender, EventArgs e)
    {
        using (SqlConnection conn = new DB().GetConnection())
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "delete from [ReportHeader] where QGUID=@QGUID";
            cmd.Parameters.AddWithValue("@QGUID", Request.QueryString["TestGUID"].ToString());
            conn.Open();
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            conn.Close();
        }

        MyInit();
        Header();

        page2.Style["display"] = "block";
        page1.Style["display"] = "none";

    }
    private void MyInit(){
        string Header = RC1DDL.SelectedItem.Text + "," + RC2DDL.SelectedItem.Text + "," + RC3DDL.SelectedItem.Text + "," + RC4DDL.SelectedItem.Text + "," + RC5DDL.SelectedItem.Text + "," + RC6DDL.SelectedItem.Text+",";
        string HeaderID = RC1DDL.SelectedValue + "," + RC2DDL.SelectedValue + "," + RC3DDL.SelectedValue + "," + RC4DDL.SelectedValue + "," + RC5DDL.SelectedValue + "," + RC6DDL.SelectedValue + ",";
       
        string[] Headers = Header.Split(',');
        string[] HeaderIDs = HeaderID.Split(',');
        int k = Headers.Length;
        int a = 1;
        for (int i=0; i < k; i++) {
            if (Headers[i] != "") {
                using (SqlConnection conn = new DB().GetConnection())
                {
                    StringBuilder sb = new StringBuilder("insert into ReportHeader(QGUID,HeaderID,HeaderName,Serial)");
                    sb.Append(" values ( @QGUID,@HeaderID,@HeaderName,@Serial) ");
                    SqlCommand cmd = new SqlCommand(sb.ToString(), conn);
                    cmd.Parameters.AddWithValue("@QGUID", Request.QueryString["TestGUID"].ToString());
                    cmd.Parameters.AddWithValue("@HeaderID", HeaderIDs[i]);
                    cmd.Parameters.AddWithValue("@HeaderName", Headers[i]);
                    cmd.Parameters.AddWithValue("@Serial", a);
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    cmd.Dispose();
                    conn.Close();
                    a = a + 1;
                }
            }
        }
    }


    private void Header() {
        string sum0 = "";
        using (SqlConnection conn = new DB().GetConnection())
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select * from [ReportHeader] where QGUID=@QGUID ";
            cmd.Parameters.AddWithValue("@QGUID", Request.QueryString["TestGUID"].ToString());
            conn.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            Repeater1.DataSource = rd;
            Repeater1.DataBind();
            rd.Close();


            cmd.CommandText = "select  count(*) as Max from ReportHeader where  QGUID=@QGUID";
            rd = cmd.ExecuteReader();
            //int sum = Convert.ToInt16(rd["Max"].ToString());
            if (rd.Read()) { 
             sum0 = rd["Max"].ToString();
            }
            HeaderSum.Text = sum0;
     
        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        int a = 1;
        int k = Convert.ToInt16(HeaderSum.Text);
        string list = "";
        int ListMax = 0;
        using (SqlConnection conn = new DB().GetConnection())
        {

            string sql = "select COUNT(distinct(ListNumber)) as sum  from [ReportText] where QGUID='" + Request.QueryString["TestGUID"].ToString() + "'";
            SqlCommand cmd = new SqlCommand(sql, conn);
            conn.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                list = rd["sum"].ToString();
            }
            rd.Close();

            ListMax = Convert.ToInt16(list) + 1;

        }


        using (SqlConnection conn = new DB().GetConnection())
        {
            conn.Open();
            for (int j = 0; j < k; j++)
            {
                StringBuilder sb = new StringBuilder("insert into ReportText(QGUID,Content,Serial,ListNumber)");
                sb.Append(" values ( @QGUID,@Content,@Serial,@ListNumber) ");
                SqlCommand cmd = new SqlCommand(sb.ToString(), conn);
                cmd.Parameters.AddWithValue("@QGUID", Request.QueryString["TestGUID"].ToString());
                cmd.Parameters.AddWithValue("@Content", "TEXT");
                cmd.Parameters.AddWithValue("@Serial", a);
                cmd.Parameters.AddWithValue("@ListNumber", ListMax);

                 cmd.ExecuteNonQuery();
                a = a + 1;
            }
            conn.Close();
        }
    }
}