using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;
using System.IO;

public partial class R18 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //if (Session["UserID"] == null)
            //{
            //    Util.ShowMessage("用户登录超时，请重新登录！", "Login.aspx");
            //}
            //else
            //{
            //}
            if (Request.QueryString["TGUID"] != null && Request.QueryString["TNum"] != null)
            {
                GUID.Text = Request.QueryString["TGUID"].ToString();
                decimal dec;
                using (SqlConnection conn = new DB().GetConnection())
                {
                    SqlCommand cmd = conn.CreateCommand();
                    cmd.CommandText = "select * from T18 where GUID=@TGUID";
                    cmd.Parameters.AddWithValue("@TGUID", GUID.Text);
                    conn.Open();
                    SqlDataReader rd = cmd.ExecuteReader();
                    if (rd.Read())
                    {
                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["RawScore"].ToString()));
                        dec = Math.Round(dec, 0);//Math.Round(X,N)，X是数据，N是保留小数点后N位。同时四舍五入
                        RawScore.Text = dec.ToString();

                        
                    }
                    rd.Close();
                    conn.Close();
                }

                switch (RawScore.Text)
                {
                    case "0":
                    case "1":
                    case "2":
                    case "3":
                    case "4":
                    case "5":
                        RS_S.Text = "得分低于或等于5分，为低自杀风险";
                        break;
                    case "6":
                    case "7":
                    case "8":                    
                        RS_S.Text = "得分在6~8分范围内，为中自杀风险";
                        break;
                    case "9":
                    case "10":
                    case "11":
                        RS_S.Text = "得分在9~11分范围内，为高自杀风险";
                        break;
                    case "12":
                    case "13":
                    case "14":
                    case "15":
                    case "16":
                    case "17":
                    case "18":
                    case "19":
                    case "20":
                    case "21":
                    case "22":
                    case "23":
                    case "24":
                    case "25":
                        RS_S.Text = "得分大于或等于12分，为极高自杀风险";
                        break;

                    default:
                        RS_S.Text = "得分出错";
                        break;
                }
                
            }
        }
    }
}