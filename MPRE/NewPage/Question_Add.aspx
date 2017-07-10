<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Question_Add.aspx.cs" Inherits="NewPage_Question_Add" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
      <script type="text/javascript" charset="utf-8" src="../ckeditor201507/ckeditor.js"></script> 
    <script type="text/javascript" charset="utf-8" src="../editor/kindeditor.js"></script> 
    <script type="text/javascript" charset="utf-8" src="../editor/lang/zh_CN.js"></script>
    <script type="text/javascript" charset="utf-8" src="../editor/plugins/code/prettify.js"></script>
    <script type="text/javascript">

        KindEditor.ready(function (K) {
            var editor1 = K.create('#ctl00_ContentPlaceHolder1_Centent', {
                cssPath: '/editor/plugins/code/prettify.css',
                uploadJson: '/editor/asp.net/upload_json.ashx',
                fileManagerJson: '/editor/asp.net/file_manager_json.ashx',
                allowFileManager: true,
                filterMode: false,
                afterCreate: function () {
                    var self = this; K.ctrl(document, 13, function () { self.sync(); K('form[name=example]')[0].submit(); }); K.ctrl(self.edit.doc, 13, function () { self.sync(); K('form[name=example]')[0].submit(); });
                }
            });
            prettyPrint(); 
        });
    </script> 

  

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
      <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:HiddenField ID="ita_hidf" runat="server" Value="1" />
            <asp:Button ID="aBt" runat="server" Text="Button" OnClick="readbtn_Click" Visible="True" Style="display: none;" />
        </ContentTemplate>
    </asp:UpdatePanel>

    <div class="page-body" style="margin-top:-30px;">
        <div class="row">
            <div class="col-xs-12 col-md-12">
                <div class="widget">
                    <div class="widget-header" style="width: 100%;">
                        <span class="widget-caption" style="width: 100%; text-align: center">量表名：
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                            <asp:Label ID="QTypeValue" runat="server" Text="Label"></asp:Label>
                           
                                <asp:Label ID="QGUID" runat="server"></asp:Label>
                               
                        </span>
                    </div>

                    <div class="widget-body">
                        <div id="Man_Nav" style="margin-left: 2%;">
                            <div class="row">
                                <%--左边--%>
                                <div class="col-xs-4 col-md-4" style="-webkit-box-shadow: 0 0 10px rgb(128, 128, 128); -moz-box-shadow: 0 0 10px rgb(128, 128, 128); box-shadow: 0 0 10px rgb(128, 128, 128);">
                                    <div class="row">
                                        <asp:UpdatePanel ID="UpdatePanel3" runat="server"><ContentTemplate>
                                        <asp:Repeater ID="Repeater1" runat="server">
                                            <HeaderTemplate>
                                                <div style="width: 100%;">
                                                    <div class="Div1" style="width: 5%;">
                                                        <p>序号</p>
                                                    </div>
                                                    <div class="Div1" style="width: 60%;">
                                                        <p>题目</p>
                                                    </div>
                                                    <div class="Div1" style="width: 20%;">
                                                        <p>题型</p>
                                                    </div>
                                                    <div class="Div1" style="width: 15%;">
                                                        <p>权重</p>
                                                    </div>
                                                </div>
                                            </HeaderTemplate>


                                            <ItemTemplate>

                                                <div class="Div2" style="clear: both; width: 5%;">
                                                    <p><%# Container.ItemIndex + 1%>. </p>
                                                </div>
                                                <div class="Div2" style="width: 60%;">
                                                    <%--<a runat="server" style="overflow: hidden; text-overflow: ellipsis; display: -webkit-box; -webkit-line-clamp: 1; -webkit-box-orient: vertical; text-align: left; color: #22aff7;"><%# Eval("QuestionText") %></a>--%>
                                                  
                                                        <a ID="LinkButton1" class="Read" onclick="a(this)"  data-guid="<%#Eval("GUID")%>"  style="overflow: hidden; text-overflow: ellipsis; display: -webkit-box; -webkit-line-clamp: 1; -webkit-box-orient: vertical; text-align: left; color: #22aff7;"><%# Eval("QuestionText") %></a>
                                                       
                                            
                                                </div>
                                                <div class="Div2" style="width: 20%;">
                                                    <p><%# Eval("Type") %></p>
                                                </div>
                                                <div class="Div2" style="width: 15%;">
                                                    <p><%# Eval("Weight") %></p>
                                                </div>


                                            </ItemTemplate>
                                        </asp:Repeater>
                                            </ContentTemplate></asp:UpdatePanel>
                                    </div>

                                </div>
                                <%--/左边--%>
                                <%--右边--%>
                                <div class="col-xs-8 col-md-8">
                                 
                                    <div class="Div1" style="width: 100%;">
                                        <p>添加试题</p>
                                    </div>
                                    <div style="width: 100%; background-color: white; -webkit-box-shadow: 0 0 10px rgb(128, 128, 128); -moz-box-shadow: 0 0 10px rgb(128, 128, 128); box-shadow: 0 0 10px rgb(128, 128, 128);">
                                   <div></div>
                                       
                                        <table class="table">
                                              
                                            <tr><th colspan="4"></th></tr>
                                             
                                            <tr>
                                                <th class="Left"> 输入题目内容</th>
                                                <th id="th2" colspan="3" style=" margin: 1%; zoom: 0.7;">
                                                    
                                                    <textarea id="Centent" cols="100" rows="8" style="width:100%;min-height:200px;" runat="server" ></textarea>
                                                   
                                                </th>
                                            </tr>

                                             <tr>
                                                 <th class="Left" > 题型</th> 
                                                 <th colspan="3">  
                                                   <%--<asp:RadioButtonList ID="QType" runat="server" RepeatDirection="Horizontal" BorderStyle="None">
                                                       <asp:ListItem Value="1" >单选</asp:ListItem>
                                                       <asp:ListItem Value="2">多选</asp:ListItem>
                                                       <asp:ListItem Value="3">判断</asp:ListItem>
                                                   </asp:RadioButtonList>--%>
                                                     <span><input type="radio" id ="radio1"  name="QType" value="1" />单选</span>
                                                      <span><input type="radio" id ="radio2" name="QType" value="2"/>多选</span>
                                                      <span><input type="radio" id ="radio3" name="QType" value="3"/>判断</span>
                                                    </th>
                                             </tr>

                                             <tr>
                                                 <th class="Left" >排序</th>
                                                 <th>
                                                    <asp:TextBox ID="Serial" runat="server"></asp:TextBox>
                                                      </th>
                                                 <th class="Left">权重</th>
                                                 <th><asp:TextBox ID="Weight" runat="server"></asp:TextBox></th>
                                             </tr>
                                            <tr>
                                                <th class="Left">选项</th>
                                                <th colspan="3">
                                                    <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                                                        <ContentTemplate>
                                                            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                                                            <asp:Repeater ID="Repeater2" runat="server">
                                                                  <ItemTemplate>
                                                               <p> <%# Eval("ItemText") %></p>
                                                                      </ItemTemplate>
                                                            </asp:Repeater>
                                                        </ContentTemplate>
                                                    </asp:UpdatePanel>
                                                            <button type="button" style="border-radius: 50%;background-color:#F14141;font-size:larger;color:white;" data-dismiss="modal" data-toggle="modal" data-target="#QuestionModal">+</button>
                                                </th>
                                            </tr>
                                         
                                            <tr>
                                                <th  class="Left" colspan="4">
                                                    <asp:Button ID="Button2" runat="server" Text="确定" class="btn btn-darkorange shiny" /> </th>
                                            </tr>
                                            
                                        </table>
                                   
                                     <div></div>
                                    </div>
                                </div>
                                <%--/右边--%>
                            </div>
                        </div>
                    </div>



                </div>
            </div>
        </div>
    </div>

    <%--模态框--%>
    <div class="modal fade" id="QuestionModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document" style="width: 50%;zoom: 0.7;">
            <div class="modal-content" style="margin-top: 10%;">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel4">添加选项</h4>
                </div>
                <div class="modal-body">
                     <table class="table">
                         <tr><th>选项</th>
                             <th>分值</th>
                         </tr>
                         <tr><th><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></th>
                             
                             <th><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></th>
                         </tr>
                         </table>
                </div>
                <div class="modal-footer">
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server"><ContentTemplate>
                      <asp:Button ID="Add" runat="server" Text="添加" class="btn btn-default" />
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>

                                                                      </ContentTemplate></asp:UpdatePanel>
                </div>
            </div>
        </div>
    </div>

<style type="text/css">
     .Div1 {
       float: left;
       height: 25px;
       background-color: #2dc3e8;
        }

    .Div1 p {
       height: 25px;
       line-height: 25px;
       color: white;
       font-weight: bolder;
       text-align: center;
         }

     .Div2 {
       float: left;
       height: 25px;
        }

     .Div2 p {
       height: 25px;
       line-height: 25px;
       text-align: center;
            }
    .Left {
        text-align:center;
    }
    .table th { 
        height:20px;
        
    } 
    .table td, .table th {
        border: 1px solid #cad9ea;
        padding: 0 1em 0;
        
    }


    </style>

    <script type="text/javascript">
     
    
        
        (function ($) {
            //加载完成调用
            var guid = "";
            for (var i = 1; i <= 32; i++) {
                var n = Math.floor(Math.random() * 16.0).toString(16);
                guid += n;
                if ((i == 8) || (i == 12) || (i == 16) || (i == 20))
                    guid += "-";
            }

            document.getElementById('<%=QGUID.ClientID %>').innerText = guid;

            document.getElementById('radio1').onclick = function () {
                document.getElementById('<%=QTypeValue.ClientID %>').innerText = "1";
            }
            document.getElementById('radio2').onclick = function () {
                document.getElementById('<%=QTypeValue.ClientID %>').innerText = "2";
            }
            document.getElementById('radio3').onclick = function () {
                document.getElementById('<%=QTypeValue.ClientID %>').innerText = "3";
            }

           <%-- $(".Read").click(function () {
                $.ajax({
                    type: "post",
                    url: "QuestionAdd_WebService.asmx/ReadQuestion",
                    data: { GUID: $(this).data("guid") },
                    success: function (ds) {
                        document.getElementById('<%=Serial.ClientID %>').value = $(ds).find("Serial").text();
                        document.getElementById('<%=Weight.ClientID %>').value = $(ds).find("Weight").text();
                        document.getElementById('<%=QGUID.ClientID %>').innerText = $(ds).find("GUID").text();
                        document.getElementById('<%=QTypeValue.ClientID %>').innerText = $(ds).find("QuestionType").text();
                        document.getElementsByTagName("iframe")[0].contentWindow.document.body.innerHTML = $(ds).find("QuestionText").text();
                        document.getElementById("radio" + $(ds).find("QuestionType").text()).checked = true;

                        console.log('查找item成功');
                    },
                    error: function () {
                        console.log('查找item失败');
                    }
                });
               
                       
            });--%>

            

        })(jQuery)

        function a(e) {
            var guid = e.getAttribute("data-guid");
            $.ajax({
            type: "post",
            url: "QuestionAdd_WebService.asmx/ReadQuestion",
            data: { GUID: guid },
            success: function (ds) {
                document.getElementById('<%=Serial.ClientID %>').value = $(ds).find("Serial").text();
                document.getElementById('<%=Weight.ClientID %>').value = $(ds).find("Weight").text();
                document.getElementById('<%=QGUID.ClientID %>').innerText = $(ds).find("GUID").text();
                document.getElementById('<%=QTypeValue.ClientID %>').innerText = $(ds).find("QuestionType").text();
                document.getElementsByTagName("iframe")[0].contentWindow.document.body.innerHTML = $(ds).find("QuestionText").text();
                document.getElementById("radio" + $(ds).find("QuestionType").text()).checked = true;

                console.log('查找item成功');
            },
            error: function () {
                console.log('查找item失败');
            }
        });
            document.getElementById('<%=aBt.ClientID %>').click();

        }
    </script>

</asp:Content>

