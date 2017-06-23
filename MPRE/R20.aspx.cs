using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;
using System.IO;

public partial class R20 : System.Web.UI.Page
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
                string dec;
                using (SqlConnection conn = new DB().GetConnection())
                {
                    SqlCommand cmd = conn.CreateCommand();
                    cmd.CommandText = "select * from T20 where GUID=@TGUID";
                    cmd.Parameters.AddWithValue("@TGUID", GUID.Text);
                    conn.Open();
                    SqlDataReader rd = cmd.ExecuteReader();
                    if (rd.Read())
                    {
                        dec = rd["severity1"].ToString();
                        switch (dec)
                        {
                            case "0":
                                severity1.Text = "无";
                                break;
                            case "1":
                                severity1.Text = "可疑或较轻";
                                break;
                            case "2":
                                severity1.Text = "轻度";
                                break;
                            case "3":
                                severity1.Text = "中度";
                                break;
                            case "4":
                                severity1.Text = "重度";
                                break;
                            default:
                                severity1.Text = "数据有误";
                                break;
                        }
                        

                        dec = rd["severity2"].ToString();
                        switch (dec)
                        {
                            case "0":
                                severity2.Text = "无";
                                break;
                            case "1":
                                severity2.Text = "可疑或较轻";
                                break;
                            case "2":
                                severity2.Text = "轻度";
                                break;
                            case "3":
                                severity2.Text = "中度";
                                break;
                            case "4":
                                severity2.Text = "重度";
                                break;
                            default:
                                severity2.Text = "数据有误";
                                break;
                        }

                        dec = rd["severity3"].ToString();
                        switch (dec)
                        {
                            case "0":
                                severity3.Text = "无";
                                break;
                            case "1":
                                severity3.Text = "可疑或较轻";
                                break;
                            case "2":
                                severity3.Text = "轻度";
                                break;
                            case "3":
                                severity3.Text = "中度";
                                break;
                            case "4":
                                severity3.Text = "重度";
                                break;
                            default:
                                severity3.Text = "数据有误";
                                break;
                        }

                        dec = rd["severity4"].ToString();
                        switch (dec)
                        {
                            case "0":
                                severity4.Text = "无";
                                break;
                            case "1":
                                severity4.Text = "可疑或较轻";
                                break;
                            case "2":
                                severity4.Text = "轻度";
                                break;
                            case "3":
                                severity4.Text = "中度";
                                break;
                            case "4":
                                severity4.Text = "重度";
                                break;
                            default:
                                severity4.Text = "数据有误";
                                break;
                        }

                        dec = rd["severity5"].ToString();
                        switch (dec)
                        {
                            case "0":
                                severity5.Text = "无";
                                break;
                            case "1":
                                severity5.Text = "可疑或较轻";
                                break;
                            case "2":
                                severity5.Text = "轻度";
                                break;
                            case "3":
                                severity5.Text = "中度";
                                break;
                            case "4":
                                severity5.Text = "重度";
                                break;
                            default:
                                severity1.Text = "数据有误";
                                break;
                        }

                        dec = rd["severity6"].ToString();
                        switch (dec)
                        {
                            case "0":
                                severity6.Text = "无";
                                break;
                            case "1":
                                severity6.Text = "可疑或较轻";
                                break;
                            case "2":
                                severity6.Text = "轻度";
                                break;
                            case "3":
                                severity6.Text = "中度";
                                break;
                            case "4":
                                severity6.Text = "重度";
                                break;
                            default:
                                severity6.Text = "数据有误";
                                break;
                        }

                        dec = rd["severity7"].ToString();
                        switch (dec)
                        {
                            case "0":
                                severity7.Text = "无";
                                break;
                            case "1":
                                severity7.Text = "可疑或较轻";
                                break;
                            case "2":
                                severity7.Text = "轻度";
                                break;
                            case "3":
                                severity7.Text = "中度";
                                break;
                            case "4":
                                severity7.Text = "重度";
                                break;
                            default:
                                severity7.Text = "数据有误";
                                break;
                        }

                        dec = rd["severity8"].ToString();
                        switch (dec)
                        {
                            case "0":
                                severity8.Text = "无";
                                break;
                            case "1":
                                severity8.Text = "可疑或较轻";
                                break;
                            case "2":
                                severity8.Text = "轻度";
                                break;
                            case "3":
                                severity8.Text = "中度";
                                break;
                            case "4":
                                severity8.Text = "重度";
                                break;
                            default:
                                severity8.Text = "数据有误";
                                break;
                        }

                        dec = rd["severity9"].ToString();
                        switch (dec)
                        {
                            case "0":
                                severity9.Text = "无";
                                break;
                            case "1":
                                severity9.Text = "可疑或较轻";
                                break;
                            case "2":
                                severity9.Text = "轻度";
                                break;
                            case "3":
                                severity9.Text = "中度";
                                break;
                            case "4":
                                severity9.Text = "重度";
                                break;
                            default:
                                severity9.Text = "数据有误";
                                break;
                        }

                        dec = rd["severity10"].ToString();
                        switch (dec)
                        {
                            case "0":
                                severity10.Text = "无";
                                break;
                            case "1":
                                severity10.Text = "可疑或较轻";
                                break;
                            case "2":
                                severity10.Text = "轻度";
                                break;
                            case "3":
                                severity10.Text = "中度";
                                break;
                            case "4":
                                severity10.Text = "重度";
                                break;
                            default:
                                severity10.Text = "数据有误";
                                break;
                        }

                        dec = rd["severity11"].ToString();
                        switch (dec)
                        {
                            case "0":
                                severity11.Text = "无";
                                break;
                            case "1":
                                severity11.Text = "可疑或较轻";
                                break;
                            case "2":
                                severity11.Text = "轻度";
                                break;
                            case "3":
                                severity11.Text = "中度";
                                break;
                            case "4":
                                severity1.Text = "重度";
                                break;
                            default:
                                severity11.Text = "数据有误";
                                break;
                        }

                        dec = rd["severity12"].ToString();
                        switch (dec)
                        {
                            case "0":
                                severity12.Text = "无";
                                break;
                            case "1":
                                severity12.Text = "可疑或较轻";
                                break;
                            case "2":
                                severity12.Text = "轻度";
                                break;
                            case "3":
                                severity12.Text = "中度";
                                break;
                            case "4":
                                severity12.Text = "重度";
                                break;
                            default:
                                severity12.Text = "数据有误";
                                break;
                        }

                        dec = rd["severity13"].ToString();
                        switch (dec)
                        {
                            case "0":
                                severity13.Text = "无";
                                break;
                            case "1":
                                severity13.Text = "可疑或较轻";
                                break;
                            case "2":
                                severity13.Text = "轻度";
                                break;
                            case "3":
                                severity13.Text = "中度";
                                break;
                            case "4":
                                severity13.Text = "重度";
                                break;
                            default:
                                severity13.Text = "数据有误";
                                break;
                        }

                        dec = rd["severity14"].ToString();
                        switch (dec)
                        {
                            case "0":
                                severity14.Text = "无";
                                break;
                            case "1":
                                severity14.Text = "可疑或较轻";
                                break;
                            case "2":
                                severity14.Text = "轻度";
                                break;
                            case "3":
                                severity14.Text = "中度";
                                break;
                            case "4":
                                severity14.Text = "重度";
                                break;
                            default:
                                severity14.Text = "数据有误";
                                break;
                        }

                        dec = rd["severity15"].ToString();
                        switch (dec)
                        {
                            case "0":
                                severity15.Text = "无";
                                break;
                            case "1":
                                severity15.Text = "可疑或较轻";
                                break;
                            case "2":
                                severity15.Text = "轻度";
                                break;
                            case "3":
                                severity15.Text = "中度";
                                break;
                            case "4":
                                severity15.Text = "重度";
                                break;
                            default:
                                severity15.Text = "数据有误";
                                break;
                        }

                        dec = rd["severity16"].ToString();
                        switch (dec)
                        {
                            case "0":
                                severity16.Text = "无";
                                break;
                            case "1":
                                severity16.Text = "可疑或较轻";
                                break;
                            case "2":
                                severity16.Text = "轻度";
                                break;
                            case "3":
                                severity16.Text = "中度";
                                break;
                            case "4":
                                severity16.Text = "重度";
                                break;
                            default:
                                severity16.Text = "数据有误";
                                break;
                        }

                        dec = rd["severity17"].ToString();
                        switch (dec)
                        {
                            case "0":
                                severity17.Text = "无";
                                break;
                            case "1":
                                severity17.Text = "可疑或较轻";
                                break;
                            case "2":
                                severity17.Text = "轻度";
                                break;
                            case "3":
                                severity17.Text = "中度";
                                break;
                            case "4":
                                severity17.Text = "重度";
                                break;
                            default:
                                severity17.Text = "数据有误";
                                break;
                        }

                        dec = rd["severity18"].ToString();
                        switch (dec)
                        {
                            case "0":
                                severity18.Text = "无";
                                break;
                            case "1":
                                severity18.Text = "可疑或较轻";
                                break;
                            case "2":
                                severity18.Text = "轻度";
                                break;
                            case "3":
                                severity18.Text = "中度";
                                break;
                            case "4":
                                severity18.Text = "重度";
                                break;
                            default:
                                severity18.Text = "数据有误";
                                break;
                        }

                        dec = rd["severity19"].ToString();
                        switch (dec)
                        {
                            case "0":
                                severity19.Text = "无";
                                break;
                            case "1":
                                severity19.Text = "可疑或较轻";
                                break;
                            case "2":
                                severity19.Text = "轻度";
                                break;
                            case "3":
                                severity19.Text = "中度";
                                break;
                            case "4":
                                severity19.Text = "重度";
                                break;
                            default:
                                severity19.Text = "数据有误";
                                break;
                        }

                        dec = rd["severity20"].ToString();
                        switch (dec)
                        {
                            case "0":
                                severity20.Text = "无";
                                break;
                            case "1":
                                severity20.Text = "可疑或较轻";
                                break;
                            case "2":
                                severity20.Text = "轻度";
                                break;
                            case "3":
                                severity20.Text = "中度";
                                break;
                            case "4":
                                severity20.Text = "重度";
                                break;
                            default:
                                severity20.Text = "数据有误";
                                break;
                        }

                        dec = rd["severity21"].ToString();
                        switch (dec)
                        {
                            case "0":
                                severity21.Text = "无";
                                break;
                            case "1":
                                severity21.Text = "可疑或较轻";
                                break;
                            case "2":
                                severity21.Text = "轻度";
                                break;
                            case "3":
                                severity21.Text = "中度";
                                break;
                            case "4":
                                severity21.Text = "重度";
                                break;
                            default:
                                severity21.Text = "数据有误";
                                break;
                        }

                        dec = rd["severity22"].ToString();
                        switch (dec)
                        {
                            case "0":
                                severity22.Text = "无";
                                break;
                            case "1":
                                severity22.Text = "可疑或较轻";
                                break;
                            case "2":
                                severity22.Text = "轻度";
                                break;
                            case "3":
                                severity22.Text = "中度";
                                break;
                            case "4":
                                severity22.Text = "重度";
                                break;
                            default:
                                severity22.Text = "数据有误";
                                break;
                        }

                        dec = rd["severity23"].ToString();
                        switch (dec)
                        {
                            case "0":
                                severity23.Text = "无";
                                break;
                            case "1":
                                severity23.Text = "可疑或较轻";
                                break;
                            case "2":
                                severity23.Text = "轻度";
                                break;
                            case "3":
                                severity23.Text = "中度";
                                break;
                            case "4":
                                severity23.Text = "重度";
                                break;
                            default:
                                severity23.Text = "数据有误";
                                break;
                        }

                        dec = rd["severity24"].ToString();
                        switch (dec)
                        {
                            case "0":
                                severity24.Text = "无";
                                break;
                            case "1":
                                severity24.Text = "可疑或较轻";
                                break;
                            case "2":
                                severity24.Text = "轻度";
                                break;
                            case "3":
                                severity24.Text = "中度";
                                break;
                            case "4":
                                severity24.Text = "重度";
                                break;
                            default:
                                severity24.Text = "数据有误";
                                break;
                        }

                        dec = rd["severity25"].ToString();
                        switch (dec)
                        {
                            case "0":
                                severity25.Text = "无";
                                break;
                            case "1":
                                severity25.Text = "可疑或较轻";
                                break;
                            case "2":
                                severity25.Text = "轻度";
                                break;
                            case "3":
                                severity25.Text = "中度";
                                break;
                            case "4":
                                severity25.Text = "重度";
                                break;
                            default:
                                severity25.Text = "数据有误";
                                break;
                        }

                        dec = rd["severity26"].ToString();
                        switch (dec)
                        {
                            case "0":
                                severity26.Text = "无";
                                break;
                            case "1":
                                severity26.Text = "可疑或较轻";
                                break;
                            case "2":
                                severity26.Text = "轻度";
                                break;
                            case "3":
                                severity26.Text = "中度";
                                break;
                            case "4":
                                severity26.Text = "重度";
                                break;
                            default:
                                severity26.Text = "数据有误";
                                break;
                        }

                        dec = rd["severity27"].ToString();
                        switch (dec)
                        {
                            case "0":
                                severity27.Text = "无";
                                break;
                            case "1":
                                severity27.Text = "可疑或较轻";
                                break;
                            case "2":
                                severity27.Text = "轻度";
                                break;
                            case "3":
                                severity27.Text = "中度";
                                break;
                            case "4":
                                severity27.Text = "重度";
                                break;
                            default:
                                severity27.Text = "数据有误";
                                break;
                        }

                        dec = rd["severity28"].ToString();
                        switch (dec)
                        {
                            case "0":
                                severity28.Text = "无";
                                break;
                            case "1":
                                severity28.Text = "可疑或较轻";
                                break;
                            case "2":
                                severity28.Text = "轻度";
                                break;
                            case "3":
                                severity28.Text = "中度";
                                break;
                            case "4":
                                severity28.Text = "重度";
                                break;
                            default:
                                severity28.Text = "数据有误";
                                break;
                        }

                        dec = rd["severity29"].ToString();
                        switch (dec)
                        {
                            case "0":
                                severity29.Text = "无";
                                break;
                            case "1":
                                severity29.Text = "可疑或较轻";
                                break;
                            case "2":
                                severity29.Text = "轻度";
                                break;
                            case "3":
                                severity29.Text = "中度";
                                break;
                            case "4":
                                severity29.Text = "重度";
                                break;
                            default:
                                severity29.Text = "数据有误";
                                break;
                        }

                        dec = rd["severity30"].ToString();
                        switch (dec)
                        {
                            case "0":
                                severity30.Text = "无";
                                break;
                            case "1":
                                severity30.Text = "可疑或较轻";
                                break;
                            case "2":
                                severity30.Text = "轻度";
                                break;
                            case "3":
                                severity30.Text = "中度";
                                break;
                            case "4":
                                severity30.Text = "重度";
                                break;
                            default:
                                severity30.Text = "数据有误";
                                break;
                        }

                        dec = rd["severity31"].ToString();
                        switch (dec)
                        {
                            case "0":
                                severity31.Text = "无";
                                break;
                            case "1":
                                severity31.Text = "可疑或较轻";
                                break;
                            case "2":
                                severity31.Text = "轻度";
                                break;
                            case "3":
                                severity31.Text = "中度";
                                break;
                            case "4":
                                severity31.Text = "重度";
                                break;
                            default:
                                severity31.Text = "数据有误";
                                break;
                        }

                        dec = rd["severity32"].ToString();
                        switch (dec)
                        {
                            case "0":
                                severity32.Text = "无";
                                break;
                            case "1":
                                severity32.Text = "可疑或较轻";
                                break;
                            case "2":
                                severity32.Text = "轻度";
                                break;
                            case "3":
                                severity32.Text = "中度";
                                break;
                            case "4":
                                severity32.Text = "重度";
                                break;
                            default:
                                severity32.Text = "数据有误";
                                break;
                        }

                        dec = rd["severity33"].ToString();
                        switch (dec)
                        {
                            case "0":
                                severity33.Text = "无";
                                break;
                            case "1":
                                severity33.Text = "可疑或较轻";
                                break;
                            case "2":
                                severity33.Text = "轻度";
                                break;
                            case "3":
                                severity33.Text = "中度";
                                break;
                            case "4":
                                severity33.Text = "重度";
                                break;
                            default:
                                severity33.Text = "数据有误";
                                break;
                        }

                        dec = rd["severity34"].ToString();
                        switch (dec)
                        {
                            case "0":
                                severity34.Text = "无";
                                break;
                            case "1":
                                severity34.Text = "可疑或较轻";
                                break;
                            case "2":
                                severity34.Text = "轻度";
                                break;
                            case "3":
                                severity34.Text = "中度";
                                break;
                            case "4":
                                severity34.Text = "重度";
                                break;
                            default:
                                severity34.Text = "数据有误";
                                break;
                        }

                        dec = rd["manage1"].ToString();
                        switch (dec)
                        {
                            case "0":
                                manage1.Text = "无";
                                break;
                            case "1":
                                manage1.Text = "加强观察";
                                break;
                            case "2":
                                manage1.Text = "给拮抗药";
                                break;
                            case "3":
                                manage1.Text = "减量";
                                break;
                            case "4":
                                manage1.Text = "减量加拮抗药";
                                break;
                            case "5":
                                manage1.Text = "暂停治疗";
                                break;
                            case "6":
                                manage1.Text = "终止治疗";
                                break;
                            default:
                                manage1.Text = "数据有误";
                                break;
                        }

                        dec = rd["manage2"].ToString();
                        switch (dec)
                        {
                            case "0":
                                manage2.Text = "无";
                                break;
                            case "1":
                                manage2.Text = "加强观察";
                                break;
                            case "2":
                                manage2.Text = "给拮抗药";
                                break;
                            case "3":
                                manage2.Text = "减量";
                                break;
                            case "4":
                                manage2.Text = "减量加拮抗药";
                                break;
                            case "5":
                                manage2.Text = "暂停治疗";
                                break;
                            case "6":
                                manage2.Text = "终止治疗";
                                break;
                            default:
                                manage2.Text = "数据有误";
                                break;
                        }

                        dec = rd["manage3"].ToString();
                        switch (dec)
                        {
                            case "0":
                                manage3.Text = "无";
                                break;
                            case "1":
                                manage3.Text = "加强观察";
                                break;
                            case "2":
                                manage3.Text = "给拮抗药";
                                break;
                            case "3":
                                manage3.Text = "减量";
                                break;
                            case "4":
                                manage3.Text = "减量加拮抗药";
                                break;
                            case "5":
                                manage3.Text = "暂停治疗";
                                break;
                            case "6":
                                manage3.Text = "终止治疗";
                                break;
                            default:
                                manage3.Text = "数据有误";
                                break;
                        }

                        dec = rd["manage4"].ToString();
                        switch (dec)
                        {
                            case "0":
                                manage4.Text = "无";
                                break;
                            case "1":
                                manage4.Text = "加强观察";
                                break;
                            case "2":
                                manage4.Text = "给拮抗药";
                                break;
                            case "3":
                                manage4.Text = "减量";
                                break;
                            case "4":
                                manage4.Text = "减量加拮抗药";
                                break;
                            case "5":
                                manage4.Text = "暂停治疗";
                                break;
                            case "6":
                                manage4.Text = "终止治疗";
                                break;
                            default:
                                manage4.Text = "数据有误";
                                break;
                        }

                        dec = rd["manage5"].ToString();
                        switch (dec)
                        {
                            case "0":
                                manage5.Text = "无";
                                break;
                            case "1":
                                manage5.Text = "加强观察";
                                break;
                            case "2":
                                manage5.Text = "给拮抗药";
                                break;
                            case "3":
                                manage5.Text = "减量";
                                break;
                            case "4":
                                manage5.Text = "减量加拮抗药";
                                break;
                            case "5":
                                manage5.Text = "暂停治疗";
                                break;
                            case "6":
                                manage5.Text = "终止治疗";
                                break;
                            default:
                                manage5.Text = "数据有误";
                                break;
                        }

                        dec = rd["manage6"].ToString();
                        switch (dec)
                        {
                            case "0":
                                manage6.Text = "无";
                                break;
                            case "1":
                                manage6.Text = "加强观察";
                                break;
                            case "2":
                                manage6.Text = "给拮抗药";
                                break;
                            case "3":
                                manage6.Text = "减量";
                                break;
                            case "4":
                                manage6.Text = "减量加拮抗药";
                                break;
                            case "5":
                                manage6.Text = "暂停治疗";
                                break;
                            case "6":
                                manage6.Text = "终止治疗";
                                break;
                            default:
                                manage6.Text = "数据有误";
                                break;
                        }

                        dec = rd["manage7"].ToString();
                        switch (dec)
                        {
                            case "0":
                                manage7.Text = "无";
                                break;
                            case "1":
                                manage7.Text = "加强观察";
                                break;
                            case "2":
                                manage7.Text = "给拮抗药";
                                break;
                            case "3":
                                manage7.Text = "减量";
                                break;
                            case "4":
                                manage7.Text = "减量加拮抗药";
                                break;
                            case "5":
                                manage7.Text = "暂停治疗";
                                break;
                            case "6":
                                manage7.Text = "终止治疗";
                                break;
                            default:
                                manage7.Text = "数据有误";
                                break;
                        }

                        dec = rd["manage8"].ToString();
                        switch (dec)
                        {
                            case "0":
                                manage8.Text = "无";
                                break;
                            case "1":
                                manage8.Text = "加强观察";
                                break;
                            case "2":
                                manage8.Text = "给拮抗药";
                                break;
                            case "3":
                                manage8.Text = "减量";
                                break;
                            case "4":
                                manage8.Text = "减量加拮抗药";
                                break;
                            case "5":
                                manage8.Text = "暂停治疗";
                                break;
                            case "6":
                                manage8.Text = "终止治疗";
                                break;
                            default:
                                manage8.Text = "数据有误";
                                break;
                        }

                        dec = rd["manage9"].ToString();
                        switch (dec)
                        {
                            case "0":
                                manage9.Text = "无";
                                break;
                            case "1":
                                manage9.Text = "加强观察";
                                break;
                            case "2":
                                manage9.Text = "给拮抗药";
                                break;
                            case "3":
                                manage9.Text = "减量";
                                break;
                            case "4":
                                manage9.Text = "减量加拮抗药";
                                break;
                            case "5":
                                manage9.Text = "暂停治疗";
                                break;
                            case "6":
                                manage9.Text = "终止治疗";
                                break;
                            default:
                                manage9.Text = "数据有误";
                                break;
                        }

                        dec = rd["manage10"].ToString();
                        switch (dec)
                        {
                            case "0":
                                manage10.Text = "无";
                                break;
                            case "1":
                                manage10.Text = "加强观察";
                                break;
                            case "2":
                                manage10.Text = "给拮抗药";
                                break;
                            case "3":
                                manage10.Text = "减量";
                                break;
                            case "4":
                                manage10.Text = "减量加拮抗药";
                                break;
                            case "5":
                                manage10.Text = "暂停治疗";
                                break;
                            case "6":
                                manage10.Text = "终止治疗";
                                break;
                            default:
                                manage10.Text = "数据有误";
                                break;
                        }

                        dec = rd["manage11"].ToString();
                        switch (dec)
                        {
                            case "0":
                                manage11.Text = "无";
                                break;
                            case "1":
                                manage11.Text = "加强观察";
                                break;
                            case "2":
                                manage11.Text = "给拮抗药";
                                break;
                            case "3":
                                manage11.Text = "减量";
                                break;
                            case "4":
                                manage11.Text = "减量加拮抗药";
                                break;
                            case "5":
                                manage11.Text = "暂停治疗";
                                break;
                            case "6":
                                manage11.Text = "终止治疗";
                                break;
                            default:
                                manage11.Text = "数据有误";
                                break;
                        }

                        dec = rd["manage12"].ToString();
                        switch (dec)
                        {
                            case "0":
                                manage12.Text = "无";
                                break;
                            case "1":
                                manage12.Text = "加强观察";
                                break;
                            case "2":
                                manage12.Text = "给拮抗药";
                                break;
                            case "3":
                                manage12.Text = "减量";
                                break;
                            case "4":
                                manage12.Text = "减量加拮抗药";
                                break;
                            case "5":
                                manage12.Text = "暂停治疗";
                                break;
                            case "6":
                                manage12.Text = "终止治疗";
                                break;
                            default:
                                manage12.Text = "数据有误";
                                break;
                        }

                        dec = rd["manage13"].ToString();
                        switch (dec)
                        {
                            case "0":
                                manage13.Text = "无";
                                break;
                            case "1":
                                manage13.Text = "加强观察";
                                break;
                            case "2":
                                manage13.Text = "给拮抗药";
                                break;
                            case "3":
                                manage13.Text = "减量";
                                break;
                            case "4":
                                manage13.Text = "减量加拮抗药";
                                break;
                            case "5":
                                manage13.Text = "暂停治疗";
                                break;
                            case "6":
                                manage13.Text = "终止治疗";
                                break;
                            default:
                                manage13.Text = "数据有误";
                                break;
                        }

                        dec = rd["manage14"].ToString();
                        switch (dec)
                        {
                            case "0":
                                manage14.Text = "无";
                                break;
                            case "1":
                                manage14.Text = "加强观察";
                                break;
                            case "2":
                                manage14.Text = "给拮抗药";
                                break;
                            case "3":
                                manage14.Text = "减量";
                                break;
                            case "4":
                                manage14.Text = "减量加拮抗药";
                                break;
                            case "5":
                                manage14.Text = "暂停治疗";
                                break;
                            case "6":
                                manage14.Text = "终止治疗";
                                break;
                            default:
                                manage14.Text = "数据有误";
                                break;
                        }

                        dec = rd["manage15"].ToString();
                        switch (dec)
                        {
                            case "0":
                                manage15.Text = "无";
                                break;
                            case "1":
                                manage15.Text = "加强观察";
                                break;
                            case "2":
                                manage15.Text = "给拮抗药";
                                break;
                            case "3":
                                manage15.Text = "减量";
                                break;
                            case "4":
                                manage15.Text = "减量加拮抗药";
                                break;
                            case "5":
                                manage15.Text = "暂停治疗";
                                break;
                            case "6":
                                manage15.Text = "终止治疗";
                                break;
                            default:
                                manage15.Text = "数据有误";
                                break;
                        }

                        dec = rd["manage16"].ToString();
                        switch (dec)
                        {
                            case "0":
                                manage16.Text = "无";
                                break;
                            case "1":
                                manage16.Text = "加强观察";
                                break;
                            case "2":
                                manage16.Text = "给拮抗药";
                                break;
                            case "3":
                                manage16.Text = "减量";
                                break;
                            case "4":
                                manage16.Text = "减量加拮抗药";
                                break;
                            case "5":
                                manage16.Text = "暂停治疗";
                                break;
                            case "6":
                                manage16.Text = "终止治疗";
                                break;
                            default:
                                manage16.Text = "数据有误";
                                break;
                        }

                        dec = rd["manage17"].ToString();
                        switch (dec)
                        {
                            case "0":
                                manage17.Text = "无";
                                break;
                            case "1":
                                manage17.Text = "加强观察";
                                break;
                            case "2":
                                manage17.Text = "给拮抗药";
                                break;
                            case "3":
                                manage17.Text = "减量";
                                break;
                            case "4":
                                manage17.Text = "减量加拮抗药";
                                break;
                            case "5":
                                manage17.Text = "暂停治疗";
                                break;
                            case "6":
                                manage17.Text = "终止治疗";
                                break;
                            default:
                                manage17.Text = "数据有误";
                                break;
                        }

                        dec = rd["manage18"].ToString();
                        switch (dec)
                        {
                            case "0":
                                manage18.Text = "无";
                                break;
                            case "1":
                                manage18.Text = "加强观察";
                                break;
                            case "2":
                                manage18.Text = "给拮抗药";
                                break;
                            case "3":
                                manage18.Text = "减量";
                                break;
                            case "4":
                                manage18.Text = "减量加拮抗药";
                                break;
                            case "5":
                                manage18.Text = "暂停治疗";
                                break;
                            case "6":
                                manage18.Text = "终止治疗";
                                break;
                            default:
                                manage18.Text = "数据有误";
                                break;
                        }

                        dec = rd["manage19"].ToString();
                        switch (dec)
                        {
                            case "0":
                                manage19.Text = "无";
                                break;
                            case "1":
                                manage19.Text = "加强观察";
                                break;
                            case "2":
                                manage19.Text = "给拮抗药";
                                break;
                            case "3":
                                manage19.Text = "减量";
                                break;
                            case "4":
                                manage19.Text = "减量加拮抗药";
                                break;
                            case "5":
                                manage19.Text = "暂停治疗";
                                break;
                            case "6":
                                manage19.Text = "终止治疗";
                                break;
                            default:
                                manage19.Text = "数据有误";
                                break;
                        }

                        dec = rd["manage20"].ToString();
                        switch (dec)
                        {
                            case "0":
                                manage20.Text = "无";
                                break;
                            case "1":
                                manage20.Text = "加强观察";
                                break;
                            case "2":
                                manage20.Text = "给拮抗药";
                                break;
                            case "3":
                                manage20.Text = "减量";
                                break;
                            case "4":
                                manage20.Text = "减量加拮抗药";
                                break;
                            case "5":
                                manage20.Text = "暂停治疗";
                                break;
                            case "6":
                                manage20.Text = "终止治疗";
                                break;
                            default:
                                manage20.Text = "数据有误";
                                break;
                        }

                        dec = rd["manage21"].ToString();
                        switch (dec)
                        {
                            case "0":
                                manage21.Text = "无";
                                break;
                            case "1":
                                manage21.Text = "加强观察";
                                break;
                            case "2":
                                manage21.Text = "给拮抗药";
                                break;
                            case "3":
                                manage21.Text = "减量";
                                break;
                            case "4":
                                manage21.Text = "减量加拮抗药";
                                break;
                            case "5":
                                manage21.Text = "暂停治疗";
                                break;
                            case "6":
                                manage21.Text = "终止治疗";
                                break;
                            default:
                                manage21.Text = "数据有误";
                                break;
                        }

                        dec = rd["manage22"].ToString();
                        switch (dec)
                        {
                            case "0":
                                manage22.Text = "无";
                                break;
                            case "1":
                                manage22.Text = "加强观察";
                                break;
                            case "2":
                                manage22.Text = "给拮抗药";
                                break;
                            case "3":
                                manage22.Text = "减量";
                                break;
                            case "4":
                                manage22.Text = "减量加拮抗药";
                                break;
                            case "5":
                                manage22.Text = "暂停治疗";
                                break;
                            case "6":
                                manage22.Text = "终止治疗";
                                break;
                            default:
                                manage22.Text = "数据有误";
                                break;
                        }

                        dec = rd["manage23"].ToString();
                        switch (dec)
                        {
                            case "0":
                                manage23.Text = "无";
                                break;
                            case "1":
                                manage23.Text = "加强观察";
                                break;
                            case "2":
                                manage23.Text = "给拮抗药";
                                break;
                            case "3":
                                manage23.Text = "减量";
                                break;
                            case "4":
                                manage23.Text = "减量加拮抗药";
                                break;
                            case "5":
                                manage23.Text = "暂停治疗";
                                break;
                            case "6":
                                manage23.Text = "终止治疗";
                                break;
                            default:
                                manage23.Text = "数据有误";
                                break;
                        }

                        dec = rd["manage24"].ToString();
                        switch (dec)
                        {
                            case "0":
                                manage24.Text = "无";
                                break;
                            case "1":
                                manage24.Text = "加强观察";
                                break;
                            case "2":
                                manage24.Text = "给拮抗药";
                                break;
                            case "3":
                                manage24.Text = "减量";
                                break;
                            case "4":
                                manage24.Text = "减量加拮抗药";
                                break;
                            case "5":
                                manage24.Text = "暂停治疗";
                                break;
                            case "6":
                                manage24.Text = "终止治疗";
                                break;
                            default:
                                manage24.Text = "数据有误";
                                break;
                        }

                        dec = rd["manage25"].ToString();
                        switch (dec)
                        {
                            case "0":
                                manage25.Text = "无";
                                break;
                            case "1":
                                manage25.Text = "加强观察";
                                break;
                            case "2":
                                manage25.Text = "给拮抗药";
                                break;
                            case "3":
                                manage25.Text = "减量";
                                break;
                            case "4":
                                manage25.Text = "减量加拮抗药";
                                break;
                            case "5":
                                manage25.Text = "暂停治疗";
                                break;
                            case "6":
                                manage25.Text = "终止治疗";
                                break;
                            default:
                                manage25.Text = "数据有误";
                                break;
                        }

                        dec = rd["manage26"].ToString();
                        switch (dec)
                        {
                            case "0":
                                manage26.Text = "无";
                                break;
                            case "1":
                                manage26.Text = "加强观察";
                                break;
                            case "2":
                                manage26.Text = "给拮抗药";
                                break;
                            case "3":
                                manage26.Text = "减量";
                                break;
                            case "4":
                                manage26.Text = "减量加拮抗药";
                                break;
                            case "5":
                                manage26.Text = "暂停治疗";
                                break;
                            case "6":
                                manage26.Text = "终止治疗";
                                break;
                            default:
                                manage26.Text = "数据有误";
                                break;
                        }

                        dec = rd["manage27"].ToString();
                        switch (dec)
                        {
                            case "0":
                                manage27.Text = "无";
                                break;
                            case "1":
                                manage27.Text = "加强观察";
                                break;
                            case "2":
                                manage27.Text = "给拮抗药";
                                break;
                            case "3":
                                manage27.Text = "减量";
                                break;
                            case "4":
                                manage27.Text = "减量加拮抗药";
                                break;
                            case "5":
                                manage27.Text = "暂停治疗";
                                break;
                            case "6":
                                manage27.Text = "终止治疗";
                                break;
                            default:
                                manage27.Text = "数据有误";
                                break;
                        }

                        dec = rd["manage28"].ToString();
                        switch (dec)
                        {
                            case "0":
                                manage28.Text = "无";
                                break;
                            case "1":
                                manage28.Text = "加强观察";
                                break;
                            case "2":
                                manage28.Text = "给拮抗药";
                                break;
                            case "3":
                                manage28.Text = "减量";
                                break;
                            case "4":
                                manage28.Text = "减量加拮抗药";
                                break;
                            case "5":
                                manage28.Text = "暂停治疗";
                                break;
                            case "6":
                                manage28.Text = "终止治疗";
                                break;
                            default:
                                manage28.Text = "数据有误";
                                break;
                        }

                        dec = rd["manage29"].ToString();
                        switch (dec)
                        {
                            case "0":
                                manage29.Text = "无";
                                break;
                            case "1":
                                manage29.Text = "加强观察";
                                break;
                            case "2":
                                manage29.Text = "给拮抗药";
                                break;
                            case "3":
                                manage29.Text = "减量";
                                break;
                            case "4":
                                manage29.Text = "减量加拮抗药";
                                break;
                            case "5":
                                manage29.Text = "暂停治疗";
                                break;
                            case "6":
                                manage29.Text = "终止治疗";
                                break;
                            default:
                                manage29.Text = "数据有误";
                                break;
                        }

                        dec = rd["manage30"].ToString();
                        switch (dec)
                        {
                            case "0":
                                manage30.Text = "无";
                                break;
                            case "1":
                                manage30.Text = "加强观察";
                                break;
                            case "2":
                                manage30.Text = "给拮抗药";
                                break;
                            case "3":
                                manage30.Text = "减量";
                                break;
                            case "4":
                                manage30.Text = "减量加拮抗药";
                                break;
                            case "5":
                                manage30.Text = "暂停治疗";
                                break;
                            case "6":
                                manage30.Text = "终止治疗";
                                break;
                            default:
                                manage30.Text = "数据有误";
                                break;
                        }

                        dec = rd["manage31"].ToString();
                        switch (dec)
                        {
                            case "0":
                                manage31.Text = "无";
                                break;
                            case "1":
                                manage31.Text = "加强观察";
                                break;
                            case "2":
                                manage31.Text = "给拮抗药";
                                break;
                            case "3":
                                manage31.Text = "减量";
                                break;
                            case "4":
                                manage31.Text = "减量加拮抗药";
                                break;
                            case "5":
                                manage31.Text = "暂停治疗";
                                break;
                            case "6":
                                manage31.Text = "终止治疗";
                                break;
                            default:
                                manage31.Text = "数据有误";
                                break;
                        }

                        dec = rd["manage32"].ToString();
                        switch (dec)
                        {
                            case "0":
                                manage32.Text = "无";
                                break;
                            case "1":
                                manage32.Text = "加强观察";
                                break;
                            case "2":
                                manage32.Text = "给拮抗药";
                                break;
                            case "3":
                                manage32.Text = "减量";
                                break;
                            case "4":
                                manage32.Text = "减量加拮抗药";
                                break;
                            case "5":
                                manage32.Text = "暂停治疗";
                                break;
                            case "6":
                                manage32.Text = "终止治疗";
                                break;
                            default:
                                manage32.Text = "数据有误";
                                break;
                        }

                        dec = rd["manage33"].ToString();
                        switch (dec)
                        {
                            case "0":
                                manage33.Text = "无";
                                break;
                            case "1":
                                manage33.Text = "加强观察";
                                break;
                            case "2":
                                manage33.Text = "给拮抗药";
                                break;
                            case "3":
                                manage33.Text = "减量";
                                break;
                            case "4":
                                manage33.Text = "减量加拮抗药";
                                break;
                            case "5":
                                manage33.Text = "暂停治疗";
                                break;
                            case "6":
                                manage33.Text = "终止治疗";
                                break;
                            default:
                                manage33.Text = "数据有误";
                                break;
                        }

                        dec = rd["manage34"].ToString();
                        switch (dec)
                        {
                            case "0":
                                manage34.Text = "无";
                                break;
                            case "1":
                                manage34.Text = "加强观察";
                                break;
                            case "2":
                                manage34.Text = "给拮抗药";
                                break;
                            case "3":
                                manage34.Text = "减量";
                                break;
                            case "4":
                                manage34.Text = "减量加拮抗药";
                                break;
                            case "5":
                                manage34.Text = "暂停治疗";
                                break;
                            case "6":
                                manage34.Text = "终止治疗";
                                break;
                            default:
                                manage34.Text = "数据有误";
                                break;
                        }

                        dec = rd["relation1"].ToString();
                        switch (dec)
                        {
                            case "0":
                                relation1.Text = "无关";
                                break;
                            case "1":
                                relation1.Text = "基本无关";
                                break;
                            case "2":
                                relation1.Text = "可能有关";
                                break;
                            case "3":
                                relation1.Text = "很可能有关";
                                break;
                            case "4":
                                relation1.Text = "肯定有关";
                                break;                            
                            default:
                                relation1.Text = "数据有误";
                                break;
                        }

                        dec = rd["relation2"].ToString();
                        switch (dec)
                        {
                            case "0":
                                relation2.Text = "无关";
                                break;
                            case "1":
                                relation2.Text = "基本无关";
                                break;
                            case "2":
                                relation2.Text = "可能有关";
                                break;
                            case "3":
                                relation2.Text = "很可能有关";
                                break;
                            case "4":
                                relation2.Text = "肯定有关";
                                break;
                            default:
                                relation2.Text = "数据有误";
                                break;
                        }

                        dec = rd["relation3"].ToString();
                        switch (dec)
                        {
                            case "0":
                                relation3.Text = "无关";
                                break;
                            case "1":
                                relation3.Text = "基本无关";
                                break;
                            case "2":
                                relation3.Text = "可能有关";
                                break;
                            case "3":
                                relation3.Text = "很可能有关";
                                break;
                            case "4":
                                relation3.Text = "肯定有关";
                                break;
                            default:
                                relation3.Text = "数据有误";
                                break;
                        }

                        dec = rd["relation4"].ToString();
                        switch (dec)
                        {
                            case "0":
                                relation4.Text = "无关";
                                break;
                            case "1":
                                relation4.Text = "基本无关";
                                break;
                            case "2":
                                relation4.Text = "可能有关";
                                break;
                            case "3":
                                relation4.Text = "很可能有关";
                                break;
                            case "4":
                                relation4.Text = "肯定有关";
                                break;
                            default:
                                relation4.Text = "数据有误";
                                break;
                        }

                        dec = rd["relation5"].ToString();
                        switch (dec)
                        {
                            case "0":
                                relation5.Text = "无关";
                                break;
                            case "1":
                                relation5.Text = "基本无关";
                                break;
                            case "2":
                                relation5.Text = "可能有关";
                                break;
                            case "3":
                                relation5.Text = "很可能有关";
                                break;
                            case "4":
                                relation5.Text = "肯定有关";
                                break;
                            default:
                                relation5.Text = "数据有误";
                                break;
                        }

                        dec = rd["relation6"].ToString();
                        switch (dec)
                        {
                            case "0":
                                relation6.Text = "无关";
                                break;
                            case "1":
                                relation6.Text = "基本无关";
                                break;
                            case "2":
                                relation6.Text = "可能有关";
                                break;
                            case "3":
                                relation6.Text = "很可能有关";
                                break;
                            case "4":
                                relation6.Text = "肯定有关";
                                break;
                            default:
                                relation6.Text = "数据有误";
                                break;
                        }

                        dec = rd["relation7"].ToString();
                        switch (dec)
                        {
                            case "0":
                                relation7.Text = "无关";
                                break;
                            case "1":
                                relation7.Text = "基本无关";
                                break;
                            case "2":
                                relation7.Text = "可能有关";
                                break;
                            case "3":
                                relation7.Text = "很可能有关";
                                break;
                            case "4":
                                relation7.Text = "肯定有关";
                                break;
                            default:
                                relation7.Text = "数据有误";
                                break;
                        }

                        dec = rd["relation8"].ToString();
                        switch (dec)
                        {
                            case "0":
                                relation8.Text = "无关";
                                break;
                            case "1":
                                relation8.Text = "基本无关";
                                break;
                            case "2":
                                relation8.Text = "可能有关";
                                break;
                            case "3":
                                relation8.Text = "很可能有关";
                                break;
                            case "4":
                                relation8.Text = "肯定有关";
                                break;
                            default:
                                relation8.Text = "数据有误";
                                break;
                        }

                        dec = rd["relation9"].ToString();
                        switch (dec)
                        {
                            case "0":
                                relation9.Text = "无关";
                                break;
                            case "1":
                                relation9.Text = "基本无关";
                                break;
                            case "2":
                                relation9.Text = "可能有关";
                                break;
                            case "3":
                                relation9.Text = "很可能有关";
                                break;
                            case "4":
                                relation9.Text = "肯定有关";
                                break;
                            default:
                                relation9.Text = "数据有误";
                                break;
                        }

                        dec = rd["relation10"].ToString();
                        switch (dec)
                        {
                            case "0":
                                relation10.Text = "无关";
                                break;
                            case "1":
                                relation10.Text = "基本无关";
                                break;
                            case "2":
                                relation10.Text = "可能有关";
                                break;
                            case "3":
                                relation10.Text = "很可能有关";
                                break;
                            case "4":
                                relation10.Text = "肯定有关";
                                break;
                            default:
                                relation10.Text = "数据有误";
                                break;
                        }

                        dec = rd["relation11"].ToString();
                        switch (dec)
                        {
                            case "0":
                                relation11.Text = "无关";
                                break;
                            case "1":
                                relation11.Text = "基本无关";
                                break;
                            case "2":
                                relation11.Text = "可能有关";
                                break;
                            case "3":
                                relation11.Text = "很可能有关";
                                break;
                            case "4":
                                relation11.Text = "肯定有关";
                                break;
                            default:
                                relation11.Text = "数据有误";
                                break;
                        }

                        dec = rd["relation12"].ToString();
                        switch (dec)
                        {
                            case "0":
                                relation12.Text = "无关";
                                break;
                            case "1":
                                relation12.Text = "基本无关";
                                break;
                            case "2":
                                relation12.Text = "可能有关";
                                break;
                            case "3":
                                relation12.Text = "很可能有关";
                                break;
                            case "4":
                                relation12.Text = "肯定有关";
                                break;
                            default:
                                relation12.Text = "数据有误";
                                break;
                        }

                        dec = rd["relation13"].ToString();
                        switch (dec)
                        {
                            case "0":
                                relation13.Text = "无关";
                                break;
                            case "1":
                                relation13.Text = "基本无关";
                                break;
                            case "2":
                                relation13.Text = "可能有关";
                                break;
                            case "3":
                                relation13.Text = "很可能有关";
                                break;
                            case "4":
                                relation13.Text = "肯定有关";
                                break;
                            default:
                                relation13.Text = "数据有误";
                                break;
                        }

                        dec = rd["relation14"].ToString();
                        switch (dec)
                        {
                            case "0":
                                relation14.Text = "无关";
                                break;
                            case "1":
                                relation14.Text = "基本无关";
                                break;
                            case "2":
                                relation14.Text = "可能有关";
                                break;
                            case "3":
                                relation14.Text = "很可能有关";
                                break;
                            case "4":
                                relation14.Text = "肯定有关";
                                break;
                            default:
                                relation14.Text = "数据有误";
                                break;
                        }

                        dec = rd["relation15"].ToString();
                        switch (dec)
                        {
                            case "0":
                                relation15.Text = "无关";
                                break;
                            case "1":
                                relation15.Text = "基本无关";
                                break;
                            case "2":
                                relation15.Text = "可能有关";
                                break;
                            case "3":
                                relation15.Text = "很可能有关";
                                break;
                            case "4":
                                relation15.Text = "肯定有关";
                                break;
                            default:
                                relation15.Text = "数据有误";
                                break;
                        }

                        dec = rd["relation16"].ToString();
                        switch (dec)
                        {
                            case "0":
                                relation16.Text = "无关";
                                break;
                            case "1":
                                relation16.Text = "基本无关";
                                break;
                            case "2":
                                relation16.Text = "可能有关";
                                break;
                            case "3":
                                relation16.Text = "很可能有关";
                                break;
                            case "4":
                                relation16.Text = "肯定有关";
                                break;
                            default:
                                relation16.Text = "数据有误";
                                break;
                        }

                        dec = rd["relation17"].ToString();
                        switch (dec)
                        {
                            case "0":
                                relation17.Text = "无关";
                                break;
                            case "1":
                                relation17.Text = "基本无关";
                                break;
                            case "2":
                                relation17.Text = "可能有关";
                                break;
                            case "3":
                                relation17.Text = "很可能有关";
                                break;
                            case "4":
                                relation17.Text = "肯定有关";
                                break;
                            default:
                                relation17.Text = "数据有误";
                                break;
                        }

                        dec = rd["relation18"].ToString();
                        switch (dec)
                        {
                            case "0":
                                relation18.Text = "无关";
                                break;
                            case "1":
                                relation18.Text = "基本无关";
                                break;
                            case "2":
                                relation18.Text = "可能有关";
                                break;
                            case "3":
                                relation18.Text = "很可能有关";
                                break;
                            case "4":
                                relation18.Text = "肯定有关";
                                break;
                            default:
                                relation18.Text = "数据有误";
                                break;
                        }

                        dec = rd["relation19"].ToString();
                        switch (dec)
                        {
                            case "0":
                                relation19.Text = "无关";
                                break;
                            case "1":
                                relation19.Text = "基本无关";
                                break;
                            case "2":
                                relation19.Text = "可能有关";
                                break;
                            case "3":
                                relation19.Text = "很可能有关";
                                break;
                            case "4":
                                relation19.Text = "肯定有关";
                                break;
                            default:
                                relation19.Text = "数据有误";
                                break;
                        }

                        dec = rd["relation20"].ToString();
                        switch (dec)
                        {
                            case "0":
                                relation20.Text = "无关";
                                break;
                            case "1":
                                relation20.Text = "基本无关";
                                break;
                            case "2":
                                relation20.Text = "可能有关";
                                break;
                            case "3":
                                relation20.Text = "很可能有关";
                                break;
                            case "4":
                                relation20.Text = "肯定有关";
                                break;
                            default:
                                relation20.Text = "数据有误";
                                break;
                        }

                        dec = rd["relation21"].ToString();
                        switch (dec)
                        {
                            case "0":
                                relation21.Text = "无关";
                                break;
                            case "1":
                                relation21.Text = "基本无关";
                                break;
                            case "2":
                                relation21.Text = "可能有关";
                                break;
                            case "3":
                                relation21.Text = "很可能有关";
                                break;
                            case "4":
                                relation21.Text = "肯定有关";
                                break;
                            default:
                                relation21.Text = "数据有误";
                                break;
                        }

                        dec = rd["relation22"].ToString();
                        switch (dec)
                        {
                            case "0":
                                relation22.Text = "无关";
                                break;
                            case "1":
                                relation22.Text = "基本无关";
                                break;
                            case "2":
                                relation22.Text = "可能有关";
                                break;
                            case "3":
                                relation22.Text = "很可能有关";
                                break;
                            case "4":
                                relation22.Text = "肯定有关";
                                break;
                            default:
                                relation22.Text = "数据有误";
                                break;
                        }

                        dec = rd["relation23"].ToString();
                        switch (dec)
                        {
                            case "0":
                                relation23.Text = "无关";
                                break;
                            case "1":
                                relation23.Text = "基本无关";
                                break;
                            case "2":
                                relation23.Text = "可能有关";
                                break;
                            case "3":
                                relation23.Text = "很可能有关";
                                break;
                            case "4":
                                relation23.Text = "肯定有关";
                                break;
                            default:
                                relation23.Text = "数据有误";
                                break;
                        }

                        dec = rd["relation24"].ToString();
                        switch (dec)
                        {
                            case "0":
                                relation24.Text = "无关";
                                break;
                            case "1":
                                relation24.Text = "基本无关";
                                break;
                            case "2":
                                relation24.Text = "可能有关";
                                break;
                            case "3":
                                relation24.Text = "很可能有关";
                                break;
                            case "4":
                                relation24.Text = "肯定有关";
                                break;
                            default:
                                relation24.Text = "数据有误";
                                break;
                        }

                        dec = rd["relation25"].ToString();
                        switch (dec)
                        {
                            case "0":
                                relation25.Text = "无关";
                                break;
                            case "1":
                                relation25.Text = "基本无关";
                                break;
                            case "2":
                                relation25.Text = "可能有关";
                                break;
                            case "3":
                                relation25.Text = "很可能有关";
                                break;
                            case "4":
                                relation25.Text = "肯定有关";
                                break;
                            default:
                                relation25.Text = "数据有误";
                                break;
                        }

                        dec = rd["relation26"].ToString();
                        switch (dec)
                        {
                            case "0":
                                relation26.Text = "无关";
                                break;
                            case "1":
                                relation26.Text = "基本无关";
                                break;
                            case "2":
                                relation26.Text = "可能有关";
                                break;
                            case "3":
                                relation26.Text = "很可能有关";
                                break;
                            case "4":
                                relation26.Text = "肯定有关";
                                break;
                            default:
                                relation26.Text = "数据有误";
                                break;
                        }

                        dec = rd["relation27"].ToString();
                        switch (dec)
                        {
                            case "0":
                                relation27.Text = "无关";
                                break;
                            case "1":
                                relation27.Text = "基本无关";
                                break;
                            case "2":
                                relation27.Text = "可能有关";
                                break;
                            case "3":
                                relation27.Text = "很可能有关";
                                break;
                            case "4":
                                relation27.Text = "肯定有关";
                                break;
                            default:
                                relation27.Text = "数据有误";
                                break;
                        }

                        dec = rd["relation28"].ToString();
                        switch (dec)
                        {
                            case "0":
                                relation28.Text = "无关";
                                break;
                            case "1":
                                relation28.Text = "基本无关";
                                break;
                            case "2":
                                relation28.Text = "可能有关";
                                break;
                            case "3":
                                relation28.Text = "很可能有关";
                                break;
                            case "4":
                                relation28.Text = "肯定有关";
                                break;
                            default:
                                relation28.Text = "数据有误";
                                break;
                        }

                        dec = rd["relation29"].ToString();
                        switch (dec)
                        {
                            case "0":
                                relation29.Text = "无关";
                                break;
                            case "1":
                                relation29.Text = "基本无关";
                                break;
                            case "2":
                                relation29.Text = "可能有关";
                                break;
                            case "3":
                                relation29.Text = "很可能有关";
                                break;
                            case "4":
                                relation29.Text = "肯定有关";
                                break;
                            default:
                                relation29.Text = "数据有误";
                                break;
                        }

                        dec = rd["relation30"].ToString();
                        switch (dec)
                        {
                            case "0":
                                relation30.Text = "无关";
                                break;
                            case "1":
                                relation30.Text = "基本无关";
                                break;
                            case "2":
                                relation30.Text = "可能有关";
                                break;
                            case "3":
                                relation30.Text = "很可能有关";
                                break;
                            case "4":
                                relation30.Text = "肯定有关";
                                break;
                            default:
                                relation30.Text = "数据有误";
                                break;
                        }

                        dec = rd["relation31"].ToString();
                        switch (dec)
                        {
                            case "0":
                                relation31.Text = "无关";
                                break;
                            case "1":
                                relation31.Text = "基本无关";
                                break;
                            case "2":
                                relation31.Text = "可能有关";
                                break;
                            case "3":
                                relation31.Text = "很可能有关";
                                break;
                            case "4":
                                relation31.Text = "肯定有关";
                                break;
                            default:
                                relation31.Text = "数据有误";
                                break;
                        }

                        dec = rd["relation32"].ToString();
                        switch (dec)
                        {
                            case "0":
                                relation32.Text = "无关";
                                break;
                            case "1":
                                relation32.Text = "基本无关";
                                break;
                            case "2":
                                relation32.Text = "可能有关";
                                break;
                            case "3":
                                relation32.Text = "很可能有关";
                                break;
                            case "4":
                                relation32.Text = "肯定有关";
                                break;
                            default:
                                relation32.Text = "数据有误";
                                break;
                        }

                        dec = rd["relation33"].ToString();
                        switch (dec)
                        {
                            case "0":
                                relation33.Text = "无关";
                                break;
                            case "1":
                                relation33.Text = "基本无关";
                                break;
                            case "2":
                                relation33.Text = "可能有关";
                                break;
                            case "3":
                                relation33.Text = "很可能有关";
                                break;
                            case "4":
                                relation33.Text = "肯定有关";
                                break;
                            default:
                                relation33.Text = "数据有误";
                                break;
                        }

                        dec = rd["relation34"].ToString();
                        switch (dec)
                        {
                            case "0":
                                relation34.Text = "无关";
                                break;
                            case "1":
                                relation34.Text = "基本无关";
                                break;
                            case "2":
                                relation34.Text = "可能有关";
                                break;
                            case "3":
                                relation34.Text = "很可能有关";
                                break;
                            case "4":
                                relation34.Text = "肯定有关";
                                break;
                            default:
                                relation34.Text = "数据有误";
                                break;
                        }

                        dec = rd["Name34"].ToString();
                        Name34.Text = dec.ToString();
                        


                    }
                    rd.Close();
                    conn.Close();

                    if(Name34.Text == ""){                        
                        Other.Style["display"] = "none";
                    }
                }



            }
        }
    }
}