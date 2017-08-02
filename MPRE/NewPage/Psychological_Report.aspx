<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Psychological_Report.aspx.cs" Inherits="NewPage_Psychological_Report" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <title>报告单</title>
    <meta name="description" content="多维度精神康复评估系统" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta content="always" name="referrer" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="shortcut icon" href="#" type="image/x-icon" />
    
    <!--Basic Styles-->
    <link href="../assets/css/bootstrap2.min.css" rel="stylesheet" />
    <link href="../assets/css/font-awesome.min.css" rel="stylesheet" />
    <link href="../assets/css/weather-icons.min.css" rel="stylesheet" />

    <!--Beyond styles-->
    <link href="../assets/css/beyond2.min.css" rel="stylesheet" />
    <link href="../assets/css/demo.min.css" rel="stylesheet" />
    <link href="../assets/css/typicons.min.css" rel="stylesheet" />
    <link href="../assets/css/animate.min.css" rel="stylesheet" />
    <link href="../assets/css/style.css" rel="stylesheet" />
   
     <style media="print" type="text/css">   
        .noprint{
            /*visibility:hidden;*/
            display:none;
        }   
        body{
            zoom:0.8;
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
    </style>
    
    <script src="../assets/js/jquery-1.4.2.min.js"></script>

      <script src="../assets/js/skins.min.js"></script>
      <script src="../assets/js/vue.js"></script>
</head>
<body>
       
    <form id="form1" runat="server" >
        <div>
    <div class="page-body" style="max-width:960px;margin:0 auto 0; zoom:1.3">
            <div class="widget flat radius-bordered">
                <div id="banner" class="noprint" style="padding-left:180px;">
                    心理测评系统
                </div>
            <asp:Label ID="TestGUID" runat="server" style="display:none" ></asp:Label>
            
            <div class="widget-body bordered-bottom">
                <div style="margin:2px 20px">
                    <div class="row" style="text-align:center;">
                        <h2 style="font-family:'Microsoft YaHei';"><asp:Label ID="HospitalName" runat="server" Text=""></asp:Label></h2>
                        <h2 style="font-family:'Microsoft YaHei';"><asp:Label ID="TestName" runat="server"></asp:Label>结果分析报告</h2>
                    </div>

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
                        <strong >量表得分</strong>
                       <table id="UserTag_Select" style="width: 100%;">
                               <tr style="background-color:#F0F7FF;">
                            <asp:Repeater ID="Repeater1" runat="server">
                                <ItemTemplate>
                                    <th> <%# Eval("HeaderName") %></th>
                                </ItemTemplate>
                            </asp:Repeater> 
                             

                            </tr>

                           <tr v-for="item in items">
                               <th v-for="ItemListNumb in item.ItemListNumb" class="modules">
                                   <span style="word-break: normal; width: auto; display: block; white-space: pre-wrap; word-wrap: break-word; overflow: hidden;">{{ItemListNumb.Content}}</span></th>
                             

                           </tr>

                       </table>
                    </div>
                          <div style="margin:4px -2px">
                        <hr  />
                              <div  style=" clear:both; float:right;">
                                  <p>测查员：**** </p>
                                  <p>测查日期：****年**月**日</p>
                                  <p>检查医院：北京大学第六医院</p>

                              </div>
                                 

                               <hr  style=" clear:both; " />


                    </div>
                 

    </div>
         </div>
                </div>
        </div>
        </div>
        <style type="text/css">
        #UserTag_Select th, #table1 th {
            height: 30px;
            border: 1px solid #000;
            padding: 0 1em 0;
            font-size: 13px;
            max-width:100px;
        }

    </style>

        <script type="text/javascript">

            var nv = new Vue({
                el: '#UserTag_Select',
                data: {
                    items: []
                }
            });


            (function ($) {

                var QuestionGUID = document.getElementById('<%=TestGUID.ClientID %>').innerText;
              $.ajax({
                  type: "post",
                  url: "QuestionAdd_WebService.asmx/ReportList",
                  data: { QGUID: QuestionGUID },
                  success: function (str) {
                      var data1 = $(str).find("string").text();

                      nv.items = eval('(' + data1 + ')');


                  }
              });


          })(jQuery)

        </script>
    </form>

</body>
</html>
