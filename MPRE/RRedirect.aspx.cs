using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RRedirect : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["TGUID"] != null && Request.QueryString["TNum"] != null)
            {
                TNum.Text = Request.QueryString["TNum"].ToString();
                TGUID.Text = Request.QueryString["TGUID"].ToString();
                switch (TNum.Text){
                    case "大体功能评定量表（GAF）":
                        TNum.Text = "1";
                        break;
                    case "个人与社会表现量表(PSP)":
                        TNum.Text = "2";
                        break;
                    case "世界卫生组织残疾评估量表(WHO DAS)":
                        TNum.Text = "3";
                        break;
                    case "工作与学习维度影响量表 （SIWS）":
                        TNum.Text = "4";
                        break;
                    case "生活技能量表（LSP)":
                        TNum.Text = "5";
                        break;
                    case "社交技能操作评估（SSES）":
                        TNum.Text = "6";
                        break;
                    case "北京精神分裂症操作性功能评估量表(BP)":
                        TNum.Text = "7";
                        break;
                    case "躯体健康维度 (PH)":
                        TNum.Text = "8";
                        break;
                    case "SF-36健康调查量表(SF-36)":
                        TNum.Text = "9";
                        break;
                    case "一般自我效能感量表 (GSES)":
                        TNum.Text = "10";
                        break;
                    case "精神疾病内化污名量表(ISMI)":
                        TNum.Text = "11";
                        break;
                    case "精神分裂症希望量表 (SHS-9)":
                        TNum.Text = "12";
                        break;
                    case "中文人生意义问卷(C-MLQ)":
                        TNum.Text = "13";
                        break;
                    case "临床总体印象量表（CGI）":
                        TNum.Text = "14";
                        break;
                    case "阳性与阴性症状量表(PANSS)":
                        TNum.Text = "15";
                        break;
                    case "MATRICS共识认知成套测验（MCCB）":
                        TNum.Text = "16";
                        break;
                    case "修订版外显攻击行为量表（MOAS）":
                        TNum.Text = "17";
                        break;
                    case "护士用自杀风险评估量表（NGASR）":
                        TNum.Text = "18";
                        break;
                    case "卡尔加里精神分裂症抑郁量表（CDSS）":
                        TNum.Text = "19";
                        break;
                    case "治疗副反应量表（TESS）":
                        TNum.Text = "20";
                        break;
                    case "锥体外系副反应量表（RSESE）":
                        TNum.Text = "21";
                        break;
                    case "服药依从性问卷（MAQ）":
                        TNum.Text = "22";
                        break;
                    case "自知力与治疗态度问卷表（ITAQ）":
                        TNum.Text = "23";
                        break;
                    case "药物管理能力评估（MMAA）":
                        TNum.Text = "24";
                        break;
                    case "社会支持评定量表（SSRS）":
                        TNum.Text = "25";
                        break;
                    case "家庭功能评定（FAD）":
                        TNum.Text = "26";
                        break;
                    case "婚恋评估（MRQ）":
                        TNum.Text = "27";
                        break;
                    case "医疗资源评估（MRS）":
                        TNum.Text = "28";
                        break;
                    default:
                        TNum.Text = "1";
                        break;
                }
                Response.Write(" <script> window.location='R" + TNum.Text + ".aspx?TGUID=" + TGUID.Text + "&TNum=" + TNum.Text + "'; </script> ");
            }
        }
    }
}