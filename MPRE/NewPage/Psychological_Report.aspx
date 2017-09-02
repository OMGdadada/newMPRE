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
    <link href="../assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../assets/css/font-awesome.min.css" rel="stylesheet" />
    <link href="../assets/css/weather-icons.min.css" rel="stylesheet" />

    <!--Beyond styles-->
    <link href="../assets/css/beyond.min.css" rel="stylesheet" />
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
    
                    <!--Basic Scripts-->
                    <script type="text/javascript" src="../assets/js/jquery-2.0.3.min.js"></script>
                    <script type="text/javascript" src="../assets/js/bootstrap.min.js"></script>

                    <!--Beyond Scripts-->
                    <script type="text/javascript" src="../assets/js/beyond.min.js"></script>

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
             <asp:Label ID="CartGUID" runat="server" style="display:none" ></asp:Label>
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
                        <hr  />
                                  <div class="row" style="margin:4px 0px">
                        <p style="font-weight:600;">补充说明：</p>
                        <p>
                            <asp:TextBox ID="Remark" runat="server" TextMode="MultiLine" Rows="6" class="form-control myTextBox" placeholder="无" ></asp:TextBox>
                        </p>
                    </div>
                      <span  class="btn btn-info login noprint"  style="cursor: pointer;" data-dismiss="modal" data-toggle="modal" data-target="#myModal4" >常用语</span>
                        <br />
                    <div class="myHr"></div>
                    <div class="row" style="margin:4px 0px">
                        <div style="float:left;font-weight:600; margin-top:45px;">
                            医生签名：_______________________
                        </div>
                        <div style="float:right;margin-right:20px;">
                             <p> <strong>测试日期：</strong>
                            <asp:Label ID="TSTime" runat="server"></asp:Label>
                           </p>
                           <p> <strong>打印日期：</strong>
                            <asp:Label ID="RSTime" runat="server" Text="Label"></asp:Label>
                           </p>
                        </div>
                    </div>
                    <div  class="footHr">
                        <hr />
                    </div>
                    <div class="noprint" style="margin:50px 0px"></div>

                    <div class="row noprint" style="margin:4px 0px;text-align:center;">
                        <asp:Button ID="Button1" runat="server" Text="保 存" class="btn btn-success"  OnClick="Button1_Click" />
                        &nbsp;&nbsp;
                        <a href="javascript:window.print()" target="_self" class="btn btn-info">打印</a> 

                     
                    </div>

                        
    </div>
         </div>
                </div>
        </div>
        </div><asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <div class="modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document" style="width:50%; zoom: 1.3;">
            <div class="modal-content" style="margin-top: 10%;">
                <div class="modal-header">
                    <strong>常用语</strong>
                    <button type="button" class="close" data-dismiss="modal" data-toggle="modal" data-target="#myModal"><span aria-hidden="true">&times;</span></button>
                    <br />
                </div>
                <div class="modal-body " style="padding-top:0px;">
                    <p style=" zoom: 0.7;">&nbsp;</p>
                     <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                      <asp:Label ID="Label1" runat="server" ></asp:Label>
                        <div style="float: left; width: 100%;">
                            <asp:TextBox ID="ArTagName" runat="server" Height="28px" Width="60%"></asp:TextBox>
                            &nbsp;<asp:Button ID="AddArTag" runat="server" class="btn btn-info " Text="添加为常用语" OnClick="AddArTag_Click" />
                            
                           
                        </div>
                      
                        <div runat="server" style="overflow: scroll; width: 100%; height: 200px; overflow-x: hidden;">
                            <asp:CheckBoxList ID="TagsList" runat="server" Style="margin-left: 5px; margin-top: 0px; text-align: left; width: 100%" RepeatDirection="Horizontal"
                                RepeatLayout="Table" RepeatColumns="1">
                            </asp:CheckBoxList>
                        </div>   
                          </ContentTemplate>
            </asp:UpdatePanel>
                    </div>
                

                <div class="modal-footer">
                    <asp:Button ID="Sure" runat="server" Text="确定"  class="btn btn-info" OnClick="Sure2_Click"   />
                    <button type="button" class="btn btn-default" data-dismiss="modal" data-toggle="modal" data-target="#myModal">取消</button>
                </div>
            </div>
        </div>
    </div>




        <span id="Score" style="display:none"></span>
     

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

            var Vm = new Vue({
                data: {
                    list:[]
                }
            })

            var a="";
            var count = "";
            (function ($) {
                var TGUID = document.getElementById('<%=TestGUID.ClientID %>').innerText;
                var CGUID = document.getElementById('<%=CartGUID.ClientID %>').innerText;
                $.ajax({
                    type: "post",
                    url: "QuestionAdd_WebService.asmx/ScoreList",
                    async: false,//设置为同步操作就可以给全局变量赋值成功 
                    data: { CartGUID: CGUID, TestGUID: TGUID },
                    success: function (str) {
                        var data1 = $(str).find("string").text();
                        $("#Score").text(data1);
                    }
                })
                
               
              $.ajax({
                  type: "post",
                  url: "QuestionAdd_WebService.asmx/ReportList",
                  data: { QGUID: TGUID },
                  success: function (str) {
                      var data1 = $(str).find("string").text();
                      nv.items = eval('(' + data1 + ')');


                      for (var i = 0; i < nv.items.length; i++) {
                          for (var j = 0; j < nv.items[0].ItemListNumb.length; j++)
                          {
                              var b = nv.items[i].ItemListNumb[j].Content.substring(0, 1);
                             if (b == "=") {
                               
                                 var YZScore =nv.items[i].ItemListNumb[j].Content.substring(1, nv.items[i].ItemListNumb[j].Content.length);
                                 var Scorelist = $("#Score").text();
                                 
                                 eval(Scorelist);
                                 nv.items[i].ItemListNumb[j].Content = parseFloat(eval(YZScore)).toFixed(2);
                              }

                          }
                      }
                  

                  }
              });
              
           
            })(jQuery)

           

           

        </script>
    </form>

</body>
</html>
