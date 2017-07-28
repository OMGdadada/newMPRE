using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;

public partial class NewPage_Item_List : System.Web.UI.Page
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
                MyInit();
               
            }

        }
    }


    private void MyInit()
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
        Label1.Text = str1;

    }




}