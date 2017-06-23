<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Readme_TestList.aspx.cs" Inherits="Readme_TestList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 4px;
        }
        .auto-style3 {
            width: 300px;
            text-align:center;
           
        }
        table a:hover{
             cursor:pointer;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="CurrentPosition">当前位置：<a href="#">帮助说明</a>>><a href="#">量表测试说明</a>   </div>
        <div class="page-body">
            <div class="row">
                <div class="widget">
                    <div class="widget-header">
                        <span class="widget-caption">报告单列表</span>
                    </div>
                    <div class="widget-body">
                        <table class="table table-bordered table-hover">
                            <thead>
                                <tr>

                                    <th style="background: #F0F7FF;" class="auto-style1"> 序
                                    </th>
                                    <th style="background: #F0F7FF;" class="auto-style3">维度
                                    </th>
                                    <th style="background: #F0F7FF; width:70%">测试量表名称
                                    </th>
                  
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td rowspan="7">1</td>
                                    <td class="auto-style3" rowspan="7">功能康复维度</td>
                                    <td><a href="Readme_Test.aspx?T=1" target="_blank" >T1 功能大体评定量表 GAF</a></td>
                                </tr>
                                <tr>                                                                        
                                    <td><a href="Readme_Test.aspx?T=2" target="_blank">T2 个人与社会表现量表 PSP</a></td>
                                </tr>
                                <tr>                                    
                                    <td><a href="Readme_Test.aspx?T=3" target="_blank">T3 世界卫生组织残疾评估量 WHO DAS</a></td>
                                </tr>
                                <tr>                                    
                                    <td><a href="Readme_Test.aspx?T=4" target="_blank">T4 工作与学习维度影响量表 SIWS</a></td>
                                </tr>
                                <tr>                                    
                                    <td><a href="Readme_Test.aspx?T=5" target="_blank">T5 生活技能量表 LSP</a></td>
                                </tr>
                                <tr>                                    
                                    <td><a href="Readme_Test.aspx?T=6" target="_blank">T6 社交技能评估量表SSES</a></td>
                                </tr>
                                <tr>                                    
                                    <td><a href="Readme_Test.aspx?T=7" target="_blank" >T7 北京精神分裂症操作性功能评估量表BJ-PERFECT</a></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td class="auto-style3">躯体健康维度</td>
                                    <td><a href="Readme_Test.aspx?T=8" target="_blank">T8 躯体维度量表 Body</a></td>
                                </tr>
                                <tr>
                                    <td rowspan="5">3</td>
                                    <td class="auto-style3" rowspan="5">生命价值和质量维度</td>
                                    <td><a href="Readme_Test.aspx?T=9" target="_blank">T9 健康调查量表 SF-36</a></td>
                                </tr>
                                <tr>                                                                        
                                    <td><a href="Readme_Test.aspx?T=10" target="_blank">T10 一般自我效能感量表 GSES</a></td>
                                </tr>
                                <tr>                                    
                                    <td><a href="Readme_Test.aspx?T=11" target="_blank">T11 精神疾病内化污名量表 ISMI</a></td>
                                </tr>
                                <tr>                                    
                                    <td><a href="Readme_Test.aspx?T=12"  target="_blank">T12 精神分裂症希望量表SHS-9</a></td>
                                </tr>
                                <tr>                                    
                                    <td><a href="Readme_Test.aspx?T=13"  target="_blank">T13 中文人生意义问卷 C-MLQ</a></td>
                                </tr>
                                <tr>
                                    <td rowspan="8">4</td>
                                    <td class="auto-style3" rowspan="8">功能康复维度</td>
                                    <td><a href="Readme_Test.aspx?T=14" target="_blank">T14 临床总体印象量表 CGI</a></td>
                                </tr>
                                <tr>                                                                        
                                    <td><a href="Readme_Test.aspx?T=15" target="_blank">T15 阳性和阴性精神症状评定量表 PANSS</a></td>
                                </tr>
                                <tr>                                    
                                    <td><a href="Readme_Test.aspx?T=16" target="_blank">T16 MATRICS共识认知成套测验 MCCB</a></td>
                                </tr>
                                <tr>                                    
                                    <td><a href="Readme_Test.aspx?T=17" target="_blank">T17 修订版外显攻击行为量表 MOAS</a></td>
                                </tr>
                                <tr>                                    
                                    <td><a href="Readme_Test.aspx?T=18" target="_blank">T18 护士用自杀风险评估量表 NGASR</a></td>
                                </tr>
                                <tr>                                    
                                    <td><a href="Readme_Test.aspx?T=19" target="_blank">T19 卡尔加里精神分裂症抑郁量表 CDSS</a></td>
                                </tr>
                                <tr>                                    
                                    <td><a href="Readme_Test.aspx?T=20" target="_blank">T20 治疗副反应量表 TESS</a></td>
                                </tr>
                                <tr>                                    
                                    <td><a href="Readme_Test.aspx?T=21" target="_blank">T21 锥体外系副反应量表 RSESE</a></td>
                                </tr>
                                <tr>
                                    <td rowspan="3">5</td>
                                    <td class="auto-style3" rowspan="3">治疗意愿及能力维度</td>
                                    <td><a href="Readme_Test.aspx?T=22" target="_blank">T22 服药依从性问卷 MAQ</a></td>
                                </tr>
                                <tr>                                                                        
                                    <td><a href="Readme_Test.aspx?T=23" target="_blank">T23 自知力与治疗态度问卷表 ITAQ</a></td>
                                </tr>
                                <tr>                                    
                                    <td><a href="Readme_Test.aspx?T=24" target="_blank">T24 药物管理能力评估 MMAA</a></td>
                                </tr>
                                <tr>
                                    <td rowspan="4">6</td>
                                    <td class="auto-style3" rowspan="4">资源维度</td>
                                    <td><a href="Readme_Test.aspx?T=25" target="_blank">T25 社会支持评定量表 SSRS</a></td>
                                </tr>
                                <tr>                                    
                                    <td><a href="Readme_Test.aspx?T=26" target="_blank">T26 家庭功能评定 FAD</a></td>
                                </tr>
                                <tr>                                    
                                    <td><a href="Readme_Test.aspx?T=27" target="_blank">T27 婚恋评估 MRQ</a></td>
                                </tr>
                                <tr>                                    
                                    <td><a href="Readme_Test.aspx?T=28" target="_blank">T28 医疗资源评估MRS</a></td>
                                </tr>
                            </tbody>
                            
                        </table>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>

