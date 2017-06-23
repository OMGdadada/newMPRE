<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Test_Select.aspx.cs" Inherits="Test_Select" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="assets/css/bootstrap2.min.css" rel="stylesheet" />
    <link href="assets/css/beyond2.min.css" rel="stylesheet" />
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="DoctorGUID" runat="server" Visible="false"></asp:Label>
    <asp:Label ID="DoctorName" runat="server" Visible="false"></asp:Label>
      <script type="text/javascript">
          $(document).ready(function () {
              //alert("Hello!");
              $("#TestRow div.databox-right").hover(function () {
                  $(this).css("background-color", "#EEE8AB");
                  //alert("H");
              }, function () {
                  $(this).css("background-color", "#ffffff");
              });
          });
    </script>
    <div id="CurrentPosition">&nbsp;&nbsp;当前位置：<a href="Dashboard.aspx">报告单管理</a>>> <a href="#">报告单打印</a> </div>
    <div class="page-body" style="padding: 18px 20px 24px;">
        <div class="row">
            <div class="col-xs-12 col-md-12">
                                    <div class="widget">
                                        <div class="widget-header bg-blueberry">
                                            <i class="widget-icon fa fa-arrow-right"></i>
                                            <span class="widget-caption">病人基本资料</span>
                                            <div class="widget-buttons">


                                                <a href="Patient_Info.aspx?GUID=<%= GUIDS %>"  target="_blank">
                                                    <i class="fa fa-edit" style="font-size:13px;"> 修改</i>
                                                </a>

                                            </div>
                                            <!--Widget Buttons-->
                                        </div>
                                        <!--Widget Header-->
                                        <div class="widget-body">
                                            <div style="width: 100%; margin: auto; text-align: center">
                                                <table class="table">
                                                    <tr>
                                                        <th>姓名</th>
                                                        <th>
                                                            <a href="Patient_Info.aspx?GUID=<%= GUIDS %>"  target="_blank">
                                                                <asp:Label ID="Patient" runat="server" ></asp:Label>
                                                            </a>
                                                        </th>

                                                        <th>编号</th>
                                                        <th>
                                                            <asp:Label ID="GUID" runat="server" ></asp:Label></th>
                                                    </tr>

                                                    <tr>
                                                        <th>性别</th>
                                                        <th>
                                                            <asp:Label ID="Sex" runat="server" ></asp:Label></th>
                                                        <th>出生日期</th>
                                                        <th>
                                                            <asp:Label ID="Birthday" runat="server"></asp:Label></th>
                                                    </tr>

                                                    <tr>
                                                        <th>门诊号</th>
                                                        <th>
                                                            <asp:Label ID="Num1" runat="server" ></asp:Label></th>
                                                        <th>联系电话1</th>
                                                        <th>
                                                            <asp:Label ID="Phone1" runat="server" ></asp:Label></th>
                                                    </tr>


                                                </table>


                                                <code>
                                                </code>
                                            </div>
                                            <!--Widget Body-->
                                        </div>
                                        <!--Widget-->

                                    </div>

                                </div>


               <div class="col-xs-12 col-md-12">
                                    <div class="widget">
                                        <div class="widget-header bg-blue">
                                            <i class="widget-icon fa fa-arrow-right"></i>
                                            <span class="widget-caption" style="font-size: 15px;"><strong>测试维度</strong></span>

                                        </div>
                                        <!--Widget Header-->
                                        <div class="widget-body">

                                            <h3><strong>功能康复维度</strong> </h3>
                                            <hr />
                                            <div class="row" style="margin:4px 0px 40px 0px;">
                                                <div style="margin:20px 0px"></div>
                                                <table class="table table-bordered table-hover" style="text-align:center;vertical-align:middle;font-size:14px;">
                                                    
                                                    <tbody>
                                                        <tr>
                                                            <td style="vertical-align:middle;font-weight:bolder;width:40%;">
                                                                T1 功能大体评定量表（GAF）
                                                                <p>- 必做 -</p>
                                                            </td>
                                                            <td>
                                                                <div class="row">

                                                                    <asp:Repeater ID="Repeater1" runat="server"> 
                                                                        <ItemTemplate>
                                                                        <!-- Event -->
                                                                            <div class="col-lg-3 col-sm-3 col-xs-6">
                                                                                <div class="checkbox">
                                                                                    <label style="padding-left:0;">
                                                                                        <input type="checkbox" class="colored-blue" name="1" value="<%# Eval("GUID") %>" />
                                                                                        <span class="text"><%# String.Format("{0:yy年MM月dd日}",Eval("EndDT") ) %></span>
                                                                                    </label>
                                                                                </div>
                                                                            </div>
                                                                        <!-- /Event -->
                                                                        </ItemTemplate>
                                                                    </asp:Repeater>

                                                                </div>

                                                            </td>
                                                        </tr>

                                                        <tr>
                                                            <td style="vertical-align:middle;font-weight:bolder;width:40%;">
                                                                T2 个人与社会表现量表（PSP）
                                                                <p>- 核心 -</p>
                                                            </td>
                                                            <td>
                                                                <div class="row">
                                                                    <asp:Repeater ID="Repeater2" runat="server"> 
                                                                        <ItemTemplate>
                                                                        <!-- Event -->
                                                                            <div class="col-lg-3 col-sm-3 col-xs-6">
                                                                                <div class="checkbox">
                                                                                    <label style="padding-left:0;">
                                                                                        <input type="checkbox" class="colored-blue" name="2" value="<%# Eval("GUID") %>" />
                                                                                        <span class="text"><%# String.Format("{0:yy年MM月dd日}",Eval("EndDT") ) %></span>
                                                                                    </label>
                                                                                </div>
                                                                            </div>
                                                                        <!-- /Event -->
                                                                        </ItemTemplate>
                                                                    </asp:Repeater>
                                                                </div>
                                                            </td>
                                                        </tr>

                                                        <tr>
                                                            <td style="vertical-align:middle;font-weight:bolder;width:40%;">
                                                                T3 世界卫生组织残疾评定量表（WHO DAS）
                                                                <p>- 核心 -</p>
                                                            </td>
                                                            <td>
                                                                <div class="row">
                                                                    <asp:Repeater ID="Repeater3" runat="server"> 
                                                                        <ItemTemplate>
                                                                        <!-- Event -->
                                                                            <div class="col-lg-3 col-sm-3 col-xs-6">
                                                                                <div class="checkbox">
                                                                                    <label style="padding-left:0;">
                                                                                        <input type="checkbox" class="colored-blue" name="3" value="<%# Eval("GUID") %>" />
                                                                                        <span class="text"><%# String.Format("{0:yy年MM月dd日}",Eval("EndDT") ) %></span>
                                                                                    </label>
                                                                                </div>
                                                                            </div>
                                                                        <!-- /Event -->
                                                                        </ItemTemplate>
                                                                    </asp:Repeater>
                                                                </div>

                                                            </td>
                                                        </tr>

                                                        <tr>
                                                            <td style="vertical-align:middle;font-weight:bolder;width:40%;">
                                                                T4 工作与学习维度影响量表（SIWS）
                                                                <p>- 补充 -</p>
                                                            </td>
                                                            <td>
                                                                <div class="row">
                                                                    <asp:Repeater ID="Repeater4" runat="server"> 
                                                                        <ItemTemplate>
                                                                        <!-- Event -->
                                                                            <div class="col-lg-3 col-sm-3 col-xs-6">
                                                                                <div class="checkbox">
                                                                                    <label style="padding-left:0;">
                                                                                        <input type="checkbox" class="colored-blue" name="4" value="<%# Eval("GUID") %>" />
                                                                                        <span class="text"><%# String.Format("{0:yy年MM月dd日}",Eval("EndDT") ) %></span>
                                                                                    </label>
                                                                                </div>
                                                                            </div>
                                                                        <!-- /Event -->
                                                                        </ItemTemplate>
                                                                    </asp:Repeater>
                                                                </div>

                                                               

                                                            </td>
                                                        </tr>

                                                        <tr>
                                                            <td style="vertical-align:middle;font-weight:bolder;width:40%;">
                                                                T5 生活技能量表（LSP）
                                                                <p>- 补充 -</p>
                                                            </td>
                                                            <td>
                                                                <div class="row">
                                                                    <asp:Repeater ID="Repeater5" runat="server"> 
                                                                        <ItemTemplate>
                                                                        <!-- Event -->
                                                                            <div class="col-lg-3 col-sm-3 col-xs-6">
                                                                                <div class="checkbox">
                                                                                    <label style="padding-left:0;">
                                                                                        <input type="checkbox" class="colored-blue" name="5" value="<%# Eval("GUID") %>" />
                                                                                        <span class="text"><%# String.Format("{0:yy年MM月dd日}",Eval("EndDT") ) %></span>
                                                                                    </label>
                                                                                </div>
                                                                            </div>
                                                                        <!-- /Event -->
                                                                        </ItemTemplate>
                                                                    </asp:Repeater>
                                                                    
                                                                </div>

                                                            </td>
                                                        </tr>

                                                        <tr>
                                                            <td style="vertical-align:middle;font-weight:bolder;width:40%;">
                                                                T6 社交技能评估量表（SSES）
                                                                <p>- 补充 -</p>
                                                            </td>
                                                            <td>
                                                                <div class="row">
                                                                    <asp:Repeater ID="Repeater6" runat="server"> 
                                                                        <ItemTemplate>
                                                                        <!-- Event -->
                                                                            <div class="col-lg-3 col-sm-3 col-xs-6">
                                                                                <div class="checkbox">
                                                                                    <label style="padding-left:0;">
                                                                                        <input type="checkbox" class="colored-blue" name="6" value="<%# Eval("GUID") %>" />
                                                                                        <span class="text"><%# String.Format("{0:yy年MM月dd日}",Eval("EndDT") ) %></span>
                                                                                    </label>
                                                                                </div>
                                                                            </div>
                                                                        <!-- /Event -->
                                                                        </ItemTemplate>
                                                                    </asp:Repeater>
                                                                </div>
                                                                    

                                                            </td>
                                                        </tr>

                                                        <tr>
                                                            <td style="vertical-align:middle;font-weight:bolder;width:40%;">
                                                                T7 北京精神分裂症操作性功能评估量表（BJ-PERFECT）
                                                                <p>- 补充 -</p>
                                                            </td>
                                                            <td>
                                                                <div class="row">
                                                                    <asp:Repeater ID="Repeater7" runat="server"> 
                                                                        <ItemTemplate>
                                                                        <!-- Event -->
                                                                            <div class="col-lg-3 col-sm-3 col-xs-6">
                                                                                <div class="checkbox">
                                                                                    <label style="padding-left:0;">
                                                                                        <input type="checkbox" class="colored-blue" name="7" value="<%# Eval("GUID") %>" />
                                                                                        <span class="text"><%# String.Format("{0:yy年MM月dd日}",Eval("EndDT") ) %></span>
                                                                                    </label>
                                                                                </div>
                                                                            </div>
                                                                        <!-- /Event -->
                                                                        </ItemTemplate>
                                                                    </asp:Repeater>
                                                                </div>
                                                                    

                                                            </td>
                                                        </tr>

                                                    </tbody>
                                                </table>
                                            </div>
                                             

                                            <h3><strong>躯体维度</strong> </h3>
                                            <hr />
                                            <div class="row" style="margin:4px 0px 40px 0px;">
                                                <div style="margin:20px 0px"></div>
                                                <table class="table table-bordered table-hover" style="text-align:center;vertical-align:middle;font-size:14px;">
                                                    
                                                    <tbody>
                                                        <tr>
                                                            <td style="vertical-align:middle;font-weight:bolder;width:40%;">
                                                                T8 躯体维度量表（Body）
                                                                <p>- 必做 -</p>
                                                            </td>
                                                            <td>
                                                                 <div class="row">
                                                                    <asp:Repeater ID="Repeater8" runat="server"> 
                                                                        <ItemTemplate>
                                                                        <!-- Event -->
                                                                            <div class="col-lg-3 col-sm-3 col-xs-6">
                                                                                <div class="checkbox">
                                                                                    <label style="padding-left:0;">
                                                                                        <input type="checkbox" class="colored-blue" name="8" value="<%# Eval("GUID") %>" />
                                                                                        <span class="text"><%# String.Format("{0:yy年MM月dd日}",Eval("EndDT") ) %></span>
                                                                                    </label>
                                                                                </div>
                                                                            </div>
                                                                        <!-- /Event -->
                                                                        </ItemTemplate>
                                                                    </asp:Repeater>
                                                                </div>

                                                            </td>
                                                        </tr>

                                                    </tbody>
                                                </table>
                                            </div>

                                            <h3><strong>生命价值和质量维度</strong> </h3>
                                            <hr />
                                            <div class="row" style="margin:4px 0px 40px 0px;">
                                                <div style="margin:20px 0px"></div>
                                                <table class="table table-bordered table-hover" style="text-align:center;vertical-align:middle;font-size:14px;">
                                                    
                                                    <tbody>
                                                        <tr>
                                                            <td style="vertical-align:middle;font-weight:bolder;width:40%;">
                                                                T9 健康调查量表（SF-36）
                                                                <p>- 必做 -</p>
                                                            </td>
                                                            <td>
                                                                 <div class="row">
                                                                    <asp:Repeater ID="Repeater9" runat="server"> 
                                                                        <ItemTemplate>
                                                                        <!-- Event -->
                                                                            <div class="col-lg-3 col-sm-3 col-xs-6">
                                                                                <div class="checkbox">
                                                                                    <label style="padding-left:0;">
                                                                                        <input type="checkbox" class="colored-blue" name="9" value="<%# Eval("GUID") %>" />
                                                                                        <span class="text"><%# String.Format("{0:yy年MM月dd日}",Eval("EndDT") ) %></span>
                                                                                    </label>
                                                                                </div>
                                                                            </div>
                                                                        <!-- /Event -->
                                                                        </ItemTemplate>
                                                                    </asp:Repeater>
                                                                </div>
                                                            </td>
                                                        </tr>

                                                         <tr>
                                                            <td style="vertical-align:middle;font-weight:bolder;width:40%;">
                                                                T10 一般自我效能感量表（GSES）
                                                                <p>- 核心 -</p>
                                                            </td>
                                                            <td>
                                                                 <div class="row">
                                                                    <asp:Repeater ID="Repeater10" runat="server"> 
                                                                        <ItemTemplate>
                                                                        <!-- Event -->
                                                                            <div class="col-lg-3 col-sm-3 col-xs-6">
                                                                                <div class="checkbox">
                                                                                    <label style="padding-left:0;">
                                                                                        <input type="checkbox" class="colored-blue" name="10" value="<%# Eval("GUID") %>" />
                                                                                        <span class="text"><%# String.Format("{0:yy年MM月dd日}",Eval("EndDT") ) %></span>
                                                                                    </label>
                                                                                </div>
                                                                            </div>
                                                                        <!-- /Event -->
                                                                        </ItemTemplate>
                                                                    </asp:Repeater>
                                                                </div>
                                                            </td>
                                                        </tr>

                                                        <tr>
                                                            <td style="vertical-align:middle;font-weight:bolder;width:40%;">
                                                                T11 精神疾病内化污名量表（ISMI）
                                                                <p>- 补充 -</p>
                                                            </td>
                                                            <td>
                                                                 <div class="row">
                                                                    <asp:Repeater ID="Repeater11" runat="server"> 
                                                                        <ItemTemplate>
                                                                        <!-- Event -->
                                                                            <div class="col-lg-3 col-sm-3 col-xs-6">
                                                                                <div class="checkbox">
                                                                                    <label style="padding-left:0;">
                                                                                        <input type="checkbox" class="colored-blue" name="11" value="<%# Eval("GUID") %>" />
                                                                                        <span class="text"><%# String.Format("{0:yy年MM月dd日}",Eval("EndDT") ) %></span>
                                                                                    </label>
                                                                                </div>
                                                                            </div>
                                                                        <!-- /Event -->
                                                                        </ItemTemplate>
                                                                    </asp:Repeater>
                                                                </div>
                                                            </td>
                                                        </tr>

                                                        <tr>
                                                            <td style="vertical-align:middle;font-weight:bolder;width:40%;">
                                                                T12 精神分裂症希望量表（SHS-9）
                                                                <p>- 补充 -</p>
                                                            </td>
                                                            <td>
                                                                 <div class="row">
                                                                    <asp:Repeater ID="Repeater12" runat="server"> 
                                                                        <ItemTemplate>
                                                                        <!-- Event -->
                                                                            <div class="col-lg-3 col-sm-3 col-xs-6">
                                                                                <div class="checkbox">
                                                                                    <label style="padding-left:0;">
                                                                                        <input type="checkbox" class="colored-blue" name="12" value="<%# Eval("GUID") %>" />
                                                                                        <span class="text"><%# String.Format("{0:yy年MM月dd日}",Eval("EndDT") ) %></span>
                                                                                    </label>
                                                                                </div>
                                                                            </div>
                                                                        <!-- /Event -->
                                                                        </ItemTemplate>
                                                                    </asp:Repeater>
                                                                </div>
                                                            </td>
                                                        </tr>

                                                        <tr>
                                                            <td style="vertical-align:middle;font-weight:bolder;width:40%;">
                                                                T13 中文人生意义问卷（C-MLQ）
                                                                <p>- 补充 -</p>
                                                            </td>
                                                            <td>
                                                                 <div class="row">
                                                                    <asp:Repeater ID="Repeater13" runat="server"> 
                                                                        <ItemTemplate>
                                                                        <!-- Event -->
                                                                            <div class="col-lg-3 col-sm-3 col-xs-6">
                                                                                <div class="checkbox">
                                                                                    <label style="padding-left:0;">
                                                                                        <input type="checkbox" class="colored-blue" name="13" value="<%# Eval("GUID") %>" />
                                                                                        <span class="text"><%# String.Format("{0:yy年MM月dd日}",Eval("EndDT") ) %></span>
                                                                                    </label>
                                                                                </div>
                                                                            </div>
                                                                        <!-- /Event -->
                                                                        </ItemTemplate>
                                                                    </asp:Repeater>
                                                                </div>
                                                            </td>
                                                        </tr>

                                                    </tbody>
                                                </table>
                                            </div>
                                            

                                            <h3><strong>症状维度</strong> </h3>
                                            <hr />
                                            <div class="row" style="margin:4px 0px 40px 0px;">
                                                <div style="margin:20px 0px"></div>
                                                <table class="table table-bordered table-hover" style="text-align:center;vertical-align:middle;font-size:14px;">
                                                    
                                                    <tbody>
                                                        <tr>
                                                            <td style="vertical-align:middle;font-weight:bolder;width:40%;">
                                                                T14 临床总体印象量表（CGI）
                                                                <p>- 必做 -</p>
                                                            </td>
                                                            <td>
                                                                 <div class="row">
                                                                    <asp:Repeater ID="Repeater14" runat="server"> 
                                                                        <ItemTemplate>
                                                                        <!-- Event -->
                                                                            <div class="col-lg-3 col-sm-3 col-xs-6">
                                                                                <div class="checkbox">
                                                                                    <label style="padding-left:0;">
                                                                                        <input type="checkbox" class="colored-blue" name="14" value="<%# Eval("GUID") %>" />
                                                                                        <span class="text"><%# String.Format("{0:yy年MM月dd日}",Eval("EndDT") ) %></span>
                                                                                    </label>
                                                                                </div>
                                                                            </div>
                                                                        <!-- /Event -->
                                                                        </ItemTemplate>
                                                                    </asp:Repeater>
                                                                </div>
                                                            </td>
                                                        </tr>

                                                        <tr>
                                                            <td style="vertical-align:middle;font-weight:bolder;width:40%;">
                                                                T15 阳性和阴性精神症状评定量表（PANSS）
                                                                <p>- 核心 -</p>
                                                            </td>
                                                            <td>
                                                                 <div class="row">
                                                                    <asp:Repeater ID="Repeater15" runat="server"> 
                                                                        <ItemTemplate>
                                                                        <!-- Event -->
                                                                            <div class="col-lg-3 col-sm-3 col-xs-6">
                                                                                <div class="checkbox">
                                                                                    <label style="padding-left:0;">
                                                                                        <input type="checkbox" class="colored-blue" name="15" value="<%# Eval("GUID") %>" />
                                                                                        <span class="text"><%# String.Format("{0:yy年MM月dd日}",Eval("EndDT") ) %></span>
                                                                                    </label>
                                                                                </div>
                                                                            </div>
                                                                        <!-- /Event -->
                                                                        </ItemTemplate>
                                                                    </asp:Repeater>
                                                                </div>
                                                            </td>
                                                        </tr>

                                                        <tr>
                                                            <td style="vertical-align:middle;font-weight:bolder;width:40%;">
                                                                T16 MATRICS共识认知成套测验（MCCB）
                                                                <p>- 核心 -</p>
                                                            </td>
                                                            <td>
                                                                 <div class="row">
                                                                    <asp:Repeater ID="Repeater16" runat="server"> 
                                                                        <ItemTemplate>
                                                                        <!-- Event -->
                                                                            <div class="col-lg-3 col-sm-3 col-xs-6">
                                                                                <div class="checkbox">
                                                                                    <label style="padding-left:0;">
                                                                                        <input type="checkbox" class="colored-blue" name="16" value="<%# Eval("GUID") %>" />
                                                                                        <span class="text"><%# String.Format("{0:yy年MM月dd日}",Eval("EndDT") ) %></span>
                                                                                    </label>
                                                                                </div>
                                                                            </div>
                                                                        <!-- /Event -->
                                                                        </ItemTemplate>
                                                                    </asp:Repeater>
                                                                </div>
                                                            </td>
                                                        </tr>

                                                        <tr>
                                                            <td style="vertical-align:middle;font-weight:bolder;width:40%;">
                                                                T17 修订版外显攻击行为量表（MOAS）
                                                                <p>- 补充 -</p>
                                                            </td>
                                                            <td>
                                                                 <div class="row">
                                                                    <asp:Repeater ID="Repeater17" runat="server"> 
                                                                        <ItemTemplate>
                                                                        <!-- Event -->
                                                                            <div class="col-lg-3 col-sm-3 col-xs-6">
                                                                                <div class="checkbox">
                                                                                    <label style="padding-left:0;">
                                                                                        <input type="checkbox" class="colored-blue" name="17" value="<%# Eval("GUID") %>" />
                                                                                        <span class="text"><%# String.Format("{0:yy年MM月dd日}",Eval("EndDT") ) %></span>
                                                                                    </label>
                                                                                </div>
                                                                            </div>
                                                                        <!-- /Event -->
                                                                        </ItemTemplate>
                                                                    </asp:Repeater>
                                                                </div>
                                                            </td>
                                                        </tr>

                                                        <tr>
                                                            <td style="vertical-align:middle;font-weight:bolder;width:40%;">
                                                                T18 护士用自杀风险评估量表（NGASR）
                                                                <p>- 补充 -</p>
                                                            </td>
                                                            <td>
                                                                 <div class="row">
                                                                    <asp:Repeater ID="Repeater18" runat="server"> 
                                                                        <ItemTemplate>
                                                                        <!-- Event -->
                                                                            <div class="col-lg-3 col-sm-3 col-xs-6">
                                                                                <div class="checkbox">
                                                                                    <label style="padding-left:0;">
                                                                                        <input type="checkbox" class="colored-blue" name="18" value="<%# Eval("GUID") %>" />
                                                                                        <span class="text"><%# String.Format("{0:yy年MM月dd日}",Eval("EndDT") ) %></span>
                                                                                    </label>
                                                                                </div>
                                                                            </div>
                                                                        <!-- /Event -->
                                                                        </ItemTemplate>
                                                                    </asp:Repeater>
                                                                </div>
                                                            </td>
                                                        </tr>

                                                        <tr>
                                                            <td style="vertical-align:middle;font-weight:bolder;width:40%;">
                                                                T19 卡尔加里精神分裂症抑郁量表（CDSS）
                                                                <p>- 补充 -</p>
                                                            </td>
                                                            <td>
                                                                 <div class="row">
                                                                    <asp:Repeater ID="Repeater19" runat="server"> 
                                                                        <ItemTemplate>
                                                                        <!-- Event -->
                                                                            <div class="col-lg-3 col-sm-3 col-xs-6">
                                                                                <div class="checkbox">
                                                                                    <label style="padding-left:0;">
                                                                                        <input type="checkbox" class="colored-blue" name="19" value="<%# Eval("GUID") %>" />
                                                                                        <span class="text"><%# String.Format("{0:yy年MM月dd日}",Eval("EndDT") ) %></span>
                                                                                    </label>
                                                                                </div>
                                                                            </div>
                                                                        <!-- /Event -->
                                                                        </ItemTemplate>
                                                                    </asp:Repeater>
                                                                </div>
                                                            </td>
                                                        </tr>

                                                        <tr>
                                                            <td style="vertical-align:middle;font-weight:bolder;width:40%;">
                                                                T20 治疗副反应量表（TESS）
                                                                <p>- 补充 -</p>
                                                            </td>
                                                            <td>
                                                                 <div class="row">
                                                                    <asp:Repeater ID="Repeater20" runat="server"> 
                                                                        <ItemTemplate>
                                                                        <!-- Event -->
                                                                            <div class="col-lg-3 col-sm-3 col-xs-6">
                                                                                <div class="checkbox">
                                                                                    <label style="padding-left:0;">
                                                                                        <input type="checkbox" class="colored-blue" name="20" value="<%# Eval("GUID") %>" />
                                                                                        <span class="text"><%# String.Format("{0:yy年MM月dd日}",Eval("EndDT") ) %></span>
                                                                                    </label>
                                                                                </div>
                                                                            </div>
                                                                        <!-- /Event -->
                                                                        </ItemTemplate>
                                                                    </asp:Repeater>
                                                                </div>
                                                            </td>
                                                        </tr>

                                                        <tr>
                                                            <td style="vertical-align:middle;font-weight:bolder;width:40%;">
                                                                T21 锥体外系副反应量表（RSESE）
                                                                <p>- 补充 -</p>
                                                            </td>
                                                            <td>
                                                                 <div class="row">
                                                                    <asp:Repeater ID="Repeater21" runat="server"> 
                                                                        <ItemTemplate>
                                                                        <!-- Event -->
                                                                            <div class="col-lg-3 col-sm-3 col-xs-6">
                                                                                <div class="checkbox">
                                                                                    <label style="padding-left:0;">
                                                                                        <input type="checkbox" class="colored-blue" name="21" value="<%# Eval("GUID") %>" />
                                                                                        <span class="text"><%# String.Format("{0:yy年MM月dd日}",Eval("EndDT") ) %></span>
                                                                                    </label>
                                                                                </div>
                                                                            </div>
                                                                        <!-- /Event -->
                                                                        </ItemTemplate>
                                                                    </asp:Repeater>
                                                                </div>
                                                            </td>
                                                        </tr>

                                                    </tbody>
                                                </table>
                                            </div>


                                            <h3><strong>治疗意愿及能力维度</strong> </h3>
                                            <hr />
                                            <div class="row" style="margin:4px 0px 40px 0px;">
                                                <div style="margin:20px 0px"></div>
                                                <table class="table table-bordered table-hover" style="text-align:center;vertical-align:middle;font-size:14px;">
                                                    
                                                    <tbody>
                                                        <tr>
                                                            <td style="vertical-align:middle;font-weight:bolder;width:40%;">
                                                                T22 服药依从性问卷（MAQ）
                                                                <p>- 必做 -</p>
                                                            </td>
                                                            <td>
                                                                 <div class="row">
                                                                    <asp:Repeater ID="Repeater22" runat="server"> 
                                                                        <ItemTemplate>
                                                                        <!-- Event -->
                                                                            <div class="col-lg-3 col-sm-3 col-xs-6">
                                                                                <div class="checkbox">
                                                                                    <label style="padding-left:0;">
                                                                                        <input type="checkbox" class="colored-blue" name="22" value="<%# Eval("GUID") %>" />
                                                                                        <span class="text"><%# String.Format("{0:yy年MM月dd日}",Eval("EndDT") ) %></span>
                                                                                    </label>
                                                                                </div>
                                                                            </div>
                                                                        <!-- /Event -->
                                                                        </ItemTemplate>
                                                                    </asp:Repeater>
                                                                </div>

                                                            </td>
                                                        </tr>

                                                        <tr>
                                                            <td style="vertical-align:middle;font-weight:bolder;width:40%;">
                                                                T23 自知力与治疗态度问卷表（ITAQ）
                                                                <p>- 必做 -</p>
                                                            </td>
                                                            <td>
                                                                 <div class="row">
                                                                    <asp:Repeater ID="Repeater23" runat="server"> 
                                                                        <ItemTemplate>
                                                                        <!-- Event -->
                                                                            <div class="col-lg-3 col-sm-3 col-xs-6">
                                                                                <div class="checkbox">
                                                                                    <label style="padding-left:0;">
                                                                                        <input type="checkbox" class="colored-blue" name="23" value="<%# Eval("GUID") %>" />
                                                                                        <span class="text"><%# String.Format("{0:yy年MM月dd日}",Eval("EndDT") ) %></span>
                                                                                    </label>
                                                                                </div>
                                                                            </div>
                                                                        <!-- /Event -->
                                                                        </ItemTemplate>
                                                                    </asp:Repeater>
                                                                </div>

                                                            </td>
                                                        </tr>

                                                        <tr>
                                                            <td style="vertical-align:middle;font-weight:bolder;width:40%;">
                                                                T24 药物管理能力评估（MMAA）
                                                                <p>- 核心 -</p>
                                                            </td>
                                                            <td>
                                                                 <div class="row">
                                                                    <asp:Repeater ID="Repeater24" runat="server"> 
                                                                        <ItemTemplate>
                                                                        <!-- Event -->
                                                                            <div class="col-lg-3 col-sm-3 col-xs-6">
                                                                                <div class="checkbox">
                                                                                    <label style="padding-left:0;">
                                                                                        <input type="checkbox" class="colored-blue" name="24" value="<%# Eval("GUID") %>" />
                                                                                        <span class="text"><%# String.Format("{0:yy年MM月dd日}",Eval("EndDT") ) %></span>
                                                                                    </label>
                                                                                </div>
                                                                            </div>
                                                                        <!-- /Event -->
                                                                        </ItemTemplate>
                                                                    </asp:Repeater>
                                                                </div>

                                                            </td>
                                                        </tr>

                                                    </tbody>
                                                </table>
                                            </div>
                                            
                                            <!------>


                                            <h3><strong>资源维度</strong> </h3>
                                            <hr />
                                            <div class="row" style="margin:4px 0px 40px 0px;">
                                                <div style="margin:20px 0px"></div>
                                                <table class="table table-bordered table-hover" style="text-align:center;vertical-align:middle;font-size:14px;">
                                                    
                                                    <tbody>
                                                        <tr>
                                                            <td style="vertical-align:middle;font-weight:bolder;width:40%;">
                                                                T25 社会支持评定量表（SSRS）
                                                                <p>- 必做 -</p>
                                                            </td>
                                                            <td>
                                                                 <div class="row">
                                                                    <asp:Repeater ID="Repeater25" runat="server"> 
                                                                        <ItemTemplate>
                                                                        <!-- Event -->
                                                                            <div class="col-lg-3 col-sm-3 col-xs-6">
                                                                                <div class="checkbox">
                                                                                    <label style="padding-left:0;">
                                                                                        <input type="checkbox" class="colored-blue" name="25" value="<%# Eval("GUID") %>" />
                                                                                        <span class="text"><%# String.Format("{0:yy年MM月dd日}",Eval("EndDT") ) %></span>
                                                                                    </label>
                                                                                </div>
                                                                            </div>
                                                                        <!-- /Event -->
                                                                        </ItemTemplate>
                                                                    </asp:Repeater>
                                                                </div>

                                                            </td>
                                                        </tr>

                                                        <tr>
                                                            <td style="vertical-align:middle;font-weight:bolder;width:40%;">
                                                                T26 家庭功能评定（FAD）
                                                                <p>- 核心 -</p>
                                                            </td>
                                                            <td>
                                                                 <div class="row">
                                                                    <asp:Repeater ID="Repeater26" runat="server"> 
                                                                        <ItemTemplate>
                                                                        <!-- Event -->
                                                                            <div class="col-lg-3 col-sm-3 col-xs-6">
                                                                                <div class="checkbox">
                                                                                    <label style="padding-left:0;">
                                                                                        <input type="checkbox" class="colored-blue" name="26" value="<%# Eval("GUID") %>" />
                                                                                        <span class="text"><%# String.Format("{0:yy年MM月dd日}",Eval("EndDT") ) %></span>
                                                                                    </label>
                                                                                </div>
                                                                            </div>
                                                                        <!-- /Event -->
                                                                        </ItemTemplate>
                                                                    </asp:Repeater>
                                                                </div>

                                                            </td>
                                                        </tr>

                                                        <tr>
                                                            <td style="vertical-align:middle;font-weight:bolder;width:40%;">
                                                                T27 婚恋评估（MRQ）
                                                                <p>- 核心 -</p>
                                                            </td>
                                                            <td>
                                                                 <div class="row">
                                                                    <asp:Repeater ID="Repeater27" runat="server"> 
                                                                        <ItemTemplate>
                                                                        <!-- Event -->
                                                                            <div class="col-lg-3 col-sm-3 col-xs-6">
                                                                                <div class="checkbox">
                                                                                    <label style="padding-left:0;">
                                                                                        <input type="checkbox" class="colored-blue" name="27" value="<%# Eval("GUID") %>" />
                                                                                        <span class="text"><%# String.Format("{0:yy年MM月dd日}",Eval("EndDT") ) %></span>
                                                                                    </label>
                                                                                </div>
                                                                            </div>
                                                                        <!-- /Event -->
                                                                        </ItemTemplate>
                                                                    </asp:Repeater>
                                                                </div>

                                                            </td>
                                                        </tr>

                                                        <tr>
                                                            <td style="vertical-align:middle;font-weight:bolder;width:40%;">
                                                                T28 医疗资源评估（MRS）
                                                                <p>- 核心 -</p>
                                                            </td>
                                                            <td>
                                                                 <div class="row">
                                                                    <asp:Repeater ID="Repeater28" runat="server"> 
                                                                        <ItemTemplate>
                                                                        <!-- Event -->
                                                                            <div class="col-lg-3 col-sm-3 col-xs-6">
                                                                                <div class="checkbox">
                                                                                    <label style="padding-left:0;">
                                                                                        <input type="checkbox" class="colored-blue" name="28" value="<%# Eval("GUID") %>" />
                                                                                        <span class="text"><%# String.Format("{0:yy年MM月dd日}",Eval("EndDT") ) %></span>
                                                                                    </label>
                                                                                </div>
                                                                            </div>
                                                                        <!-- /Event -->
                                                                        </ItemTemplate>
                                                                    </asp:Repeater>
                                                                </div>

                                                            </td>
                                                        </tr>

                                                    </tbody>
                                                </table>
                                            </div>
                                            
                                            <div class="row" style="margin:4px 0px;text-align:center;">
                                                <asp:Button ID="Button1" runat="server" Text="生成报告单" class="btn btn-info" OnClick="Button1_Click" />
                                            </div>

                                            <code></code>
                                        </div>
                                        <!--Widget Body-->
                                    </div>
        <!--Widget--></div>




            </div>
    </div>




    <style type="text/css">
    body, table {
        font-size: 12px;
    }

    table {
        table-layout: fixed;
        empty-cells: show;
        border-collapse: collapse;
        margin: 0 auto;
    }

    td {
        height: 40px;
    }

    .table {
        border: 1px solid #cad9ea;
        color: #666;
    }

        .table th {
            height: 40px;
            text-align: center;
        }

        .table td, .table th {
            border: 1px solid #cad9ea;
            padding: 0 1em 0;
        }

            .table th p {
                line-height: 18px;
                margin: auto;
            }
</style>

           <script type="text/javascript">
               function InitiateWidgets()
               { $('.widget-buttons *[data-toggle="maximize"]').on("click", function (n) { n.preventDefault(); var t = $(this).parents(".widget").eq(0), i = $(this).find("i").eq(0), r = "fa-compress", u = "fa-expand"; t.hasClass("maximized") ? (i && i.addClass(u).removeClass(r), t.removeClass("maximized"), t.find(".widget-body").css("height", "auto")) : (i && i.addClass(r).removeClass(u), t.addClass("maximized"), maximize(t)) }); $('.widget-buttons *[data-toggle="collapse"]').on("click", function (n) { n.preventDefault(); var t = $(this).parents(".widget").eq(0), r = t.find(".widget-body"), i = $(this).find("i"), u = "fa-plus", f = "fa-minus", e = 300; t.hasClass("collapsed") ? (i && i.addClass(f).removeClass(u), t.removeClass("collapsed"), r.slideUp(0, function () { r.slideDown(e) })) : (i && i.addClass(u).removeClass(f), r.slideUp(200, function () { t.addClass("collapsed") })) }); $('.widget-buttons *[data-toggle="dispose"]').on("click", function (n) { n.preventDefault(); var i = $(this), t = i.parents(".widget").eq(0); t.hide(300, function () { t.remove() }) }) }
               function maximize(n) { if (n) { var t = $(window).height(), i = n.find(".widget-header").height(); n.find(".widget-body").height(t - i) } } function scrollTo(n, t) { var i = n && n.size() > 0 ? n.offset().top : 0; jQuery("html,body").animate({ scrollTop: i + (t ? t : 0) }, "slow") }
               function hasClass(n, t) { var i = " " + n.className + " ", r = " " + t + " "; return i.indexOf(r) != -1 } var themeprimary = getThemeColorFromCss("themeprimary"), themesecondary = getThemeColorFromCss("themesecondary"), themethirdcolor = getThemeColorFromCss("themethirdcolor"), themefourthcolor = getThemeColorFromCss("themefourthcolor"), themefifthcolor = getThemeColorFromCss("themefifthcolor"), rtlchanger, popovers, hoverpopovers; $("#skin-changer li a").click(function () { createCookie("current-skin", $(this).attr("rel"), 10); window.location.reload() }); rtlchanger = document.getElementById("rtl-changer"); location.pathname != "/index-rtl-fa.html" && location.pathname != "/index-rtl-ar.html" && (readCookie("rtl-support") ? (switchClasses("pull-right", "pull-left"), switchClasses("databox-right", "databox-left"), switchClasses("item-right", "item-left"), $(".navbar-brand small img").attr("src", "assets/img/logo-rtl.png"), rtlchanger != null && (document.getElementById("rtl-changer").checked = !0)) : rtlchanger != null && (rtlchanger.checked = !1), rtlchanger != null && (rtlchanger.onchange = function () { this.checked ? createCookie("rtl-support", "true", 10) : eraseCookie("rtl-support"); setTimeout(function () { window.location.reload() }, 600) })); $(window).load(function () { setTimeout(function () { $(".loading-container").addClass("loading-inactive") }, 0) }); $("#btn-setting").on("click", function () { $(".navbar-account").toggleClass("setting-open") }); $("#fullscreen-toggler").on("click", function () { var n = document.documentElement; $("body").hasClass("full-screen") ? ($("body").removeClass("full-screen"), $("#fullscreen-toggler").removeClass("active"), document.exitFullscreen ? document.exitFullscreen() : document.mozCancelFullScreen ? document.mozCancelFullScreen() : document.webkitExitFullscreen && document.webkitExitFullscreen()) : ($("body").addClass("full-screen"), $("#fullscreen-toggler").addClass("active"), n.requestFullscreen ? n.requestFullscreen() : n.mozRequestFullScreen ? n.mozRequestFullScreen() : n.webkitRequestFullscreen ? n.webkitRequestFullscreen() : n.msRequestFullscreen && n.msRequestFullscreen()) }); popovers = $("[data-toggle=popover]"); $.each(popovers, function () { $(this).popover({ html: !0, template: '<div class="popover ' + $(this).data("class") + '"><div class="arrow"><\/div><h3 class="popover-title ' + $(this).data("titleclass") + '">Popover right<\/h3><div class="popover-content"><\/div><\/div>' }) }); hoverpopovers = $("[data-toggle=popover-hover]"); $.each(hoverpopovers, function () { $(this).popover({ html: !0, template: '<div class="popover ' + $(this).data("class") + '"><div class="arrow"><\/div><h3 class="popover-title ' + $(this).data("titleclass") + '">Popover right<\/h3><div class="popover-content"><\/div><\/div>', trigger: "hover" }) }); $("[data-toggle=tooltip]").tooltip({ html: !0 }); InitiateSettings(); InitiateWidgets();

    </script>

    <%--把checkbox复选框转换成单选按钮radio效果--%>
    <script type="text/javascript">
        checkboxToRadio("1");//需要转换的就添加这句
        checkboxToRadio("2"); checkboxToRadio("3"); checkboxToRadio("4"); checkboxToRadio("5"); checkboxToRadio("6");
        checkboxToRadio("7"); checkboxToRadio("8"); checkboxToRadio("9"); checkboxToRadio("10"); checkboxToRadio("11");
        checkboxToRadio("12"); checkboxToRadio("13"); checkboxToRadio("14"); checkboxToRadio("15"); checkboxToRadio("16");
        checkboxToRadio("17"); checkboxToRadio("18"); checkboxToRadio("19"); checkboxToRadio("20"); checkboxToRadio("21");
        checkboxToRadio("22"); checkboxToRadio("23"); checkboxToRadio("24"); checkboxToRadio("25"); checkboxToRadio("26");
        checkboxToRadio("27"); checkboxToRadio("28");
        function checkboxToRadio(checkboxName, form) {
            if (checkboxName == null) return;
            var f = form || document.forms[0];
            var checkboxs = document.getElementsByName(checkboxName);

            for (i = 0; i < checkboxs.length; i++) {
                checkboxs[i].onclick = function () {
                    for (j = 0; j < checkboxs.length; j++) {
                        if (this.value != checkboxs[j].value && checkboxs[j].checked == true) {
                            checkboxs[j].checked = false;
                        }
                    }
                }
            }
            if (checkboxs.length != 0)
            {
                checkboxs[0].checked = true;
            }        
        }
    </script>

</asp:Content>

