using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Services;
using System.Text;

/// <summary>
/// Gtest 的摘要说明
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// 若要允许使用 ASP.NET AJAX 从脚本中调用此 Web 服务，请取消注释以下行。 

[System.Web.Script.Services.ScriptService]

public class Gtest : System.Web.Services.WebService {

    public Gtest()
    {

        //如果使用设计的组件，请取消注释以下行 
        //InitializeComponent(); 
    }

    [WebMethod]
    public string HelloWorld()
    {
        return "HelloWorld";
    }
    [WebMethod]
    public string GetNums(int v, String TGUID)
    {
        DataSet ds = new DataSet();
        using (SqlConnection conn = new DB().GetConnection())
        {
            SqlCommand cmd = conn.CreateCommand();
            String Q_GUID = GetQUID(TGUID, v);
            cmd.CommandText = "SELECT * FROM [IView] WHERE QuestionGUID ='" + Q_GUID + "' ORDER BY [Serial]";
            conn.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmd.CommandText, conn);
            da.Fill(ds);
            conn.Close();
       }
        return Dtb2Json(ds.Tables[0]); 

    }
    private string Dtb2Json(DataTable dtb)
    {
        JavaScriptSerializer jss = new JavaScriptSerializer();
        System.Collections.ArrayList dic = new System.Collections.ArrayList();
        foreach (DataRow dr in dtb.Rows)
        {
            System.Collections.Generic.Dictionary<string, object> drow = new System.Collections.Generic.Dictionary<string, object>();
            foreach (DataColumn dc in dtb.Columns)
            {
                drow.Add(dc.ColumnName, dr[dc.ColumnName]);
            }
            dic.Add(drow);
        }
        return jss.Serialize(dic);
    }
    private string GetQUID(string tGUID, int v)
    {
        string QUID = "";
        string TGUID = GetTGUID(tGUID);
        using (SqlConnection conn = new DB().GetConnection())
        {

            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "SELECT TOP (1) * FROM (SELECT Top (@QSerial) * FROM [Question] WHERE TestGUID =@TGUID ORDER BY Serial) [Question] ORDER BY Serial desc";
            cmd.Parameters.AddWithValue("@TGUID", TGUID);
            cmd.Parameters.AddWithValue("@QSerial", v);
            conn.Open();//打开数据库连接 
            SqlDataReader sda = cmd.ExecuteReader();
            if (sda.Read())
            {
                QUID = sda["GUID"].ToString();
            }
            conn.Close();
        }
        return QUID;
    }

    private string GetTGUID(string tGUID)
    {
        string TGUID = "";

        using (SqlConnection conn = new DB().GetConnection())
        {

            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "SELECT TOP (1) * FROM [TestCart] Where GUID=@tGUID and IsPaid ='True' and IsFinished ='False' ORDER BY TestGUID";
            cmd.Parameters.AddWithValue("@TGUID", tGUID);
            conn.Open();//打开数据库连接 
            SqlDataReader sda = cmd.ExecuteReader();
            if (sda.Read())
            {
                TGUID = sda["TestGUID"].ToString();
            }
            conn.Close();
        }

        return TGUID;
    }

    [WebMethod]
    public string GetTestlist()
    {
        DataSet ds = new DataSet();
        using (SqlConnection conn = new DB().GetConnection())
        {

            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "SELECT * FROM [Test] WHERE Dimension0name = 2 ORDER BY Serial";

            conn.Open();//打开数据库连接 
            SqlDataAdapter da = new SqlDataAdapter(cmd.CommandText, conn);
            da.Fill(ds);
            conn.Close();
        }
        return Dtb2Json(ds.Tables[0]);

    }
    [WebMethod]
    public string GetPatientlist()
    {
        DataSet ds = new DataSet();
        using (SqlConnection conn = new DB().GetConnection())
        {

            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "SELECT * FROM [Patient]";

            conn.Open();//打开数据库连接 
            SqlDataAdapter da = new SqlDataAdapter(cmd.CommandText, conn);
            da.Fill(ds);
            conn.Close();
        }
        return Dtb2Json(ds.Tables[0]);

    }
    public string Getlist(string how)
    {
        DataSet ds = new DataSet();
        using (SqlConnection conn = new DB().GetConnection())
        {

            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "SELECT * FROM [Patient]";

            conn.Open();//打开数据库连接 
            SqlDataAdapter da = new SqlDataAdapter(cmd.CommandText, conn);
            da.Fill(ds);
            conn.Close();
        }
        return Dtb2Json(ds.Tables[0]);

    }
    [WebMethod]
    public string Insert(string Pguid, string Tdata)
    {
        string[] Tdatalist = Tdata.Split('&');
        var Url = "";
        //System.Guid guid = System.Guid.NewGuid();
        string strGUID = System.Guid.NewGuid().ToString();
        DateTime current = DateTime.Now;
        string time = current.ToString();
        for (int i = 0; i < Tdatalist.Length; i++)
        {
            using (SqlConnection conn = new DB().GetConnection())
            {

                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = "INSERT INTO TestCart (GUID,PatientGUID,TestGUID,CDT,IsPaid,IsFinished) VALUES (@GUID,@PatientGUID,@TestGUID,@Time,1,0)";
                cmd.Parameters.AddWithValue("@GUID", strGUID);
                cmd.Parameters.AddWithValue("@PatientGUID", Pguid);
                cmd.Parameters.AddWithValue("@TestGUID", Tdatalist[i]);
                cmd.Parameters.AddWithValue("@Time", time);
                conn.Open();//打开数据库连接 
                cmd.ExecuteNonQuery();
                conn.Close();
            }

        }
        Url = "TestList.aspx?TGUID=" + strGUID;

        return Url;

    }
        [WebMethod]
    public string Delete(string ID)
    {
        int i= 0;
        using (SqlConnection conn = new DB().GetConnection())
        {
            StringBuilder sb = new StringBuilder("Delete from TestCart where ID="+ ID );
            SqlCommand cmd = new SqlCommand(sb.ToString(), conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            conn.Close();
        }
        if (i == 1) return "1";
        else return "";
    }
    [WebMethod]
    public string GetPatient(string Tguid)
    {
        string PGUID = GetPGUID(Tguid);
        DataSet ds = new DataSet();
        using (SqlConnection conn = new DB().GetConnection())
        {

            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "SELECT * FROM [Patient] WHERE GUID= '" + PGUID + "'";
            //cmd.Parameters.AddWithValue("@GUID", PGUID);
            conn.Open();//打开数据库连接 
            SqlDataAdapter da = new SqlDataAdapter(cmd.CommandText, conn);
            da.Fill(ds);
            conn.Close();
        }
        return Dtb2Json(ds.Tables[0]);

    }

    [WebMethod]
    public string GetTestList(string Tguid)
    {
        DataSet ds = new DataSet();
        using (SqlConnection conn = new DB().GetConnection())
        {

            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "SELECT * FROM [TPCView] WHERE GUID= '" + Tguid + "'";
            //cmd.Parameters.AddWithValue("@GUID", PGUID);
            conn.Open();//打开数据库连接 
            SqlDataAdapter da = new SqlDataAdapter(cmd.CommandText, conn);
            da.Fill(ds);
            conn.Close();
        }
        return Dtb2Json(ds.Tables[0]);

    }

    private string GetPGUID(string tGUID)
    {
        string PGUID = "";

        using (SqlConnection conn = new DB().GetConnection())
        {

            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "SELECT TOP (1) * FROM [TestCart] Where GUID=@tGUID and IsPaid ='True' and IsFinished ='False' ORDER BY TestGUID";
            cmd.Parameters.AddWithValue("@TGUID", tGUID);
            conn.Open();//打开数据库连接 
            SqlDataReader sda = cmd.ExecuteReader();
            if (sda.Read())
            {
                PGUID = sda["PatientGUID"].ToString();
            }
            conn.Close();
        }

        return PGUID;
    }
}
