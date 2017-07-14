using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using System.Data.SqlClient;
using System.Web.Script.Serialization;
using System.Text;


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

    [WebMethod]
    public string AddQItem(string Qguid, string itemtext, string score, string order, string Has)
    {
        int i = 0;
        using (SqlConnection conn = new DB().GetConnection())
        {
            StringBuilder sb = new StringBuilder("insert into QuestionItem(QuestionGUID,ItemText,Serial,Score,HasTextBox)");
            sb.Append(" values ( @QuestionGUID,@ItemText,@Serial,@Score,@HasTextBox) ");
            SqlCommand cmd = new SqlCommand(sb.ToString(), conn);
            cmd.Parameters.AddWithValue("@QuestionGUID", Qguid);
            cmd.Parameters.AddWithValue("@ItemText", itemtext);
            cmd.Parameters.AddWithValue("@Score", score);
            cmd.Parameters.AddWithValue("@Serial", order);
            cmd.Parameters.AddWithValue("@HasTextBox", Has);
            conn.Open();
            i = cmd.ExecuteNonQuery();
            cmd.Dispose();
            conn.Close();
        }
        if (i == 1) return "1";
        else return "";
    }

  [WebMethod]
    public string UpdateQItem(string id, string itemtext, string score, string order, string Has)
    {
        int i = 0;
        using (SqlConnection conn = new DB().GetConnection())
        {
            StringBuilder sb = new StringBuilder("Update QuestionItem set ItemText=@ItemText, Score=@Score,Serial=@Serial, HasTextBox=@HasTextBox where ID=@ID ");
            SqlCommand cmd = new SqlCommand(sb.ToString(), conn);
            cmd.Parameters.AddWithValue("@ItemText", itemtext);
            cmd.Parameters.AddWithValue("@Score", score);
            cmd.Parameters.AddWithValue("@Serial", order);
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

  [WebMethod]
  public string DeleteQItem(string id)
  {
      int i = 0;
      using (SqlConnection conn = new DB().GetConnection())
      {
          StringBuilder sb = new StringBuilder("Delete from QuestionItem where ID=@ID ");
          SqlCommand cmd = new SqlCommand(sb.ToString(), conn);
          cmd.Parameters.AddWithValue("@ID", id);
          conn.Open();
          i = cmd.ExecuteNonQuery();
          cmd.Dispose();
          conn.Close();
      }
      if (i == 1) return "1";
      else return "";
  }

  [WebMethod]
  public string AddQuestion(string TGUID, string QGUID, string QuestionText, string Serial, string Weight, string QuestionType)
  {
      int i = 0;
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
                  StringBuilder sb1 = new StringBuilder("Update Question set QuestionText=@QuestionText,Serial=@Serial,Weight=@Weight,QuestionType=@QuestionType where GUID=@QGUID");
                  SqlCommand cmd1 = new SqlCommand(sb1.ToString(), conn1);
                  // cmd.CommandText = " Update Question set QuestionText=@QuestionText,Serial=@Serial,Weight=@Weight,QuestionType=@QuestionType where GUID=@QGUID";
                  cmd1.Parameters.AddWithValue("@QGUID", QGUID);
                  cmd1.Parameters.AddWithValue("@QuestionText", QuestionText);
                  cmd1.Parameters.AddWithValue("@Serial", Serial);
                  cmd1.Parameters.AddWithValue("@Weight", Weight);
                  cmd1.Parameters.AddWithValue("@QuestionType", QuestionType);
                  conn1.Open();
                  i = cmd1.ExecuteNonQuery();

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
                  cmd2.Parameters.AddWithValue("@Serial", Serial);
                  cmd2.Parameters.AddWithValue("@Weight", Weight);
                  cmd2.Parameters.AddWithValue("@QuestionType","1");
                  conn2.Open();
                  i = cmd2.ExecuteNonQuery();
              }

          }
          rd.Close();
          conn.Close();
      }

      if (i == 1) return "1";
      else return "";
  }

  [WebMethod]
  public string DeleteQText(string id)
  {
      int i = 0;
      using (SqlConnection conn = new DB().GetConnection())
      {
          StringBuilder sb = new StringBuilder("Delete from Question where ID=@ID ");
          SqlCommand cmd = new SqlCommand(sb.ToString(), conn);
          cmd.Parameters.AddWithValue("@ID", id);
          conn.Open();
          i = cmd.ExecuteNonQuery();
          cmd.Dispose();
          conn.Close();
      }
      if (i == 1) return "1";
      else return "";
  }
}
