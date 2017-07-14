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
            <asp:Button ID="aBt" runat="server" OnClick="readbtn_Click" Visible="True" Style="display: none;" />
               <asp:Button ID="Sure1" runat="server" Text="确定" class="btn btn-darkorange shiny" OnClick="Sure_Click" Style="display: none;"/> </th>
        </ContentTemplate>
    </asp:UpdatePanel>

    <div class="page-body" style="margin-top:-30px;">
        <div class="row">
            <div class="col-xs-12 col-md-12">
                <div class="widget">
                    <div class="widget-header" style="width: 100%;">
                        <span class="widget-caption" style="width: 100%; text-align: center">量表名：
                            <asp:Label ID="TextName" runat="server"></asp:Label>
                            <asp:Label ID="TextGUID" runat="server" Style="display: none;"></asp:Label>
                            <asp:Label ID="QTypeValue" runat="server" Style="display: none;"></asp:Label>
                            <asp:Label ID="QGUID" runat="server" Style="display: none;"></asp:Label>

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
                                                        <p>权重</p>
                                                    </div>
                                                    <div class="Div1" style="width: 15%;">
                                                        <p>删除</p>
                                                    </div>

                                                </div>
                                            </HeaderTemplate>


                                            <ItemTemplate>

                                                <div class="Div2" style="clear: both; width: 10%;">
                                                    <p><%# Container.ItemIndex + 1%>. </p>
                                                </div>
                                                <div class="Div2" style="width: 55%;">                
                                                                                   
                                                        <a ID="LinkButton1" class="Read" onclick="a(this)"  data-guid="<%#Eval("GUID")%>"  style="overflow: hidden; cursor:pointer; text-overflow: ellipsis; display: -webkit-box; -webkit-line-clamp: 1; -webkit-box-orient: vertical; text-align: left; color: #22aff7;"><%# Eval("QuestionText") %></a>
                                                       
                                            
                                                </div>
                                                <div class="Div2" style="width: 20%;">
                                                      <p><%# Eval("Weight") %></p>
                                                
                                                </div>
                                                <div class="Div2" style="width: 15%;">
                                                    <p><a href="#" id="<%#"Qcancel"+Eval("ID") %>" onclick="Qcancel(<%#Eval("ID") %>)" title="删除" class="subitem_update2"><i  class="glyphicon glyphicon-remove"></i></a></p>  
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
                                                     &nbsp;
                                                     <span><input type="radio" id ="radio1"  name="QType" value="1" />单选</span>
                                                      <span><input type="radio" id ="radio2" name="QType" value="2"/>多选</span>
                                                
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
                                                            <asp:Repeater ID="Repeater2" runat="server">
                                                                <HeaderTemplate>
                                                                   
                                                                </HeaderTemplate>
                                                                <ItemTemplate>
                                                                     <div id="<%#"subitem"+Eval("ID") %>">
                                                                        <div style="float:left;width:60%;">
                                                                        <span id="<%#"order1"+Eval("ID") %>"><%# Eval("Serial") %> </span>.                                                                   
                                                                        <span id="<%#"itemtext1"+Eval("ID") %>" style="font-size: 14px; font-weight: bold; line-height:25px;"><%# Eval("ItemText") %></span>
                                                                      &nbsp; ------------- &nbsp;
                                                                         <span id="<%#"Score1"+Eval("ID") %>" ><%# Eval("Score") %></span>
                                                                         <span id="<%#"Has"+Eval("ID") %>"   style="display:none">  <%#  Convert.ToInt32((Eval("HasTextBox")) )%></span>
                                                                            </div>
                                                                        <div style="float:left;width:40%; text-align:right;">
                                                                     <a href="#" id="<%#"update1"+Eval("ID") %>" onclick="updatesubtext(<%#Eval("ID") %>)" data-dismiss="modal" data-toggle="modal" data-target="#QuestionModal"><i class="glyphicon glyphicon-pencil" title="修改" ></i></a>
                                                                    <a href="#" id="<%#"delete"+Eval("ID") %>"  onclick="deletesubtext(<%#Eval("ID") %>)" style="margin-left: 15px; margin-right: 10px;" title="删除"><i class="glyphicon glyphicon-remove"></i></a>
                                                                    <a href="#" id="<%#"cancel"+Eval("ID") %>" onclick="recoveryesubtext(<%#Eval("ID") %>)" style="display: none; margin-left: 15px; margin-right: 10px;" title="删除" class="subitem_update2"><i  class="glyphicon glyphicon-remove"></i></a>
                                                                            </div>
                                                                    </div>
                                                                </ItemTemplate>
                                                            </asp:Repeater>
                                                        </ContentTemplate>
                                                    </asp:UpdatePanel>
                                                    <div style="clear:both">
                                                            <span style="cursor:pointer;" data-dismiss="modal" data-toggle="modal" data-target="#QuestionModal" onclick="AddQ()"><i class="glyphicon glyphicon-plus"></i></span>

                                                    </div>
                                                </th>
                                            </tr>
                                         
                                            <tr>
                                                <th  class="Left" colspan="4">
                                                  
                                                  <span id="AddSure" class ="btn btn-darkorange shiny" onclick="AddSure(this)"> 确定</span>
                                                     
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
                         <tr>
                              <th>排序</th><th>选项</th>
                             <th>分值</th>
                            
                             <th>是否有输入框</th>
                         </tr>
                         <tr><th><asp:TextBox ID="ItemtSerial" runat="server"></asp:TextBox></th>
                             <th><asp:TextBox ID="ItemText" runat="server"></asp:TextBox></th>  
                             <th><asp:TextBox ID="ItemtScore" runat="server"></asp:TextBox></th>
                           
                             <th> <span><input type="radio" id ="Has0"  name="HasTextBox" value="0"  />否</span>
                                  <span><input type="radio" id ="Has1" name="HasTextBox" value="1"/>是</span>
                                 
                                </th>
                             
                         </tr>
                         </table>
                </div>
                <div class="modal-footer"> <span  class="btn btn-default" id ="Sure2" onclick="Sure2()"> 确定 </span>
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server" style="float:right;"><ContentTemplate>
                      <asp:Button ID="Add" runat="server" Text="添加" class="btn btn-default"  OnClick="Add_Click" Style="display: none;"/>
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                      <span id="ItemID"  style="display:none;">0 </span>       
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
         float:left;
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
            document.getElementById('<%=ita_hidf.ClientID %>').value = guid;

            document.getElementById('radio1').onclick = function () {
                document.getElementById('<%=QTypeValue.ClientID %>').innerHTML = "1";
            }
            document.getElementById('radio2').onclick = function () {
                document.getElementById('<%=QTypeValue.ClientID %>').innerHTML = "2";
            }
          
  

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
            document.getElementById('<%=ita_hidf.ClientID %>').value = guid;
            document.getElementById('<%=aBt.ClientID %>').click();

        }

        function AddSure(e) {
          
            var Tguid = document.getElementById('<%=TextGUID.ClientID %>').innerText;
            var guid = document.getElementById('<%=QGUID.ClientID %>').innerText;
            var Text = document.getElementsByTagName("iframe")[0].contentWindow.document.body.innerHTML;
            var Text1 = document.getElementsByTagName("iframe")[0].contentWindow.document.body.innerHTML;
            var Serial1 = document.getElementById('<%=Serial.ClientID %>').value ;
            var Weight1 = document.getElementById('<%=Weight.ClientID %>').value;
            var Qtype = document.getElementById('<%=QTypeValue.ClientID %>').innerHTML;
            alert(Text1);
         $.ajax({
                type: "post",
                url: "QuestionAdd_WebService.asmx/AddQuestion", //服务端处理程序   
                data: { TGUID: Tguid, QGUID: guid, QuestionText: Text, Serial: Serial1, Weight: Weight1, QuestionType: Qtype },
                success: function (msg) {
                    var guid = "";
                    for (var i = 1; i <= 32; i++) {
                        var n = Math.floor(Math.random() * 16.0).toString(16);
                        guid += n;
                        if ((i == 8) || (i == 12) || (i == 16) || (i == 20))
                            guid += "-";
                    }

                    document.getElementById('<%=QGUID.ClientID %>').innerText = guid;
                    document.getElementById('<%=Sure1.ClientID %>').click();
                    alert("修改Text成功!");
      
                    //sign1=1;

                },
                error: function (msg) {
                    alert("操作失败!");
                }
            });
        }
        function AddQ() {
            document.getElementById("ItemID").innerText = 0;
        }

        function updatesubtext(id) {         //点击修改按钮触发事件
          //  document.getElementById("update1" + id).style.display = 'none';         //修改按钮隐藏
            document.getElementById("delete" + id).style.display = 'none';         //修改按钮隐藏
            document.getElementById("cancel" + id).style.display = 'inline-block'; //取消按钮显示
            var H = document.getElementById("Has" + id).innerText;
            document.getElementById('<%=ItemText.ClientID %>').value = document.getElementById("itemtext1" + id).innerText;
            document.getElementById('<%=ItemtScore.ClientID %>').value = document.getElementById("Score1" + id).innerText;
            document.getElementById('<%=ItemtSerial.ClientID %>').value = document.getElementById("order1" + id).innerText;
            if (H == 0) {
                document.getElementById("Has0").checked = true;
            }
           else {
               document.getElementById("Has1").checked = true;
           }
           document.getElementById("ItemID").innerText = id;
            
        }     


        function Sure2(e) {       //  确认按钮触发
            var iid = document.getElementById("ItemID").innerText;   
            var itemt = document.getElementById('<%=ItemText.ClientID %>').value;
            var s = document.getElementById('<%=ItemtScore.ClientID %>').value;
            var od = document.getElementById('<%=ItemtSerial.ClientID %>').value;
            var guid = document.getElementById('<%=QGUID.ClientID %>').innerText;
            var HasTB = 0;
            if (document.getElementById("Has1").checked == true) {
                HasTB = 1;
            }
            if (iid == 0) {
                $.ajax({
                    type: "post",
                    url: "QuestionAdd_WebService.asmx/AddQItem", //服务端处理程序   
                    data: { id: iid, itemtext: itemt, score: s, order: od, Qguid: guid, Has: HasTB },
                    success: function (msg) {                       
                        document.getElementById('<%=Add.ClientID %>').click();
                    },
                    error: function (msg) {
                        alert("添加失败!");
                    }
                });
               
            }
            else {
                $.ajax({
                    type: "post",
                    url: "QuestionAdd_WebService.asmx/UpdateQItem", //服务端处理程序   
                    data: { id: iid, itemtext: itemt, score: s, order: od, Has: HasTB },
                    success: function (msg) {
                        document.getElementById("ItemID").innerText = 0;
                        document.getElementById('<%=Add.ClientID %>').click();   
                    },
                    error: function (msg) {
                        alert("更新失败!");
                    }
                });
            }
            
        }

        function deletesubtext(iid) {       //  删除按钮触发
            if (window.confirm('你确定要删除吗？')) {
                $.ajax({
                    type: "post",
                    url: "QuestionAdd_WebService.asmx/DeleteQItem", //服务端处理程序   
                    data: { id: iid },
                    success: function (msg) {
                        document.getElementById("subitem" + iid).style.display = "none";
                    }
                });
                return true;
            } else {
                return false;
            }
        }

        function Qcancel(iid) {       //  删除按钮触发
            if (window.confirm('你确定要删除吗？')) {
                $.ajax({
                    type: "post",
                    url: "QuestionAdd_WebService.asmx/DeleteQText", //服务端处理程序   
                    data: { id: iid },
                    success: function (msg) {
                        document.getElementById('<%=Sure1.ClientID %>').click();
                    
                    },
                    error: function (msg) {
                        alert("删除失败!");
                    }

                });
                return true;
            } else {
                return false;
            }
        }
    </script>

</asp:Content>

