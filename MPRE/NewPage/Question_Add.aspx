<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Question_Add.aspx.cs" Inherits="NewPage_Question_Add" ValidateRequest="false" %>


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
            <asp:Button ID="Sure1" runat="server" Text="确定" class="btn btn-darkorange shiny" OnClick="Sure_Click" Style="display: none;" />
             <asp:Button ID="ItemListSure" runat="server"  OnClick="ItemListSure_Click" Style="display: none;" />

            
        </ContentTemplate>
    </asp:UpdatePanel>
    <div class="page-body" style="margin-top: -30px;">
        <div class="row">
            <div class="col-xs-12 col-md-12">
                <div class="widget">
                    <div class="widget-header" style="width: 100%;">
                        <span class="widget-caption" style="width: 80%; text-align: center;">量表名：
                            <asp:Label ID="TextName" runat="server"></asp:Label>
                            <asp:Label ID="TextGUID" runat="server" Style="display: none;"></asp:Label>
                            <asp:Label ID="QTypeValue" runat="server" Text="1" Style="display: none;"></asp:Label>
                            <asp:Label ID="QGUID" runat="server" Style="display: none;"></asp:Label>   
                        </span>

                        <span style=" margin-right:5px;">
                          <asp:Button ID="Question" runat="server" Text="试题"  OnClick="Question_Click"  class="btn btn-default" />
                            <asp:Button ID="Report" runat="server" Text="报告单" OnClick="Report_Click"  class="btn btn-default"/>

                        </span>
                        
                    </div>

                    <div class="widget-body">
                        <div id="Man_Nav" style="margin-left: 1%;">
                            <div class="row">
                                <%--左边--%>
                                <div class="col-xs-5 col-md-5" style="-webkit-box-shadow: 0 0 10px rgb(128, 128, 128); -moz-box-shadow: 0 0 10px rgb(128, 128, 128); box-shadow: 0 0 10px rgb(128, 128, 128);">
                           
                                    <div class="row" >
                                          <div class="Div1" style="width: 10%;">
                                                                    <p>序号</p>
                                                                </div>
                                                                <div class="Div1" style="width: 50%;">
                                                                    <p>题目</p>
                                                                </div>
                                                                <div class="Div1" style="width: 15%;">
                                                                    <p>权重</p>
                                                                </div>
                                                                <div class="Div1" style="width: 25%;">
                                                                    <p>操作</p>
                                                                </div>

                                    </div>
                                    <div class="row" style="clear:both;  height :500px; overflow-y:scroll;">
                                        <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                            <ContentTemplate>
                                                <ul id="OrderList" style="padding: 0; margin-top: -10px;">
                                                    <asp:Repeater ID="Repeater1" runat="server">
                                     
                                                        <ItemTemplate>
                                                            <il class="modules" data-id='<%#Eval("ID") %>' data-order='<%#Eval("Serial") %>'>
                                                <div class="Div2" style="clear: both; width: 10%;">
                                                    <p><%#Eval("Serial") %>. </p>
                                                </div>
                                                <div class="Div2" style="width: 50%;">                                              
                                                     <p><a ID="LinkButton1" class="Read" onclick="a(this)"  data-guid="<%#Eval("GUID")%>"  style="overflow: hidden; cursor:pointer; text-overflow: ellipsis; display: -webkit-box; -webkit-line-clamp: 1; -webkit-box-orient: vertical; text-align: left; color: #22aff7;"><%# ReturninnerText(Eval("QuestionText").ToString()) %></a></p>  
                                                </div>
                                                <div class="Div2" style="width: 15%;">
                                                      <p><%# Eval("Weight") %></p>
                                                </div>
                                                <div class="Div2" style="width: 25%; letter-spacing:5px; text-align:center;">
                                                   <p> <a href="#" id="<%#"Qcancel"+Eval("ID") %>" onclick="Qcancel(this)"  data-id='<%#Eval("ID") %>' data-qguid='<%#Eval("GUID") %>' data-guid='<%#Eval("TestGUID") %>' title="删除" class="subitem_update2"><i  class="glyphicon glyphicon-remove"></i></a>
                                                         <a  onclick="OrderUp(this)" data-id='<%#Eval("ID") %>' data-order='<%#Eval("Serial") %>' title="上移"  style="cursor: pointer;"> <i  class="glyphicon glyphicon-arrow-up"></i></a>
                                                          <a  onclick="OrderDown(this)" data-id='<%#Eval("ID") %>' data-order='<%#Eval("Serial") %>'  title="下移"  style="cursor: pointer;"> <i  class="glyphicon glyphicon-arrow-down"></i></a>
                                                     </p> 
                                                      </div>
                                                    </il>
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                </ul>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </div>

                                </div>
                                <%--/左边--%>
                                <%--右边--%>
                                <div class="col-xs-7 col-md-7">

                                    <div class="Div1" style="width: 100%;">
                                        <p>添加试题</p>
                                    </div>
                                    <div style="width: 100%; background-color: white; -webkit-box-shadow: 0 0 10px rgb(128, 128, 128); -moz-box-shadow: 0 0 10px rgb(128, 128, 128); box-shadow: 0 0 10px rgb(128, 128, 128);">
                                        <div></div>

                                        <table class="table">

                                            <tr>
                                                <th colspan="4"></th>
                                            </tr>

                                            <tr>
                                                <th class="Left">输入题目内容</th>
                                                <th id="th2" colspan="3" style="margin: 1%; zoom: 0.7;">

                                                    <textarea id="Centent" cols="100" rows="8" style="width: 100%; min-height: 200px;" runat="server"></textarea>

                                                </th>
                                            </tr>

                                            <tr>
                                                <th class="Left">题型</th>
                                                <th colspan="3">
                                                   
                                                     &nbsp;
                                                    
                                                    <span>
                                                        <input type="radio" id="radio1" name="QType" value="1" checked="checked" />单选</span>
                                                    <span>
                                                        <input type="radio" id="radio2" name="QType" value="2" />多选</span>

                                                    
                                                </th>
                                            </tr>

                                            <tr>

                                                <th class="Left">权重</th>
                                                <th colspan="3">
                                                    <asp:TextBox ID="Weight" runat="server" Text="1"></asp:TextBox></th>
                                            </tr>
                                            <tr>
                                                <th class="Left">选项</th>
                                                <th colspan="3">
                                                    <div>
                                                    <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                                                        <ContentTemplate>
                                                            <ul id="OrderList1" style="padding: 0;">
                                                            <asp:Repeater ID="Repeater2" runat="server" >
                                                                <HeaderTemplate>
                                                                    <div class="ItemDiv" style="width:80%;">
                                                                        <div class="ItemDiv" style="width:5%;">序</div>
                                                                        <div class="ItemDiv" style="width:35%;">选项文字</div>
                                                                        <div class="ItemDiv" style="width:20%;"> 分数</div>
                                                                        <div class="ItemDiv" style="width:20%;">跳题</div>
                                                                        <div class="ItemDiv" style="width:20%;">允许填空</div>
                                                                        </div>
                                                                     <div  class="ItemDiv" style="width: 20%; text-align:center; ">
                                                                         操作
                                                                     </div>
                                                                </HeaderTemplate>
                                                                <ItemTemplate> 
                                                                   <il class="modules" data-id='<%#Eval("ID") %>' data-order='<%#Eval("Serial") %>' >
                                                                    <div id="<%#"subitem"+Eval("ID") %>">
                                                                        <div  style="float: left; width: 80%;">
                                                                        <div style="float: left; width:5%; text-align:center; margin-top:8px;"><span  id="<%#"order1"+Eval("ID") %>"><%# Eval("Serial") %> </span>.  </div>                                                                 
                                                                        <div style="float: left; width:35%;text-align:center; margin-top:8px;"><input style="width:80%;" id="<%#"itemtext2"+Eval("ID") %>" type="text" value="<%# Eval("ItemText").ToString().Trim() %>" /></div> 
                                                                       <div style="float: left; width:20%; text-align:center; margin-top:8px;"><input style="width:40px;"  id="<%#"Score2"+Eval("ID") %>" type="text" value="<%# Eval("Score") %>" /></div> 
                                                                       <div style="float: left; width:20%; text-align:center; margin-top:8px;"><input style="width:40px;" id="<%#"Jump"+Eval("ID") %>" type="text" value="<%# Eval("Jump") %>" /></div>
                                                                       <div  style="float: left; width:20%; text-align:center; margin-top:8px;"><input id="<%#"checkbox"+Eval("ID") %>" type="checkbox" name="HasTextBox1" <%#(Eval("HasTextBox").ToString()=="True"?"checked='checked'":"" ) %> /></span>  </div> 
                                                                       </div>
                                                                        <div style="float: left; width: 20%; text-align: center; letter-spacing:2px; margin-top:8px;">
                                                                          
                                                                            <a href="#" onclick="deleteitem(this)" data-guid='<%#Eval("QuestionGUID") %>' data-id='<%#Eval("ID") %>'  title="删除"><i class="glyphicon glyphicon-remove-circle"></i></a>
                                                                            <a href="#" onclick="ItemUp(this)" data-id='<%#Eval("ID") %>' data-order='<%#Eval("Serial") %>' title="上移"><i class="glyphicon glyphicon-upload"></i></a>
                                                                            <a href="#" onclick="ItemDown(this)" data-id='<%#Eval("ID") %>' data-order='<%#Eval("Serial") %>' title="下移"><i class="glyphicon glyphicon-download"></i></a>
                                                                          
                                                                        </div>
                                                                    </div> 
                                                                    </il>
                                                                </ItemTemplate>  
                                                            </asp:Repeater>
                                                                </ul>
                                                        </ContentTemplate>
                                                    </asp:UpdatePanel>
                                                        
                                                        <br style="clear: both; " />
                                                    <div runat="server"  id="errortext" style="color:red;  zoom: 0.7; margin-top:10px;">*提示：如需跳转，跳转题号必须大于本题题号<span id="QServial"></span>, 0 默认跳到下一题；</div>
                                                    </div>
                                                    <div style=" zoom: 0.9; margin-top:10px; color:blue;">
                                                        <span style="cursor: pointer;"  onclick="AddQ()"><i class="glyphicon glyphicon-plus-sign"></i> &nbsp;添加选项</span> &nbsp; &nbsp;
                                                        <span style="cursor: pointer;" data-dismiss="modal" data-toggle="modal" data-target="#myModal4" ><i class="glyphicon glyphicon-check"></i> &nbsp;批量添加选项</span>
                                                    </div>
                                                </th>
                                            </tr>

                                            <tr>
                                                <th class="Left" colspan="4">

                                                    <span id="AddSure" class="btn btn-darkorange shiny" onclick="AddSure(this)">确定</span>
                                                    
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

    <%--批量添加选项--%>
    <div class="modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document" style="width: 800px; height: 428px; zoom: 0.7;">
            <div class="modal-content" style="margin-top: 10%;">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" data-toggle="modal" data-target="#myModal"><span aria-hidden="true">&times;</span></button>
                    <br />
                </div>
                <div class="modal-body " style="padding-top:0px;">
                    <div style="float: left; width: 70%; height: 300px;">
                      <h5>  <strong> 选项内容</strong></h5>
                   <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                       <ContentTemplate>
                           <asp:Label ID="TagID" runat="server" style="display:none;"></asp:Label>
                           <asp:ListBox ID="ListBox1" runat="server" Style="width: 100%; height: 280px;" Font-Size="Larger"></asp:ListBox>
                       </ContentTemplate>
                   </asp:UpdatePanel>
                    </div>

                    <div style="float: right; width: 25%;">
                     <h5> <strong> 选项预设</strong></h5> 
                        <div  style="float: right;overflow-y:scroll;text-align: center; height: 280px;background-color: #F9F7F7">
                            <asp:UpdatePanel ID="UpdatePanel6" runat="server">
                                <ContentTemplate>
                                    <asp:Repeater ID="Repeater3" runat="server">
                                        <ItemTemplate>
                                            <asp:Button ID="ButtonItemList" runat="server" Text='<%#Eval("TagName") %>' class="btn btn-default shiny" Style="margin-top: 5px; width: 80%;" CommandArgument='<%#Eval("TagID")%>' OnCommand="ButtonItemList_Command" Font-Size="Larger" />
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                           

                        </div>
                    </div>
                    <br style="clear: both" />
                </div>

                <div class="modal-footer">
                     <button onclick="ItemList()" class="btn btn-info" data-dismiss="modal" data-toggle="modal" data-target="#myModal">确认添加</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal" data-toggle="modal" data-target="#myModal">取消</button>
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
            text-align: center;
        }

        .table th {
            height: 20px;
        }

        .table td, .table th {
            border: 1px solid #cad9ea;
            padding: 0 1em 0;
        }
        .ItemDiv {
            float:left;
            height:20px;
            background-color:#d5d5d5;
            text-align:center;
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
                    document.getElementById('<%=Weight.ClientID %>').value = $(ds).find("Weight").text();
                document.getElementById('<%=QGUID.ClientID %>').innerText = $(ds).find("GUID").text();
                document.getElementById('<%=QTypeValue.ClientID %>').innerText = $(ds).find("QuestionType").text();
                document.getElementsByTagName("iframe")[0].contentWindow.document.body.innerHTML = $(ds).find("QuestionText").text();
                document.getElementById("radio" + $(ds).find("QuestionType").text()).checked = true;
                document.getElementById("QServial").innerText = $(ds).find("Serial").text();
                console.log('查找item成功');
            },
                error: function () {
                    console.log('查找item失败');
                }
            });
            document.getElementById('<%=ita_hidf.ClientID %>').value = guid;
            document.getElementById('<%=aBt.ClientID %>').click();
          
        }

   
        function OrderUp(e) {
            var list = $("#OrderList");
            var old_order = [];
            var new_id = [];
            //获取原先的顺序列表  
            list.children(".modules").each(function () {
                if (this.getAttribute("data-order") != null) {
                    old_order.push(this.getAttribute("data-order"));
                }

                if (this.getAttribute("data-id") != null) {
                    new_id.push(this.getAttribute("data-id"));
                }

            });

            var oldorder = e.getAttribute("data-order");
            if (oldorder > 1) {
                var tmp = old_order[oldorder - 1];
                old_order[oldorder - 1] = old_order[oldorder - 2];
                old_order[oldorder - 2] = tmp;
                var newid = new_id.join(',');
                var oldid = old_order.join(',');

                $.ajax({
                    type: "post",
                    url: "QuestionAdd_WebService.asmx/UpdateOrder", //服务端处理程序   
                    data: { id: newid, order: oldid },   //id:新的排列对应的ID,order：原排列顺序   
                    success: function (msg) {
                        document.getElementById('<%=Sure1.ClientID %>').click();

                    },
                    error: function (msg) {
                        alert("操作失败!");

                    }
                });

                }
            }

            function OrderDown(e) {
                var list = $("#OrderList");
                var old_order = [];
                var new_id = [];
                //获取原先的顺序列表  
                list.children(".modules").each(function () {
                    if (this.getAttribute("data-order") != null) {
                        old_order.push(this.getAttribute("data-order"));
                    }

                    if (this.getAttribute("data-id") != null) {
                        new_id.push(this.getAttribute("data-id"));
                    }

                });

                var oldorder = e.getAttribute("data-order");
                if (oldorder < old_order.length) {
                    var tmp = old_order[oldorder];
                    old_order[oldorder] = old_order[oldorder - 1];
                    old_order[oldorder - 1] = tmp;
                    var newid = new_id.join(',');
                    var oldid = old_order.join(',');

                    $.ajax({
                        type: "post",
                        url: "QuestionAdd_WebService.asmx/UpdateOrder", //服务端处理程序   
                        data: { id: newid, order: oldid },   //id:新的排列对应的ID,order：原排列顺序   
                        success: function (msg) {
                            document.getElementById('<%=Sure1.ClientID %>').click();
                    },
                    error: function (msg) {
                        alert("操作失败!");

                    }
                });

                }
            }

            function Qcancel(e) {       //  删除按钮触发
                var guid = e.getAttribute("data-guid");
                var iid = e.getAttribute("data-id");
                var qguid = e.getAttribute("data-qguid");

            if (window.confirm('你确定要删除吗？')) {
                $.ajax({
                    type: "post",
                    url: "QuestionAdd_WebService.asmx/DeleteQText", //服务端处理程序   
                    data: { id: iid, GUID: guid, QGUID: qguid },
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
     

            function AddSure(e) {
                var Tguid = document.getElementById('<%=TextGUID.ClientID %>').innerText;
            var guid = document.getElementById('<%=QGUID.ClientID %>').innerText;
            var Text = document.getElementsByTagName("iframe")[0].contentWindow.document.body.innerHTML;

            var Weight1 = document.getElementById('<%=Weight.ClientID %>').value;
            var Qtype = document.getElementById('<%=QTypeValue.ClientID %>').innerHTML;
            var str = Text.split("");
            Text = str.join("6");
           

            $.ajax({
                type: "post",
                url: "QuestionAdd_WebService.asmx/AddQuestion", //服务端处理程序   
                data: { TGUID: Tguid, QGUID: guid, QuestionText: Text, Weight: Weight1, QuestionType: Qtype },
                success: function (msg) {
                    var guid = "";
                    for (var i = 1; i <= 32; i++) {
                        var n = Math.floor(Math.random() * 16.0).toString(16);
                        guid += n;
                        if ((i == 8) || (i == 12) || (i == 16) || (i == 20))
                            guid += "-";
                    }
                    document.getElementById('<%=QGUID.ClientID %>').innerText = guid;
                    document.getElementById('<%=ita_hidf.ClientID %>').value = guid;
                    document.getElementById('<%=Sure1.ClientID %>').click();
                   
                    alert("操作成功!");
                    UpdataItem();
                    //sign1=1;

                },
             error: function (msg) {
                 alert("操作失败!");

             }
         });
            }

        function AddQ() {
            var guid = document.getElementById('<%=QGUID.ClientID %>').innerText;
            $.ajax({
                type: "post",
                url: "QuestionAdd_WebService.asmx/AddQItem", //服务端处理程序   
                data: { QGUID:guid },
                success: function (msg) {
                    document.getElementById('<%=aBt.ClientID %>').click();
                },
                error: function (msg) {
                    alert("添加失败!");
                }
            });
        }


        function deleteitem(e) {       //  删除按钮触发
            var guid = e.getAttribute("data-guid");
            var iid = e.getAttribute("data-id");

            
                $.ajax({
                    type: "post",
                    url: "QuestionAdd_WebService.asmx/DeleteQItem", //服务端处理程序   
                    data: { id: iid, QGUID: guid},
                    success: function (msg) {
                        document.getElementById('<%=aBt.ClientID %>').click();
                    },
                    error: function (msg) {
                        alert("操作失败!");

                    }

                });
                return true;
           
        }

        var UpdataItem = function () {
            var list = $("#OrderList1");
            var old_order = [];
            var new_id = [];
            list.children(".modules").each(function () {
                if (this.getAttribute("data-id") != null) {
                    new_id.push(this.getAttribute("data-id"));
                }

            });
            var newid = new_id.join(',');
            var k = new_id.length;
            var name = "";
            var score = "";
            var jump = "";
            var Has="";
            for (var i = 0; i < k; i++) {
                name += document.getElementById("itemtext2" + new_id[i]).value + ",";
                 score += document.getElementById("Score2" + new_id[i]).value + ",";
                 jump += document.getElementById("Jump" + new_id[i]).value + ",";
                
                 if (document.getElementById("checkbox" + new_id[i]).checked == true) {
                     Has += 1 + ",";
                 }
                 else { Has += 0 + ","; }
            }
          

            $.ajax({
                type: "post",
                url: "QuestionAdd_WebService.asmx/UpdateQItem", //服务端处理程序   
                data: { id: newid, itemtext: name, itemscore: score, itemHas: Has, itemjump:jump },   //id:新的排列对应的ID,order：原排列顺序   
                success: function (msg) {
                    document.getElementById('<%=aBt.ClientID %>').click();

                },
                error: function (msg) {
                    alert("注意该题目尚无选项!");

                }
            });
          
        }


        //选项排序
        function ItemUp(e) {
            var list = $("#OrderList1");
            var old_order = [];
            var new_id = [];
            //获取原先的顺序列表  
            list.children(".modules").each(function () {
                if (this.getAttribute("data-order") != null) {
                    old_order.push(this.getAttribute("data-order"));
                }

                if (this.getAttribute("data-id") != null) {
                    new_id.push(this.getAttribute("data-id"));
                }

            });

            var oldorder = e.getAttribute("data-order");
            if (oldorder > 1) {
                var tmp = old_order[oldorder - 1];
                old_order[oldorder - 1] = old_order[oldorder - 2];
                old_order[oldorder - 2] = tmp;
                var newid = new_id.join(',');
                var oldid = old_order.join(',');
                $.ajax({
                    type: "post",
                    url: "QuestionAdd_WebService.asmx/UpdateItemOrder", //服务端处理程序   
                    data: { id: newid, order: oldid },   //id:新的排列对应的ID,order：原排列顺序   
                    success: function (msg) {
                        document.getElementById('<%=aBt.ClientID %>').click();

                    },
                    error: function (msg) {
                        alert("操作失败!");

                    }
                });

            }
        }

        function ItemDown(e) {
            var list = $("#OrderList1");
            var old_order = [];
            var new_id = [];
            //获取原先的顺序列表  
            list.children(".modules").each(function () {
                if (this.getAttribute("data-order") != null) {
                    old_order.push(this.getAttribute("data-order"));
                }

                if (this.getAttribute("data-id") != null) {
                    new_id.push(this.getAttribute("data-id"));
                }

            });

            var oldorder = e.getAttribute("data-order");
            if (oldorder < old_order.length) {
                var tmp = old_order[oldorder];
                old_order[oldorder] = old_order[oldorder - 1];
                old_order[oldorder - 1] = tmp;
                var newid = new_id.join(',');
                var oldid = old_order.join(',');

                $.ajax({
                    type: "post",
                    url: "QuestionAdd_WebService.asmx/UpdateItemOrder", //服务端处理程序   
                    data: { id: newid, order: oldid },   //id:新的排列对应的ID,order：原排列顺序   
                    success: function (msg) {
                        document.getElementById('<%=aBt.ClientID %>').click();
                    },
                    error: function (msg) {
                        alert("操作失败!");

                    }
                });

            }
        }

      function ItemList(){
          document.getElementById('<%=ItemListSure.ClientID %>').click();
        }

    </script>

</asp:Content>

