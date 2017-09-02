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
    public string DeleteQText(string id, string GUID, string QGUID)
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

            cmd.CommandText = "Delete from QuestionItem where QuestionGUID=@QuestionGUID ";
            cmd.Parameters.AddWithValue("@QuestionGUID", QGUID);
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
    public string AddQItem(string Qguid)
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
            StringBuilder sb = new StringBuilder("insert into QuestionItem(QuestionGUID,ItemText,Serial,Score,HasTextBox,Jump)");
            sb.Append(" values ( @QuestionGUID,@ItemText,@Serial,@Score,@HasTextBox,@Jump) ");
            SqlCommand cmd = new SqlCommand(sb.ToString(), conn);
            cmd.Parameters.AddWithValue("@QuestionGUID", Qguid);
            cmd.Parameters.AddWithValue("@ItemText", "选项" + MaxSerial);
            cmd.Parameters.AddWithValue("@Score", 1);
            cmd.Parameters.AddWithValue("@Serial", MaxSerial);
            cmd.Parameters.AddWithValue("@HasTextBox", 0);
            cmd.Parameters.AddWithValue("@Jump", 0);
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
    public string UpdateQItem(string id, string itemtext, string itemscore, string itemHas, string itemjump)
    {
       // int i = 0;
        string[] ids = id.Split(',');
        string[] itemtexts = itemtext.Split(',');
        string[] itemscores = itemscore.Split(',');
        string[] itemHass = itemHas.Split(',');
        string[] itemjumps = itemjump.Split(',');
        int flag = 0;
        string sql = "";
        if (id.Length > 0)
        {
            for (int i = 0; i < ids.Length; i++)
            {
                for (int j = 0; j < itemtexts.Length; j++)
                {
                    if (i == j)
                    {
                        sql += "update QuestionItem set ItemText='" + itemtexts[j] + " ', Score=" + itemscores[j] + ", HasTextBox=" + itemHass[j] + ", Jump=" + itemjumps[j] + " where ID='" + ids[i] + "';";
                        flag = 1;
                    }
                }
            }
        }
        else
        { 
            return "Failure!"; 
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

   [WebMethod(EnableSession = true)]
  public string ReportList(string QGUID)
  {
      string ListNum = "";
      string[] ListNums;
      string[] ListNums0;
      string ListItem = "[";
      string str1 = "[";
     
      using (SqlConnection conn = new DB().GetConnection())
      {
          StringBuilder sb = new StringBuilder("select DISTINCT [ListNumber] from [ReportText] where QGUID='" + QGUID + "' order by ListNumber asc");
          SqlCommand cmd = new SqlCommand(sb.ToString(), conn);
          conn.Open();
          SqlDataReader rd = cmd.ExecuteReader();
          while (rd.Read()){
              ListNum += rd["ListNumber"].ToString()+",";

          }
          rd.Close();
          ListNums = ListNum.Split(',');
          ListNums0 = ListNum.Split(',');
     
          using (SqlConnection conn1 = new DB().GetConnection())
          {
              SqlCommand cmd2 = conn.CreateCommand();
              for (int i = 0; i < ListNums.Length-1; i++)
              {
                  cmd2.CommandText = "select * from [ReportText] where  ListNumber='" + ListNums[i] + "' and  QGUID='" + QGUID + "'order by Serial asc";
                  rd = cmd2.ExecuteReader();
                  while (rd.Read()) {
                      str1 += "{\"Content\":\"" + rd["Content"].ToString() + "\",\"ID\":\"" + rd["ID"].ToString() + "\"},";
                  }
                  rd.Close();
                  str1 = str1.Substring(0, str1.Length - 1);
                  str1 = str1 + "]";
                  ListNums0[i] = str1;
                  str1 = "[";
              }

              for (int j = 0; j < ListNums.Length - 1; j++) {
                  ListItem += "{\"ItemListNumb\":" + ListNums0[j] + ", \"ItemListNumbID\":  \"" + ListNums[j] + " \"},";
                 
              }
           ListItem = ListItem.Substring(0, ListItem.Length - 1);
                  ListItem = ListItem + "]";
          }


          return ListItem;
      }

      
      
  }

   [WebMethod]
   public string AddReportList(string Sum, string QGUID)
   {
       int i = 0;
       int k = Convert.ToInt16(Sum);
       int a = 1;
       string list="";
       int ListMax = 0;
       using (SqlConnection conn = new DB().GetConnection())
       {
          
               string sql = "select COUNT(distinct(ListNumber)) as sum  from [ReportText] where QGUID='" + QGUID +"'";
               SqlCommand cmd = new SqlCommand(sql, conn);
               conn.Open();
               SqlDataReader rd = cmd.ExecuteReader();
               if (rd.Read()) {
                   list = rd["sum"].ToString();
               }
               rd.Close();

               ListMax = Convert.ToInt16(list) + 1;
               
       }


       using (SqlConnection conn = new DB().GetConnection())
       {   conn.Open();
           for (int j = 0; j < k; j++)
           {
               StringBuilder sb = new StringBuilder("insert into ReportText(QGUID,Content,Serial,ListNumber)");
               sb.Append(" values ( @QGUID,@Content,@Serial,@ListNumber) ");
               SqlCommand cmd = new SqlCommand(sb.ToString(), conn);
               cmd.Parameters.AddWithValue("@QGUID", QGUID);
               cmd.Parameters.AddWithValue("@Content", "Text"); 
               cmd.Parameters.AddWithValue("@Serial", a);
               cmd.Parameters.AddWithValue("@ListNumber", ListMax);
               i = cmd.ExecuteNonQuery();
               a = a + 1;
           }
         conn.Close();
       }
       if (i == 1) return "1";
       else return "";
   }

   [WebMethod]
   public string DelReportList(string ListNum, string QGUID)
   {
       int i = 0;
       string list = "";
       int ListMax = 0;
       int newlist = 0;
       using (SqlConnection conn = new DB().GetConnection())
       {
           StringBuilder sb = new StringBuilder("Delete from ReportText where ListNumber=@ListNumber and QGUID=@QGUID ");
           SqlCommand cmd = new SqlCommand(sb.ToString(), conn);
           cmd.Parameters.AddWithValue("@ListNumber", ListNum);
           cmd.Parameters.AddWithValue("@QGUID", QGUID);
           conn.Open();
          i= cmd.ExecuteNonQuery();
           cmd.Dispose();
       }

       
       using (SqlConnection conn = new DB().GetConnection())
       {

           string sql = "select COUNT(distinct(ListNumber)) as sum  from [ReportText] where QGUID='" + QGUID + "'";
           SqlCommand cmd = new SqlCommand(sql, conn);
           conn.Open();
           SqlDataReader rd = cmd.ExecuteReader();
           if (rd.Read())
           {
               list = rd["sum"].ToString();
           }
           rd.Close();

           ListMax = Convert.ToInt16(list)+1;

           for (int j = Convert.ToInt16(ListNum); j < ListMax; j++) {
               newlist = j + 1;
               cmd.CommandText = "update ReportText set ListNumber='" + j + "' where ListNumber='" + newlist + "' and QGUID='" + QGUID + "'";
               //cmd.Parameters.AddWithValue("@ListNumberNew", j);
               //cmd.Parameters.AddWithValue("@ListNumberOld", j+1);
               //cmd.Parameters.AddWithValue("@QGUID1", QGUID);
                cmd.ExecuteNonQuery(); 
               
           }

       }


       if (i == 1) return ListMax.ToString();
       else return ListMax.ToString();
   }

   /// <summary>  
   /// 选项重新更新顺序  
   /// </summary>  
   /// <param name="id"></param>  
   /// <param name="order"></param>  
   [WebMethod]
   public string UpdateReportList(string ID, string Content)
   {

       string[] deptIds = ID.Split('￥');
       string[] NewContent = Content.Split('￥');
       int flag = 0;
       string sql = "";
       for (int i = 0; i < deptIds.Length; i++)
       {
           sql += "update ReportText set Content= '" + NewContent[i] + "' where ID='" + deptIds[i] + "';";
           flag = 1;

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
   [WebMethod]
   public string ItemList()
   {  
       string str1 = "[";
       int num = 1;
       using (SqlConnection conn = new DB().GetConnection())
       {
           SqlCommand cmd = conn.CreateCommand();
           cmd.CommandText = "select DISTINCT TagID,TagName from [QuestionItemList]";
           conn.Open();
           SqlDataReader rd = cmd.ExecuteReader();
           while (rd.Read())
           {
               str1 += "{\"TagName\":\"" + rd["TagName"].ToString() + "\",\"TagID\":\"" + rd["TagID"].ToString() + "\",\"num\":\"" + num + "\"},";
               num += 1;
           }
           str1 = str1.Substring(0, str1.Length - 1);
           str1 = str1 + "]";

       }

       return str1;
   }
   [WebMethod]
   public string ItemListDel(string TagID)
   {
       int i = 0;
       using (SqlConnection conn = new DB().GetConnection())
       {
           StringBuilder sb = new StringBuilder("Delete from QuestionItemList where TagID=@ID ");
           SqlCommand cmd = new SqlCommand(sb.ToString(), conn);
           cmd.Parameters.AddWithValue("@ID", TagID);
           conn.Open();
           i= cmd.ExecuteNonQuery();
           cmd.Dispose();
           conn.Close();
       }
       if (i == 1) return "1";
       else return "";
   }

   /// <summary>  
   /// 批量选项插入
   /// </summary>     
   [WebMethod]
   public string AddItemList(string TagID, string TagName)
   {
       int i = 0;
       string MaxSerial0 = "0";
       using (SqlConnection conn = new DB().GetConnection())
       {
           string sql1 = "select  count(*) as Max from QuestionItemList where  TagID=@TagID ";
           SqlCommand cmd = new SqlCommand(sql1, conn);
           cmd.Parameters.AddWithValue("@TagID", TagID);
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
           StringBuilder sb = new StringBuilder("insert into QuestionItemList(TagID,ItemText,Serial,Score,HasTextBox,TagName)");
           sb.Append(" values ( @TagID,@ItemText,@Serial,@Score,@HasTextBox,@TagName) ");
           SqlCommand cmd = new SqlCommand(sb.ToString(), conn);
           cmd.Parameters.AddWithValue("@TagID", TagID);
           cmd.Parameters.AddWithValue("@ItemText", "选项" + MaxSerial);
           cmd.Parameters.AddWithValue("@Score", 1);
           cmd.Parameters.AddWithValue("@Serial", MaxSerial);
           cmd.Parameters.AddWithValue("@HasTextBox", 0);
           cmd.Parameters.AddWithValue("@TagName", TagName);
           conn.Open();
           i = cmd.ExecuteNonQuery();
           cmd.Dispose();
           conn.Close();
       }
       if (i == 1) return "1";
       else return "";
   }

   /// <summary>  
   /// 更新试题选项
   /// </summary>     
   [WebMethod]
   public string UpdateItemList(string id, string itemtext, string itemscore, string tagname)
   {
       // int i = 0;
       string[] ids = id.Split(',');
       string[] itemtexts = itemtext.Split(',');
       string[] itemscores = itemscore.Split(',');
       int flag = 0;
       string sql = "";
       for (int i = 0; i < ids.Length; i++)
       {
           for (int j = 0; j < itemtexts.Length; j++)
           {
               if (i == j)
               {
                   sql += "update QuestionItemList set ItemText='" + itemtexts[j] + " ', Score=" + itemscores[j] + ", TagName= '" + tagname + "' where ID='" + ids[i] + "';";
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
   /// 选项重新更新顺序  
   /// </summary>  
   /// <param name="id"></param>  
   /// <param name="order"></param>  
   [WebMethod]
   public string UpdateItemListOrder(string id, string order)
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
                   sql += "update QuestionItemList set Serial=" + orders[j] + " where ID='" + deptIds[i] + "';";
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
   /// 删除试题选项
   /// </summary>     
   [WebMethod]
   public string DeleteItemList(string id, string TagID)
   {
       int i = 0;
       string Qid = "";
       int k = 0;
       string[] Qid1;

       using (SqlConnection conn = new DB().GetConnection())
       {
           StringBuilder sb = new StringBuilder("Delete from QuestionItemList where ID=@ID ");
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
           cmd.CommandText = "select * from QuestionItemList where TagID=@TagID order by Serial";
           cmd.Parameters.AddWithValue("@TagID", TagID);
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
                   cmd2.CommandText = "update QuestionItemList set Serial = " + k + " where ID ='" + Qid1[j] + "'";
                   i = cmd2.ExecuteNonQuery();
                   cmd2.Dispose();
               }
           }
           conn.Close();
       }

       if (i == 1) return "1";
       else return "";
   }

   [WebMethod]
   public string ScoreList(string CartGUID, string TestGUID)
   {
      
         string  score="";
         int i = 1;
           using (SqlConnection conn = new DB().GetConnection())
           {
               SqlCommand cmd = conn.CreateCommand();
               conn.Open();
               cmd.CommandText = "select * from ReportView where CartGUID=@CartGUID and TestGUID=@TestGUID order by Serial";
               cmd.Parameters.AddWithValue("@CartGUID", CartGUID);
               cmd.Parameters.AddWithValue("@TestGUID", TestGUID);
               SqlDataReader rd = cmd.ExecuteReader();
               while(rd.Read())
               {
                   score += "var Q"+i+"="+rd["Score"].ToString()+";";
                   i++;

               }
               rd.Close();

               cmd.CommandText = "select * from Question where TestGUID=@TestGUID order by Serial ";
               i = 1;
               rd = cmd.ExecuteReader();
               while (rd.Read())
               {
                   score += "var w" + i + "=" + rd["Weight"].ToString() + ";";
                   i++;

               }
               rd.Close();

           }
       
       return score;
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

}
