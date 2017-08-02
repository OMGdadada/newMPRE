using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;
using System.IO;

public partial class Test_Start : System.Web.UI.Page
{
    public string GUIDS = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["DoctorGUID"] == null)
        {
            Util.ShowMessage("用户登录超时，请重新登录！", "Login.aspx");
            Response.End();
        }
        else
        {
            if (Request.QueryString["GUID"] != null)
            {
                MyInit();
                MyDataBind();
                MyDataBind2();
                DoctorGUID.Text = Session["DoctorGUID"].ToString();
            }
            else
            {
                Response.Write(" <script> alert(\"请先选择测试对象，再开始测试！\");;window.location='Patient_List.aspx'; </script> ");
            }
        }
    }
    private void MyInit()
    {
        string Certificates="",CertificatesNum = "";
        using (SqlConnection conn = new DB().GetConnection())
        {
            GUIDS = Request.QueryString["GUID"].ToString();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select * from Patient where GUID=@GUID";
            cmd.Parameters.AddWithValue("@GUID", Request.QueryString["GUID"].ToString());
            conn.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                Patient.Text = rd["PatientName"].ToString();
                CardID.Text = rd["CertificatesNum"].ToString();
                Sex.Text = rd["Sex"].ToString();
                Birthday.Text = String.Format("{0:yyyy年MM月dd日}", rd["Birthday"]);
                Num1.Text = rd["Num1"].ToString();

                Phone1.Text = rd["Phone1"].ToString();
                Certificates = rd["Certificates"].ToString().Trim();                      
                 CertificatesNum = rd["CertificatesNum"].ToString().Trim();
                        
            }
            rd.Close();
            conn.Close();
        }

        if (CertificatesNum == "" && (Certificates == "身份证" || Certificates == "护照"))
        {
            Cover.Style["display"] = "block";
            Cover1.Style["display"] = "block";
        }
        else
        {
            Cover.Style["display"] = "none";
            Cover1.Style["display"] = "none";
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Patient_Info.aspx?GUID=" + Request.QueryString["GUID"].ToString());
 
    }
    private void MyDataBind()
    {
        AspNetPager1.PageSize = Convert.ToInt16(PageSizeDDL.SelectedValue);
        string param = SearchTB.Text;
        StringBuilder whereStr = new StringBuilder("where IsDel=0 and PatientGUID= '");
        whereStr.Append(GUIDS).Append("' ");
        if (!String.IsNullOrEmpty(param))
        {
            whereStr.Append("  and [TestName] like '%").Append(Server.HtmlEncode(param.Trim().Replace("'", ""))).Append("%' ");
        }
        if (TestDDL.SelectedIndex > 0)
        {
            whereStr.Append(TestDDL.SelectedValue);
        }

        string sql = "select count(GUID) as total from TSView " + whereStr.ToString();

        using (SqlConnection conn = (SqlConnection)new DB().GetConnection())
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = sql;
            conn.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                AspNetPager1.RecordCount = Convert.ToInt16(rd[0]);
            }
            else
            {
                AspNetPager1.RecordCount = 0;
            }
            rd.Close();

            Label1.Text = AspNetPager1.RecordCount + "";//总记录数
            Label2.Text = (AspNetPager1.RecordCount / AspNetPager1.PageSize) + 1 + "";//总页数            

            if (AspNetPager1.CurrentPageIndex == 1)
            {
                sql = "Select top " + AspNetPager1.PageSize + " * from TSView " + whereStr.ToString() + " "  + OrderDDL.SelectedValue;
            }
            else
            {
                // Select Top 页容量 * from 表 where 条件 and id not in	(Select Top 页容量*（当前页数-1） id 	from 表 where 条件 order by 排序条件) order by 排序条件
                sql = "Select top " + AspNetPager1.PageSize + " * from TSView " + whereStr.ToString() + " and GUID not in ( select top " + AspNetPager1.PageSize * (AspNetPager1.CurrentPageIndex - 1) + " GUID  from TSView " + whereStr.ToString() + " " +  OrderDDL.SelectedValue + " ) " + " " +  OrderDDL.SelectedValue;
                //sql = "SELECT * FROM (SELECT ROW_NUMBER() OVER ( " + orderStr + ") AS MyRank,* FROM Article " + whereStr +" ) AS Rank " + whereStr + " and MyRank BETWEEN " +AspNetPager1.StartRecordIndex+" AND "+ (AspNetPager1.StartRecordIndex+AspNetPager1.PageSize-1) +orderStr;
            }
            //TestLabel.Text = sql;
            cmd.CommandText = sql;
            rd = cmd.ExecuteReader();
            GridView1.DataSource = rd;
            GridView1.DataBind();
            rd.Close();
            conn.Close();
        }
    }

    private void MyDataBind2()
    {
        //AspNetPager2.PageSize = Convert.ToInt16(PageSizeDDL2.SelectedValue);
        //string param = SearchTB.Text;
        StringBuilder whereStr = new StringBuilder("where PatientGUID= '");
        whereStr.Append(GUIDS).Append("' "); ;
        //if (!String.IsNullOrEmpty(param))
        //{
        //    whereStr.Append("  and [TestName] like '%").Append(Server.HtmlEncode(param.Trim().Replace("'", ""))).Append("%' ");
        //}

        string sql = "select count(ID) as total from Code " + whereStr.ToString();

        using (SqlConnection conn = (SqlConnection)new DB().GetConnection())
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = sql;
            conn.Open();
            //SqlDataReader rd = cmd.ExecuteReader();
            //if (rd.Read())
            //{
            //    AspNetPager2.RecordCount = Convert.ToInt16(rd[0]);
            //}
            //else
            //{
            //    AspNetPager2.RecordCount = 0;
            //}
            //rd.Close();

            //Label4.Text = AspNetPager2.RecordCount + "";//总记录数
            //Label5.Text = (AspNetPager2.RecordCount / AspNetPager2.PageSize) + 1 + "";//总页数            

            //if (AspNetPager2.CurrentPageIndex == 1)
            //{
                sql = "Select * from Code " + whereStr.ToString() + "Order by CreateDate Desc " ;
            //}
            //else
            //{
            //    // Select Top 页容量 * from 表 where 条件 and id not in	(Select Top 页容量*（当前页数-1） id 	from 表 where 条件 order by 排序条件) order by 排序条件
            //    sql = "Select top " + AspNetPager2.PageSize + " * from Code " + whereStr.ToString() + " and ID not in ( select top " + AspNetPager2.PageSize * (AspNetPager2.CurrentPageIndex - 1) + " ID  from Code " + whereStr.ToString() + "Order by CreateDate Desc  " + " ) " + "Order by CreateDate Desc  ";
            //    //sql = "SELECT * FROM (SELECT ROW_NUMBER() OVER ( " + orderStr + ") AS MyRank,* FROM Article " + whereStr +" ) AS Rank " + whereStr + " and MyRank BETWEEN " +AspNetPager1.StartRecordIndex+" AND "+ (AspNetPager1.StartRecordIndex+AspNetPager1.PageSize-1) +orderStr;
            //}
            //TestLabel.Text = sql;
            cmd.CommandText = sql;
            SqlDataReader rd = cmd.ExecuteReader();
            GridView2.DataSource = rd;
            GridView2.DataBind();
            rd.Close();
        }
    }

    protected void PageSizeDDL_SelectedIndexChanged(object sender, EventArgs e)
    {
        MyDataBind();
    }
    protected void OrderDDL_SelectedIndexChanged(object sender, EventArgs e)
    {
        MyDataBind();
    }

    protected void SearchBtn_Click(object sender, EventArgs e)
    {
        MyDataBind();
    }
    protected void AspNetPager1_PageChanged(object sender, EventArgs e)
    {
        MyDataBind();
    }
    protected void DoctorDDL_SelectedIndexChanged(object sender, EventArgs e)
    {
        MyDataBind();
    }
    protected void TestDDL_SelectedIndexChanged(object sender, EventArgs e)
    {
        MyDataBind();
    }

    protected void PrintBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect(Server.HtmlEncode("Test_select.aspx?GUID=" + Request.QueryString["GUID"].ToString()));
    }
    protected void CreateSelfT1_Click(object sender, EventArgs e)
    {
        string TestNum ="1";
        string TestName = "大体功能评定量表";
        InsertCode(TestNum, TestName);
    }
    protected void CreateSelfT2_Click(object sender, EventArgs e)
    {
        string TestNum = "2";
        string TestName = "个人与社会表现量表";
        InsertCode(TestNum, TestName);
    }
    protected void CreateSelfT3_Click(object sender, EventArgs e)
    {
        string TestNum = "3";
        string TestName = "世界卫生组织残疾评估量表";
        InsertCode(TestNum, TestName);
    }
    protected void CreateSelfT4_Click(object sender, EventArgs e)
    {
        string TestNum = "4";
        string TestName = "工作与学习维度影响量表";
        InsertCode(TestNum, TestName);
    }
    protected void CreateSelfT5_Click(object sender, EventArgs e)
    {
        string TestNum = "5";
        string TestName = "生活技能量表";
        InsertCode(TestNum, TestName);
    }
    protected void CreateSelfT6_Click(object sender, EventArgs e)
    {
        string TestNum = "6";
        string TestName = "社交技能操作评估";
        InsertCode(TestNum, TestName);
    }
    protected void CreateSelfT7_Click(object sender, EventArgs e)
    {
        string TestNum = "7";
        string TestName = "北京精神分裂症操作性功能评估量表";
        InsertCode(TestNum, TestName);
    }
    protected void CreateSelfT8_Click(object sender, EventArgs e)
    {
        string TestNum = "8";
        string TestName = "躯体健康维度";
        InsertCode(TestNum, TestName);
    }
    protected void CreateSelfT9_Click(object sender, EventArgs e)
    {
        string TestNum = "9";
        string TestName = "健康调查量表";
        InsertCode(TestNum, TestName);
    }
    protected void CreateSelfT10_Click(object sender, EventArgs e)
    {
        string TestNum = "10";
        string TestName = "一般自我效能感量表";
        InsertCode(TestNum, TestName);
    }
    protected void CreateSelfT11_Click(object sender, EventArgs e)
    {
        string TestNum = "11";
        string TestName = "精神疾病内化污名量表";
        InsertCode(TestNum, TestName);
    }
    protected void CreateSelfT12_Click(object sender, EventArgs e)
    {
        string TestNum = "12";
        string TestName = "精神分裂症希望量表";
        InsertCode(TestNum, TestName);
    }
    protected void CreateSelfT13_Click(object sender, EventArgs e)
    {
        string TestNum = "13";
        string TestName = "中文人生意义问卷";
        InsertCode(TestNum, TestName);
    }
    protected void CreateSelfT14_Click(object sender, EventArgs e)
    {
        string TestNum = "14";
        string TestName = "临床总体印象量表";
        InsertCode(TestNum, TestName);
    }
    protected void CreateSelfT15_Click(object sender, EventArgs e)
    {
        string TestNum = "15";
        string TestName = "阳性与阴性症状量表";
        InsertCode(TestNum, TestName);
    }
    protected void CreateSelfT16_Click(object sender, EventArgs e)
    {
        string TestNum = "16";
        string TestName = "MATRICS共识认知成套测验";
        InsertCode(TestNum, TestName);
    }
    protected void CreateSelfT17_Click(object sender, EventArgs e)
    {
        string TestNum = "17";
        string TestName = "修改版外显攻击行为量表";
        InsertCode(TestNum, TestName);
    }
    protected void CreateSelfT18_Click(object sender, EventArgs e)
    {
        string TestNum = "18";
        string TestName = "护士用自杀风险评估量表";
        InsertCode(TestNum, TestName);
    }
    protected void CreateSelfT19_Click(object sender, EventArgs e)
    {
        string TestNum = "19";
        string TestName = "卡尔加里精神分裂症抑郁量表";
        InsertCode(TestNum, TestName);
    }
    protected void CreateSelfT20_Click(object sender, EventArgs e)
    {
        string TestNum = "20";
        string TestName = "治疗副反应量表";
        InsertCode(TestNum, TestName);
    }
    protected void CreateSelfT21_Click(object sender, EventArgs e)
    {
        string TestNum = "21";
        string TestName = "锥体外系副反应量表";
        InsertCode(TestNum, TestName);
    }
    protected void CreateSelfT22_Click(object sender, EventArgs e)
    {
        string TestNum = "22";
        string TestName = "服药依从性问卷";
        InsertCode(TestNum, TestName);
    }
    protected void CreateSelfT23_Click(object sender, EventArgs e)
    {
        string TestNum = "23";
        string TestName = "自知力与治疗态度问卷表";
        InsertCode(TestNum, TestName);
    }
    protected void CreateSelfT24_Click(object sender, EventArgs e)
    {
        string TestNum = "24";
        string TestName = "药物管理能力评估";
        InsertCode(TestNum, TestName);
    }
    protected void CreateSelfT25_Click(object sender, EventArgs e)
    {
        string TestNum = "25";
        string TestName = "社会支持评定量表";
        InsertCode(TestNum, TestName);
    }
    protected void CreateSelfT26_Click(object sender, EventArgs e)
    {
        string TestNum = "26";
        string TestName = "家庭功能评定";
        InsertCode(TestNum, TestName);
    }
    protected void CreateSelfT27_Click(object sender, EventArgs e)
    {
        string TestNum = "27";
        string TestName = "婚恋评估";
        InsertCode(TestNum, TestName);
    }
    protected void CreateSelfT28_Click(object sender, EventArgs e)
    {
        string TestNum = "28";
        string TestName = "医疗资源评估";
        InsertCode(TestNum, TestName);
    }
    private void InsertCode(string TestNum, string TestName)
    {
        int i = 0;
        Random ran = new Random();
        int Code = ran.Next(1000, 9999);
        string date = DateTime.Now.ToString();
        using (SqlConnection conn = new DB().GetConnection())
        {
            StringBuilder sb = new StringBuilder("Insert into Code ( TestNum,TestName,PatientGUID,PatientName,CreateDate,Code,DoctorGUID) ");
            sb.Append(" values ( @TestNum,@TestName,@PatientGUID,@PatientName,@CreateDate,@Code,@DoctorGUID) ");
            SqlCommand cmd = new SqlCommand(sb.ToString(), conn);

            cmd.Parameters.AddWithValue("@TestNum", TestNum);
            cmd.Parameters.AddWithValue("@TestName", TestName);
            cmd.Parameters.AddWithValue("@PatientGUID", Request.QueryString["GUID"].ToString());
            cmd.Parameters.AddWithValue("@PatientName", Patient.Text);
            cmd.Parameters.AddWithValue("@CreateDate", date);
            cmd.Parameters.AddWithValue("@Code", Code.ToString());
            cmd.Parameters.AddWithValue("@DoctorGUID", DoctorGUID.Text);


            conn.Open();
            i = cmd.ExecuteNonQuery();


            if (i == 1)
            {
                MyDataBind2();
                Label3.Text = "成功生成自评码！";
                Label3.Visible = true;
                Label3.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                Response.Write(" <script> alert(\"生成自评码失败！请重试或关闭页面。\"); </script> ");
            }
            conn.Close();
        }
    }

    protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int rowIndex = Convert.ToInt16(e.CommandArgument);
        int id = Convert.ToInt16(GridView2.DataKeys[rowIndex].Value);
        ID_Label.Text = id + "";
        //if (e.CommandName.Equals("Edit"))
        //{
        //    Response.Redirect(Server.HtmlEncode("Edit.aspx?ID=" + id));
        //}
        if (e.CommandName.Equals("Del"))
        {
            DoDel(id);
        }
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int rowIndex = Convert.ToInt16(e.CommandArgument);
        string id = Convert.ToString(GridView1.DataKeys[rowIndex].Value);
        if (e.CommandName.Equals("Del"))
        {
            Response.Redirect(Server.HtmlEncode("Report_Del.aspx?IDS=" + id));
        }
    }

    protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
    {
        using (SqlConnection conn = new DB().GetConnection())
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select * from Doctor where GUID=@GUID";
            cmd.Parameters.AddWithValue("@GUID", Session["DoctorGUID"].ToString());
            conn.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            string IsAdmin = "";
            if (rd.Read())
            {
                IsAdmin = Util.AESDecrypt(rd["IsAdmin"].ToString());
            }
            rd.Close();
            if (IsAdmin == "True")
            {
                e.Row.Cells[6].Visible = true;
            }
            else
            {
                e.Row.Cells[6].Visible = false;
            }
            conn.Close();

        }
    }

    protected void DoDel(int id)
    {
        using (SqlConnection conn = new DB().GetConnection())
        {
            SqlCommand cmd = conn.CreateCommand();
            string sql = "delete from Code where ID = @ID";
            cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@ID", id);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

        }
        Label3.Text = "删除自评码成功！";
        Label3.Visible = true;
        Label3.ForeColor = System.Drawing.Color.Green;
        MyDataBind2();
    }
}