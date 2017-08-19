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


public partial class NewPage_Psychological_Report : System.Web.UI.Page
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
                    using (SqlConnection conn = new DB().GetConnection())
                    {
                        SqlCommand cmd = conn.CreateCommand();
                        cmd.CommandText = "select * from Format where GUID=@FormatGUID";
                        cmd.Parameters.AddWithValue("@FormatGUID", Session["HospitalGUID"].ToString() + "f");
                        conn.Open();
                        SqlDataReader rd = cmd.ExecuteReader();
                       
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

                        cmd.CommandText = "select * from [Hospital] where [GUID] = @HospitalGUID";
                        cmd.Parameters.AddWithValue("@HospitalGUID", Session["HospitalGUID"].ToString());
                        rd = cmd.ExecuteReader();
                        if (rd.Read())
                        {
                            HospitalName.Text = rd["HospitalName"].ToString();
                        }
                        rd.Close();


                        cmd.CommandText = "select * from [Test] where [GUID] = @TestGUID";
                        cmd.Parameters.AddWithValue("@TestGUID", Request.QueryString["TestGUID"].ToString());
                        rd = cmd.ExecuteReader();
                        if (rd.Read())
                        {
                            TestName.Text = rd["TestName"].ToString();
                        }
                        rd.Close();


                        cmd.CommandText = "select * from Patient where GUID=@PatientGUID";
                        cmd.Parameters.AddWithValue("@PatientGUID", Request.QueryString["PatientGUID"].ToString());
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


                    }
                    Header();
                    TestGUID.Text = Request.QueryString["TestGUID"].ToString();
                    CartGUID.Text=Request.QueryString["CatGUID"].ToString();
            }

        }
    }
    private void Header()
    {
        using (SqlConnection conn = new DB().GetConnection())
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select * from [ReportHeader] where QGUID=@QGUID ";
            cmd.Parameters.AddWithValue("@QGUID", Request.QueryString["TestGUID"].ToString());
            conn.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            Repeater1.DataSource = rd;
            Repeater1.DataBind();
            rd.Close();


        }
    }


}