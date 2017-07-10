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

 
}
