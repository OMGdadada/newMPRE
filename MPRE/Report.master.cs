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

public partial class Report : System.Web.UI.MasterPage
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
                RSTime.Text = DateTime.Now.ToString("yyyy 年 MM 月 dd 日");

                if (Request.QueryString["TGUID"] != null && Request.QueryString["TNum"] != null)
                {
                    TGUID.Text = Request.QueryString["TGUID"].ToString();
                    TNum.Text = Request.QueryString["TNum"].ToString();
                    using (SqlConnection conn = new DB().GetConnection())
                    {
                        SqlCommand cmd = conn.CreateCommand();
                        cmd.CommandText = "select * from T" + TNum.Text + " where GUID=@GUID";
                        cmd.Parameters.AddWithValue("@GUID", TGUID.Text);
                        conn.Open();
                        SqlDataReader rd = cmd.ExecuteReader();
                        if (rd.Read())
                        {
                            PatientGUID.Text = rd["PatientGUID"].ToString();
                            TestName.Text = rd["TestName"].ToString();
                            Remark.Text = rd["Remark"].ToString();
                        }
                        rd.Close();

                        cmd.CommandText = "select * from Format where GUID=@FormatGUID";
                        cmd.Parameters.AddWithValue("@FormatGUID", Session["HospitalGUID"].ToString() + "f");
                        rd = cmd.ExecuteReader();
                        if (rd.Read())
                        {
                            RF1Text.Text = rd["RF1Text"].ToString() + "：";
                            RF2Text.Text = rd["RF2Text"].ToString() + "：";
                            RF3Text.Text = rd["RF3Text"].ToString() + "：";
                            RF4Text.Text = rd["RF4Text"].ToString() + "：";
                            RF5Text.Text = rd["RF5Text"].ToString() + "：";
                            RF6Text.Text = rd["RF6Text"].ToString() + "：";
                            RF7Text.Text = rd["RF7Text"].ToString() + "：";
                            RF8Text.Text = rd["RF8Text"].ToString() + "：";
                            RF9Text.Text = rd["RF9Text"].ToString() + "：";

                            RF1Value.Text = rd["RF1Value"].ToString();
                            RF2Value.Text = rd["RF2Value"].ToString();
                            RF3Value.Text = rd["RF3Value"].ToString();
                            RF4Value.Text = rd["RF4Value"].ToString();
                            RF5Value.Text = rd["RF5Value"].ToString();
                            RF6Value.Text = rd["RF6Value"].ToString();
                            RF7Value.Text = rd["RF7Value"].ToString();
                            RF8Value.Text = rd["RF8Value"].ToString();
                            RF9Value.Text = rd["RF9Value"].ToString();

                        }
                        rd.Close();

                        cmd.CommandText = "select * from Patient where GUID=@PatientGUID";
                        cmd.Parameters.AddWithValue("@PatientGUID", PatientGUID.Text);
                        rd = cmd.ExecuteReader();
                        if (rd.Read())
                        {
                            if (RF1Value.Text != "")
                            {
                                if (RF1Value.Text == "Birthday")
                                {
                                    RF1.Text = String.Format("{0:yyyy 年 MM 月 dd日}", rd["Birthday"]);
                                }
                                else
                                {
                                    RF1.Text = rd["" + RF1Value.Text + ""].ToString();
                                }
                            }
                            else
                            {
                                RF1Text.Style["display"] = "none";
                                RF1.Style["display"] = "none";
                            }

                            if (RF2Value.Text != "")
                            {
                                if (RF2Value.Text == "Birthday")
                                {
                                    RF2.Text = String.Format("{0:yyyy 年 MM 月 dd日}", rd["Birthday"]);
                                }
                                else
                                {
                                    RF2.Text = rd["" + RF2Value.Text + ""].ToString();
                                }
                            }
                            else
                            {
                                RF2Text.Style["display"] = "none";
                                RF2.Style["display"] = "none";
                            }

                            if (RF3Value.Text != "")
                            {
                                if (RF3Value.Text == "Birthday")
                                {
                                    RF3.Text = String.Format("{0:yyyy 年 MM 月 dd日}", rd["Birthday"]);
                                }
                                else
                                {
                                    RF3.Text = rd["" + RF3Value.Text + ""].ToString();
                                }
                            }
                            else
                            {
                                RF3Text.Style["display"] = "none";
                                RF3.Style["display"] = "none";
                            }

                            if (RF4Value.Text != "")
                            {
                                if (RF4Value.Text == "Birthday")
                                {
                                    RF4.Text = String.Format("{0:yyyy 年 MM 月 dd日}", rd["Birthday"]);
                                }
                                else
                                {
                                    RF4.Text = rd["" + RF4Value.Text + ""].ToString();
                                }
                            }
                            else
                            {
                                RF4Text.Style["display"] = "none";
                                RF4.Style["display"] = "none";
                            }

                            if (RF5Value.Text != "")
                            {
                                if (RF5Value.Text == "Birthday")
                                {
                                    RF5.Text = String.Format("{0:yyyy 年 MM 月 dd日}", rd["Birthday"]);
                                }
                                else
                                {
                                    RF5.Text = rd["" + RF5Value.Text + ""].ToString();
                                }
                            }
                            else
                            {
                                RF5Text.Style["display"] = "none";
                                RF5.Style["display"] = "none";
                            }

                            if (RF6Value.Text != "")
                            {
                                if (RF6Value.Text == "Birthday")
                                {
                                    RF6.Text = String.Format("{0:yyyy 年 MM 月 dd日}", rd["Birthday"]);
                                }
                                else
                                {
                                    RF6.Text = rd["" + RF6Value.Text + ""].ToString();
                                }
                            }
                            else
                            {
                                RF6Text.Style["display"] = "none";
                                RF6.Style["display"] = "none";
                            }

                            if (RF7Value.Text != "")
                            {
                                if (RF7Value.Text == "Birthday")
                                {
                                    RF7.Text = String.Format("{0:yyyy 年 MM 月 dd日}", rd["Birthday"]);
                                }
                                else
                                {
                                    RF7.Text = rd["" + RF7Value.Text + ""].ToString();
                                }
                            }
                            else
                            {
                                RF7Text.Style["display"] = "none";
                                RF7.Style["display"] = "none";
                            }

                            if (RF8Value.Text != "")
                            {
                                if (RF8Value.Text == "Birthday")
                                {
                                    RF8.Text = String.Format("{0:yyyy 年 MM 月 dd日}", rd["Birthday"]);
                                }
                                else
                                {
                                    RF8.Text = rd["" + RF8Value.Text + ""].ToString();
                                }
                            }
                            else
                            {
                                RF8Text.Style["display"] = "none";
                                RF8.Style["display"] = "none";
                            }

                            if (RF9Value.Text != "")
                            {
                                if (RF9Value.Text == "Birthday")
                                {
                                    RF9.Text = String.Format("{0:yyyy 年 MM 月 dd日}", rd["Birthday"]);
                                }
                                else
                                {
                                    RF9.Text = rd["" + RF9Value.Text + ""].ToString();
                                }
                            }
                            else
                            {
                                RF9Text.Style["display"] = "none";
                                RF9.Style["display"] = "none";
                            }

                        }
                        rd.Close();

                        cmd.CommandText = "select * from [Hospital] where [GUID] = @HospitalGUID";
                        cmd.Parameters.AddWithValue("@HospitalGUID", Session["HospitalGUID"].ToString());
                        rd = cmd.ExecuteReader();
                        if (rd.Read())
                        {
                            HospitalName.Text = rd["HospitalName"].ToString();
                        }
                        rd.Close();

                        conn.Close();
                    }
                }
                else
                {
                    Response.Write(" <script> alert(\"报告单页读取出错！即将返回测试页\");;window.location='" + Request.UrlReferrer.ToString() + "'; </script> ");
                }

                MyDataBind();
            }
        }


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        using (SqlConnection conn = new DB().GetConnection())
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "Update T" + TNum.Text + " set Remark = @Remark where GUID=@GUID";
            cmd.Parameters.AddWithValue("@GUID", TGUID.Text);
            cmd.Parameters.AddWithValue("@Remark", Remark.Text);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
        }
        Response.Write(" <script> alert(\"保存成功！\"); </script> ");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {

        Response.Redirect(Server.HtmlEncode("Test_Start.aspx?GUID=" + PatientGUID.Text + ""));
    }

    protected void Button4_Click(object sender, EventArgs e)
    {

        Cover1.Style["display"] = "block";
    }
    protected void Close_Click(object sender, EventArgs e)
    {
        Label1.Text = "";
        ArTagName.Text = "";
        Cover1.Style["display"] = "none";
    }
    protected void Sure2_Click(object sender, EventArgs e)
    {
        ArticleTagAdd();
        Cover1.Style["display"] = "none";
    }
    private void MyDataBind()
    {
        using (SqlConnection conn = new DB().GetConnection())
        {
            SqlCommand cmd = conn.CreateCommand();
            conn.Open();
            cmd.CommandText = "select * from  [CommonWord]  order by ID desc  ";

            SqlDataReader rd = cmd.ExecuteReader();
            TagsList.DataSource = rd;
            TagsList.DataTextField = "CommonWord";
            TagsList.DataValueField = "ID";
            TagsList.DataBind();

            rd.Close();

        }

    }

    protected void AddArTag_Click(object sender, EventArgs e)
    {
        if (ArTagName.Text == "")
        {
            Label1.Text = "请输入文字";
            Label1.ForeColor = System.Drawing.Color.Red;
        }
        else { ArticleTag(); }

    }

    private void ArticleTag()
    {

        using (SqlConnection conn = new DB().GetConnection())
        {

            SqlCommand cmd = conn.CreateCommand();
            conn.Open();
            cmd.CommandText = "select * from  [CommonWord] where CommonWord=@CommonWord";
            cmd.Parameters.AddWithValue("@CommonWord", ArTagName.Text);
            SqlDataReader rd = cmd.ExecuteReader();

            if (!rd.Read())
            {
                Label1.Text = "";
                using (SqlConnection conn1 = new DB().GetConnection())
                {
                    StringBuilder sb = new StringBuilder("insert into CommonWord(CommonWord)");
                    sb.Append(" values ( @CommonWord) ");
                    SqlCommand cmd1 = new SqlCommand(sb.ToString(), conn1);
                    cmd1.Parameters.AddWithValue("@CommonWord", ArTagName.Text);

                    conn1.Open();
                    cmd1.ExecuteNonQuery();

                }
                MyDataBind();
                TagsList.Items[0].Selected = true;
            }
            else
            {
                Label1.Text = "该常用语已经存在，无需添加！";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
            rd.Close();
            conn.Close();

        }



    }

    private void ArticleTagAdd()
    {
        string tags = "";
        for (int i = 0; i <= TagsList.Items.Count - 1; i++)
        {
            if (TagsList.Items[i].Selected == true)
            {
                tags += "，" + TagsList.Items[i].Text;
            }

        }
        if (tags != "")
        {
            tags = tags.Substring(1);
            Remark.Text = Remark.Text + tags;   ///选择的“文章标签”对应的ID
            for (int i = 0; i <= TagsList.Items.Count - 1; i++)
            {
                if (TagsList.Items[i].Selected == true)
                {
                    TagsList.Items[i].Selected = false;
                }

            }
        }
    }

}
