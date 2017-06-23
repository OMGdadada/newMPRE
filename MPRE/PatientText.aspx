<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="PatientText.aspx.cs" Inherits="PatientText" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .myright {
            float:left;
            position:absolute;
            left:30%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="CurrentPosition">当前位置：<a href="#">设置管理</a> >> <a href="#">名称设置</a></div>
    <p>&nbsp;</p>
    <div class="row">
        <div class="col-lg-12">
            <div class="widget">
                <div class="widget-header bordered-bottom bordered-info">
                    <span class="widget-caption">设置病人信息的字段别名</span>
                </div>
                <!--Widget Header-->
                <div class="widget-body">
                    <div class="widget-main no-padding">
                        <div class="tickets-container">
                            <p><asp:Label ID="ResultLabel" runat="server" Text="" ForeColor="Red" Font-Bold="true"></asp:Label></p>
                            <div class="row">
                                <div class="col-lg-6 col-sm-6 col-xs-12" style="padding:10px 10px;"> 
                                    病人姓名 ：
                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="myright"></asp:TextBox>
                                </div>
                                <div class="col-lg-6 col-sm-6 col-xs-12" style="padding:10px 10px;"> 
                                    姓名缩写 ：
                                    <asp:TextBox ID="TextBox2" runat="server" CssClass="myright"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6 col-sm-6 col-xs-12" style="padding:10px 10px;"> 
                                    性别 ：
                                    <asp:TextBox ID="TextBox3" runat="server" CssClass="myright"></asp:TextBox>
                                </div>
                                <div class="col-lg-6 col-sm-6 col-xs-12" style="padding:10px 10px;"> 
                                    出生日期 ：
                                    <asp:TextBox ID="TextBox4" runat="server" CssClass="myright"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6 col-sm-6 col-xs-12" style="padding:10px 10px;"> 
                                    证件 ：
                                    <asp:TextBox ID="TextBox5" runat="server" CssClass="myright"></asp:TextBox>
                                </div>
                                <div class="col-lg-6 col-sm-6 col-xs-12" style="padding:10px 10px;"> 
                                    科室/来源 ：
                                    <asp:TextBox ID="TextBox6" runat="server" CssClass="myright"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6 col-sm-6 col-xs-12" style="padding:10px 10px;"> 
                                    就诊卡号1 ：
                                    <asp:TextBox ID="TextBox7" runat="server" CssClass="myright"></asp:TextBox>
                                </div>
                                <div class="col-lg-6 col-sm-6 col-xs-12" style="padding:10px 10px;"> 
                                    就诊卡号2 ：
                                    <asp:TextBox ID="TextBox8" runat="server" CssClass="myright"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6 col-sm-6 col-xs-12" style="padding:10px 10px;"> 
                                    联系电话1 ：
                                    <asp:TextBox ID="TextBox9" runat="server" CssClass="myright"></asp:TextBox>
                                </div>
                                <div class="col-lg-6 col-sm-6 col-xs-12" style="padding:10px 10px;"> 
                                    联系电话2 ：
                                    <asp:TextBox ID="TextBox10" runat="server" CssClass="myright"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6 col-sm-6 col-xs-12" style="padding:10px 10px;"> 
                                    受教育年限 ：
                                    <asp:TextBox ID="TextBox11" runat="server" CssClass="myright"></asp:TextBox>
                                </div>
                                <div class="col-lg-6 col-sm-6 col-xs-12" style="padding:10px 10px;"> 
                                    受教育程度 ：
                                    <asp:TextBox ID="TextBox12" runat="server" CssClass="myright"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6 col-sm-6 col-xs-12" style="padding:10px 10px;"> 
                                    利手 ：
                                    <asp:TextBox ID="TextBox13" runat="server" CssClass="myright"></asp:TextBox>
                                </div>
                                <div class="col-lg-6 col-sm-6 col-xs-12" style="padding:10px 10px;"> 
                                    婚姻状况 ：
                                    <asp:TextBox ID="TextBox14" runat="server" CssClass="myright"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6 col-sm-6 col-xs-12" style="padding:10px 10px;"> 
                                    家族史 ：
                                    <asp:TextBox ID="TextBox15" runat="server" CssClass="myright"></asp:TextBox>
                                </div>
                                <div class="col-lg-6 col-sm-6 col-xs-12" style="padding:10px 10px;"> 
                                    工作状况 ：
                                    <asp:TextBox ID="TextBox16" runat="server" CssClass="myright"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6 col-sm-6 col-xs-12" style="padding:10px 10px;"> 
                                    民族 ：
                                    <asp:TextBox ID="TextBox17" runat="server" CssClass="myright"></asp:TextBox>
                                </div>
                                <div class="col-lg-6 col-sm-6 col-xs-12" style="padding:10px 10px;"> 
                                    职业 ：
                                    <asp:TextBox ID="TextBox18" runat="server" CssClass="myright"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6 col-sm-6 col-xs-12" style="padding:10px 10px;"> 
                                    个人经济收入 ：
                                    <asp:TextBox ID="TextBox19" runat="server" CssClass="myright"></asp:TextBox>
                                </div>
                                <div class="col-lg-6 col-sm-6 col-xs-12" style="padding:10px 10px;"> 
                                    家庭经济收入 ：
                                    <asp:TextBox ID="TextBox20" runat="server" CssClass="myright"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6 col-sm-6 col-xs-12" style="padding:10px 10px;"> 
                                    长大地 ：
                                    <asp:TextBox ID="TextBox21" runat="server" CssClass="myright"></asp:TextBox>
                                </div>
                                <div class="col-lg-6 col-sm-6 col-xs-12" style="padding:10px 10px;"> 
                                    居住地 ：
                                    <asp:TextBox ID="TextBox22" runat="server" CssClass="myright"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row" style="padding:30px 90px 10px 10px;text-align:center;">
                                <asp:Button ID="Button1" class="btn btn-info" runat="server" Text="保 存" OnClick="Button1_Click" />
                            </div>

                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</asp:Content>

