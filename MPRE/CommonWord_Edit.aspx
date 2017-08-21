<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="CommonWord_Edit.aspx.cs" Inherits="CommonWord_Edit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="CurrentPosition">当前位置：<a href="CommonWord_Man.aspx">常用语管理</a> >> <a href="#">编辑常用语</a></div>
    <p>&nbsp;</p>
    <div class="row">
        <div class="col-lg-6 col-sm-6 col-xs-12">
            <div class="well with-header">
                <div class="header bordered-blue">编辑常用语</div>
                <h6>常用语
                    <asp:Label ID="ErrorLabel" runat="server" Text="" ForeColor="Red"></asp:Label></h6>
                <div>
                    <asp:TextBox ID="CommonWord" class="form-control" placeholder="此字段不能为空" runat="server" TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="/*常用语必填*/" ControlToValidate="CommonWord"></asp:RequiredFieldValidator>
                </div>
                <p>
                    <asp:Button ID="Button1" runat="server" class="btn btn-info" Text="修改" Style="margin-left: 5px; margin-top: 2px;" OnClick="Button1_Click" />
                </p>
            </div>
        </div>
    </div>
</asp:Content>

