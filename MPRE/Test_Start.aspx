<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Test_Start.aspx.cs" Inherits="Test_Start" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/style.css" rel="stylesheet" />
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

        @media(max-width:1199px) {
            .profile-container .profile-body .nav-tabs.tabs-flat {
                margin-top: 210px;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <script type="text/javascript">
        $(document).ready(function () {
            //alert("Hello!");

            $(".login").click(function (e) {
                $('.blanks2').hide();
                $(".module-area3").slideUp(400);
            });


            $("#TestRow div.databox-right").hover(function () {
                $(this).css("background-color", "#EEE8AB");
                //alert("H");
            }, function () {
                $(this).css("background-color", "#ffffff");
            });
        });
    </script>

    <div class="blanks2" id="Cover" runat="server"></div>
    <div class="module-area3 modal-content" id="Cover1" runat="server">
        <div class="module-head" style="text-align: center;">
            <span><strong>提示</strong></span>


        </div>

        <h5>&nbsp;</h5>
        <h5>&nbsp;&nbsp;该病人信息暂无身份证或护照证件信息，请及时录入！</h5>
        <h5>&nbsp;</h5>

        <p style="margin-left: 20%">
            <asp:Label ID="Label4" class="btn btn-success login" runat="server" Text="下次录入"></asp:Label>
            &nbsp;&nbsp; &nbsp;&nbsp;
            <asp:Button ID="Button1" class="btn btn-darkorange shiny" OnClick="Button1_Click" runat="server" Text="补录信息" />
        </p>

    </div>

    <div id="CurrentPosition">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;当前位置：<a href="Dashboard.aspx">首页</a>>> <a href="#">开始测试</a> >>  </div>
    <asp:Label ID="DoctorGUID" runat="server" Visible="false"></asp:Label>
    <div class="page-body" style="padding: 18px 20px 24px;">
        <div class="row">
            <div class="col-xs-12 col-md-12">
                <div class="widget" style="margin: 0px;">
                    <div class="widget-header bg-blueberry">
                        <i class="widget-icon fa fa-arrow-right"></i>
                        <span class="widget-caption">病人基本资料</span>
                        <div class="widget-buttons">


                            <a href="Patient_Info.aspx?GUID=<%= GUIDS %>" target="_blank">
                                <i class="fa fa-edit" style="font-size: 13px;">修改</i>
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
                                        <a href="Patient_Info.aspx?GUID=<%= GUIDS %>" target="_blank">
                                            <asp:Label ID="Patient" runat="server"></asp:Label>
                                        </a>
                                    </th>

                                    <th>身份证</th>
                                    <th>
                                        <asp:Label ID="CardID" runat="server"></asp:Label></th>
                                </tr>

                                <tr>
                                    <th>性别</th>
                                    <th>
                                        <asp:Label ID="Sex" runat="server"></asp:Label></th>
                                    <th>出生日期</th>
                                    <th>
                                        <asp:Label ID="Birthday" runat="server"></asp:Label></th>
                                </tr>

                                <tr>
                                    <th>门诊号</th>
                                    <th>
                                        <asp:Label ID="Num1" runat="server"></asp:Label></th>
                                    <th>联系电话1</th>
                                    <th>
                                        <asp:Label ID="Phone1" runat="server"></asp:Label></th>
                                </tr>


                            </table>


                            <code></code>
                        </div>
                        <!--Widget Body-->
                    </div>
                    <!--Widget-->

                </div>

            </div>
            <hr  style="clear:both"/>
            <div class="profile-container">
                <div class="profile-body">
                    <div class="col-lg-12">
                        <div class="tabbable">
                            <ul class="nav nav-tabs tabs-flat  nav-justified" id="myTab11" style="box-shadow: 0px -1px 5px 0px rgba(0,0,0,0.2);">
                                <li class="active">
                                    <a data-toggle="tab" href="#overview">测试维度
                                    </a>
                                </li>
                                <li class="tab-red">
                                    <a data-toggle="tab" href="#timeline">自评测试
                                    </a>
                                </li>
                                <li class="tab-palegreen">
                                    <a data-toggle="tab" id="contacttab" href="#contacts">个人报告单
                                    </a>
                                </li>

                            </ul>
                            <div class="tab-content tabs-flat" style=" margin-top:5px; padding: 0px; box-shadow: 0px 0 0px 0px rgba(256,256,256,.3);">
                                <div id="overview" class="tab-pane active">
                                    <div class="row">
                                        <div class="col-xs-12 col-md-12">
                                            <div class="widget" style="margin: 0px;">
                                                <div class="widget-header bg-blue">
                                                    <i class="widget-icon fa fa-arrow-right"></i>
                                                    <span class="widget-caption" style="font-size: 15px;"><strong>测试维度</strong></span>

                                                </div>
                                                <!--Widget Header-->
                                                <div class="widget-body">
                                                    <strong>带<strong style="color: red"> * </strong>号表示该量表为自评量表</strong>
                                                    <h3><strong>功能康复维度</strong> </h3>
                                                    <hr />
                                                    <div class="row" id="TestRow">
                                                        <a href="T1.aspx?GUID=<%= GUIDS %>" target="_blank">
                                                            <div class="col-lg-3 col-sm-6 col-xs-12">

                                                                <div class="databox">
                                                                    <div class="databox-left bg-yellow">
                                                                        <div class="databox-piechart">
                                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" data-trackcolor="#fa8872" style="width: 47px; height: 47px; line-height: 47px;"><span style="color: black; font-size: 18px"><strong>T1</strong></span></div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                        <span class="databox-number darkgray">GAF</span>
                                                                        <div class="databox-text darkgray">大体功能评定量表</div>
                                                                        <div class="databox-stat bg-yellow radius-bordered">
                                                                            <div class="stat-text">必做</div>
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                            </div>
                                                        </a>
                                                    </div>
                                                    <div class="row" id="TestRow">

                                                        <div class="col-lg-3 col-sm-6 col-xs-12">
                                                            <a href="T2.aspx?GUID=<%= GUIDS %>" target="_blank">
                                                                <div class="databox">
                                                                    <div class="databox-left bg-palegreen">
                                                                        <div class="databox-piechart">
                                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" data-trackcolor="#fa8872" style="width: 47px; height: 47px; line-height: 47px;">
                                                                                <span style="color: black; font-size: 18px"><strong>T2</strong></span><canvas width="47" height="47"></canvas>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                        <span class="databox-number darkgray">PSP</span>
                                                                        <div class="databox-text darkgray">个人与社会表现量表</div>
                                                                        <div class="databox-stat bg-palegreen radius-bordered">
                                                                            <div class="stat-text">核心</div>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </div>
                                                        <div class="col-lg-3 col-sm-6 col-xs-12">
                                                            <a href="T3.aspx?GUID=<%= GUIDS %>" target="_blank">
                                                                <div class="databox">
                                                                    <div class="databox-left bg-palegreen">
                                                                        <div class="databox-piechart">
                                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" data-trackcolor="#fa8872" style="width: 47px; height: 47px; line-height: 47px;">
                                                                                <span style="color: black; font-size: 18px"><strong style="color: red">* </strong><strong>T3</strong></span><canvas width="47" height="47"></canvas>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                        <span class="databox-number darkgray">WHO DAS</span>
                                                                        <div class="databox-text darkgray">世界卫生组织残疾评定量表</div>
                                                                        <div class="databox-stat bg-palegreen radius-bordered">
                                                                            <div class="stat-text">核心</div>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="row" id="TestRow">
                                                        <div class="col-lg-3 col-sm-6 col-xs-12">
                                                            <a href="T4.aspx?GUID=<%= GUIDS %>" target="_blank">
                                                                <div class="databox">
                                                                    <div class="databox-left bg-azure">
                                                                        <div class="databox-piechart">
                                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" data-trackcolor="#fa8872" style="width: 47px; height: 47px; line-height: 47px;">
                                                                                <span style="color: black; font-size: 18px"><strong style="color: red">* </strong><strong>T4</strong></span><canvas width="47" height="47"></canvas>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                        <span class="databox-number darkgray">SIWS</span>
                                                                        <div class="databox-text darkgray">工作与学习维度影响量表 </div>
                                                                        <div class="databox-stat bg-azure radius-bordered">
                                                                            <div class="stat-text">补充</div>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </div>

                                                        <div class="col-lg-3 col-sm-6 col-xs-12">
                                                            <a href="T5.aspx?GUID=<%= GUIDS %>" target="_blank">
                                                                <div class="databox">
                                                                    <div class="databox-left bg-azure">
                                                                        <div class="databox-piechart">
                                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" data-trackcolor="#fa8872" style="width: 47px; height: 47px; line-height: 47px;">
                                                                                <span style="color: black; font-size: 18px"><strong>T5</strong></span><canvas width="47" height="47"></canvas>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                        <span class="databox-number darkgray">LSP</span>
                                                                        <div class="databox-text darkgray">生活技能量表</div>
                                                                        <div class="databox-stat bg-azure radius-bordered">
                                                                            <div class="stat-text">补充</div>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </div>

                                                        <div class="col-lg-3 col-sm-6 col-xs-12">
                                                            <a href="T6.aspx?GUID=<%= GUIDS %>" target="_blank">
                                                                <div class="databox">
                                                                    <div class="databox-left bg-azure">
                                                                        <div class="databox-piechart">
                                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" data-trackcolor="#fa8872" style="width: 47px; height: 47px; line-height: 47px;">
                                                                                <span style="color: black; font-size: 18px"><strong>T6</strong></span><canvas width="47" height="47"></canvas>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                        <span class="databox-number darkgray">SSES</span>
                                                                        <div class="databox-text darkgray">社交技能评估量表</div>
                                                                        <div class="databox-stat bg-azure radius-bordered">
                                                                            <div class="stat-text">补充</div>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </div>

                                                        <div class="col-lg-3 col-sm-6 col-xs-12">
                                                            <a href="T7.aspx?GUID=<%= GUIDS %>" target="_blank">
                                                                <div class="databox">
                                                                    <div class="databox-left bg-azure">
                                                                        <div class="databox-piechart">
                                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" data-trackcolor="#fa8872" style="width: 47px; height: 47px; line-height: 47px;">
                                                                                <span style="color: black; font-size: 18px"><strong>T7</strong></span><canvas width="47" height="47"></canvas>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                        <span class="databox-number darkgray">BJ-PERFECT</span>
                                                                        <div class="databox-text darkgray">北京精神分裂症操作性功能评估量表</div>
                                                                        <div class="databox-stat bg-azure radius-bordered">
                                                                            <div class="stat-text">补充</div>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </div>

                                                    </div>


                                                    <h3><strong>躯体维度</strong> </h3>
                                                    <hr />
                                                    <div class="row" id="TestRow">
                                                        <div class="col-lg-3 col-sm-6 col-xs-12">
                                                            <a href="T8.aspx?GUID=<%= GUIDS %>" target="_blank">
                                                                <div class="databox">
                                                                    <div class="databox-left bg-yellow">
                                                                        <div class="databox-piechart">
                                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" style="width: 47px; height: 47px; line-height: 47px;">
                                                                                <span style="color: black; font-size: 18px"><strong>T8</strong></span><canvas width="47" height="47"></canvas>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                        <span class="databox-number darkgray">PH</span>
                                                                        <div class="databox-text darkgray">躯体健康维度</div>
                                                                        <div class="databox-stat bg-yellow radius-bordered">
                                                                            <div class="stat-text">必做</div>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </div>

                                                    </div>


                                                    <h3><strong>生命价值和质量维度</strong> </h3>
                                                    <hr />
                                                    <div class="row" id="TestRow">
                                                        <div class="col-lg-3 col-sm-6 col-xs-12">
                                                            <a href="T9.aspx?GUID=<%= GUIDS %>" target="_blank">
                                                                <div class="databox">
                                                                    <div class="databox-left bg-yellow">
                                                                        <div class="databox-piechart">
                                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" style="width: 47px; height: 47px; line-height: 47px;">
                                                                                <span style="color: black; font-size: 18px"><strong style="color: red">* </strong><strong>T9</strong></span><canvas width="47" height="47"></canvas>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                        <span class="databox-number darkgray">SF-36</span>
                                                                        <div class="databox-text darkgray">健康调查量表 </div>
                                                                        <div class="databox-stat bg-yellow radius-bordered">
                                                                            <div class="stat-text">必做</div>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </div>
                                                    </div>

                                                    <div class="row" id="TestRow">
                                                        <div class="col-lg-3 col-sm-6 col-xs-12">
                                                            <a href="T10.aspx?GUID=<%= GUIDS %>" target="_blank">
                                                                <div class="databox">
                                                                    <div class="databox-left bg-palegreen">
                                                                        <div class="databox-piechart">
                                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" style="width: 47px; height: 47px; line-height: 47px;">
                                                                                <span style="color: black; font-size: 18px"><strong style="color: red">* </strong><strong>T10</strong></span><canvas width="47" height="47"></canvas>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                        <span class="databox-number darkgray">GSES</span>
                                                                        <div class="databox-text darkgray">一般自我效能感量表</div>
                                                                        <div class="databox-stat bg-palegreen radius-bordered">
                                                                            <div class="stat-text">核心</div>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="row" id="TestRow">
                                                        <div class="col-lg-3 col-sm-6 col-xs-12">
                                                            <a href="T11.aspx?GUID=<%= GUIDS %>" target="_blank">
                                                                <div class="databox">
                                                                    <div class="databox-left bg-azure">
                                                                        <div class="databox-piechart">
                                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" style="width: 47px; height: 47px; line-height: 47px;">
                                                                                <span style="color: black; font-size: 18px"><strong style="color: red">* </strong><strong>T11</strong></span><canvas width="47" height="47"></canvas>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                        <span class="databox-number darkgray">ISMI</span>
                                                                        <div class="databox-text darkgray">精神疾病内化污名量表</div>
                                                                        <div class="databox-stat bg-azure radius-bordered">
                                                                            <div class="stat-text">补充</div>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </div>
                                                        <div class="col-lg-3 col-sm-6 col-xs-12">
                                                            <a href="T12.aspx?GUID=<%= GUIDS %>" target="_blank">
                                                                <div class="databox">
                                                                    <div class="databox-left bg-azure">
                                                                        <div class="databox-piechart">
                                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" style="width: 47px; height: 47px; line-height: 47px;">
                                                                                <span style="color: black; font-size: 18px"><strong style="color: red">* </strong><strong>T12</strong></span><canvas width="47" height="47"></canvas>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                        <span class="databox-number darkgray">SHS-9</span>
                                                                        <div class="databox-text darkgray">精神分裂症希望量表</div>
                                                                        <div class="databox-stat bg-azure radius-bordered">
                                                                            <div class="stat-text">补充</div>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </div>
                                                        <div class="col-lg-3 col-sm-6 col-xs-12">
                                                            <a href="T13.aspx?GUID=<%= GUIDS %>" target="_blank">
                                                                <div class="databox">
                                                                    <div class="databox-left bg-azure">
                                                                        <div class="databox-piechart">
                                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" data-trackcolor="#fa8872" style="width: 47px; height: 47px; line-height: 47px;">
                                                                                <span style="color: black; font-size: 18px"><strong style="color: red">* </strong><strong>T13</strong></span><canvas width="47" height="47"></canvas>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                        <span class="databox-number darkgray">C-MLQ</span>
                                                                        <div class="databox-text darkgray">中文人生意义问卷</div>
                                                                        <div class="databox-stat bg-azure radius-bordered">
                                                                            <div class="stat-text">补充</div>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </div>


                                                    </div>


                                                    <h3><strong>症状维度</strong> </h3>
                                                    <hr />
                                                    <div class="row" id="TestRow">
                                                        <div class="col-lg-3 col-sm-6 col-xs-12">
                                                            <a href="T14.aspx?GUID=<%= GUIDS %>" target="_blank">
                                                                <div class="databox">
                                                                    <div class="databox-left bg-yellow">
                                                                        <div class="databox-piechart">
                                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" style="width: 47px; height: 47px; line-height: 47px;">
                                                                                <span style="color: black; font-size: 18px"><strong>T14</strong></span><canvas width="47" height="47"></canvas>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                        <span class="databox-number darkgray">CGI</span>
                                                                        <div class="databox-text darkgray">临床总体印象量表</div>
                                                                        <div class="databox-stat bg-yellow radius-bordered">
                                                                            <div class="stat-text">必做</div>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="row" id="TestRow">

                                                        <div class="col-lg-3 col-sm-6 col-xs-12">
                                                            <a href="T15.aspx?GUID=<%= GUIDS %>" target="_blank">
                                                                <div class="databox">
                                                                    <div class="databox-left bg-palegreen">
                                                                        <div class="databox-piechart">
                                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" style="width: 47px; height: 47px; line-height: 47px;">
                                                                                <span style="color: black; font-size: 18px"><strong>T15</strong></span><canvas width="47" height="47"></canvas>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                        <span class="databox-number darkgray">PANSS</span>
                                                                        <div class="databox-text darkgray">阳性和阴性精神症状评定量表</div>
                                                                        <div class="databox-stat bg-palegreen radius-bordered">
                                                                            <div class="stat-text">核心</div>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </div>

                                                        <div class="col-lg-3 col-sm-6 col-xs-12">
                                                            <a href="T16.aspx?GUID=<%= GUIDS %>" target="_blank">
                                                                <div class="databox">
                                                                    <div class="databox-left bg-palegreen">
                                                                        <div class="databox-piechart">
                                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" style="width: 47px; height: 47px; line-height: 47px;">
                                                                                <span style="color: black; font-size: 18px"><strong>T16</strong></span><canvas width="47" height="47"></canvas>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                        <span class="databox-number darkgray">MCCB</span>
                                                                        <div class="databox-text darkgray">MATRICS共识认知成套测验</div>
                                                                        <div class="databox-stat bg-palegreen radius-bordered">
                                                                            <div class="stat-text">核心</div>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="row" id="TestRow">
                                                        <div class="col-lg-3 col-sm-6 col-xs-12">
                                                            <a href="T17.aspx?GUID=<%= GUIDS %>" target="_blank">
                                                                <div class="databox">
                                                                    <div class="databox-left bg-azure">
                                                                        <div class="databox-piechart">
                                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" style="width: 47px; height: 47px; line-height: 47px;">
                                                                                <span style="color: black; font-size: 18px"><strong>T17</strong></span><canvas width="47" height="47"></canvas>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                        <span class="databox-number darkgray">MOAS</span>
                                                                        <div class="databox-text darkgray">修订版外显攻击行为量表</div>
                                                                        <div class="databox-stat bg-azure radius-bordered">
                                                                            <div class="stat-text">补充</div>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </div>

                                                        <div class="col-lg-3 col-sm-6 col-xs-12">
                                                            <a href="T18.aspx?GUID=<%= GUIDS %>" target="_blank">
                                                                <div class="databox">
                                                                    <div class="databox-left bg-azure">
                                                                        <div class="databox-piechart">
                                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" style="width: 47px; height: 47px; line-height: 47px;">
                                                                                <span style="color: black; font-size: 18px"><strong>T18</strong></span><canvas width="47" height="47"></canvas>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                        <span class="databox-number darkgray">NGASR</span>
                                                                        <div class="databox-text darkgray">护士用自杀风险评估量表</div>
                                                                        <div class="databox-stat bg-azure radius-bordered">
                                                                            <div class="stat-text">补充</div>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </div>
                                                        <div class="col-lg-3 col-sm-6 col-xs-12">
                                                            <a href="T19.aspx?GUID=<%= GUIDS %>" target="_blank">
                                                                <div class="databox">
                                                                    <div class="databox-left bg-azure">
                                                                        <div class="databox-piechart">
                                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" style="width: 47px; height: 47px; line-height: 47px;">
                                                                                <span style="color: black; font-size: 18px"><strong>T19</strong></span><canvas width="47" height="47"></canvas>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                        <span class="databox-number darkgray">CDSS</span>
                                                                        <div class="databox-text darkgray">卡尔加里精神分裂症抑郁量表</div>
                                                                        <div class="databox-stat bg-azure radius-bordered">
                                                                            <div class="stat-text">补充</div>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </div>
                                                        <div class="col-lg-3 col-sm-6 col-xs-12">
                                                            <a href="T20.aspx?GUID=<%= GUIDS %>" target="_blank">
                                                                <div class="databox">
                                                                    <div class="databox-left bg-azure">
                                                                        <div class="databox-piechart">
                                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" style="width: 47px; height: 47px; line-height: 47px;">
                                                                                <span style="color: black; font-size: 18px"><strong>T20</strong></span><canvas width="47" height="47"></canvas>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                        <span class="databox-number darkgray">TESS</span>
                                                                        <div class="databox-text darkgray">治疗副反应量表</div>
                                                                        <div class="databox-stat bg-azure radius-bordered">
                                                                            <div class="stat-text">补充</div>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </div>
                                                        <div class="col-lg-3 col-sm-6 col-xs-12">
                                                            <a href="T21.aspx?GUID=<%= GUIDS %>" target="_blank">
                                                                <div class="databox">
                                                                    <div class="databox-left bg-azure">
                                                                        <div class="databox-piechart">
                                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" style="width: 47px; height: 47px; line-height: 47px;">
                                                                                <span style="color: black; font-size: 18px"><strong>T21</strong></span><canvas width="47" height="47"></canvas>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                        <span class="databox-number darkgray">RSESE</span>
                                                                        <div class="databox-text darkgray">锥体外系副反应量表</div>
                                                                        <div class="databox-stat bg-azure radius-bordered">
                                                                            <div class="stat-text">补充</div>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </div>
                                                    </div>



                                                    <h3><strong>治疗意愿及能力维度</strong> </h3>
                                                    <hr />
                                                    <div class="row" id="TestRow">
                                                        <div class="col-lg-3 col-sm-6 col-xs-12">
                                                            <a href="T22.aspx?GUID=<%= GUIDS %>" target="_blank">
                                                                <div class="databox">
                                                                    <div class="databox-left bg-yellow">
                                                                        <div class="databox-piechart">
                                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" style="width: 47px; height: 47px; line-height: 47px;">
                                                                                <span style="color: black; font-size: 18px"><strong style="color: red">* </strong><strong>T22</strong></span><canvas width="47" height="47"></canvas>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                        <span class="databox-number darkgray">MAQ</span>
                                                                        <div class="databox-text darkgray">服药依从性问卷</div>
                                                                        <div class="databox-stat bg-yellow radius-bordered">
                                                                            <div class="stat-text">必做</div>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </div>

                                                        <div class="col-lg-3 col-sm-6 col-xs-12">
                                                            <a href="T23.aspx?GUID=<%= GUIDS %>" target="_blank">
                                                                <div class="databox">
                                                                    <div class="databox-left bg-yellow">
                                                                        <div class="databox-piechart">
                                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" style="width: 47px; height: 47px; line-height: 47px;">
                                                                                <span style="color: black; font-size: 18px"><strong>T23</strong></span><canvas width="47" height="47"></canvas>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                        <span class="databox-number darkgray">ITAQ</span>
                                                                        <div class="databox-text darkgray">自知力与治疗态度问卷表</div>
                                                                        <div class="databox-stat bg-yellow radius-bordered">
                                                                            <div class="stat-text">必做</div>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="row" id="TestRow">
                                                        <div class="col-lg-3 col-sm-6 col-xs-12">
                                                            <a href="T24.aspx?GUID=<%= GUIDS %>" target="_blank" href="T14.aspx?ID=<%= ID %>" target="_blank">
                                                                <div class="databox">
                                                                    <div class="databox-left bg-palegreen">
                                                                        <div class="databox-piechart">
                                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" style="width: 47px; height: 47px; line-height: 47px;">
                                                                                <span style="color: black; font-size: 18px"><strong>T24</strong></span><canvas width="47" height="47"></canvas>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                        <span class="databox-number darkgray">MMAA</span>
                                                                        <div class="databox-text darkgray">药物管理能力评估</div>
                                                                        <div class="databox-stat bg-palegreen radius-bordered">
                                                                            <div class="stat-text">核心</div>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </div>



                                                    </div>


                                                    <!------>


                                                    <h3><strong>资源维度</strong> </h3>
                                                    <hr />
                                                    <div class="row" id="TestRow">
                                                        <div class="col-lg-3 col-sm-6 col-xs-12">
                                                            <a href="T25.aspx?GUID=<%= GUIDS %>" target="_blank">
                                                                <div class="databox">
                                                                    <div class="databox-left bg-yellow">
                                                                        <div class="databox-piechart">
                                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" style="width: 47px; height: 47px; line-height: 47px;">
                                                                                <span style="color: black; font-size: 18px"><strong style="color: red">* </strong><strong>T25</strong></span><canvas width="47" height="47"></canvas>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                        <span class="databox-number darkgray">SSRS</span>
                                                                        <div class="databox-text darkgray">社会支持评定量表</div>
                                                                        <div class="databox-stat bg-yellow radius-bordered">
                                                                            <div class="stat-text">必做</div>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </div>

                                                    </div>
                                                    <div class="row" id="TestRow">
                                                        <div class="col-lg-3 col-sm-6 col-xs-12">
                                                            <a href="T26.aspx?GUID=<%= GUIDS %>" target="_blank">
                                                                <div class="databox">
                                                                    <div class="databox-left bg-palegreen">
                                                                        <div class="databox-piechart">
                                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" style="width: 47px; height: 47px; line-height: 47px;">
                                                                                <span style="color: black; font-size: 18px"><strong style="color: red">* </strong><strong>T26</strong></span><canvas width="47" height="47"></canvas>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                        <span class="databox-number darkgray">FAD</span>
                                                                        <div class="databox-text darkgray">家庭功能评定</div>
                                                                        <div class="databox-stat bg-palegreen radius-bordered">
                                                                            <div class="stat-text">核心</div>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </div>
                                                        <div class="col-lg-3 col-sm-6 col-xs-12">
                                                            <a href="T27.aspx?GUID=<%= GUIDS %>" target="_blank">
                                                                <div class="databox">
                                                                    <div class="databox-left bg-palegreen">
                                                                        <div class="databox-piechart">
                                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" style="width: 47px; height: 47px; line-height: 47px;">
                                                                                <span style="color: black; font-size: 18px"><strong style="color: red">* </strong><strong>T27</strong></span><canvas width="47" height="47"></canvas>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                        <span class="databox-number darkgray">MRQ</span>
                                                                        <div class="databox-text darkgray">婚恋评估</div>
                                                                        <div class="databox-stat bg-palegreen radius-bordered">
                                                                            <div class="stat-text">核心</div>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </div>
                                                        <div class="col-lg-3 col-sm-6 col-xs-12">
                                                            <a href="T28.aspx?GUID=<%= GUIDS %>" target="_blank">
                                                                <div class="databox">
                                                                    <div class="databox-left bg-palegreen">
                                                                        <div class="databox-piechart">
                                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" style="width: 47px; height: 47px; line-height: 47px;">
                                                                                <span style="color: black; font-size: 18px"><strong style="color: red">* </strong><strong>T28</strong></span><canvas width="47" height="47"></canvas>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                        <span class="databox-number darkgray">MRS</span>
                                                                        <div class="databox-text darkgray">医疗资源评估</div>
                                                                        <div class="databox-stat bg-palegreen radius-bordered">
                                                                            <div class="stat-text">核心</div>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </div>


                                                    </div>



                                                    <code></code>
                                                </div>
                                                <!--Widget Body-->
                                            </div>
                                            <!--Widget-->
                                        </div>

                                    </div>
                                </div>
                                <div id="timeline" class="tab-pane">
                                    <div class="row">
                                        <div class="col-xs-12 col-md-12">
                                            <div class="widget" style="margin: 0px;">
                                                <div class="widget-header bg-lightred">
                                                    <i class="widget-icon fa fa-arrow-right"></i>
                                                    <span class="widget-caption" style="font-size: 15px;"><strong>自评测试</strong></span>
                                                </div>


                                                <!--Widget Body-->
                                                <div class="widget-body">
                                                    <strong>带<strong style="color: red"> * </strong>号表示该量表为自评量表</strong>

                                                    <div style="margin-top: 20px;"></div>
                                                    <div style="margin-top: 20px;"></div>
                                                    <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                                        <ContentTemplate>
                                                            <%--<div class=" col-xs-12 col-md-12">            
                                                        <div style="float: right;">
                                                            总共：<asp:Label ID="Label4" runat="server" ForeColor="#5D7B9D" Font-Bold="true"></asp:Label>
                                                            条记录，每页显示：<asp:DropDownList ID="PageSizeDDL2" runat="server" AutoPostBack="true" Font-Bold="true"
                                                                OnSelectedIndexChanged="PageSizeDDL_SelectedIndexChanged" ForeColor="#5D7B9D">
                                                                <asp:ListItem Value="5">5</asp:ListItem>
                                                                <asp:ListItem Value="10">10</asp:ListItem>
                                                                <asp:ListItem Value="20" Selected="True">20</asp:ListItem>
                                                                <asp:ListItem Value="50">50</asp:ListItem>
                                                            </asp:DropDownList>
                                                            条记录，共<asp:Label ID="Label5" runat="server" ForeColor="#5D7B9D" Font-Bold="true"></asp:Label>页
                                                        </div>
                                                    </div>--%>
                                                            <%--<br />--%>
                                                            <div>
                                                                <h3>
                                                                    <asp:Label ID="Label3" runat="server" Text="" Visible="false"></asp:Label></h3>
                                                                <asp:Label ID="ID_Label" runat="server" Visible="false" Text="" />
                                                                <asp:GridView ID="GridView2" runat="server" DataKeyNames="ID" AutoGenerateColumns="false" class="table table-striped table-bordered table-hover"
                                                                    GridLines="Horizontal" Style="text-align: center;" ForeColor="#333333" HeaderStyle-HorizontalAlign="Center" Width="99%" OnRowCommand="GridView2_RowCommand">
                                                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" Height="30px" HorizontalAlign="Center" />
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                    <Columns>
                                                                        <asp:BoundField DataField="Orders" HeaderText="排序" ItemStyle-Width="30" Visible="false" />
                                                                        <asp:TemplateField HeaderText="序" HeaderStyle-HorizontalAlign="Center">
                                                                            <ItemTemplate>
                                                                                <asp:Label ID="lblNo" runat="server" Text='<%# Container.DataItemIndex+1 %>'></asp:Label>
                                                                            </ItemTemplate>
                                                                            <ItemStyle Width="30px" HorizontalAlign="center" />
                                                                            <HeaderStyle Width="30px" />
                                                                        </asp:TemplateField>
                                                                        <asp:BoundField DataField="TestName" HeaderText="未完成自评测试" />
                                                                        <asp:BoundField DataField="PatientName" HeaderText="病人姓名" />
                                                                        <asp:BoundField DataField="Code" HeaderText="自评码" />
                                                                        <asp:BoundField DataField="CreateDate" HeaderText=" 创建日期 " DataFormatString="{0:yy年MM月dd日}" />
                                                                        <asp:ButtonField ButtonType="Button" CommandName="Del" HeaderText="删除" ShowHeader="True" Text="删除" ControlStyle-CssClass="btn btn-danger" />

                                                                    </Columns>
                                                                </asp:GridView>
                                                                <br />

                                                                <%--&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--%>
                                                                <%--<webdiyer:AspNetPager CssClass="pages" class="pagination" CurrentPageButtonClass="cpb" AlwaysShow="true" ID="AspNetPager2" runat="server" FirstPageText="首页" LastPageText="尾页" NextPageText="下一页" PrevPageText="上一页" OnPageChanged="AspNetPager1_PageChanged" LayoutType="Div">
                                                        </webdiyer:AspNetPager>--%>
                                                            </div>


                                                            <table class="table table-bordered table-hover" style="font-size: 14px; border: 1px solid #ddd;">
                                                                <thead>
                                                                    <tr>
                                                                        <th style="font-size: 14px; text-align: left;">序
                                                                </th>
                                                                        <th style="font-size: 14px; text-align: left;">测试名称
                                                                </th>
                                                                        <th style="font-size: 14px; text-align: left;">英文缩写
                                                                </th>
                                                                        <th style="font-size: 14px; text-align: left;">所属维度
                                                                </th>
                                                                        <th style="font-size: 14px; text-align: left;">类型
                                                                </th>
                                                                        <th></th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <tr>
                                                                        <td>T1
                                                                </td>
                                                                        <td class="hidden-xs">大体功能评定量表
                                                                </td>
                                                                        <td>GAF
                                                                </td>
                                                                        <td>功能康复维度
                                                                </td>
                                                                        <td>必做
                                                                </td>
                                                                        <td>
                                                                            <span class="input-icon icon-left">
                                                                                <asp:Button ID="CreateSelfT1" runat="server" Text="生成自评码" class="btn btn-info btn-xs edit" Style="font-size: 14px;" OnClick="CreateSelfT1_Click" />
                                                                                <i class="fa fa-edit" style="color: #fff; padding-top: 0; opacity: 1;"></i>
                                                                            </span>
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td>T2
                                                                </td>
                                                                        <td class="hidden-xs">个人与社会表现量表
                                                                </td>
                                                                        <td>PSP
                                                                </td>
                                                                        <td>功能康复维度
                                                                </td>
                                                                        <td>核心
                                                                </td>
                                                                        <td>
                                                                            <span class="input-icon icon-left">
                                                                                <asp:Button ID="CreateSelfT2" runat="server" Text="生成自评码" class="btn btn-info btn-xs edit" Style="font-size: 14px;" OnClick="CreateSelfT2_Click" />
                                                                                <i class="fa fa-edit" style="color: #fff; padding-top: 0; opacity: 1;"></i>
                                                                            </span>
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td>T3 <strong style="color: red">* </strong>
                                                                        </td>
                                                                        <td class="hidden-xs">世界卫生组织残疾评估量表
                                                                </td>
                                                                        <td>WHO DAS
                                                                </td>
                                                                        <td>功能康复维度
                                                                </td>
                                                                        <td>核心
                                                                </td>
                                                                        <td>
                                                                            <span class="input-icon icon-left">
                                                                                <asp:Button ID="CreateSelfT3" runat="server" Text="生成自评码" class="btn btn-info btn-xs edit" Style="font-size: 14px;" OnClick="CreateSelfT3_Click" />
                                                                                <i class="fa fa-edit" style="color: #fff; padding-top: 0; opacity: 1;"></i>
                                                                            </span>
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td>T4 <strong style="color: red">* </strong>
                                                                        </td>
                                                                        <td class="hidden-xs">工作与学习维度影响量表
                                                                </td>
                                                                        <td>SIWS
                                                                </td>
                                                                        <td>功能康复维度
                                                                </td>
                                                                        <td>补充
                                                                </td>
                                                                        <td>
                                                                            <span class="input-icon icon-left">
                                                                                <asp:Button ID="CreateSelfT4" runat="server" Text="生成自评码" class="btn btn-info btn-xs edit" Style="font-size: 14px;" OnClick="CreateSelfT4_Click" />
                                                                                <i class="fa fa-edit" style="color: #fff; padding-top: 0; opacity: 1;"></i>
                                                                            </span>
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td>T5
                                                                </td>
                                                                        <td class="hidden-xs">生活技能量表
                                                                </td>
                                                                        <td>LSP
                                                                </td>
                                                                        <td>功能康复维度
                                                                </td>
                                                                        <td>补充
                                                                </td>
                                                                        <td>
                                                                            <span class="input-icon icon-left">
                                                                                <asp:Button ID="CreateSelfT5" runat="server" Text="生成自评码" class="btn btn-info btn-xs edit" Style="font-size: 14px;" OnClick="CreateSelfT5_Click" />
                                                                                <i class="fa fa-edit" style="color: #fff; padding-top: 0; opacity: 1;"></i>
                                                                            </span>
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td>T6
                                                                </td>
                                                                        <td class="hidden-xs">社交技能操作评估
                                                                </td>
                                                                        <td>SSES
                                                                </td>
                                                                        <td>功能康复维度
                                                                </td>
                                                                        <td>补充
                                                                </td>
                                                                        <td>
                                                                            <span class="input-icon icon-left">
                                                                                <asp:Button ID="CreateSelfT6" runat="server" Text="生成自评码" class="btn btn-info btn-xs edit" Style="font-size: 14px;" OnClick="CreateSelfT6_Click" />
                                                                                <i class="fa fa-edit" style="color: #fff; padding-top: 0; opacity: 1;"></i>
                                                                            </span>
                                                                    </tr>

                                                                    <tr>
                                                                        <td>T7
                                                                </td>
                                                                        <td class="hidden-xs">北京精神分裂症操作性功能评估量表
                                                                </td>
                                                                        <td>BP
                                                                </td>
                                                                        <td>功能康复维度
                                                                </td>
                                                                        <td>补充
                                                                </td>
                                                                        <td>
                                                                            <span class="input-icon icon-left">
                                                                                <asp:Button ID="CreateSelfT7" runat="server" Text="生成自评码" class="btn btn-info btn-xs edit" Style="font-size: 14px;" OnClick="CreateSelfT7_Click" />
                                                                                <i class="fa fa-edit" style="color: #fff; padding-top: 0; opacity: 1;"></i>
                                                                            </span>
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td>T8
                                                                </td>
                                                                        <td class="hidden-xs">躯体健康维度
                                                                </td>
                                                                        <td>PH
                                                                </td>
                                                                        <td>躯体维度
                                                                </td>
                                                                        <td>必做
                                                                </td>
                                                                        <td>
                                                                            <span class="input-icon icon-left">
                                                                                <asp:Button ID="CreateSelfT8" runat="server" Text="生成自评码" class="btn btn-info btn-xs edit" Style="font-size: 14px;" OnClick="CreateSelfT8_Click" />
                                                                                <i class="fa fa-edit" style="color: #fff; padding-top: 0; opacity: 1;"></i>
                                                                            </span>
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td>T9 <strong style="color: red">* </strong>
                                                                        </td>
                                                                        <td class="hidden-xs">健康调查量表
                                                                </td>
                                                                        <td>GAF
                                                                </td>
                                                                        <td>生命价值和质量维度
                                                                </td>
                                                                        <td>必做
                                                                </td>
                                                                        <td>
                                                                            <span class="input-icon icon-left">
                                                                                <asp:Button ID="CreateSelfT9" runat="server" Text="生成自评码" class="btn btn-info btn-xs edit" Style="font-size: 14px;" OnClick="CreateSelfT9_Click" />
                                                                                <i class="fa fa-edit" style="color: #fff; padding-top: 0; opacity: 1;"></i>
                                                                            </span>
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td>T10 <strong style="color: red">* </strong>
                                                                        </td>
                                                                        <td class="hidden-xs">一般自我效能感量表
                                                                </td>
                                                                        <td>GSES
                                                                </td>
                                                                        <td>生命价值和质量维度
                                                                </td>
                                                                        <td>核心
                                                                </td>
                                                                        <td>
                                                                            <span class="input-icon icon-left">
                                                                                <asp:Button ID="CreateSelfT10" runat="server" Text="生成自评码" class="btn btn-info btn-xs edit" Style="font-size: 14px;" OnClick="CreateSelfT10_Click" />
                                                                                <i class="fa fa-edit" style="color: #fff; padding-top: 0; opacity: 1;"></i>
                                                                            </span>
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td>T11 <strong style="color: red">* </strong>
                                                                        </td>
                                                                        <td class="hidden-xs">精神疾病内化污名量表
                                                                </td>
                                                                        <td>ISMI
                                                                </td>
                                                                        <td>生命价值和质量维度
                                                                </td>
                                                                        <td>补充
                                                                </td>
                                                                        <td>
                                                                            <span class="input-icon icon-left">
                                                                                <asp:Button ID="CreateSelfT11" runat="server" Text="生成自评码" class="btn btn-info btn-xs edit" Style="font-size: 14px;" OnClick="CreateSelfT11_Click" />
                                                                                <i class="fa fa-edit" style="color: #fff; padding-top: 0; opacity: 1;"></i>
                                                                            </span>
                                                                    </tr>

                                                                    <tr>
                                                                        <td>T12 <strong style="color: red">* </strong>
                                                                        </td>
                                                                        <td class="hidden-xs">精神分裂症希望量表
                                                                </td>
                                                                        <td>SHS-9
                                                                </td>
                                                                        <td>生命价值和质量维度
                                                                </td>
                                                                        <td>补充
                                                                </td>
                                                                        <td>
                                                                            <span class="input-icon icon-left">
                                                                                <asp:Button ID="CreateSelfT12" runat="server" Text="生成自评码" class="btn btn-info btn-xs edit" Style="font-size: 14px;" OnClick="CreateSelfT12_Click" />
                                                                                <i class="fa fa-edit" style="color: #fff; padding-top: 0; opacity: 1;"></i>
                                                                            </span>
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td>T13 <strong style="color: red">* </strong>
                                                                        </td>
                                                                        <td class="hidden-xs">中文人生意义问卷
                                                                </td>
                                                                        <td>C-MLQ
                                                                </td>
                                                                        <td>生命价值和质量维度
                                                                </td>
                                                                        <td>补充
                                                                </td>
                                                                        <td>
                                                                            <span class="input-icon icon-left">
                                                                                <asp:Button ID="CreateSelfT13" runat="server" Text="生成自评码" class="btn btn-info btn-xs edit" Style="font-size: 14px;" OnClick="CreateSelfT13_Click" />
                                                                                <i class="fa fa-edit" style="color: #fff; padding-top: 0; opacity: 1;"></i>
                                                                            </span>
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td>T14
                                                                </td>
                                                                        <td class="hidden-xs">临床总体印象量表
                                                                </td>
                                                                        <td>CGI
                                                                </td>
                                                                        <td>症状维度
                                                                </td>
                                                                        <td>必做
                                                                </td>
                                                                        <td>
                                                                            <span class="input-icon icon-left">
                                                                                <asp:Button ID="CreateSelfT14" runat="server" Text="生成自评码" class="btn btn-info btn-xs edit" Style="font-size: 14px;" OnClick="CreateSelfT14_Click" />
                                                                                <i class="fa fa-edit" style="color: #fff; padding-top: 0; opacity: 1;"></i>
                                                                            </span>
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td>T15
                                                                </td>
                                                                        <td class="hidden-xs">阳性与阴性症状量表
                                                                </td>
                                                                        <td>PANSS
                                                                </td>
                                                                        <td>症状维度
                                                                </td>
                                                                        <td>核心
                                                                </td>
                                                                        <td>
                                                                            <span class="input-icon icon-left">
                                                                                <asp:Button ID="CreateSelfT15" runat="server" Text="生成自评码" class="btn btn-info btn-xs edit" Style="font-size: 14px;" OnClick="CreateSelfT15_Click" />
                                                                                <i class="fa fa-edit" style="color: #fff; padding-top: 0; opacity: 1;"></i>
                                                                            </span>
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td>T16
                                                                </td>
                                                                        <td class="hidden-xs">MATRICS共识认知成套测验
                                                                </td>
                                                                        <td>MATRICS
                                                                </td>
                                                                        <td>症状维度
                                                                </td>
                                                                        <td>核心
                                                                </td>
                                                                        <td>
                                                                            <span class="input-icon icon-left">
                                                                                <asp:Button ID="CreateSelfT16" runat="server" Text="生成自评码" class="btn btn-info btn-xs edit" Style="font-size: 14px;" OnClick="CreateSelfT16_Click" />
                                                                                <i class="fa fa-edit" style="color: #fff; padding-top: 0; opacity: 1;"></i>
                                                                            </span>
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td>T17
                                                                </td>
                                                                        <td class="hidden-xs">修改版外显攻击行为量表
                                                                </td>
                                                                        <td>MOAS
                                                                </td>
                                                                        <td>症状维度
                                                                </td>
                                                                        <td>补充
                                                                </td>
                                                                        <td>
                                                                            <span class="input-icon icon-left">
                                                                                <asp:Button ID="CreateSelfT17" runat="server" Text="生成自评码" class="btn btn-info btn-xs edit" Style="font-size: 14px;" OnClick="CreateSelfT17_Click" />
                                                                                <i class="fa fa-edit" style="color: #fff; padding-top: 0; opacity: 1;"></i>
                                                                            </span>
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td>T18
                                                                </td>
                                                                        <td class="hidden-xs">护士用自杀风险评估量表
                                                                </td>
                                                                        <td>NGASR
                                                                </td>
                                                                        <td>症状维度
                                                                </td>
                                                                        <td>补充
                                                                </td>
                                                                        <td>
                                                                            <span class="input-icon icon-left">
                                                                                <asp:Button ID="CreateSelfT18" runat="server" Text="生成自评码" class="btn btn-info btn-xs edit" Style="font-size: 14px;" OnClick="CreateSelfT18_Click" />
                                                                                <i class="fa fa-edit" style="color: #fff; padding-top: 0; opacity: 1;"></i>
                                                                            </span>
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td>T19
                                                                </td>
                                                                        <td class="hidden-xs">卡尔加里精神分裂症抑郁量表
                                                                </td>
                                                                        <td>CDSS
                                                                </td>
                                                                        <td>症状维度
                                                                </td>
                                                                        <td>补充
                                                                </td>
                                                                        <td>
                                                                            <span class="input-icon icon-left">
                                                                                <asp:Button ID="CreateSelfT19" runat="server" Text="生成自评码" class="btn btn-info btn-xs edit" Style="font-size: 14px;" OnClick="CreateSelfT19_Click" />
                                                                                <i class="fa fa-edit" style="color: #fff; padding-top: 0; opacity: 1;"></i>
                                                                            </span>
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td>T20
                                                                </td>
                                                                        <td class="hidden-xs">治疗副反应量表
                                                                </td>
                                                                        <td>TESS
                                                                </td>
                                                                        <td>症状维度
                                                                </td>
                                                                        <td>补充
                                                                </td>
                                                                        <td>
                                                                            <span class="input-icon icon-left">
                                                                                <asp:Button ID="CreateSelfT20" runat="server" Text="生成自评码" class="btn btn-info btn-xs edit" Style="font-size: 14px;" OnClick="CreateSelfT20_Click" />
                                                                                <i class="fa fa-edit" style="color: #fff; padding-top: 0; opacity: 1;"></i>
                                                                            </span>
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td>T21
                                                                </td>
                                                                        <td class="hidden-xs">锥体外系副反应量表
                                                                </td>
                                                                        <td>RSESE
                                                                </td>
                                                                        <td>症状维度
                                                                </td>
                                                                        <td>补充
                                                                </td>
                                                                        <td>
                                                                            <span class="input-icon icon-left">
                                                                                <asp:Button ID="CreateSelfT21" runat="server" Text="生成自评码" class="btn btn-info btn-xs edit" Style="font-size: 14px;" OnClick="CreateSelfT21_Click" />
                                                                                <i class="fa fa-edit" style="color: #fff; padding-top: 0; opacity: 1;"></i>
                                                                            </span>
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td>T22 <strong style="color: red">* </strong>
                                                                        </td>
                                                                        <td class="hidden-xs">服药依从性问卷
                                                                </td>
                                                                        <td>MAQ
                                                                </td>
                                                                        <td>治疗意愿及能力维度
                                                                </td>
                                                                        <td>必做
                                                                </td>
                                                                        <td>
                                                                            <span class="input-icon icon-left">
                                                                                <asp:Button ID="CreateSelfT22" runat="server" Text="生成自评码" class="btn btn-info btn-xs edit" Style="font-size: 14px;" OnClick="CreateSelfT22_Click" />
                                                                                <i class="fa fa-edit" style="color: #fff; padding-top: 0; opacity: 1;"></i>
                                                                            </span>
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td>T23
                                                                </td>
                                                                        <td class="hidden-xs">自知力与治疗态度问卷表
                                                                </td>
                                                                        <td>ITAQ
                                                                </td>
                                                                        <td>治疗意愿及能力维度
                                                                </td>
                                                                        <td>必做
                                                                </td>
                                                                        <td>
                                                                            <span class="input-icon icon-left">
                                                                                <asp:Button ID="CreateSelfT23" runat="server" Text="生成自评码" class="btn btn-info btn-xs edit" Style="font-size: 14px;" OnClick="CreateSelfT23_Click" />
                                                                                <i class="fa fa-edit" style="color: #fff; padding-top: 0; opacity: 1;"></i>
                                                                            </span>
                                                                    </tr>

                                                                    <tr>
                                                                        <td>T24
                                                                </td>
                                                                        <td class="hidden-xs">药物管理能力评估
                                                                </td>
                                                                        <td>MMAA
                                                                </td>
                                                                        <td>治疗意愿及能力维度
                                                                </td>
                                                                        <td>核心
                                                                </td>
                                                                        <td>
                                                                            <span class="input-icon icon-left">
                                                                                <asp:Button ID="CreateSelfT24" runat="server" Text="生成自评码" class="btn btn-info btn-xs edit" Style="font-size: 14px;" OnClick="CreateSelfT24_Click" />
                                                                                <i class="fa fa-edit" style="color: #fff; padding-top: 0; opacity: 1;"></i>
                                                                            </span>
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td>T25 <strong style="color: red">* </strong>
                                                                        </td>
                                                                        <td class="hidden-xs">社会支持评定量表
                                                                </td>
                                                                        <td>SSRS
                                                                </td>
                                                                        <td>资源维度
                                                                </td>
                                                                        <td>必做
                                                                </td>
                                                                        <td>
                                                                            <span class="input-icon icon-left">
                                                                                <asp:Button ID="CreateSelfT25" runat="server" Text="生成自评码" class="btn btn-info btn-xs edit" Style="font-size: 14px;" OnClick="CreateSelfT25_Click" />
                                                                                <i class="fa fa-edit" style="color: #fff; padding-top: 0; opacity: 1;"></i>
                                                                            </span>
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td>T26 <strong style="color: red">* </strong>
                                                                        </td>
                                                                        <td class="hidden-xs">家庭功能评定
                                                                </td>
                                                                        <td>FAD
                                                                </td>
                                                                        <td>资源维度
                                                                </td>
                                                                        <td>核心
                                                                </td>
                                                                        <td>
                                                                            <span class="input-icon icon-left">
                                                                                <asp:Button ID="CreateSelfT26" runat="server" Text="生成自评码" class="btn btn-info btn-xs edit" Style="font-size: 14px;" OnClick="CreateSelfT26_Click" />
                                                                                <i class="fa fa-edit" style="color: #fff; padding-top: 0; opacity: 1;"></i>
                                                                            </span>
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td>T27 <strong style="color: red">* </strong>
                                                                        </td>
                                                                        <td class="hidden-xs">婚恋评估
                                                                </td>
                                                                        <td>MRQ
                                                                </td>
                                                                        <td>资源维度
                                                                </td>
                                                                        <td>核心
                                                                </td>
                                                                        <td>
                                                                            <span class="input-icon icon-left">
                                                                                <asp:Button ID="CreateSelfT27" runat="server" Text="生成自评码" class="btn btn-info btn-xs edit" Style="font-size: 14px;" OnClick="CreateSelfT27_Click" />
                                                                                <i class="fa fa-edit" style="color: #fff; padding-top: 0; opacity: 1;"></i>
                                                                            </span>
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td>T28 <strong style="color: red">* </strong>
                                                                        </td>
                                                                        <td class="hidden-xs">医疗资源评估
                                                                </td>
                                                                        <td>MRS
                                                                </td>
                                                                        <td>资源维度
                                                                </td>
                                                                        <td>核心
                                                                </td>
                                                                        <td>
                                                                            <span class="input-icon icon-left">
                                                                                <asp:Button ID="CreateSelfT28" runat="server" Text="生成自评码" class="btn btn-info btn-xs edit" Style="font-size: 14px;" OnClick="CreateSelfT28_Click" />
                                                                                <i class="fa fa-edit" style="color: #fff; padding-top: 0; opacity: 1;"></i>
                                                                            </span>
                                                                        </td>
                                                                    </tr>



                                                                </tbody>
                                                            </table>

                                                        </ContentTemplate>
                                                    </asp:UpdatePanel>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div id="contacts" class="tab-pane">
                                    <div class="row">
                                        <div class="col-xs-12 col-md-12">
                                            <div class="widget" style="margin: 0px;">
                                                <div class="widget-header bg-palegreen">
                                                    <i class="widget-icon fa fa-arrow-right"></i>
                                                    <span class="widget-caption" style="font-size: 15px;"><strong>个人报告单</strong></span>
                                                </div>


                                                <!--Widget Body-->
                                                <div class="widget-body">
                                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                        <ContentTemplate>
                                                            <div id="Man_Nav">
                                                                <div class="form-group col-xs-3 col-md-3">
                                                                    <span class="input-icon">
                                                                        <asp:TextBox ID="SearchTB" runat="server" placeholder="查询报告单名称" class="form-control input-sm"></asp:TextBox>
                                                                        <i class="glyphicon glyphicon-search danger circular"></i>
                                                                    </span>
                                                                </div>
                                                                <asp:Button ID="SearchBtn" runat="server" Text="搜索" class="btn btn-info"
                                                                    OnClick="SearchBtn_Click" />&nbsp;&nbsp;
    
                          
                                                                                            &nbsp;&nbsp;
                                                           
                                                                <asp:DropDownList ID="OrderDDL" runat="server"
                                                                    OnSelectedIndexChanged="OrderDDL_SelectedIndexChanged" AutoPostBack="True">
                                                                    <asp:ListItem Value=" Order by EndDt Desc">日期降序</asp:ListItem>
                                                                    <asp:ListItem Value=" Order by EndDt">日期升序</asp:ListItem>
                                                                </asp:DropDownList>
                                                                &nbsp;&nbsp;
                                                           
                                                                <asp:DropDownList ID="TestDDL" runat="server"
                                                                    OnSelectedIndexChanged="TestDDL_SelectedIndexChanged"
                                                                    AutoPostBack="True">
                                                                    <asp:ListItem Value="and 1=1 ">按报告单名称分类</asp:ListItem>
                                                                    <asp:ListItem Value="and TestName ='大体功能评定量表（GAF）' ">T1大体功能评定量表</asp:ListItem>
                                                                    <asp:ListItem Value="and TestName ='个人与社会表现量表(PSP)' ">T2个人与社会表现量表</asp:ListItem>
                                                                    <asp:ListItem Value="and TestName ='世界卫生组织残疾评估量表(WHO DAS)' ">T3世界卫生组织残疾评估量表</asp:ListItem>
                                                                    <asp:ListItem Value="and TestName ='工作与学习维度影响量表 （SIWS）' ">T4工作与学习维度影响量表</asp:ListItem>
                                                                    <asp:ListItem Value="and TestName ='生活技能量表（LSP)' ">T5生活技能量表</asp:ListItem>
                                                                    <asp:ListItem Value="and TestName ='社交技能操作评估（SSES）' ">T6社交技能操作评估</asp:ListItem>
                                                                    <asp:ListItem Value="and TestName ='北京精神分裂症操作性功能评估量表(BP)' ">T7北京精神分裂症操作性功能评估量表</asp:ListItem>
                                                                    <asp:ListItem Value="and TestName ='躯体健康维度 (PH)' ">T8躯体健康维度</asp:ListItem>
                                                                    <asp:ListItem Value="and TestName ='SF-36健康调查量表(SF-36)' ">T9 SF-36健康调查量表</asp:ListItem>
                                                                    <asp:ListItem Value="and TestName ='一般自我效能感量表 (GSES)' ">T10一般自我效能感量表</asp:ListItem>
                                                                    <asp:ListItem Value="and TestName ='精神疾病内化污名量表(ISMI)' ">T11精神疾病内化污名量表</asp:ListItem>
                                                                    <asp:ListItem Value="and TestName ='精神分裂症希望量表 (SHS-9)' ">T12精神分裂症希望量表</asp:ListItem>
                                                                    <asp:ListItem Value="and TestName ='中文人生意义问卷(C-MLQ)' ">T13中文人生意义问卷</asp:ListItem>
                                                                    <asp:ListItem Value="and TestName ='临床总体印象量表（CGI）' ">T14临床总体印象量表</asp:ListItem>
                                                                    <asp:ListItem Value="and TestName ='阳性与阴性症状量表(PANSS)' ">T15阳性与阴性症状量表</asp:ListItem>
                                                                    <asp:ListItem Value="and TestName ='MATRICS共识认知成套测验（MCCB）' ">T16 MATRICS共识认知成套测验</asp:ListItem>
                                                                    <asp:ListItem Value="and TestName ='修订版外显攻击行为量表（MOAS）' ">T17修订版外显攻击行为量表</asp:ListItem>
                                                                    <asp:ListItem Value="and TestName ='护士用自杀风险评估量表（NGASR）' ">T18护士用自杀风险评估量表</asp:ListItem>
                                                                    <asp:ListItem Value="and TestName ='卡尔加里精神分裂症抑郁量表（CDSS）' ">T19卡尔加里精神分裂症抑郁量表</asp:ListItem>
                                                                    <asp:ListItem Value="and TestName ='治疗副反应量表（TESS）' ">T20治疗副反应量表</asp:ListItem>
                                                                    <asp:ListItem Value="and TestName ='锥体外系副反应量表（RSESE）' ">T21锥体外系副反应量表</asp:ListItem>
                                                                    <asp:ListItem Value="and TestName ='服药依从性问卷（MAQ）' ">T22服药依从性问卷</asp:ListItem>
                                                                    <asp:ListItem Value="and TestName ='自知力与治疗态度问卷表（ITAQ）' ">T23自知力与治疗态度问卷表</asp:ListItem>
                                                                    <asp:ListItem Value="and TestName ='药物管理能力评估（MMAA）' ">T24药物管理能力评估</asp:ListItem>
                                                                    <asp:ListItem Value="and TestName ='社会支持评定量表（SSRS）' ">T25社会支持评定量表</asp:ListItem>
                                                                    <asp:ListItem Value="and TestName ='家庭功能评定（FAD）' ">T26家庭功能评定</asp:ListItem>
                                                                    <asp:ListItem Value="and TestName ='婚恋评估（MRQ）' ">T27婚恋评估</asp:ListItem>
                                                                    <asp:ListItem Value="and TestName ='医疗资源评估（MRS）' ">T28医疗资源评估</asp:ListItem>
                                                                </asp:DropDownList>

                                                            </div>
                                                            <br />
                                                        </ContentTemplate>
                                                    </asp:UpdatePanel>

                                                    <div class=" col-xs-10 col-md-10">
                                                        <asp:Button ID="PrintBtn" runat="server" Text="打印总报告单" class="btn btn-info"
                                                            OnClick="PrintBtn_Click" />&nbsp;&nbsp;&nbsp;&nbsp;  
                                                   
                                                    </div>

                                                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                                        <ContentTemplate>
                                                            <div class=" col-xs-12 col-md-12">
                                                                <div style="float: right;">
                                                                    总共：<asp:Label ID="Label1" runat="server" ForeColor="#5D7B9D" Font-Bold="true"></asp:Label>
                                                                    条记录，每页显示：<asp:DropDownList ID="PageSizeDDL" runat="server" AutoPostBack="true" Font-Bold="true"
                                                                        OnSelectedIndexChanged="PageSizeDDL_SelectedIndexChanged" ForeColor="#5D7B9D">
                                                                        <asp:ListItem Value="5">5</asp:ListItem>
                                                                        <asp:ListItem Value="10">10</asp:ListItem>
                                                                        <asp:ListItem Value="20" Selected="True">20</asp:ListItem>
                                                                        <asp:ListItem Value="50">50</asp:ListItem>
                                                                    </asp:DropDownList>
                                                                    条记录，共<asp:Label ID="Label2" runat="server" ForeColor="#5D7B9D" Font-Bold="true"></asp:Label>页
                                                       
                                                                </div>
                                                            </div>
                                                            <br />
                                                            <div id="RightContent">
                                                                <asp:GridView ID="GridView1" runat="server" DataKeyNames="GUID" AutoGenerateColumns="false" class="table table-striped table-bordered table-hover"
                                                                    GridLines="Horizontal" Style="text-align: center;" ForeColor="#333333" HeaderStyle-HorizontalAlign="Center" Width="99%"  OnRowCommand="GridView1_RowCommand" OnRowCreated="GridView1_RowCreated" >
                                                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" Height="30px" HorizontalAlign="Center" />
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                    <Columns>
                                                                        <asp:BoundField DataField="Orders" HeaderText="排序" ItemStyle-Width="30" Visible="false" />
                                                                        <asp:TemplateField HeaderText="序" HeaderStyle-HorizontalAlign="Center">
                                                                            <ItemTemplate>
                                                                                <asp:Label ID="lblNo" runat="server" Text='<%# Container.DataItemIndex+1 %>'></asp:Label>
                                                                            </ItemTemplate>
                                                                            <ItemStyle Width="30px" HorizontalAlign="center" />
                                                                            <HeaderStyle Width="30px" />
                                                                        </asp:TemplateField>
                                                                        <asp:HyperLinkField DataNavigateUrlFields="GUID,TestName"
                                                                            DataNavigateUrlFormatString="RRedirect.aspx?TGUID={0}&TNum={1}" DataTextField="TestName"
                                                                            HeaderText="报告单名称" ItemStyle-Width="300" HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left" Target="_blank"></asp:HyperLinkField>
                                                                        <asp:BoundField DataField="PatientName" HeaderText="病人姓名" />
                                                                        <asp:BoundField DataField="EndDT" HeaderText=" 日期 " DataFormatString="{0:yy年MM月dd日}" />
                                                                        <asp:BoundField DataField="DoctorName" HeaderText="就诊医生" />
                                                                        <asp:ButtonField ButtonType="Button" CommandName="Del" HeaderText="删除" ShowHeader="True" Text="删除" ControlStyle-CssClass="btn btn-danger" />
                                                                    </Columns>
                                                                </asp:GridView>
                                                                <br />
                                                                <asp:Label ID="TestLabel" runat="server" Text="" Visible="true"></asp:Label>
                                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                       
                                                                <webdiyer:AspNetPager CssClass="pages" class="pagination" CurrentPageButtonClass="cpb" AlwaysShow="true" ID="AspNetPager1" runat="server" FirstPageText="首页" LastPageText="尾页" NextPageText="下一页" PrevPageText="上一页" OnPageChanged="AspNetPager1_PageChanged" LayoutType="Div">
                                                                </webdiyer:AspNetPager>
                                                            </div>
                                                        </ContentTemplate>
                                                    </asp:UpdatePanel>
                                                </div>

                                            </div>
                                        </div>

                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>








        </div>
    </div>




    

    <script type="text/javascript">
        function InitiateWidgets()
        { $('.widget-buttons *[data-toggle="maximize"]').on("click", function (n) { n.preventDefault(); var t = $(this).parents(".widget").eq(0), i = $(this).find("i").eq(0), r = "fa-compress", u = "fa-expand"; t.hasClass("maximized") ? (i && i.addClass(u).removeClass(r), t.removeClass("maximized"), t.find(".widget-body").css("height", "auto")) : (i && i.addClass(r).removeClass(u), t.addClass("maximized"), maximize(t)) }); $('.widget-buttons *[data-toggle="collapse"]').on("click", function (n) { n.preventDefault(); var t = $(this).parents(".widget").eq(0), r = t.find(".widget-body"), i = $(this).find("i"), u = "fa-plus", f = "fa-minus", e = 300; t.hasClass("collapsed") ? (i && i.addClass(f).removeClass(u), t.removeClass("collapsed"), r.slideUp(0, function () { r.slideDown(e) })) : (i && i.addClass(u).removeClass(f), r.slideUp(200, function () { t.addClass("collapsed") })) }); $('.widget-buttons *[data-toggle="dispose"]').on("click", function (n) { n.preventDefault(); var i = $(this), t = i.parents(".widget").eq(0); t.hide(300, function () { t.remove() }) }) }
        function maximize(n) { if (n) { var t = $(window).height(), i = n.find(".widget-header").height(); n.find(".widget-body").height(t - i) } } function scrollTo(n, t) { var i = n && n.size() > 0 ? n.offset().top : 0; jQuery("html,body").animate({ scrollTop: i + (t ? t : 0) }, "slow") }
        function hasClass(n, t) { var i = " " + n.className + " ", r = " " + t + " "; return i.indexOf(r) != -1 } var themeprimary = getThemeColorFromCss("themeprimary"), themesecondary = getThemeColorFromCss("themesecondary"), themethirdcolor = getThemeColorFromCss("themethirdcolor"), themefourthcolor = getThemeColorFromCss("themefourthcolor"), themefifthcolor = getThemeColorFromCss("themefifthcolor"), rtlchanger, popovers, hoverpopovers; $("#skin-changer li a").click(function () { createCookie("current-skin", $(this).attr("rel"), 10); window.location.reload() }); rtlchanger = document.getElementById("rtl-changer"); location.pathname != "/index-rtl-fa.html" && location.pathname != "/index-rtl-ar.html" && (readCookie("rtl-support") ? (switchClasses("pull-right", "pull-left"), switchClasses("databox-right", "databox-left"), switchClasses("item-right", "item-left"), $(".navbar-brand small img").attr("src", "assets/img/logo-rtl.png"), rtlchanger != null && (document.getElementById("rtl-changer").checked = !0)) : rtlchanger != null && (rtlchanger.checked = !1), rtlchanger != null && (rtlchanger.onchange = function () { this.checked ? createCookie("rtl-support", "true", 10) : eraseCookie("rtl-support"); setTimeout(function () { window.location.reload() }, 600) })); $(window).load(function () { setTimeout(function () { $(".loading-container").addClass("loading-inactive") }, 0) }); $("#btn-setting").on("click", function () { $(".navbar-account").toggleClass("setting-open") }); $("#fullscreen-toggler").on("click", function () { var n = document.documentElement; $("body").hasClass("full-screen") ? ($("body").removeClass("full-screen"), $("#fullscreen-toggler").removeClass("active"), document.exitFullscreen ? document.exitFullscreen() : document.mozCancelFullScreen ? document.mozCancelFullScreen() : document.webkitExitFullscreen && document.webkitExitFullscreen()) : ($("body").addClass("full-screen"), $("#fullscreen-toggler").addClass("active"), n.requestFullscreen ? n.requestFullscreen() : n.mozRequestFullScreen ? n.mozRequestFullScreen() : n.webkitRequestFullscreen ? n.webkitRequestFullscreen() : n.msRequestFullscreen && n.msRequestFullscreen()) }); popovers = $("[data-toggle=popover]"); $.each(popovers, function () { $(this).popover({ html: !0, template: '<div class="popover ' + $(this).data("class") + '"><div class="arrow"><\/div><h3 class="popover-title ' + $(this).data("titleclass") + '">Popover right<\/h3><div class="popover-content"><\/div><\/div>' }) }); hoverpopovers = $("[data-toggle=popover-hover]"); $.each(hoverpopovers, function () { $(this).popover({ html: !0, template: '<div class="popover ' + $(this).data("class") + '"><div class="arrow"><\/div><h3 class="popover-title ' + $(this).data("titleclass") + '">Popover right<\/h3><div class="popover-content"><\/div><\/div>', trigger: "hover" }) }); $("[data-toggle=tooltip]").tooltip({ html: !0 }); InitiateSettings(); InitiateWidgets();

    </script>

</asp:Content>

