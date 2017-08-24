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
public class Gtest : System.Web.Services.WebService
{
    public static int a;
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
            SqlConnection con = new SqlConnection();
            SqlCommand cmd = con.CreateCommand();
            String Q_GUID = GetQUID(TGUID, v);
            cmd.CommandText = "SELECT * FROM [IView] WHERE QuestionGUID ='" + Q_GUID + "' ORDER BY [Serial]";

            SqlDataAdapter da = new SqlDataAdapter(cmd.CommandText, conn);
            ds = new DataSet();
            da.Fill(ds);
        }
        return Dtb2Json(ds.Tables[0]);

    }
    [WebMethod]
    public string GetTestName(String GUID, String TGUID)
    {
        DataSet ds = new DataSet();
        using (SqlConnection conn = new DB().GetConnection())
        {
            
            SqlConnection con = new SqlConnection();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "SELECT count(*) as row FROM [TestCart] WHERE GUID ='" + TGUID + "' And TestGUID='"+ GUID + "'and IsPaid='true'";
            SqlCommand daa = new SqlCommand(cmd.CommandText, conn);
            conn.Open();
            SqlDataReader rd = daa.ExecuteReader();
            if (rd.Read())
            {
                 a = Convert.ToInt16(rd["row"].ToString());
            }
            conn.Close();
            if (a == 0)
            {
                return "0";
            }
            else
            {
                cmd.CommandText = "SELECT * FROM [Test] WHERE GUID ='" + GUID + "'";
                conn.Open();
                SqlDataAdapter da = new SqlDataAdapter(cmd.CommandText, conn);
                da.Fill(ds);
                conn.Close();
            }
        }
        //String TGUID = "527021f6-f278-42ef-8d18-fc7e3e03e4fd";
        
        
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
    private string GetQUID(string TGUID, int v)
    {
        string QUID = "";

        //string TGUID = GetTGUID(tGUID);
        using (SqlConnection conn = new DB().GetConnection())
        {

            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "SELECT * FROM (SELECT Top (@QSerial) * FROM [Question] WHERE TestGUID =@TGUID ORDER BY Serial) [Question] ORDER BY Serial desc";
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
            cmd.CommandText = "SELECT * FROM [Test] WHERE Dimension0name = 2 and Valid=1 ORDER BY Serial";
            
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
    public string Insert(string Pguid, string Tdata, string DoctorGUID)
    {
        string[] Tdatalist = Tdata.Split('&');
        var Url = "";
        //System.Guid guid = System.Guid.NewGuid();
        string strGUID = System.Guid.NewGuid().ToString();
        DateTime current = DateTime.Now;
        string time = current.ToString();
        Random ran = new Random();
        int Code = ran.Next(100000, 999999);
        for (int i=0; i<Tdatalist.Length;i++ )
        {
            using (SqlConnection conn = new DB().GetConnection())
            {
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = "INSERT INTO TestCart (GUID,PatientGUID,TestGUID,CDT,IsPaid,IsFinished) VALUES (@GUID,@PatientGUID,@TestGUID,@Time,1,0)";
                cmd.Parameters.AddWithValue("@GUID", strGUID);
                cmd.Parameters.AddWithValue("@PatientGUID", Pguid);
                cmd.Parameters.AddWithValue("@TestGUID", Tdatalist[i]);
                cmd.Parameters.AddWithValue("@Time",time);          
                conn.Open();//打开数据库连接 
                cmd.ExecuteNonQuery();
                conn.Close();
            }

        }
        using (SqlConnection conn = new DB().GetConnection())
        {
            SqlCommand cmd = conn.CreateCommand();
            conn.Open();
            cmd.CommandText = "INSERT INTO Code_Cart (CartGUID,Code,CreateDate,DoctorGUID) VALUES (@CartGUID,@Code,@Time1,@DoctorGUID)";
            cmd.Parameters.AddWithValue("@CartGUID", strGUID);
            cmd.Parameters.AddWithValue("@Code", Code);
            cmd.Parameters.AddWithValue("@Time1", time);        
            cmd.Parameters.AddWithValue("@DoctorGUID", DoctorGUID);
            cmd.ExecuteNonQuery();
            conn.Close();
        }


        Url = "TestCart.aspx?TGUID=" + strGUID;

        return Url;

    }
    [WebMethod]
    public string Delete(string ID)
    {
        int i = 0;
        using (SqlConnection conn = new DB().GetConnection())
        {
            StringBuilder sb = new StringBuilder("Delete from TestCart where ID=" + ID);
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
    public string InsertTest(string GUID, string TGUID)
    {

        var Text = "";
        //System.Guid guid = System.Guid.NewGuid();
        string strGUID = System.Guid.NewGuid().ToString();
        DateTime current = DateTime.Now;
        string time = current.ToString();
        using (SqlConnection conn = new DB().GetConnection())
        {
            
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "SELECT count(*) as row FROM [AnswerItem] WHERE CartGUID ='" + TGUID + "' And TestGUID='" + GUID + "'";
            SqlCommand daa = new SqlCommand(cmd.CommandText, conn);
            conn.Open();
            SqlDataReader rd = daa.ExecuteReader();
            if (rd.Read())
            {
                a = Convert.ToInt16(rd["row"].ToString());
            }
            conn.Close();
            if (a == 0)
            {
                cmd.CommandText = "SELECT count(*) as row FROM [Question] WHERE TestGUID='" + GUID + "'";
                daa = new SqlCommand(cmd.CommandText, conn);
                conn.Open();
                rd = daa.ExecuteReader();
                if (rd.Read())
                {
                    a = Convert.ToInt16(rd["row"].ToString());
                }
                conn.Close();
                var Pguid = GetPGUID(TGUID);
                for (int i = 0; i < a ; i++)
                {
                    var QUID =GetQUID(GUID,i+1);
                    cmd.CommandText = "INSERT INTO AnswerItem (GUID,CartGUID,PatientGUID,TestGUID,QuestionGUID,IsFinished) VALUES ('"+ strGUID + "','" + TGUID + "','" + Pguid + "','" + GUID + "','" + QUID + "',0)";
                    
                    conn.Open();//打开数据库连接 
                    cmd.ExecuteNonQuery();
                    conn.Close();
                }
                Text = "数据插入";
            }else
            {
                Text = "已有数据";
            }
        }

        
        

        return Text;

    }


    [WebMethod]
    public string InsertItemSerial(int v, string TGUID,string GUID,int ItemSerial,int Score,string InputText)
    {

        var Text = "成功修改";
        DateTime current = DateTime.Now;
        string time = current.ToString();
        using (SqlConnection conn = new DB().GetConnection())
        {
            var QUID = GetQUID(GUID, v);
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "UPDATE [AnswerItem] SET Score = '"+ Score + "', ItemSerial = '"+ ItemSerial + "',CDT='" + time + "',InputText = '" + InputText + "',IsFinished = 'True' WHERE CartGUID='" + TGUID + "' AND QuestionGUID='"+ QUID + "'";
            SqlCommand daa = new SqlCommand(cmd.CommandText, conn);
            conn.Open();
            cmd.ExecuteNonQuery();//执行Sql
            conn.Close();//关闭
        }

        
        using (SqlConnection conn = new DB().GetConnection())
        {

            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "SELECT count(*) as row FROM [AnswerItem] WHERE TestGUID='" + GUID + "' AND CartGUID='" + TGUID + "' AND IsFinished = 'False'";
            conn.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                a = Convert.ToInt16(rd["row"].ToString());
            }
            conn.Close();
        }

        if (a==0)
        {
            using (SqlConnection conn = new DB().GetConnection())
            {
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = "UPDATE [TestCart] SET IsFinished = 'True' WHERE GUID='" + TGUID + "' AND TestGUID='" + GUID + "'";
                SqlCommand daa = new SqlCommand(cmd.CommandText, conn);
                conn.Open();
                cmd.ExecuteNonQuery();//执行Sql
                conn.Close();//关闭
            }
            Text = "所有题完成成功";
        }


        return Text;

    }


    [WebMethod]
    public string GetPatient(string Tguid)
    {
        string PGUID = GetPGUID(Tguid);
        DataSet ds = new DataSet();
        using (SqlConnection conn = new DB().GetConnection())
        {
            
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "SELECT * FROM [Patient] WHERE GUID= '"+ PGUID+"'";
            //cmd.Parameters.AddWithValue("@GUID", PGUID);
            conn.Open();//打开数据库连接 
            SqlDataAdapter da = new SqlDataAdapter(cmd.CommandText, conn);
            da.Fill(ds);
            conn.Close();
        }
        return Dtb2Json(ds.Tables[0]);

    }
    [WebMethod]
    public string Get_Patient(string PGUID)
    {
        
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
            cmd.CommandText = "SELECT TOP (1) * FROM [TestCart] Where GUID=@tGUID and IsPaid ='True' ORDER BY TestGUID";
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



    [WebMethod]
    public string RQAnswer(string GUID, string TGUID,int v)
    {
        DataSet ds = new DataSet();
        var QUID = GetQUID(GUID, v);
        //System.Guid guid = System.Guid.NewGuid();
        using (SqlConnection conn = new DB().GetConnection())
        {

            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "SELECT * FROM [AnswerItem] WHERE CartGUID ='" + TGUID + "' And TestGUID='" + GUID + "'And QuestionGUID='" + QUID + "'";
            conn.Open();//打开数据库连接 
            SqlDataAdapter da = new SqlDataAdapter(cmd.CommandText, conn);
            da.Fill(ds);
            conn.Close();
        }
        return Dtb2Json(ds.Tables[0]);

        

    }


    [WebMethod]
    public string AwrTest(string GUID)
    {

        DataSet ds = new DataSet();
        using (SqlConnection conn = new DB().GetConnection())
        {

            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "SELECT count(*) as row FROM [Question] WHERE TestGUID='" + GUID + "'";
            conn.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                a = Convert.ToInt16(rd["row"].ToString());
            }
            conn.Close();
        }
        return ""+a+"";

    }

    [WebMethod]
    public string GetTestCart(string PGUID)
    {
        DataSet ds = new DataSet();
        if (PGUID == "NULL")
        {
            using (SqlConnection conn = new DB().GetConnection())
            {

                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = "select min(ID) as ID,min(PatientName) as PatientName,min(CDT) as CDT, GUID,count(*) as row,max(Situation) as Situation from (select ID,PatientName,CDT,GUID,Case When IsPaid = 'false' Then '未购买' When IsFinished = 'True'  Then '完成' when IsFinished = 'false' Then '未完成' END Situation from [TPCView] Where Dimension0name =2)[P] group by GUID ORDER BY GUID, Situation desc";
                conn.Open();//打开数据库连接 
                SqlDataAdapter da = new SqlDataAdapter(cmd.CommandText, conn);
                da.Fill(ds);
                conn.Close();
            }
        }
        else
        {
            using (SqlConnection conn = new DB().GetConnection())
            {

                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = "select min(ID) as ID,min(PatientName) as PatientName,min(CDT) as CDT, GUID,count(*) as row,max(Situation) as Situation from (select ID,PatientName,CDT,GUID,Case When IsPaid = 'false' Then '未购买' When IsFinished = 'True'  Then '完成' when IsFinished = 'false' Then '未完成' END Situation from [TPCView] WHERE PatientGUID ='"+PGUID+ "' and Dimension0name =2)[P] group by GUID ORDER BY GUID, Situation desc";
                conn.Open();//打开数据库连接 
                SqlDataAdapter da = new SqlDataAdapter(cmd.CommandText, conn);
                da.Fill(ds);
                conn.Close();
            }
        }

        return Dtb2Json(ds.Tables[0]);
    }
    [WebMethod]
    public string DelTestCart(string TGUID)
    {

        int i = 0;
        using (SqlConnection conn = new DB().GetConnection())
        {
            StringBuilder sb = new StringBuilder("Delete from TestCart where GUID='" + TGUID+ "'");
            SqlCommand cmd = new SqlCommand(sb.ToString(), conn);
            conn.Open();
            i = cmd.ExecuteNonQuery();
            cmd.Dispose();
            conn.Close();

        }
        using (SqlConnection conn = new DB().GetConnection())
        {
            StringBuilder sb = new StringBuilder("Delete from AnswerItem where CartGUID='" + TGUID + "'");
            SqlCommand cmd = new SqlCommand(sb.ToString(), conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            conn.Close();

        }
        if (i >= 1) return "删除成功";
        else return "删除失败";
    }


    [WebMethod]
    public string GetReport(string PGUID)
    {
        DataSet ds = new DataSet();
        if (PGUID == "NULL")
        {
            using (SqlConnection conn = new DB().GetConnection())
            {

                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = "select ID,PatientName,CDT,TestGUID,GUID,PatientGUID,TestName from [TPCView] Where IsFinished=1";
                conn.Open();//打开数据库连接 
                SqlDataAdapter da = new SqlDataAdapter(cmd.CommandText, conn);
                da.Fill(ds);
                conn.Close();
            }
        }
        else
        {
            using (SqlConnection conn = new DB().GetConnection())
            {

                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = "select ID,PatientName,CDT,TestGUID,GUID,PatientGUID,TestName from [TPCView] Where IsFinished=1 AND PatientGUID ='" + PGUID + "'";
                conn.Open();//打开数据库连接 
                SqlDataAdapter da = new SqlDataAdapter(cmd.CommandText, conn);
                da.Fill(ds);
                conn.Close();
            }
        }

        return Dtb2Json(ds.Tables[0]);
    }

    [WebMethod]
    public string GetTL(string GUID, string TGUID)
    {

        DataSet ds = new DataSet();
        using (SqlConnection conn = new DB().GetConnection())
        {

            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "SELECT [Serial],[IsFinished],[ItemSerial] FROM [RQ] WHERE CartGUID ='" + TGUID + "' And TestGUID='" + GUID + "'ORDER BY [Serial]";
            conn.Open();//打开数据库连接 
            SqlDataAdapter da = new SqlDataAdapter(cmd.CommandText, conn);
            da.Fill(ds);
            conn.Close();
        }
        return Dtb2Json(ds.Tables[0]);

    }

}
