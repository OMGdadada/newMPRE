﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;
using System.IO;

public partial class R1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {

            if (Request.QueryString["TGUID"] != null && Request.QueryString["TNum"] != null)
            {
                GUID.Text = Request.QueryString["TGUID"].ToString();
                decimal dec;

                using (SqlConnection conn = new DB().GetConnection())
                {
                    SqlCommand cmd = conn.CreateCommand();
                    cmd.CommandText = "select * from T1 where GUID=@TGUID";
                    cmd.Parameters.AddWithValue("@TGUID", GUID.Text);
                    conn.Open();
                    SqlDataReader rd = cmd.ExecuteReader();
                    if (rd.Read())
                    {
                        dec = Convert.ToDecimal(Util.AESDecrypt(rd["RawScore"].ToString()));
                        dec = Math.Round(dec, 0);//Math.Round(X,N)，X是数据，N是保留小数点后N位
                        Score.Text = dec.ToString();

                    }
                    
                    rd.Close();
                    conn.Close();
                }



            }
           
        }
    }
}