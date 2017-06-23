<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="CommonWord_Add.aspx.cs" Inherits="CommonWord_Add" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="CurrentPosition">当前位置：<a href="CommonWord_Man.aspx">常用语管理</a> >> <a href="#">添加常用语</a></div>
    <p>&nbsp;</p>
    <div class="row">
        <div class="col-lg-6 col-sm-6 col-xs-12">
            <div class="well with-header">
                <div class="header bordered-blue">添加常用语</div>
                <h6>常用语
                    <asp:Label ID="ErrorLabel" runat="server" Text="" ForeColor="Red"></asp:Label></h6>
                <div>
                    <asp:TextBox ID="TagName" class="form-control" placeholder="此字段不能为空" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="/*常用语必填*/" ControlToValidate="TagName"></asp:RequiredFieldValidator>
                </div>
                <p>
                    <asp:Button ID="Button1" runat="server" class="btn btn-info" Text="添加" Style="margin-left: 5px; margin-top: 2px;" OnClick="Button1_Click" />
                </p>
            </div>
        </div>
    </div>
</asp:Content>

