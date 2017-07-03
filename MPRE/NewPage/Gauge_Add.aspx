<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Gauge_Add.aspx.cs" Inherits="NewPage_Gauge_Add" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


        .table th {
            height: 30px;
            text-align: center;
        }

        .table td, .table th {
            border: 1px solid #cad9ea;
            padding: 0 1em 0;
        }

        .table tr:hover {
            background: #ffffff;
        } 
        #td1 {
            text-align:center;
          width:15%;
        }
        #td2 {
            
               width:35%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div id="CurrentPosition">当前位置：<a href="Gauge_Library.aspx">量表管理</a> >>添加量表</div>
    <p>&nbsp;</p>
    
    <div class="row">
        <div class="col-lg-8 col-sm-8 col-xs-12">
            <div class="well with-header">
                <div class="header bordered-blue">添加量表</div>
                <h6><asp:Label ID="ErrorLabel" runat="server" Text="" ForeColor="Red"></asp:Label>
                </h6>
               <div style="width:100%;margin:auto;text-align:center">
                    <table class="table">
                        <tr>
                            <th id="td1">量表名：</th>
                            <th id="td2" colspan="3">
                                <asp:TextBox ID="TestName" class="form-control" placeholder="此字段不能为空" runat="server"></asp:TextBox></th>
                        </tr>
                          <tr>
                            <th id="td1">描述：</th>
                            <th id="td2" colspan="3">
                              <asp:TextBox ID="Description" runat="server"  class="form-control" TextMode="MultiLine" ></asp:TextBox></th> 
                        </tr>
                        <tr>

                            <th id="td1">排序：</th>
                            <th id="td2">
                                <asp:TextBox ID="Orders" runat="server" Text="1" Width="50%"></asp:TextBox></th>
                            <th id="td1">价格：</th>
                            <th id="td2">
                                <asp:TextBox ID="Price" runat="server" Text="50"  Width="50%"></asp:TextBox>/元</th>
                        </tr>
                       
                      
                        <tr>
                            <th id="td1">是否为题库：</th>
                            <th id="td2">
                                <asp:DropDownList ID="IsPageType" runat="server">
                                    <asp:ListItem  Value="1">是</asp:ListItem>
                                    <asp:ListItem Value="0">否</asp:ListItem>
                                </asp:DropDownList>

                               </th> 
                            <th id="td1">有效性：</th>
                            <th id="td2">
                               <asp:DropDownList ID="IsValid" runat="server">
                                    <asp:ListItem  Value="1">是</asp:ListItem>
                                    <asp:ListItem Value="0">否</asp:ListItem>
                                </asp:DropDownList></th>
                        </tr>
                        <tr>

                           
                        </tr>
                        <tr>
                            <th id="td1">序号：</th>
                            <th id="td2">
                                <asp:TextBox ID="Serial" runat="server"></asp:TextBox></th>
                            <th id="td1"> 所属测试</th>
                            <th id="td2"> <asp:DropDownList ID="DDLDimension1name" runat="server">
                                    <asp:ListItem  Value="1" >多维度量表</asp:ListItem>
                                    <asp:ListItem Value="2" >常规量表</asp:ListItem>
                                </asp:DropDownList></th>
                        </tr>
                    </table>
                    
                </div>
                <p>
                    <asp:Button ID="Button1" runat="server" class="btn btn-info" Text="确定" Style="margin-left: 5px; margin-top: 2px;" OnClick="Button1_Click" />
                </p>
            </div>
        </div>
    </div>
</asp:Content>

