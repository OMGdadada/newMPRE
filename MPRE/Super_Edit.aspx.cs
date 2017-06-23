using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Super_Edit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["Super"] == null)
            {
                Util.ShowMessage("用户登录超时，请重新登录！", "Login.aspx");
                Response.End();
            }
            else
            {
                string Hash = Util.GetSuperPassword();
                if (Session["Super"].ToString() != Hash)
                {
                    Util.ShowMessage("密码错误，请重新登录！", "Login.aspx");
                    Response.End();
                }


            }
        }
    }
    

    protected void Zipdownload(object sender, EventArgs e)
    {
        GetCsv();
        GetRAR();
    }



    private void GetCsv()
    {
        using (SqlConnection conn = new DB().GetConnection())
        {
            SqlCommand cmd = conn.CreateCommand();
            conn.Open();
            cmd.CommandText = "exec master..xp_cmdshell 'bcp [MPRE].[dbo].[T1] out G:/项目/多维精神康复系统/MPRE同步更新版/MPRE/MPRE/CSV/T1.csv  -c -t -U sa -P 123456 '";
            cmd.ExecuteNonQuery();
            cmd.CommandText = "exec master..xp_cmdshell 'bcp [MPRE].[dbo].[T2] out G:/项目/多维精神康复系统/MPRE同步更新版/MPRE/MPRE/CSV/T2.csv  -c -t -U sa -P 123456 '";
            cmd.ExecuteNonQuery();
            cmd.CommandText = "exec master..xp_cmdshell 'bcp [MPRE].[dbo].[T3] out G:/项目/多维精神康复系统/MPRE同步更新版/MPRE/MPRE/CSV/T3.csv  -c -t -U sa -P 123456 '";
            cmd.ExecuteNonQuery();
            cmd.CommandText = "exec master..xp_cmdshell 'bcp [MPRE].[dbo].[T4] out G:/项目/多维精神康复系统/MPRE同步更新版/MPRE/MPRE/CSV/T4.csv  -c -t -U sa -P 123456 '";
            cmd.ExecuteNonQuery();
            cmd.CommandText = "exec master..xp_cmdshell 'bcp [MPRE].[dbo].[T5] out G:/项目/多维精神康复系统/MPRE同步更新版/MPRE/MPRE/CSV/T5.csv  -c -t -U sa -P 123456 '";
            cmd.ExecuteNonQuery();
            cmd.CommandText = "exec master..xp_cmdshell 'bcp [MPRE].[dbo].[T6] out G:/项目/多维精神康复系统/MPRE同步更新版/MPRE/MPRE/CSV/T6.csv  -c -t -U sa -P 123456 '";
            cmd.ExecuteNonQuery();
            cmd.CommandText = "exec master..xp_cmdshell 'bcp [MPRE].[dbo].[T7] out G:/项目/多维精神康复系统/MPRE同步更新版/MPRE/MPRE/CSV/T7.csv  -c -t -U sa -P 123456 '";
            cmd.ExecuteNonQuery();
            cmd.CommandText = "exec master..xp_cmdshell 'bcp [MPRE].[dbo].[T8] out G:/项目/多维精神康复系统/MPRE同步更新版/MPRE/MPRE/CSV/T8.csv  -c -t -U sa -P 123456 '";
            cmd.ExecuteNonQuery();
            cmd.CommandText = "exec master..xp_cmdshell 'bcp [MPRE].[dbo].[T9] out G:/项目/多维精神康复系统/MPRE同步更新版/MPRE/MPRE/CSV/T9.csv  -c -t -U sa -P 123456 '";
            cmd.ExecuteNonQuery();
            cmd.CommandText = "exec master..xp_cmdshell 'bcp [MPRE].[dbo].[T10] out G:/项目/多维精神康复系统/MPRE同步更新版/MPRE/MPRE/CSV/T10.csv  -c -t -U sa -P 123456 '";
            cmd.ExecuteNonQuery();
            cmd.CommandText = "exec master..xp_cmdshell 'bcp [MPRE].[dbo].[T11] out G:/项目/多维精神康复系统/MPRE同步更新版/MPRE/MPRE/CSV/T11.csv  -c -t -U sa -P 123456 '";
            cmd.ExecuteNonQuery();
            cmd.CommandText = "exec master..xp_cmdshell 'bcp [MPRE].[dbo].[T12] out G:/项目/多维精神康复系统/MPRE同步更新版/MPRE/MPRE/CSV/T12.csv  -c -t -U sa -P 123456 '";
            cmd.ExecuteNonQuery();
            cmd.CommandText = "exec master..xp_cmdshell 'bcp [MPRE].[dbo].[T13] out G:/项目/多维精神康复系统/MPRE同步更新版/MPRE/MPRE/CSV/T13.csv  -c -t -U sa -P 123456 '";
            cmd.ExecuteNonQuery();
            cmd.CommandText = "exec master..xp_cmdshell 'bcp [MPRE].[dbo].[T14] out G:/项目/多维精神康复系统/MPRE同步更新版/MPRE/MPRE/CSV/T14.csv  -c -t -U sa -P 123456 '";
            cmd.ExecuteNonQuery();
            cmd.CommandText = "exec master..xp_cmdshell 'bcp [MPRE].[dbo].[T15] out G:/项目/多维精神康复系统/MPRE同步更新版/MPRE/MPRE/CSV/T15.csv  -c -t -U sa -P 123456 '";
            cmd.ExecuteNonQuery();
            cmd.CommandText = "exec master..xp_cmdshell 'bcp [MPRE].[dbo].[T16] out G:/项目/多维精神康复系统/MPRE同步更新版/MPRE/MPRE/CSV/T16.csv  -c -t -U sa -P 123456 '";
            cmd.ExecuteNonQuery();
            cmd.CommandText = "exec master..xp_cmdshell 'bcp [MPRE].[dbo].[T17] out G:/项目/多维精神康复系统/MPRE同步更新版/MPRE/MPRE/CSV/T17.csv  -c -t -U sa -P 123456 '";
            cmd.ExecuteNonQuery();
            cmd.CommandText = "exec master..xp_cmdshell 'bcp [MPRE].[dbo].[T18] out G:/项目/多维精神康复系统/MPRE同步更新版/MPRE/MPRE/CSV/T18.csv  -c -t -U sa -P 123456 '";
            cmd.ExecuteNonQuery();
            cmd.CommandText = "exec master..xp_cmdshell 'bcp [MPRE].[dbo].[T19] out G:/项目/多维精神康复系统/MPRE同步更新版/MPRE/MPRE/CSV/T19.csv  -c -t -U sa -P 123456 '";
            cmd.ExecuteNonQuery();
            cmd.CommandText = "exec master..xp_cmdshell 'bcp [MPRE].[dbo].[T20] out G:/项目/多维精神康复系统/MPRE同步更新版/MPRE/MPRE/CSV/T20.csv  -c -t -U sa -P 123456 '";
            cmd.ExecuteNonQuery();
            cmd.CommandText = "exec master..xp_cmdshell 'bcp [MPRE].[dbo].[T21] out G:/项目/多维精神康复系统/MPRE同步更新版/MPRE/MPRE/CSV/T21.csv  -c -t -U sa -P 123456 '";
            cmd.ExecuteNonQuery();
            cmd.CommandText = "exec master..xp_cmdshell 'bcp [MPRE].[dbo].[T22] out G:/项目/多维精神康复系统/MPRE同步更新版/MPRE/MPRE/CSV/T22.csv  -c -t -U sa -P 123456 '";
            cmd.ExecuteNonQuery();
            cmd.CommandText = "exec master..xp_cmdshell 'bcp [MPRE].[dbo].[T23] out G:/项目/多维精神康复系统/MPRE同步更新版/MPRE/MPRE/CSV/T23.csv  -c -t -U sa -P 123456 '";
            cmd.ExecuteNonQuery();
            cmd.CommandText = "exec master..xp_cmdshell 'bcp [MPRE].[dbo].[T24] out G:/项目/多维精神康复系统/MPRE同步更新版/MPRE/MPRE/CSV/T24.csv  -c -t -U sa -P 123456 '";
            cmd.ExecuteNonQuery();
            cmd.CommandText = "exec master..xp_cmdshell 'bcp [MPRE].[dbo].[T25] out G:/项目/多维精神康复系统/MPRE同步更新版/MPRE/MPRE/CSV/T25.csv  -c -t -U sa -P 123456 '";
            cmd.ExecuteNonQuery();
            cmd.CommandText = "exec master..xp_cmdshell 'bcp [MPRE].[dbo].[T26] out G:/项目/多维精神康复系统/MPRE同步更新版/MPRE/MPRE/CSV/T26.csv  -c -t -U sa -P 123456 '";
            cmd.ExecuteNonQuery();
            cmd.CommandText = "exec master..xp_cmdshell 'bcp [MPRE].[dbo].[T27] out G:/项目/多维精神康复系统/MPRE同步更新版/MPRE/MPRE/CSV/T27.csv  -c -t -U sa -P 123456 '";
            cmd.ExecuteNonQuery();
            cmd.CommandText = "exec master..xp_cmdshell 'bcp [MPRE].[dbo].[T28] out G:/项目/多维精神康复系统/MPRE同步更新版/MPRE/MPRE/CSV/T28.csv  -c -t -U sa -P 123456 '";
            cmd.ExecuteNonQuery();
            cmd.CommandText = "exec master..xp_cmdshell 'bcp [MPRE].[dbo].[Report] out G:/项目/多维精神康复系统/MPRE同步更新版/MPRE/MPRE/CSV/report.csv  -c -t -U sa -P 123456 '";
            cmd.ExecuteNonQuery();
            cmd.CommandText = "exec master..xp_cmdshell 'bcp [MPRE].[dbo].[Hospital] out G:/项目/多维精神康复系统/MPRE同步更新版/MPRE/MPRE/CSV/hospital.csv  -c -t -U sa -P 123456 '";
            cmd.ExecuteNonQuery();
            cmd.CommandText = "exec master..xp_cmdshell 'bcp [MPRE].[dbo].[Doctor] out G:/项目/多维精神康复系统/MPRE同步更新版/MPRE/MPRE/CSV/doctor.csv  -c -t -U sa -P 123456 '";
            cmd.ExecuteNonQuery();
            cmd.CommandText = "exec master..xp_cmdshell 'bcp [MPRE].[dbo].[Patient] out G:/项目/多维精神康复系统/MPRE同步更新版/MPRE/MPRE/CSV/patient.csv  -c -t -U sa -P 123456 '";
            cmd.ExecuteNonQuery();
            cmd.CommandText = "exec master..xp_cmdshell 'bcp [MPRE].[dbo].[Disease] out G:/项目/多维精神康复系统/MPRE同步更新版/MPRE/MPRE/CSV/disease.csv  -c -t -U sa -P 123456 '";
            cmd.ExecuteNonQuery();
            cmd.CommandText = "exec master..xp_cmdshell 'bcp [MPRE].[dbo].[Medicine] out G:/项目/多维精神康复系统/MPRE同步更新版/MPRE/MPRE/CSV/medicine.csv  -c -t -U sa -P 123456 '";
            cmd.ExecuteNonQuery();
            conn.Close();
            
        }
    }
    private void GetRAR()
    {
        string path = "CSV/";
        string serverPath = Server.MapPath(path);
        string tempName = DateTime.Now.ToString("yyyyMMddHHMMss");
        string tempFolder = Path.Combine(serverPath, tempName);
        Directory.CreateDirectory(tempFolder);
        DirectoryInfo folder = new DirectoryInfo(serverPath);
        foreach (FileInfo file in folder.GetFiles())
        {
            string filename = file.Name;
            File.Copy(serverPath + "/" + filename, tempFolder + "/" + filename);
        }
        //ZKHelper.JSHelper.Alert("图片拷贝成功!");
        //产生RAR文件，及文件输出
        RARSave(tempFolder, tempName);
        DownloadRAR(tempFolder + "\\\\" + tempName + ".rar");
    }
    /// <summary>
    /// 生成RAR文件
    /// </summary>
    /// <param name="path">存放复制文件的目录</param>
    /// <param name="rarPatch">RAR文件存放目录</param>
    /// <param name="rarName">RAR文件名</param>
    private void RARSave(string rarPatch, string rarName)
    {
        string the_rar;
        RegistryKey the_Reg;
        Object the_Obj;
        string the_Info;
        ProcessStartInfo the_StartInfo;
        Process the_Process;
        try
        {
            the_Reg = Registry.ClassesRoot.OpenSubKey(@"WinRAR");
            the_Obj = the_Reg.GetValue("");
            the_rar = the_Obj.ToString();
            the_Reg.Close();
            the_rar = the_rar.Substring(1, the_rar.Length - 7);
            the_Info = " a " + rarName + " -r";
            the_StartInfo = new ProcessStartInfo();
            the_StartInfo.FileName = "WinRar";//the_rar;
            the_StartInfo.Arguments = the_Info;
            the_StartInfo.WindowStyle = ProcessWindowStyle.Hidden;
            //打包文件存放目录
            the_StartInfo.WorkingDirectory = rarPatch;
            the_Process = new Process();
            the_Process.StartInfo = the_StartInfo;
            the_Process.Start();
            the_Process.WaitForExit();
            the_Process.Close();
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }
    private void DownloadRAR(string file)
    {
        FileInfo fileInfo = new FileInfo(file);
        Response.Clear();
        Response.ClearContent();
        Response.ClearHeaders();
        Response.AddHeader("Content-Disposition", "attachment;filename=" + fileInfo.Name);
        Response.AddHeader("Content-Length", fileInfo.Length.ToString());
        Response.AddHeader("Content-Transfer-Encoding", "binary");
        Response.ContentType = "application/octet-stream";
        Response.ContentEncoding = System.Text.Encoding.GetEncoding("gb2312");
        Response.WriteFile(fileInfo.FullName);
        Response.Flush();
        string tempPath = file.Substring(0, file.LastIndexOf("\\\\"));
        //删除临时目录下的所有文件
        DeleteFiles(tempPath);
        //删除空目录
        Directory.Delete(tempPath);
        Response.End();
    }
    private void DeleteFiles(string tempPath)
    {
        DirectoryInfo directory = new DirectoryInfo(tempPath);
        try
        {
            foreach (FileInfo file in directory.GetFiles())
            {
                if (file.Attributes.ToString().IndexOf("ReadOnly") != -1)
                {
                    file.Attributes = FileAttributes.Normal;
                }
                File.Delete(file.FullName);
            }
        }
        catch (Exception)
        {
            throw;
        }
    }
    protected void InitBtn_Click(object sender, EventArgs e)
    {
        
    }
}