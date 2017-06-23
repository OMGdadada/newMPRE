<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="RFormat.aspx.cs" Inherits="RFormat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        #banner {
            font-size: 40px;
            color: #fff;
            font-family: "黑体";
            padding-left: 150px;
            background: url(../assets/img/logo.jpg);
            width: 100%;
            height: 140px;
            line-height:140px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="CurrentPosition">当前位置：<a href="#">设置管理</a> >> <a href="#">报告单定制</a> </div>
    <p>&nbsp;</p>
    <div class="page-body" style="padding:0px;max-width:960px;box-shadow:1px 0 10px 1px rgba(0,0,0,.3);">
            <div class="widget flat radius-bordered">
                <div id="banner" style="padding-left:180px;">
                    多维度精神康复评估系统
                </div>
            
            
            <div class="widget-body bordered-bottom bordered-darkorange">
                <div style="margin:2px 20px">
                    <div class="row" style="text-align:center;">
                        <h2 style="font-family:'Microsoft YaHei';">报告单</h2>
                    </div>
                    <p>&nbsp;</p>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                    <asp:Label ID="ResultLabel" runat="server" Text=""  ForeColor="Red" Font-Bold="true" ></asp:Label>
                    <div style="margin:4px -2px">
                        <hr />
                    </div>
                    
                    <div class="row" style="margin:4px -15px">
                        <div class="col-lg-4 col-sm-4 col-xs-4">
                            <asp:DropDownList ID="RF1DDL" runat="server" AutoPostBack="True"></asp:DropDownList>
                        </div>
                        <div class="col-lg-4 col-sm-4 col-xs-4" style="padding:0px 15px 0px 60px;">
                            <asp:DropDownList ID="RF2DDL" runat="server" AutoPostBack="True"></asp:DropDownList>
                        </div>
                        <div class="col-lg-4 col-sm-4 col-xs-4" style="padding:0px 15px 0px 90px;">
                            <asp:DropDownList ID="RF3DDL" runat="server" AutoPostBack="True"></asp:DropDownList>
                        </div>
                    </div>

                    <div class="row" style="margin:4px -15px">
                        <div class="col-lg-4 col-sm-4 col-xs-4">
                            <asp:DropDownList ID="RF4DDL" runat="server" AutoPostBack="True"></asp:DropDownList>
                        </div>
                        <div class="col-lg-4 col-sm-4 col-xs-4" style="padding:0px 15px 0px 60px;">
                            <asp:DropDownList ID="RF5DDL" runat="server" AutoPostBack="True"></asp:DropDownList>
                        </div>
                        <div class="col-lg-4 col-sm-4 col-xs-4" style="padding:0px 15px 0px 90px;">
                            <asp:DropDownList ID="RF6DDL" runat="server" AutoPostBack="True"></asp:DropDownList>
                        </div>
                    </div>

                    <div class="row" style="margin:4px -15px">
                        <div class="col-lg-4 col-sm-4 col-xs-4">
                            <asp:DropDownList ID="RF7DDL" runat="server" AutoPostBack="True"></asp:DropDownList>
                        </div>
                        <div class="col-lg-4 col-sm-4 col-xs-4" style="padding:0px 15px 0px 60px;">
                            <asp:DropDownList ID="RF8DDL" runat="server" AutoPostBack="True"></asp:DropDownList>
                        </div>
                        <div class="col-lg-4 col-sm-4 col-xs-4" style="padding:0px 15px 0px 90px;">
                            <asp:DropDownList ID="RF9DDL" runat="server" AutoPostBack="True"></asp:DropDownList>
                        </div>
                    </div>
                    </ContentTemplate>
                    </asp:UpdatePanel>
                    <div style="margin:4px -2px 40px">
                        <hr />
                    </div>
                    <div class="row" style="text-align:center;">
                        <asp:Button ID="Button1" class="btn btn-info" runat="server" Text="保 存" OnClick="Button1_Click" />
                    </div>
                </div>
                
                </div>
            </div>
            </div>
</asp:Content>

