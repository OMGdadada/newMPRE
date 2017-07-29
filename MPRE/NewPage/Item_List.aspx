<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Item_List.aspx.cs" Inherits="NewPage_Item_List" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:HiddenField ID="ita_hidf" runat="server" Value="1" />
            <asp:Button ID="Sure" runat="server" Style="display: none;" OnClick="Sure_Click" />
            <asp:Button ID="SureNew" runat="server" Style="display: none;" OnClick="SureNew_Click" />
               <asp:Label ID="TagNum" runat="server"  Style="display: none;" ></asp:Label>
        </ContentTemplate>
    </asp:UpdatePanel>
        <script src="../assets/js/vue.js"></script>
            <div class="page-body">
                <div class="row">
                    <div class="col-lg-6 col-sm-6 col-xs-12">
                        <div class="widget">
                            <div class="widget-header ">
                                <span class="widget-caption">选项列表</span>
                                <span class="widget-caption" style="float:right;margin-right:20px;cursor:pointer"  onclick="Newpage0(this)" data-dismiss="modal" data-toggle="modal" data-target="#myModal4"> <i class="glyphicon glyphicon-plus" title="添加" ></i></span>
                            </div>
                            <div class="widget-body">
                                     <table id="UserTag_Select" style="width:100%;" >
                               <tr style="background:rgb(190, 210, 243);"><th style="width:15%;text-align:center">序号</th><th>选项名</th><th>操作</th></tr>
                               <tr v-for="item in items" >
                                   <th style="width:10%; text-align:center" class="modules"> {{item.num}}</th> 
                                   <th class="modules"> <span :data-id="item.TagID" onclick="Newpage(this)" style="cursor:pointer;color:#428bca" data-dismiss="modal" data-toggle="modal" data-target="#myModal4">{{item.TagName}}</span></th>
                                   <th><i class="glyphicon glyphicon-remove" :data-id="item.TagID" onclick="Delete(this)" ></i></th></tr>

                            </table>
                            

                                </div>
                            </div>
                        </div>
                    </div>
                </div>

      <%--批量添加选项--%>
    <div class="modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document" style="width: 50%;zoom: 0.8;">
            <div class="modal-content" style="margin-top: 10%;">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" data-toggle="modal" data-target="#myModal"><span aria-hidden="true">&times;</span></button>
                    <span>选项修改</span>
                    <br />
                </div>
                <div class="modal-body " style="padding-top:0px;"> 
                    <asp:UpdatePanel ID="UpdatePanel5" runat="server">   <ContentTemplate>
                    <h5> <strong>标签名： <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></strong> </h5>
                                                            <ul id="OrderList1" style="padding: 0;">
                                                            <asp:Repeater ID="Repeater2" runat="server" >
                                                                <HeaderTemplate>
                                                                    <div class="ItemDiv" style="width:80%;">
                                                                        <div class="ItemDiv" style="width:10%;">序</div>
                                                                        <div class="ItemDiv" style="width:60%;">选项文字</div>
                                                                        <div class="ItemDiv" style="width:30%;"> 分数</div>
                                                                        </div>
                                                                     <div  class="ItemDiv" style="width: 20%; text-align:center; ">
                                                                         操作
                                                                     </div>
                                                                </HeaderTemplate>
                                                                <ItemTemplate> 
                                                                   <il class="modules" data-id='<%#Eval("ID") %>' data-order='<%#Eval("Serial") %>' >
                                                                    <div id="<%#"subitem"+Eval("ID") %>">
                                                                        <div  style="float: left; width: 80%;">
                                                                        <div style="float: left; width:10%; text-align:center; margin-top:8px;"><span  id="<%#"order1"+Eval("ID") %>"><%# Eval("Serial") %> </span>.  </div>                                                                 
                                                                        <div style="float: left; width:60%;text-align:center; margin-top:8px;"><input style="width:80%;" id="<%#"itemtext2"+Eval("ID") %>" type="text" value="<%# Eval("ItemText").ToString().Trim() %>" /></div> 
                                                                       <div style="float: left; width:30%; text-align:center; margin-top:8px;"><input style="width:40px;"  id="<%#"Score2"+Eval("ID") %>" type="text" value="<%# Eval("Score") %>" /></div> 
                                                                       </div>
                                                                        <div style="float: left; width: 20%; text-align: center; letter-spacing:2px; margin-top:8px;">
                                                                          
                                                                            <a href="#" onclick="deleteitem(this)" data-id='<%#Eval("ID") %>'  title="删除"><i class="glyphicon glyphicon-remove-circle"></i></a>
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
                    <br  style="clear:both"/>
                      <div style=" zoom: 0.9; margin-top:10px; color:#0c47a3;">
                                                        <span style="cursor: pointer;"onclick="AddQ()"><i class="glyphicon glyphicon-plus-sign"></i> &nbsp;添加选项</span> &nbsp; &nbsp;
                                                       </div>
                </div>

                <div class="modal-footer">
                     <button onclick="ItemList()" class="btn btn-info" data-dismiss="modal" data-toggle="modal" data-target="#myModal">确认添加</button>
                    <button  onclick="Cancel()" type="button" class="btn btn-default" data-dismiss="modal" data-toggle="modal" data-target="#myModal">取消</button>
                </div>
            </div>
        </div>
    </div>

    <style type="text/css">
        #UserTag_Select th, #table1 th {
            height: 30px;
           border-bottom:1px solid #808080;
            padding: 0 1em 0;
            font-size: 13px;
            max-width:100px;
        }
        #UserTag_Select tr:nth-child(odd){ 
            background-color:#F0F7FF;

        }
          .ItemDiv {
            float:left;
            height:20px;
            background-color:#d5d5d5;
            text-align:center;
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
              $.ajax({
                  type: "post",
                  url: "QuestionAdd_WebService.asmx/ItemList",
                  success: function (str) {
                      var data1 = $(str).find("string").text();
                      nv.items = eval('(' + data1 + ')');
                  }
              });
        
          })(jQuery)

        function Newpage(e) {
            var TagID = e.getAttribute("data-id");
            document.getElementById('<%=ita_hidf.ClientID %>').value = TagID;
            document.getElementById('<%=Sure.ClientID %>').click();
        }
        function Newpage0(e) {
            document.getElementById('<%=SureNew.ClientID %>').click();
        }
        function Cancel() {
            $.ajax({
                type: "post",
                url: "QuestionAdd_WebService.asmx/ItemList",
                success: function (str) {
                    var data1 = $(str).find("string").text();
                    nv.items = eval('(' + data1 + ')');
                }
            });
        }
        function Delete(e) {
            var tagid = e.getAttribute("data-id");
            $.ajax({
                type: "post",
                url: "QuestionAdd_WebService.asmx/ItemListDel", //服务端处理程序   
                data: { TagID: tagid},   //id:新的排列对应的ID,order：原排列顺序   
                success: function (msg) {
                    alert("删除成功!");
                    $.ajax({
                        type: "post",
                        url: "QuestionAdd_WebService.asmx/ItemList",
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
        function AddQ() {
            var Tagid = document.getElementById('<%=TagNum.ClientID %>').innerText;
            var Tagname = document.getElementById('<%=TextBox1.ClientID %>').value;
            document.getElementById('<%=ita_hidf.ClientID %>').value = Tagid;
            $.ajax({
                type: "post",
                url: "QuestionAdd_WebService.asmx/AddItemList", //服务端处理程序   
                data: { TagID: Tagid, TagName: Tagname },
                success: function (msg) {
                    document.getElementById('<%=Sure.ClientID %>').click();
                },
                error: function (msg) {
                    alert("添加失败!");
                }
            });
        }
        function ItemList() {
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
          
            for (var i = 0; i < k; i++) {
                name += document.getElementById("itemtext2" + new_id[i]).value + ",";
                score += document.getElementById("Score2" + new_id[i]).value + ",";     
            }
            var TagName = document.getElementById('<%=TextBox1.ClientID %>').value; 

           $.ajax({
                type: "post",
                url: "QuestionAdd_WebService.asmx/UpdateItemList", //服务端处理程序   
                data: { id: newid, itemtext: name, itemscore: score, tagname: TagName },   //id:新的排列对应的ID,order：原排列顺序   
                success: function (msg) {
                    $.ajax({
                        type: "post",
                        url: "QuestionAdd_WebService.asmx/ItemList",
                        success: function (str) {
                            var data1 = $(str).find("string").text();
                            nv.items = eval('(' + data1 + ')');
                        }
                    });

               },
                error: function (msg) {
                  alert("操作失败！  确定已新添加选项");

              }
            });
        }
        function deleteitem(e) {       //  删除按钮触发
            var iid = e.getAttribute("data-id");
            var Tagid = document.getElementById('<%=TagNum.ClientID %>').innerText;
            document.getElementById('<%=ita_hidf.ClientID %>').value = Tagid;

            $.ajax({
                type: "post",
                url: "QuestionAdd_WebService.asmx/DeleteItemList", //服务端处理程序   
                data: { id: iid, TagID: Tagid },
                success: function (msg) {
                    document.getElementById('<%=Sure.ClientID %>').click();
                },
                error: function (msg) {
                    alert("操作失败!");

                }

            });
            return true;

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
                    url: "QuestionAdd_WebService.asmx/UpdateItemListOrder", //服务端处理程序   
                    data: { id: newid, order: oldid },   //id:新的排列对应的ID,order：原排列顺序   
                    success: function (msg) {
                        document.getElementById('<%=Sure.ClientID %>').click();

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
                    url: "QuestionAdd_WebService.asmx/UpdateItemListOrder", //服务端处理程序   
                    data: { id: newid, order: oldid },   //id:新的排列对应的ID,order：原排列顺序   
                    success: function (msg) {
                        document.getElementById('<%=Sure.ClientID %>').click();
                    },
                    error: function (msg) {
                        alert("操作失败!");

                    }
                });

            }
        }
    </script>
</asp:Content>

