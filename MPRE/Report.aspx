<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Report.aspx.cs" Inherits="Report" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>报告单</title>
    <meta name="description" content="多维度精神康复评估系统" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta content="always" name="referrer" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="shortcut icon" href="#" type="image/x-icon" />
    
    <!--Basic Styles-->
    <link href="assets/css/bootstrap2.min.css" rel="stylesheet" />
    <link href="assets/css/font-awesome.min.css" rel="stylesheet" />
    <link href="assets/css/weather-icons.min.css" rel="stylesheet" />

    <!--Beyond styles-->
    <link href="assets/css/beyond2.min.css" rel="stylesheet" />
    <link href="assets/css/demo.min.css" rel="stylesheet" />
    <link href="assets/css/typicons.min.css" rel="stylesheet" />
    <link href="assets/css/animate.min.css" rel="stylesheet" />
     <link href="assets/css/style.css" rel="stylesheet" />

    <%-- 复选框样式--%>
    <style type="text/css">
        input[type=checkbox], input[type=radio] {
            opacity: 1;
            position: static;
            width: auto;
            height: auto;
        }
        body{
            zoom:1.3;
            font-size:14px;
            color:#333;
        }
        .myHr{
             margin:100px 0px;
        }
        .footHr{
             margin:4px -2px;
        }
    </style>

    <style media="print" type="text/css">   
        .noprint{
            /*visibility:hidden;*/
            display:none;
        }   
        body{
            zoom:0.74;
        }
        .myHr{
             margin:30px 0px;
        }
        .footHr{
             display:none;
        }
        .myTextBox{
            border-style:none;
        }
        .btn.btn-link{
            color:#333 !important;
        }
    </style>

    <!--[if lte IE 8]>
        <script>
            alert("为获得最佳效果，建议使用IE9、Chrome10或更高版本的浏览器。");
        </script>
    <![endif]-->

    <!--Skin Script: Place this script in head to load scripts for skins and rtl support-->
    <script src="assets/js/skins.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel2" runat="server">  
            <ContentTemplate>
                <asp:Timer ID="Timer1" runat="server" Interval="25000"></asp:Timer><!-- 用于强制更新，防止session过期，每25秒更新一次-->
            </ContentTemplate>                  
        </asp:UpdatePanel>

         <!-- 模态框弹出部分  --->

    <div class="module-area2 modal-content" id="Cover1" runat="server">
        <div class="module-head">
            <span>常用语</span>
             
        </div>
        <div id="BDCenter">
                    <div id="loginInput">  <asp:UpdatePanel ID="UpdatePanel8" runat="server">
                <ContentTemplate>
                      <asp:Label ID="Label1" runat="server" ></asp:Label>
                        <div style="float: left; width: 100%;">
                            <asp:TextBox ID="ArTagName" runat="server" Height="28px" Width="60%"></asp:TextBox>
                            &nbsp;<asp:Button ID="AddArTag" runat="server" class="btn btn-info " Text="添加为常用语" OnClick="AddArTag_Click" />
                            
                           
                        </div>
                      
                        <div runat="server" style="overflow: scroll; width: 100%; height: 150px; overflow-x: hidden;">
                            <asp:CheckBoxList ID="TagsList" runat="server" Style="margin-left: 5px; margin-top: 0px; text-align: left; width: 100%" RepeatDirection="Horizontal"
                                RepeatLayout="Table" RepeatColumns="1">
                            </asp:CheckBoxList>
                        </div>   
                          </ContentTemplate>
            </asp:UpdatePanel>
                    </div>
           
             <asp:Button ID="Sure" runat="server" Text="确定"  class="Sure2 " OnClick="Sure2_Click"   />
             <asp:Button ID="Close" runat="server" Text="取消"  class="close1 " OnClick="Close_Click"   />
            
             
        </div> 
        <hr />
    </div>
      <!-- //模态框弹出部分结束  --->

        <div>
            <asp:Label ID="T1" runat="server" Text="" Visible="false"></asp:Label>
            <asp:Label ID="T2" runat="server" Text="" Visible="false"></asp:Label>
            <asp:Label ID="T3" runat="server" Text="" Visible="false"></asp:Label>
            <asp:Label ID="T4" runat="server" Text="" Visible="false"></asp:Label>
            <asp:Label ID="GUID" runat="server" Text="" Visible="false"></asp:Label>
            <asp:Label ID="TNum" runat="server" Visible="false"></asp:Label>
            <asp:Label ID="PatientGUID" runat="server" Text="" Visible="false"></asp:Label>
            
            <asp:Label ID="Instruction" runat="server" Text="" Visible="false"></asp:Label>
            <div class="page-body" style="max-width:960px;margin:0 auto 0;">
            <div class="widget flat radius-bordered">
                <div id="banner" class="noprint" style="padding-left:180px;">
                    多维度精神康复评估系统
                </div>
            
            
            <div class="widget-body bordered-bottom">
                <div style="margin:2px 20px">
                    <div class="row" style="text-align:center;">
                        <h2 style="font-family:'Microsoft YaHei';"><asp:Label ID="HospitalName" runat="server" Text=""></asp:Label></h2>
                        <h2 style="font-family:'Microsoft YaHei';"><asp:Label ID="TestName" runat="server"></asp:Label>多维度总报告单</h2>
                    </div>
                    <p>&nbsp;</p>

                    <div style="margin:4px -2px">
                        <hr />
                    </div>

                    <div class="row" style="margin:4px -15px">
                        <div class="col-lg-4 col-sm-4 col-xs-4">
                            <asp:Label ID="RF1Text" runat="server"></asp:Label><asp:Label ID="RF1Value" runat="server"  Visible="false"></asp:Label>
                            <asp:Label ID="RF1" runat="server"></asp:Label>
                        </div>
                        <div class="col-lg-4 col-sm-4 col-xs-4">
                            <asp:Label ID="RF2Text" runat="server"></asp:Label><asp:Label ID="RF2Value" runat="server"  Visible="false"></asp:Label>
                            <asp:Label ID="RF2" runat="server"></asp:Label>
                        </div>
                        <div class="col-lg-4 col-sm-4 col-xs-4">
                            <asp:Label ID="RF3Text" runat="server"></asp:Label><asp:Label ID="RF3Value" runat="server"  Visible="false" ></asp:Label>
                            <asp:Label ID="RF3" runat="server"></asp:Label>
                        </div>
                    </div>

                    <div class="row" style="margin:4px -15px">
                        <div class="col-lg-4 col-sm-4 col-xs-4">
                            <asp:Label ID="RF4Text" runat="server"></asp:Label><asp:Label ID="RF4Value" runat="server"  Visible="false"></asp:Label>
                            <asp:Label ID="RF4" runat="server"></asp:Label>
                        </div>
                        <div class="col-lg-4 col-sm-4 col-xs-4">
                            <asp:Label ID="RF5Text" runat="server"></asp:Label><asp:Label ID="RF5Value" runat="server"  Visible="false"></asp:Label>
                            <asp:Label ID="RF5" runat="server"></asp:Label>
                        </div>
                        <div class="col-lg-4 col-sm-4 col-xs-4">
                            <asp:Label ID="RF6Text" runat="server"></asp:Label><asp:Label ID="RF6Value" runat="server"  Visible="false"></asp:Label>
                            <asp:Label ID="RF6" runat="server"></asp:Label>
                        </div>
                    </div>

                    <div class="row" style="margin:4px -15px">
                        <div class="col-lg-4 col-sm-4 col-xs-4">
                            <asp:Label ID="RF7Text" runat="server"></asp:Label><asp:Label ID="RF7Value" runat="server"  Visible="false"></asp:Label>
                            <asp:Label ID="RF7" runat="server"></asp:Label>
                        </div>
                        <div class="col-lg-4 col-sm-4 col-xs-4">
                            <asp:Label ID="RF8Text" runat="server"></asp:Label><asp:Label ID="RF8Value" runat="server"  Visible="false"></asp:Label>
                            <asp:Label ID="RF8" runat="server"></asp:Label>
                        </div>
                        <div class="col-lg-4 col-sm-4 col-xs-4">
                            <asp:Label ID="RF9Text" runat="server"></asp:Label><asp:Label ID="RF9Value" runat="server"  Visible="false"></asp:Label>
                            <asp:Label ID="RF9" runat="server"></asp:Label>
                        </div>
                    </div>

                    <div style="margin:4px -2px">
                        <hr />
                    </div>

                    <div class="row" style="margin:4px 0px">
                        <p style="font-weight:600;">结果说明：</p>
                        <p style="text-indent:2em">多维度精神康复评估，共六个大维度：功能康复维度、躯体维度、生命价值和质量维度、症状维度、治疗意愿及能力维度和资源维度。</p>
                    </div>

                    <div style="margin:4px -2px">
                        <hr />
                    </div>

                    <div class="row" style="margin:4px 0px">
                        <p style="font-weight:600;">测试结果：</p>
                        <div style="margin:20px 0px"></div>
                        <table class="table table-bordered table-hover" style="text-align:center;vertical-align:middle;">
                            <thead>
                                <tr>
                                    <th style="background:#F0F7FF;text-align:center;width:170px;">
                                        测试维度
                                    </th>
                                    <th style="background:#F0F7FF;text-align:center;">
                                        维度指数
                                    </th>
                                    <th style="background:#F0F7FF;text-align:center;">
                                        测试量表
                                    </th>
                                    <th style="background:#F0F7FF;text-align:center;">
                                        测试量表分数
                                    </th>
                                    <th style="background:#F0F7FF;">
                                        得分范围
                                    </th>
                                    <th style="background:#F0F7FF;">
                                        说明
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td rowspan="7">
                                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">  
                                            <ContentTemplate>
                                                <button class="btn btn-link" data-toggle="modal" data-target=".bs-example-modal-lg-1">功能康复维度</button>
                                            </ContentTemplate>                  
                                        </asp:UpdatePanel>
                                    </td>
                                    <td  rowspan="7">
                                        <asp:Label ID="R1" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                    <td>
                                        T1
                                    </td>
                                    <td>
                                        <asp:Label ID="T1Score" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                    <td style="text-align:left;">
                                        1-100分
                                    </td>
                                    <td style="text-align:left;">
                                        <asp:Label ID="T1ScoreAdd" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        T2
                                    </td>
                                    <td>
                                        <asp:Label ID="T2Score" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                    <td style="text-align:left;">
                                        0-100分
                                    </td>
                                    <td style="text-align:left;">
                                        <asp:Label ID="T2ScoreAdd" runat="server" Text="N/A" ></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        T3
                                    </td>
                                    <td>
                                        <asp:Label ID="T3Score" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                    <td style="text-align:left;">
                                        36-180分
                                    </td>
                                    <td style="text-align:left;">
                                        <asp:Label ID="T3ScoreAdd" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        T4
                                    </td>
                                    <td>
                                        <asp:Label ID="T4Score" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                    <td style="text-align:left;">
                                        1-100%
                                    </td>
                                    <td style="text-align:left;">
                                        <asp:Label ID="T4ScoreAdd" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        T5
                                    </td>
                                    <td>
                                        <asp:Label ID="T5Score" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                    <td style="text-align:left;">
                                        39-156分
                                    </td>
                                    <td style="text-align:left;">
                                        <asp:Label ID="T5ScoreAdd" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        T6
                                    </td>
                                    <td>
                                        <asp:Label ID="T6Score" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                    <td style="text-align:left;">
                                        0-129分
                                    </td>
                                    <td style="text-align:left;">
                                        <asp:Label ID="T6ScoreAdd" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        T7
                                    </td>
                                    <td>
                                        <asp:Label ID="T7Score" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                    <td style="text-align:left;">
                                        	0-100分
                                    </td>
                                    <td style="text-align:left;">
                                        <asp:Label ID="T7ScoreAdd" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                </tr>

                                <tr>
                                    <td>
                                        <asp:UpdatePanel ID="UpdatePanel3" runat="server">  
                                            <ContentTemplate>
                                                <button class="btn btn-link" data-toggle="modal" data-target=".bs-example-modal-lg-2">躯体维度</button>
                                            </ContentTemplate>                  
                                        </asp:UpdatePanel>
                                    </td>
                                    <td>
                                        <asp:Label ID="R2" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                    <td>
                                        T8
                                    </td>
                                    <td>
                                        <asp:Label ID="T8Score" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                    <td style="text-align:left;">
                                        0-600分
                                    </td>
                                    <td style="text-align:left;">
                                        <asp:Label ID="T8ScoreAdd" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                </tr>
                

                                <tr>
                                    <td rowspan="5">
                                        <asp:UpdatePanel ID="UpdatePanel4" runat="server">  
                                            <ContentTemplate>
                                                <button class="btn btn-link" data-toggle="modal" data-target=".bs-example-modal-lg-3">生命价值和质量维度</button>
                                            </ContentTemplate>                  
                                        </asp:UpdatePanel>
                                    </td>
                                    <td  rowspan="5">
                                        <asp:Label ID="R3" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                    <td>
                                        T9
                                    </td>
                                    <td>
                                        <asp:Label ID="T9Score" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                    <td style="text-align:left;">
                                        0-800分
                                    </td>
                                    <td style="text-align:left;">
                                        <asp:Label ID="T9ScoreAdd" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        T10
                                    </td>
                                    <td>
                                        <asp:Label ID="T10Score" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                    <td style="text-align:left;">
                                        0-100%
                                    </td>
                                    <td style="text-align:left;">
                                        <asp:Label ID="T10ScoreAdd" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        T11
                                    </td>
                                    <td>
                                        <asp:Label ID="T11Score" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                    <td style="text-align:left;">
                                        24-96分
                                    </td>
                                    <td style="text-align:left;">
                                        <asp:Label ID="T11ScoreAdd" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        T12
                                    </td>
                                    <td>
                                        <asp:Label ID="T12Score" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                    <td style="text-align:left;">
                                        0-18分
                                    </td>
                                    <td style="text-align:left;">
                                        <asp:Label ID="T12ScoreAdd" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        T13
                                    </td>
                                    <td>
                                        <asp:Label ID="T13Score" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                    <td style="text-align:left;">
                                        10-70分
                                    </td>
                                    <td style="text-align:left;">
                                        <asp:Label ID="T13ScoreAdd" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                </tr>

                                <tr>
                                    <td rowspan="8">
                                        <asp:UpdatePanel ID="UpdatePanel5" runat="server">  
                                            <ContentTemplate>
                                                <button class="btn btn-link" data-toggle="modal" data-target=".bs-example-modal-lg-4">症状维度</button>
                                            </ContentTemplate>                  
                                        </asp:UpdatePanel>
                                    </td>
                                    <td  rowspan="8">
                                        <asp:Label ID="R4" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                    <td>
                                        T14
                                    </td>
                                    <td>
                                        <asp:Label ID="T14Score" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                    <td style="text-align:left;">
                                        1-7分
                                    </td>
                                    <td style="text-align:left;">
                                        <asp:Label ID="T14ScoreAdd" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        T15
                                    </td>
                                    <td>
                                        <asp:Label ID="T15Score" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                    <td style="text-align:left;">
                                        20-140分
                                    </td>
                                    <td style="text-align:left;">
                                        <asp:Label ID="T15ScoreAdd" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        T16
                                    </td>
                                    <td>
                                        <asp:Label ID="T16Score" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                    <td style="text-align:left;">
                                        0-100分
                                    </td>
                                    <td style="text-align:left;">
                                        <asp:Label ID="T16ScoreAdd" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        T17
                                    </td>
                                    <td>
                                        <asp:Label ID="T17Score" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                    <td style="text-align:left;">
                                        0-40分
                                    </td>
                                    <td style="text-align:left;">
                                        <asp:Label ID="T17ScoreAdd" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        T18
                                    </td>
                                    <td>
                                        <asp:Label ID="T18Score" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                    <td style="text-align:left;">
                                        0-15分
                                    </td>
                                    <td style="text-align:left;">
                                        <asp:Label ID="T18ScoreAdd" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        T19
                                    </td>
                                    <td>
                                        <asp:Label ID="T19Score" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                    <td style="text-align:left;">
                                        0-27分
                                    </td>
                                    <td style="text-align:left;">
                                        <asp:Label ID="T19ScoreAdd" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        T20
                                    </td>
                                    <td>
                                        <asp:Label ID="T20Score" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                    <td style="text-align:left;">
                                        0-476分
                                    </td>
                                    <td style="text-align:left;">
                                        <asp:Label ID="T20ScoreAdd" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        T21
                                    </td>
                                    <td>
                                        <asp:Label ID="T21Score" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                    <td style="text-align:left;">
                                        0-40分
                                    </td>
                                    <td style="text-align:left;">
                                        <asp:Label ID="T21ScoreAdd" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                </tr>

                                <tr>
                                    <td rowspan="3">
                                        <asp:UpdatePanel ID="UpdatePanel6" runat="server">  
                                            <ContentTemplate>
                                                <button class="btn btn-link" data-toggle="modal" data-target=".bs-example-modal-lg-5">治疗意愿及能力维度</button>
                                            </ContentTemplate>                  
                                        </asp:UpdatePanel>
                                    </td>
                                    <td  rowspan="3">
                                        <asp:Label ID="R5" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                    <td>
                                        T22
                                    </td>
                                    <td>
                                        <asp:Label ID="T22Score" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                    <td style="text-align:left;">
                                        0-4分
                                    </td>
                                    <td style="text-align:left;">
                                        <asp:Label ID="T22ScoreAdd" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        T23
                                    </td>
                                    <td>
                                        <asp:Label ID="T23Score" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                    <td style="text-align:left;">
                                        0-22分
                                    </td>
                                    <td style="text-align:left;">
                                        <asp:Label ID="T23ScoreAdd" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        T24
                                    </td>
                                    <td>
                                        <asp:Label ID="T24Score" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                    <td style="text-align:left;">
                                        0-100分
                                    </td>
                                    <td style="text-align:left;">
                                        <asp:Label ID="T24ScoreAdd" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                </tr>
                

                                <tr>
                                    <td rowspan="4">
                                        <asp:UpdatePanel ID="UpdatePanel7" runat="server">  
                                            <ContentTemplate>
                                                <button class="btn btn-link" data-toggle="modal" data-target=".bs-example-modal-lg-6">资源维度</button>
                                            </ContentTemplate>                  
                                        </asp:UpdatePanel>
                                    </td>
                                    <td  rowspan="4">
                                        <asp:Label ID="R6" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                    <td>
                                        T25
                                    </td>
                                    <td>
                                        <asp:Label ID="T25Score" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                    <td style="text-align:left;">
                                        12-64分
                                    </td>
                                    <td style="text-align:left;">
                                        <asp:Label ID="T25ScoreAdd" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        T26
                                    </td>
                                    <td>
                                        <asp:Label ID="T26Score" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                    <td style="text-align:left;">
                                        60-240分
                                    </td>
                                    <td style="text-align:left;">
                                        <asp:Label ID="T26ScoreAdd" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        T27
                                    </td>
                                    <td>
                                        <asp:Label ID="T27Score" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                    <td style="text-align:left;">
                                        0-100分
                                    </td>
                                    <td style="text-align:left;">
                                        <asp:Label ID="T27ScoreAdd" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        T28
                                    </td>
                                    <td>
                                        <asp:Label ID="T28Score" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                    <td style="text-align:left;">
                                        0-100分
                                    </td>
                                    <td style="text-align:left;">
                                        <asp:Label ID="T28ScoreAdd" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                </tr>


                                <tr>
                                    <td>
                                        六个维度的均分
                                    </td>
                                    <td  colspan="3">
                                        <asp:Label ID="Average" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                    <td style="text-align:left;">
                                        0-100分
                                    </td>
                                    <td style="text-align:left;">
                                        得分越高，维度功能越好
                                    </td>
                                </tr>
                


                            </tbody>
                        </table>
                    </div>

                    <div style="margin:25px -2px">
                        <hr />
                    </div>

                    <div class="row" style="margin:4px 0px">
                        <p style="font-weight:600;">补充说明：</p>

                        <p>
                            <asp:TextBox ID="Remark" runat="server" TextMode="MultiLine" Rows="6" class="form-control myTextBox" placeholder="无"></asp:TextBox>
                        </p>
                         <asp:Button ID="Button4" class="btn btn-info login noprint" runat="server" Text="常用语" OnClick="Button4_Click"  />
                    </div>
                       
                    <div class="myHr"></div>
                    <div class="row" style="margin:4px 0px">
                        <div style="float:left;font-weight:600;">
                            医生签名：_______________________
                        </div>
                        <div style="float:right;margin-right:20px;">
                            <strong>打印日期：</strong>
                            <asp:Label ID="RSTime" runat="server" Text="Label"></asp:Label>
                        </div>
                    </div>
                    <div  class="footHr">
                        <hr />
                    </div>
                    <div class="noprint" style="margin:50px 0px"></div>

                    <div class="row noprint" style="margin:4px 0px;text-align:center;">
                        <asp:Button ID="Button1" runat="server" Text="保 存" class="btn btn-success" OnClick="Button1_Click" />
                        &nbsp;&nbsp;
                        <a href="javascript:window.print()" target="_self" class="btn btn-info">打印</a>
                        &nbsp;&nbsp;
                        <asp:Button ID="Button3" runat="server" Text="返回总报告单列表" class="btn btn-default" OnClick="Button3_Click" />
                        
                    </div>

                </div>
                
                </div>
            </div>
            </div>
    
        </div>
        

        <!--Large Modal Templates-->
        <div class="modal fade bs-example-modal-lg-1" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">

                    <div class="modal-header" style="border-bottom:3px solid #57b5e3;background-color:#fff;">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title" id="myLargeModalLabell">功能康复维度 · 子维度分</h4>
                    </div>
                    <div class="modal-body">
                        <table class="table table-bordered table-hover" style="text-align:center;vertical-align:middle;">
                            <thead>
                                <tr>
                                    <th style="background:#F0F7FF;text-align:center;">
                                        子维度
                                    </th>
                                    <th style="background:#F0F7FF;text-align:center;">
                                        指数分
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        工作/学习维度
                                    </td>
                                    <td>
                                        <asp:Label ID="R1C1" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        自我照料
                                    </td>
                                    <td>
                                        <asp:Label ID="R1C2" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        人际关系
                                    </td>
                                    <td>
                                        <asp:Label ID="R1C3" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div>

        <div class="modal fade bs-example-modal-lg-2" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">

                    <div class="modal-header" style="border-bottom:3px solid #57b5e3;background-color:#fff;">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title" id="myLargeModalLabel2">躯体维度 · 子维度分</h4>
                    </div>
                    <div class="modal-body">
                        <table class="table table-bordered table-hover" style="text-align:center;vertical-align:middle;">
                            <thead>
                                <tr>
                                    <th style="background:#F0F7FF;text-align:center;">
                                        子维度
                                    </th>
                                    <th style="background:#F0F7FF;text-align:center;">
                                        指数分
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        体重
                                    </td>
                                    <td>
                                        <asp:Label ID="R2C1" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        腰围
                                    </td>
                                    <td>
                                        <asp:Label ID="R2C2" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        糖代谢
                                    </td>
                                    <td>
                                        <asp:Label ID="R2C3" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        脂代谢
                                    </td>
                                    <td>
                                        <asp:Label ID="R2C4" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        心血管
                                    </td>
                                    <td>
                                        <asp:Label ID="R2C5" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        物质滥用
                                    </td>
                                    <td>
                                        <asp:Label ID="R2C6" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div>

        <div class="modal fade bs-example-modal-lg-3" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">

                    <div class="modal-header" style="border-bottom:3px solid #57b5e3;background-color:#fff;">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title" id="myLargeModalLabel3">生命价值和质量维度 · 子维度分</h4>
                    </div>
                    <div class="modal-body">
                        <table class="table table-bordered table-hover" style="text-align:center;vertical-align:middle;">
                            <thead>
                                <tr>
                                    <th style="background:#F0F7FF;text-align:center;">
                                        子维度
                                    </th>
                                    <th style="background:#F0F7FF;text-align:center;">
                                        指数分
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        耻感维度
                                    </td>
                                    <td>
                                        <asp:Label ID="R3C1" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        效能维度
                                    </td>
                                    <td>
                                        <asp:Label ID="R3C2" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        生存质量维度
                                    </td>
                                    <td>
                                        <asp:Label ID="R3C3" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        希望与价值维度
                                    </td>
                                    <td>
                                        <asp:Label ID="R3C4" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div>

        <div class="modal fade bs-example-modal-lg-4" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">

                    <div class="modal-header" style="border-bottom:3px solid #57b5e3;background-color:#fff;">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title" id="myLargeModalLabel4">症状维度 · 子维度分</h4>
                    </div>
                    <div class="modal-body">
                        <table class="table table-bordered table-hover" style="text-align:center;vertical-align:middle;">
                            <thead>
                                <tr>
                                    <th style="background:#F0F7FF;text-align:center;">
                                        子维度
                                    </th>
                                    <th style="background:#F0F7FF;text-align:center;">
                                        指数分
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        阳性症状
                                    </td>
                                    <td>
                                        <asp:Label ID="R4C1" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        阴性症状
                                    </td>
                                    <td>
                                        <asp:Label ID="R4C2" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        认知症状
                                    </td>
                                    <td>
                                        <asp:Label ID="R4C3" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        情感症状
                                    </td>
                                    <td>
                                        <asp:Label ID="R4C4" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        行为症状
                                    </td>
                                    <td>
                                        <asp:Label ID="R4C5" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div>

        <div class="modal fade bs-example-modal-lg-5" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">

                    <div class="modal-header" style="border-bottom:3px solid #57b5e3;background-color:#fff;">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title" id="myLargeModalLabel5">治疗意愿及能力维度 · 子维度分</h4>
                    </div>
                    <div class="modal-body">
                        <table class="table table-bordered table-hover" style="text-align:center;vertical-align:middle;">
                            <thead>
                                <tr>
                                    <th style="background:#F0F7FF;text-align:center;">
                                        子维度
                                    </th>
                                    <th style="background:#F0F7FF;text-align:center;">
                                        指数分
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                               <tr>
                                    <td>
                                        服药依从性和自知力
                                    </td>
                                    <td>
                                        <asp:Label ID="R5C1" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        药物自我管理
                                    </td>
                                    <td>
                                        <asp:Label ID="R5C2" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div>

        <div class="modal fade bs-example-modal-lg-6" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">

                    <div class="modal-header" style="border-bottom:3px solid #57b5e3;background-color:#fff;">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title" id="myLargeModalLabel6">资源维度 · 子维度分</h4>
                    </div>
                    <div class="modal-body">
                        <table class="table table-bordered table-hover" style="text-align:center;vertical-align:middle;">
                            <thead>
                                <tr>
                                    <th style="background:#F0F7FF;text-align:center;">
                                        子维度
                                    </th>
                                    <th style="background:#F0F7FF;text-align:center;">
                                        指数分
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        家庭资源
                                    </td>
                                    <td>
                                        <asp:Label ID="R6C1" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        婚恋资源
                                    </td>
                                    <td>
                                        <asp:Label ID="R6C2" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        社会资源
                                    </td>
                                    <td>
                                        <asp:Label ID="R6C3" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        医疗资源
                                    </td>
                                    <td>
                                        <asp:Label ID="R6C4" runat="server" Text="N/A"></asp:Label>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div>

        <!--End Large Modal Templates-->

        <!--Basic Scripts-->
        <script src="assets/js/jquery-2.0.3.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
    </form>
    
    
</body>
</html>
