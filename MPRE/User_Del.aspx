﻿<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="User_Del.aspx.cs" Inherits="User_Del" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:Label ID="IDSLabel" runat="server" Text="" Visible="false"></asp:Label>
    <div id="CurrentPosition">
        当前位置：<a href="User_Man.aspx">医生管理</a> >> <a href="#">彻底删除用户</a>
    </div>
    <p>&nbsp;</p>
    <h3 style="color: red">您确定要删除以下用户吗？一旦删除，将不可恢复！</h3>
    <p>&nbsp;</p>
    <div>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Button ID="Button3" runat="server" Text="确定删除"
                class="btn btn-danger" data-toggle="modal" data-target=".bs-example-modal-sm" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
               
            <asp:Button ID="Button4" runat="server" Text="返 回" class="btn btn-default" OnClick="Button2_Click" />

        </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    <p>
        &nbsp;
    </p>
    <p>
        <asp:Label ID="ResultLabel" runat="server" Font-Bold="True" ForeColor="#00CC00" Text=""></asp:Label>
    </p>
    <div class="col-lg-11 col-sm-15 col-xs-15">
        <div class="row">
            <div class="col-lg-15">
                <div class="widget">
                    <div class="widget-header ">
                        <span class="widget-caption">删除用户</span>
                    </div>
                    <!--Widget Header-->
                    <div class="widget-body">
                        <div class="widget-main no-padding">
                            <div id="GridViewDiv">
                                <asp:GridView ID="GridView1" runat="server" DataKeyNames="GUID" AutoGenerateColumns="false" class="table table-striped table-bordered table-hover"
                                        GridLines="Horizontal" Style="text-align: center;" ForeColor="#333333" HeaderStyle-HorizontalAlign="Center" Width="99%">
                                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" Height="30px" HorizontalAlign="Center" />
                                        <HeaderStyle HorizontalAlign="Center" />
                                        <Columns>
                                            <asp:BoundField DataField="Orders" HeaderText="排序" ItemStyle-Width="30" Visible="false" />
                                            <asp:TemplateField HeaderText="序" HeaderStyle-HorizontalAlign="Center">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblNo" runat="server" Text='<%# Container.DataItemIndex+1 %>'></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle Width="30px" HorizontalAlign="center" />
                                                <HeaderStyle Width="30px" />
                                            </asp:TemplateField>
                                            <asp:HyperLinkField DataNavigateUrlFields="GUID"
                                                DataNavigateUrlFormatString="User_Edit.aspx?GUID={0}" DataTextField="DoctorName"
                                                HeaderText="医生名" ItemStyle-Width="80" HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left" Target="_blank"></asp:HyperLinkField>
                                         
                                        </Columns>
                                    </asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--Small Modal Templates-->
    <div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">

                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 class="modal-title" id="mySmallModalLabel">安全验证</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <span class="text-primary">请输入身份证号：</span>
                        <span class="input-icon icon-right">
                            <asp:TextBox ID="IDCard" class="form-control" runat="server"></asp:TextBox>
                            <i class="fa fa-credit-card darkpink circular"></i>
                        </span>
                    </div>
                    <div style="text-align:center;">
                    <asp:Button ID="DelButton" runat="server" class="btn btn-info" Text="确定" OnClick="DelButton_Click" />
                    </div>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div>
    <!--End Small Modal Templates-->
</asp:Content>
