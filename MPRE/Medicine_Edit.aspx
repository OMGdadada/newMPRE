<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Medicine_Edit.aspx.cs" Inherits="Medicine_Edit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Label ID="TagIDLabel" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="GUID" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="LabelUserID" runat="server" Visible="false" Text=""></asp:Label>
    <div id="CurrentPosition">当前位置：<a href="Medicine_Man.aspx">药物管理</a> >> <a href="#">编辑药物</a></div>
    <p>&nbsp;</p>
    <div class="row">
        <div class="col-lg-6 col-sm-6 col-xs-12">
            <div class="well with-header">
                <div class="header bordered-blue">编辑药物名</div>
                <h6>药物名  
                    <asp:Label ID="ErrorLabel" runat="server" Text="" ForeColor="Red"></asp:Label></h6>
                <div>
                    <asp:TextBox ID="MedicineName" class="form-control" placeholder="此字段不能为空" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="/*药物名必填*/" ControlToValidate="MedicineName"></asp:RequiredFieldValidator>
                </div>
                <p>
                    <asp:Button ID="Button1" runat="server" class="btn btn-info" Text="修改" Style="margin-left: 5px; margin-top: 2px;" OnClick="Button1_Click" />
                </p>
            </div>
        </div>
    </div>
</asp:Content>

