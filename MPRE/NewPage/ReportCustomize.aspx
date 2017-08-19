<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="ReportCustomize.aspx.cs" Inherits="NewPage_ReportCustomize" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script src="../assets/js/vue.js"></script>
      <div class="page-body" style="margin-top: -30px;">
        <div class="row">
            <div class="col-xs-12 col-md-12">
                <div class="widget">
                   
                    <div class="widget-header" style="width: 100%;">
                        <span class="widget-caption" style="width: 80%; text-align: center;">量表名：
                            <asp:Label ID="TextName" runat="server"></asp:Label>
                            <asp:Label ID="TextQUID" runat="server" style ="display:none;"></asp:Label>
                          <asp:Label ID="HeaderSum" runat="server" style ="display:none;" ></asp:Label>
                        </span>

                        <span style=" margin-right:5px;">
                          <asp:Button ID="Question" runat="server" Text="试题"  OnClick="Question_Click"  class="btn btn-default" />
                            <asp:Button ID="Report" runat="server" Text="报告单" OnClick="Report_Click"  class="btn btn-default"/>

                        </span>
                        
                    </div>

                    <div class="widget-body" style="min-height:500px;" >
                        
                       <div id="page1" style="width:80%; margin-left:10%;  text-align:center;" runat="server">
                           <h1>表头定义</h1>
                           <hr />
                       <div class="row" style="margin:4px -15px">
                        <div class="col-lg-4 col-sm-4 col-xs-4">
                            <asp:DropDownList ID="RC1DDL" runat="server"></asp:DropDownList>
                        </div>
                        <div class="col-lg-4 col-sm-4 col-xs-4" style="padding:0px 15px 0px 60px;">
                            <asp:DropDownList ID="RC2DDL" runat="server" ></asp:DropDownList>
                        </div>
                        <div class="col-lg-4 col-sm-4 col-xs-4" style="padding:0px 15px 0px 90px;">
                            <asp:DropDownList ID="RC3DDL" runat="server" ></asp:DropDownList>
                        </div>
                    </div>

                           <div class="row" style="margin:4px -15px">
                        <div class="col-lg-4 col-sm-4 col-xs-4">
                            <asp:DropDownList ID="RC4DDL" runat="server"></asp:DropDownList>
                        </div>
                        <div class="col-lg-4 col-sm-4 col-xs-4" style="padding:0px 15px 0px 60px;">
                            <asp:DropDownList ID="RC5DDL" runat="server" ></asp:DropDownList>
                        </div>
                        <div class="col-lg-4 col-sm-4 col-xs-4" style="padding:0px 15px 0px 90px;">
                            <asp:DropDownList ID="RC6DDL" runat="server"></asp:DropDownList>
                        </div>
                    </div>

                            <hr /> 
                            <asp:Button ID="Next" runat="server" Text="下一步" OnClick="Next_Click" class="btn btn-azure" />
                       </div>
                        <!--------分割 ---->
                      
                         <!--------分割 ----> 
                        <div id="page2"  style="width:80%; margin-left:10%; text-align:center; display:none" runat="server">
                           <h1>表格内容</h1>
                           <hr />
                            <div style="text-align:left;width:100%;"><strong> 说明：</strong>输入框中的逗号必须为中文逗号</div>
                            <hr />
                            <table id="UserTag_Select" style="width:100%;" >
                                <tr>
                            <asp:Repeater ID="Repeater1" runat="server">
                                <ItemTemplate>
                                    <th> <%# Eval("HeaderName") %></th>
                                </ItemTemplate>
                            </asp:Repeater> 
                                <th>操作</th>

                            </tr>
                                <tr v-for="item in items" ><th v-for="ItemListNumb in item.ItemListNumb" class="modules"> <textarea style="width:100%"  v-model="ItemListNumb.Content"  :id="ItemListNumb.ID" ></textarea></th><th style="width:50px"><span class="btn btn-default"  :data-id="item.ItemListNumbID" onclick="DeleteList(this)" > 删除</span> </th></tr>
                               <tr v-for="item in items"><th v-for="ItemListNumb in item.ItemListNumb" class="modules"><span style="word-break:normal; width:auto; display:block; white-space:pre-wrap;word-wrap : break-word ;overflow: hidden ;">{{ItemListNumb.Content}}</span></th> <th style="width:50px"></th></tr>
                              
                            </table>
                            

                              <hr />
                            <div style=" text-align:center; letter-spacing:5px;" >
                             <asp:Button ID="Button1" runat="server" class="btn btn-darkorange shiny" Text="添加" OnClick="Button1_Click" Visible="false" />
                        <span class="btn btn-azure" onclick="Last(this)">上一步</span>
                        <span id="AddSure"class="btn btn-azure" onclick="AddSure(this)"  ">添加</span>
                         <span id="UpData" class="btn btn-azure"  onclick="UpData(this)">确定</span>

                            </div>

                            
                        </div>
                        
                      
                         <!--------分割 ---->
                    
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
            background-color:#F0F7FF;
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
            
            var QuestionGUID = document.getElementById('<%=TextQUID.ClientID %>').innerText;
            $.ajax({
                type: "post",
                url: "QuestionAdd_WebService.asmx/ReportList",
                data:{ QGUID: QuestionGUID},
                success: function (str) {
                    var data1 = $(str).find("string").text();
                   
                    nv.items = eval('(' + data1 + ')');
            
                    
                }
            });

           
        })(jQuery)

        function AddSure(e) {
            var sum0 = document.getElementById('<%=HeaderSum.ClientID %>').innerText;
            var qguid = document.getElementById('<%=TextQUID.ClientID %>').innerText;
            $.ajax({
                type: "post",
                url: "QuestionAdd_WebService.asmx/AddReportList", //服务端处理程序   
                data: { Sum: sum0, QGUID:qguid},   //id:新的排列对应的ID,order：原排列顺序   
                success: function (msg) {
                    $.ajax({
                        type: "post",
                        url: "QuestionAdd_WebService.asmx/ReportList",
                        data: { QGUID: qguid },
                        success: function (str) {
                            var data1 = $(str).find("string").text();

                            nv.items = eval('(' + data1 + ')');


                        }
                    });

                },
                error: function (msg) {
                    alert("操作失败!");

                }
            });
            
        }
        function UpData(e) {
            UpdataItem();
        }
        var UpdataItem = function () {
            var id = "";
            var text = "";
            var listnum = "";
            var qguid = document.getElementById('<%=TextQUID.ClientID %>').innerText;
            var a = document.getElementById("UserTag_Select").getElementsByTagName("textarea");
            for (var i = 0; i < a.length; i++) {
                id += a[i].id + ",";
                text += document.getElementById(a[i].id).value + ",";
            }
            $.ajax({
                type: "post",
                url: "QuestionAdd_WebService.asmx/UpdateReportList", //服务端处理程序   
                data: { ID: id, Content: text },   //id:新的排列对应的ID,order：原排列顺序   
                success: function (msg) {
                    $.ajax({
                        type: "post",
                        url: "QuestionAdd_WebService.asmx/ReportList",
                        data: { QGUID: qguid },
                        success: function (str) {
                            var data1 = $(str).find("string").text();

                            nv.items = eval('(' + data1 + ')');


                        }
                    });
                    alert("修改成功!");
                },
                error: function (msg) {
                    alert("操作失败!");

                }
            });

        }


        function DeleteList(e) {
            var list = e.getAttribute("data-id");
            var qguid = document.getElementById('<%=TextQUID.ClientID %>').innerText;
            $.ajax({
                type: "post",
                url: "QuestionAdd_WebService.asmx/DelReportList", //服务端处理程序   
                data: { ListNum: list, QGUID: qguid },   //id:新的排列对应的ID,order：原排列顺序   
                success: function (msg) {
                    $.ajax({
                        type: "post",
                        url: "QuestionAdd_WebService.asmx/ReportList",
                        data: { QGUID: qguid },
                        success: function (str) {
                            var data1 = $(str).find("string").text();

                            nv.items = eval('(' + data1 + ')');


                        }
                    });

                },
                error: function (msg) {
                    alert("操作失败!");

                }
            });
        }

        function Last(e) {
            document.getElementById('<%=page2.ClientID %>').style.display = 'none'; 
            document.getElementById('<%=page1.ClientID %>').style.display = 'inline-block'
        }
    </script>
</asp:Content>

