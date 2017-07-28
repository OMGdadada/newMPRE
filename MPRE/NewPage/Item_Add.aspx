<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Item_Add.aspx.cs" Inherits="NewPage_Item_Add" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="TagNum" runat="server" ></asp:Label>
    <div class="row">
        <div class="col-lg-6 col-sm-6 col-xs-12">
            <div class="well with-header">
                <div class="header bordered-blue">当前位置：<a href="Item_List.aspx">选项管理</a></div>
               <h5><strong>标签名： <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                   </strong> </h5>
                  <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                                                        <ContentTemplate>
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
               
                 <br style="clear: both; " />
                                       <div style=" zoom: 0.9; margin-top:10px; color:#0c47a3;">
                                                        <span style="cursor: pointer;"  onclick="AddQ()"><i class="glyphicon glyphicon-plus-sign"></i> &nbsp;添加选项</span> &nbsp; &nbsp;
                                                       </div>
               
         </div>
        </div>
    </div>
     

    <style type="text/css">
 
          .ItemDiv {
            float:left;
            height:20px;
            background-color:#d5d5d5;
            text-align:center;
        }
   
    </style>
    
</asp:Content>

