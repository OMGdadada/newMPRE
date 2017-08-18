using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Session 的摘要说明
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// 若要允许使用 ASP.NET AJAX 从脚本中调用此 Web 服务，请取消注释以下行。 
// [System.Web.Script.Services.ScriptService]
public class Session : System.Web.Services.WebService {

    public Session () {

        //如果使用设计的组件，请取消注释以下行 
        //InitializeComponent(); 
    }

    [WebMethod(EnableSession=true)]
    public string HelloWorld() {
        int OnLineUserCount;
        if (Session["DoctorGUID"] != null)
        {
            Session["DoctorGUID"] = Session["DoctorGUID"];
            OnLineUserCount = (int)Application["OnLineUserCount"];
            return "" + OnLineUserCount + "";
        }
        else
        {
            return "Session丢失";
        }
            
        
    }
    

}
