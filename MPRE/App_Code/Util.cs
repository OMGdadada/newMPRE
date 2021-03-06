﻿using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;
using System.IO;
using System.Configuration;
using System.Management;

/// <summary>
///Util 的摘要说明
/// </summary>
public class Util
{
    public static string strSuccess = "操作成功！";
    public static string strFail = "操作失败，请重试！";

    public static string strFile = "";
    public static void SetFileName(string FileName)
    {
        strFile += FileName;
    }
    public static string GetFileName()
    {
        return strFile;
    }
    public static void CleanFileName()
    {
        strFile = "";
    }

    //测试页插入数据库
    public static int InsertDatabase(string Number, ArrayList fields, ArrayList values,int count)
    {
        int i = 0;
        string sql1 = "";
        string sql2 = "";
        for (int j = 0; j < count; j++)
        {
            sql1 = sql1+","+fields[j].ToString();
            sql2 = sql2 + ",@" + fields[j].ToString();
        }
        sql1 = sql1.Substring(1);
        sql2 = sql2.Substring(1);
        using (SqlConnection conn = new DB().GetConnection())
        {
            StringBuilder sb = new StringBuilder("Insert into " + Number + " (" + sql1 + ") ");
            sb.Append(" values ( "+sql2+") ");
            SqlCommand cmd = new SqlCommand(sb.ToString(), conn);
            for (int j = 0; j < count; j++)
            {
                if (values[j].GetType().ToString() == "System.Decimal")
                {
                    cmd.Parameters.AddWithValue("@" + fields[j].ToString() + "", AESEncrypt(values[j].ToString()));
                }
                else
                {
                    cmd.Parameters.AddWithValue("@"+fields[j].ToString()+"", values[j]);
                }
                
            }
            conn.Open();
            i = cmd.ExecuteNonQuery();
        }
        return i;
    }

	public Util()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}

    public static string GetFileType(string FileExtension)
    {
        int i = 0;
        string s = "";
        //{Image,Video,Audio,Flash}
        String[] ss = { ".jpg,.gif,.png,.bmp", ".flv,.mp4,.mpeg,.avi,.wav", ".mp3", ".swf" };
        for (i = 0; i < ss.Length;i++ )
        {
            if (itemExist(ss[i], FileExtension))
            {   
                break;
            }
        }

        switch (i)
        {
            case 0: s = "Images"; break;
            case 1: s = "Video"; break;
            case 2: s = "Audio"; break;
            case 3: s = "Flash"; break;
            default: s = "";break ;
        }
        return s;
    }

    //s1="1,2,3,123,23";s2="3"; 判断s2,是否在s1中,
    public static bool itemExist(string s1, string s2)
    {
        bool r = false;
        if (!String.IsNullOrEmpty(s1))
        {
            string[] ss = s1.Split(',');
            for (int i = 0; i < ss.Length; i++)
            {
                if (!String.IsNullOrEmpty(ss[i]) && s2 == ss[i].Trim())
                {
                    r = true;
                    break;
                }
            }
        }
        return r;
    }

    public static string GetHash(string password)
    {
        byte[] b = System.Text.ASCIIEncoding.ASCII.GetBytes(password);
        byte[] b2 = new SHA1Managed().ComputeHash(b);
        return Convert.ToBase64String(b2, 0, b2.Length);
    }

    public static string GetSuperPassword()
    {
        string Hash1 = "gzKzyl";
        string Hash2 = DateTime.Now.ToString("yyyyMM");
        string Hash3 = DateTime.Now.ToString("dd");
        string Hash = "GZ" + Hash3 + Hash1 + Hash2;
        Hash = Util.GetHash(Hash);
        Hash = Hash.Substring(0, 16);
        Hash = Hash.Replace("0", "a");
        Hash = Hash.Replace("l", "G");
        Hash = Hash.Replace("o", "2");
        Hash = Hash.Replace("I", "z");
        Hash = Hash.Replace("O", "8");
        return Hash;
    }

    public static bool Qualified(string purview)
    {
        bool result = false;
        if (System.Web.HttpContext.Current.Session["Purview"] == null)
        {
            result = false;
        }
        else
        {
            if( System.Web.HttpContext.Current.Session["Purview"].ToString().Equals("超级管理员") )
            {
                result = true;
            }
            else
            {
                string[] s = purview.Split(',');
                for (int i = 0; i < s.Length; i++)
                {
                    if (System.Web.HttpContext.Current.Session["Purview"].ToString().Equals(s[i]))
                    {
                        result = true;
                        break;
                    }
                }
            }
        }
        return result;
    }

    public static void ShowMessage(string words, string location)
    {
        System.Web.HttpContext.Current.Response.Write("<script>alert('" + words + "');</script>");
        System.Web.HttpContext.Current.Response.Write("<script>location.href='" + location + "';</script>");

    }

    //记录用户操作历史
    public static void UserUtil_Notes(string utilwords,int i,string entitywords,string UserName,string VisitPage,string UserIP) 
    {
         string datetime = DateTime.Now.ToString();
        StringBuilder MyStringBuilder = new StringBuilder();
        MyStringBuilder.Append(utilwords);
        MyStringBuilder.Append(i);
        MyStringBuilder.Append(entitywords);
        string finalwords = MyStringBuilder.ToString();
        using (SqlConnection conn = new DB().GetConnection())
        {
            StringBuilder sb = new StringBuilder("insert into [UserUtil_Notes]( Util,UserName,VisitPage,VisitDatetime,UserIP)");
            sb.Append(" values ( @Util,@UserName,@VisitPage,@VisitDatetime,@UserIP) ");
            SqlCommand cmd = new SqlCommand(sb.ToString(), conn);
            cmd.Parameters.AddWithValue("@Util", finalwords);
            cmd.Parameters.AddWithValue("@UserName", UserName);
            cmd.Parameters.AddWithValue("@VisitPage", VisitPage);
            cmd.Parameters.AddWithValue("@VisitDatetime", datetime);
            cmd.Parameters.AddWithValue("@UserIP", UserIP);
            conn.Open();
            i = cmd.ExecuteNonQuery();
            cmd.Dispose();

        }
    }

    // 用户登录，失败返回-1，成功返回RoleID
    public static int  DoLogin(string username, string password)
    {
        int roleID = -1;
        string UserID = "1";
        using (SqlConnection conn = new DB().GetConnection())
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select * from [Users] where [UserName] = @UserName and [Password] = @Password";
            cmd.Parameters.AddWithValue("@UserName", username);
            cmd.Parameters.AddWithValue("@Password", Util.GetHash(password));
            conn.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                roleID = Convert.ToInt16(rd["RoleID"]);
                System.Web.HttpContext.Current.Session["RoleID"] = roleID;
                System.Web.HttpContext.Current.Session["RoleName"] = rd["RoleName"].ToString();
                System.Web.HttpContext.Current.Session["Email"] = rd["Email"].ToString();
                System.Web.HttpContext.Current.Session["UserName"] = username;
                System.Web.HttpContext.Current.Session["Avatar"] = rd["avatar"].ToString();
                UserID = rd["ID"].ToString();
                System.Web.HttpContext.Current.Session["UserID"] = UserID;
            }
            cmd.Dispose();
            rd.Close();

            // 更新用户最后一次登录日期，用户积分+1
            cmd.CommandText = "Update [Users] set LastLoginDateTime = @LastLoginDateTime,Credits = Credits+1 where ID = @UserID";
            cmd.Parameters.AddWithValue("@LastLoginDateTime", DateTime.Now);
            cmd.Parameters.AddWithValue("@UserID", UserID);
            cmd.ExecuteNonQuery();
            cmd.Dispose();

        }
        return roleID;
    }

    public static bool AreadyExist(string table, string column, string value)
    {
        bool result = false;
        using (IDbConnection conn = new DB().GetConnection())
        {
            IDbCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select count(*) from " + table + " where " + column + " = '" + value + "'";
            conn.Open();
            if ((int)cmd.ExecuteScalar() > 0)
            {
                result = true;
            }
        }
        return result;
    }

    public static bool AreadyExistd(string table, string column, string[] value)
    {
        bool result = false;
        using (IDbConnection conn = new DB().GetConnection())
        {
            IDbCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select count(*) from " + table + " where " + column + " = '" + value + "'";
            conn.Open();
            if ((int)cmd.ExecuteScalar() > 0)
            {
                result = true;
            }
        }
        return result;
    }

    public static bool SessionOut(string [] key)
    {
        bool result = false;
        for (int i = 0; i < key.Length; i++)
        {
            if (System.Web.HttpContext.Current.Session[key[i]] == null)
            {
                result = true;
                break;
            }
        }
        return result;
    }

    public void Operate()
    {
        //System.Web.HttpContext.Current.
    }

    //更新母版头像和用户完善页头像
    public static int UpdateAvatar(string username)
    {
        int roleID = -1;
        using (SqlConnection conn = new DB().GetConnection())
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select * from [Users] where [UserName] = @UserName ";
            cmd.Parameters.AddWithValue("@UserName", username);
            conn.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                roleID = Convert.ToInt16(rd["RoleID"]);
                System.Web.HttpContext.Current.Session["RoleID"] = roleID;
                System.Web.HttpContext.Current.Session["RoleName"] = rd["RoleName"].ToString();
                System.Web.HttpContext.Current.Session["Avatar"] = rd["Avatar"].ToString();
          

            }
            cmd.Dispose();
            rd.Close();
        }

        return roleID;
    }

    public static string GetSQLProcessor()
    {
        string Processor = "";
        using (SqlConnection conn = new DB().GetConnection())
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select * from [Hospital] where ID = 1";
            conn.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                Processor = rd["Processor"].ToString();
            }
            rd.Close();
            conn.Close();
        }
        return Processor;
    }

    public static string GetMyProcessor()
    {
        try
        {
            ManagementObjectSearcher searcher = new ManagementObjectSearcher("Select * From Win32_Processor");
            string sCPUSerialNumber = "";
            foreach (ManagementObject mo in searcher.Get())
            {
                sCPUSerialNumber = mo["ProcessorId"].ToString().Trim();
            }
            return sCPUSerialNumber;
        }
        catch
        {
            return "";
        }
    }

    /// <summary>
    /// AES加密解密
    /// </summary>

    /// <summary>
    /// 获取密钥
    /// </summary>
    private static string Key
    {
        get { return @")O[ZR]6,YF}1efcaj{+oKSb9dg>Z'd9M"; }
    }

    /// <summary>
    /// 获取向量
    /// </summary>
    private static string IV
    {
        get { return @"d/+~f3,Ig)b$=pIf"; }
    }

    /// <summary>
    /// AES加密
    /// </summary>
    /// <param name="plainStr">明文字符串</param>
    /// <returns>密文</returns>
    public static string AESEncrypt(string plainStr)
    {
        byte[] bKey = Encoding.UTF8.GetBytes(Key);
        byte[] bIV = Encoding.UTF8.GetBytes(IV);
        byte[] byteArray = Encoding.UTF8.GetBytes(plainStr);

        string encrypt = null;
        Rijndael aes = Rijndael.Create();
        try
        {
            using (MemoryStream mStream = new MemoryStream())
            {
                using (CryptoStream cStream = new CryptoStream(mStream, aes.CreateEncryptor(bKey, bIV), CryptoStreamMode.Write))
                {
                    cStream.Write(byteArray, 0, byteArray.Length);
                    cStream.FlushFinalBlock();
                    encrypt = Convert.ToBase64String(mStream.ToArray());
                }
            }
        }
        catch { }
        aes.Clear();

        return encrypt;
    }

    /// <summary>
    /// AES加密
    /// </summary>
    /// <param name="plainStr">明文字符串</param>
    /// <param name="returnNull">加密失败时是否返回 null，false 返回 String.Empty</param>
    /// <returns>密文</returns>
    public static string AESEncrypt(string plainStr, bool returnNull)
    {
        string encrypt = AESEncrypt(plainStr);
        return returnNull ? encrypt : (encrypt == null ? String.Empty : encrypt);
    }

    /// <summary>
    /// AES解密
    /// </summary>
    /// <param name="encryptStr">密文字符串</param>
    /// <returns>明文</returns>
    public static string AESDecrypt(string encryptStr)
    {
        byte[] bKey = Encoding.UTF8.GetBytes(Key);
        byte[] bIV = Encoding.UTF8.GetBytes(IV);
        byte[] byteArray = Convert.FromBase64String(encryptStr);

        string decrypt = null;
        Rijndael aes = Rijndael.Create();
        try
        {
            using (MemoryStream mStream = new MemoryStream())
            {
                using (CryptoStream cStream = new CryptoStream(mStream, aes.CreateDecryptor(bKey, bIV), CryptoStreamMode.Write))
                {
                    cStream.Write(byteArray, 0, byteArray.Length);
                    cStream.FlushFinalBlock();
                    decrypt = Encoding.UTF8.GetString(mStream.ToArray());
                }
            }
        }
        catch { }
        aes.Clear();

        return decrypt;
    }

    /// <summary>
    /// AES解密
    /// </summary>
    /// <param name="encryptStr">密文字符串</param>
    /// <param name="returnNull">解密失败时是否返回 null，false 返回 String.Empty</param>
    /// <returns>明文</returns>
    public static string AESDecrypt(string encryptStr, bool returnNull)
    {
        string decrypt = AESDecrypt(encryptStr);
        return returnNull ? decrypt : (decrypt == null ? String.Empty : decrypt);
    }
}
