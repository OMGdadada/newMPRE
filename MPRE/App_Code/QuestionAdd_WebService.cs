using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using System.Data.SqlClient;
using System.Web.Script.Serialization;
using System.Text;
using System.Text.RegularExpressions;



/// <summary>
/// QuestionAdd_WebService 的摘要说明
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// 若要允许使用 ASP.NET AJAX 从脚本中调用此 Web 服务，请取消注释以下行。 
// [System.Web.Script.Services.ScriptService]
public class QuestionAdd_WebService : System.Web.Services.WebService {

    public QuestionAdd_WebService () {

        //如果使用设计的组件，请取消注释以下行 
        //InitializeComponent(); 
    }

    [WebMethod]
    public string HelloWorld() {
        return "Hello World";
    }

    /// <summary>  
    /// 试题重新更新顺序  
    /// </summary>  
    /// <param name="id"></param>  
    /// <param name="order"></param>  
    [WebMethod]
    public string UpdateOrder(string id, string order)
    {

        string[] deptIds = id.Split(',');
        string[] orders = order.Split(',');
        int flag = 0;
        string sql = "";
        for (int i = 0; i < deptIds.Length; i++)
        {
            for (int j = 0; j < orders.Length; j++)
            {
                if (i == j)
                {
                    sql += "update Question set Serial=" + orders[j] + " where ID='" + deptIds[i] + "';";
                    flag = 1;
                }
            }
        }
        if (flag == 1)
        {
            using (SqlConnection conn = new DB().GetConnection())
            {
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = sql;
                conn.Open();
                cmd.ExecuteNonQuery();
                cmd.Dispose();
                conn.Close();
            }
            return "Success!";
        }
        else
        {
            return "Failure!";
        }
    }
    /// <summary>  
    /// 试题更新和新增
    /// </summary>     
    [WebMethod]
    public string AddQuestion(string TGUID, string QGUID, string QuestionText,string Weight, string QuestionType)
    {
        int i = 0;

        char[] ch = QuestionText.ToCharArray();
        QuestionText = "";
        for (int j = 0; j < ch.Length; j++)
        {
            if (j % 2 == 0) { QuestionText += ch[j].ToString(); }
        };

        string MaxSerial0 = "0";
        using (SqlConnection conn = new DB().GetConnection())
        {
            string sql1 = "select  count(*) as Max from Question where  TestGUID=@TestGUID ";
             SqlCommand cmd = new SqlCommand(sql1, conn);
             cmd.Parameters.AddWithValue("@TestGUID", TGUID);
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
            string sql = "select * from [Question] where GUID = @QGUID ";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@QGUID", QGUID);
            conn.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                using (SqlConnection conn1 = new DB().GetConnection())
                {
                    StringBuilder sb1 = new StringBuilder("Update Question set QuestionText=@QuestionText,Weight=@Weight,QuestionType=@QuestionType where GUID=@QGUID");
                    SqlCommand cmd1 = new SqlCommand(sb1.ToString(), conn1);
                    // cmd.CommandText = " Update Question set QuestionText=@QuestionText,Serial=@Serial,Weight=@Weight,QuestionType=@QuestionType where GUID=@QGUID";
                    cmd1.Parameters.AddWithValue("@QGUID", QGUID);
                    cmd1.Parameters.AddWithValue("@QuestionText", QuestionText);
                    cmd1.Parameters.AddWithValue("@Weight", Weight);
                    cmd1.Parameters.AddWithValue("@QuestionType", QuestionType);
                    conn1.Open();
                    i = cmd1.ExecuteNonQuery();
                    cmd1.Dispose();
                    conn1.Close();

                }
            }

            else
            {
                using (SqlConnection conn2 = new DB().GetConnection())
                {
                    StringBuilder sb2 = new StringBuilder("insert into Question(GUID,TestGUID,QuestionText,Serial,Weight,QuestionType)");
                    sb2.Append(" values ( @QuestionGUID,@TestGUID,@QuestionText,@Serial,@Weight,@QuestionType) ");
                    SqlCommand cmd2 = new SqlCommand(sb2.ToString(), conn2);
                    cmd2.Parameters.AddWithValue("@QuestionGUID", QGUID);
                    cmd2.Parameters.AddWithValue("@TestGUID", TGUID);
                    cmd2.Parameters.AddWithValue("@QuestionText", QuestionText);
                    cmd2.Parameters.AddWithValue("@Serial", MaxSerial);
                    cmd2.Parameters.AddWithValue("@Weight", Weight);
                    cmd2.Parameters.AddWithValue("@QuestionType", QuestionType);
                    conn2.Open();
                    i = cmd2.ExecuteNonQuery();
                    cmd2.Dispose();
                    conn2.Close();
                }

            }
            rd.Close();
            conn.Close();
        }

        if (i == 1) return "1";
        else return "";
    }
    /// <summary>  
    /// 删除试题
    /// </summary>     
    [WebMethod]
    public string DeleteQText(string id, string GUID)
    {
        int i = 0; 
        string Qid="";
        int k = 0;
        string[] Qid1;
        using (SqlConnection conn = new DB().GetConnection())
        {
            StringBuilder sb = new StringBuilder("Delete from Question where ID=@ID ");
            SqlCommand cmd = new SqlCommand(sb.ToString(), conn);
            cmd.Parameters.AddWithValue("@ID", id);
            conn.Open();
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            conn.Close();
        }

        using (SqlConnection conn = new DB().GetConnection())
        {
              SqlCommand cmd = conn.CreateCommand();
            conn.Open();
            cmd.CommandText = "select * from Question where TestGUID=@TestGUID order by Serial";
            cmd.Parameters.AddWithValue("@TestGUID", GUID);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                Qid += rd["ID"].ToString() + ",";
              
            }
            rd.Close();

            Qid1 = Qid.Split(',');

            using (SqlConnection conn1 = new DB().GetConnection())
            {
                SqlCommand cmd2 = conn.CreateCommand();
                for (int j = 0; j < Qid1.Length - 1; j++)
                {
                    k = k+1;
                    cmd2.CommandText = "update Question set Serial = " + k + " where ID ='" + Qid1[j] + "'";
                    i = cmd2.ExecuteNonQuery();
                    cmd2.Dispose();
                }
            }
            conn.Close();
        }
            
        if (i == 1) return "1";
        else return "";
    }

    /// <summary>  
    /// 读取数据库Text列表  
    /// </summary>  
    /// <param name="guid"></param>  
   
    [WebMethod]
    public DataSet ReadQuestion(string GUID)
    {
        using (SqlConnection conn = new DB().GetConnection())
        {
            StringBuilder sb = new StringBuilder("select * from Qview where GUID='" + GUID+" '");
            SqlCommand cmd = new SqlCommand(sb.ToString(), conn);
            conn.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmd.CommandText, conn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            conn.Close();
            return ds;
        }
    }


    /// <summary>  
    /// 试题选项插入
    /// </summary>     
    [WebMethod]
    public string AddQItem(string Qguid, string itemtext, string score,  string Has)
    {
        int i = 0;
        string MaxSerial0 = "0";
        using (SqlConnection conn = new DB().GetConnection())
        {
            string sql1 = "select  count(*) as Max from QuestionItem where  QuestionGUID=@QuestionGUID ";
            SqlCommand cmd = new SqlCommand(sql1, conn);
            cmd.Parameters.AddWithValue("@QuestionGUID", Qguid);
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
            StringBuilder sb = new StringBuilder("insert into QuestionItem(QuestionGUID,ItemText,Serial,Score,HasTextBox)");
            sb.Append(" values ( @QuestionGUID,@ItemText,@Serial,@Score,@HasTextBox) ");
            SqlCommand cmd = new SqlCommand(sb.ToString(), conn);
            cmd.Parameters.AddWithValue("@QuestionGUID", Qguid);
            cmd.Parameters.AddWithValue("@ItemText", itemtext);
            cmd.Parameters.AddWithValue("@Score", score);
            cmd.Parameters.AddWithValue("@Serial", MaxSerial);
            cmd.Parameters.AddWithValue("@HasTextBox", Has);
            conn.Open();
            i = cmd.ExecuteNonQuery();
            cmd.Dispose();
            conn.Close();
        }
        if (i == 1) return "1";
        else return "";
    }

    /// <summary>  
    /// 选项重新更新顺序  
    /// </summary>  
    /// <param name="id"></param>  
    /// <param name="order"></param>  
    [WebMethod]
    public string UpdateItemOrder(string id, string order)
    {

        string[] deptIds = id.Split(',');
        string[] orders = order.Split(',');
        int flag = 0;
        string sql = "";
        for (int i = 0; i < deptIds.Length; i++)
        {
            for (int j = 0; j < orders.Length; j++)
            {
                if (i == j)
                {
                    sql += "update QuestionItem set Serial=" + orders[j] + " where ID='" + deptIds[i] + "';";
                    flag = 1;
                }
            }
        }
        if (flag == 1)
        {
            using (SqlConnection conn = new DB().GetConnection())
            {
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = sql;
                conn.Open();
                cmd.ExecuteNonQuery();
                cmd.Dispose();
                conn.Close();
            }
            return "Success!";
        }
        else
        {
            return "Failure!";
        }
    }
    /// <summary>  
    /// 更新试题选项
    /// </summary>     
  [WebMethod]
    public string UpdateQItem(string id, string itemtext, string score, string Has)
    {
        int i = 0;
        using (SqlConnection conn = new DB().GetConnection())
        {
            StringBuilder sb = new StringBuilder("Update QuestionItem set ItemText=@ItemText, Score=@Score, HasTextBox=@HasTextBox where ID=@ID ");
            SqlCommand cmd = new SqlCommand(sb.ToString(), conn);
            cmd.Parameters.AddWithValue("@ItemText", itemtext);
            cmd.Parameters.AddWithValue("@Score", score);
            cmd.Parameters.AddWithValue("@HasTextBox", Has);
            cmd.Parameters.AddWithValue("@ID", id);
            conn.Open();
            i = cmd.ExecuteNonQuery();
            cmd.Dispose();
            conn.Close();
        }
        if (i == 1) return "1";
        else return "";
    }
  /// <summary>  
  /// 删除试题选项
  /// </summary>     
  [WebMethod]
  public string DeleteQItem(string id, string QGUID)
  {
      int i = 0;
      string Qid = "";
      int k = 0;
      string[] Qid1;

      using (SqlConnection conn = new DB().GetConnection())
      {
          StringBuilder sb = new StringBuilder("Delete from QuestionItem where ID=@ID ");
          SqlCommand cmd = new SqlCommand(sb.ToString(), conn);
          cmd.Parameters.AddWithValue("@ID", id);
          conn.Open();
          cmd.ExecuteNonQuery();
          cmd.Dispose();
          conn.Close();
      }

      using (SqlConnection conn = new DB().GetConnection())
      {
          SqlCommand cmd = conn.CreateCommand();
          conn.Open();
          cmd.CommandText = "select * from QuestionItem where QuestionGUID=@QuestionGUID order by Serial";
          cmd.Parameters.AddWithValue("@QuestionGUID", QGUID);
          SqlDataReader rd = cmd.ExecuteReader();
          while (rd.Read())
          {
              Qid += rd["ID"].ToString() + ",";

          }
          rd.Close();

          Qid1 = Qid.Split(',');

          using (SqlConnection conn1 = new DB().GetConnection())
          {
              SqlCommand cmd2 = conn.CreateCommand();
              for (int j = 0; j < Qid1.Length - 1; j++)
              {
                  k = k + 1;
                  cmd2.CommandText = "update QuestionItem set Serial = " + k + " where ID ='" + Qid1[j] + "'";
                  i = cmd2.ExecuteNonQuery();
                  cmd2.Dispose();
              }
          }
          conn.Close();
      }

      if (i == 1) return "1";
      else return "";
  }

}
