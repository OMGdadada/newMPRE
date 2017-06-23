<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Hospital.aspx.cs" Inherits="Hospital" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .mheader-avatar {
            width: 125px;
            height: 125px;
            -webkit-border-radius: 50%;
            -webkit-background-clip: padding-box;
            -moz-border-radius: 50%;
            -moz-background-clip: padding;
            border-radius: 50%;
            background-clip: padding-box;
            /*border: 5px solid #f5f5f5;*/
            -webkit-box-shadow: 0 0 10px rgba(0,0,0,.15);
            -moz-box-shadow: 0 0 10px rgba(0,0,0,.15);
            box-shadow: 0 0 10px rgba(0,0,0,.15);
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="CurrentPosition">当前位置：<a href="#">设置管理</a> >> <a href="#">医院信息</a></div>
    <asp:Label ID="HospitalGUID" runat="server" Visible="false" Text=""></asp:Label>
    <p>&nbsp;</p>

    <div class="row">
        <div class="col-lg-12">
            <div class="widget">
                <div class="widget-header bordered-bottom bordered-info">
                    <span class="widget-caption">完善医院信息</span>
                </div>
                <!--Widget Header-->
                <div class="widget-body">
                    <div class="widget-main no-padding">
                        <div class="tickets-container">

                            <div class="row">
                                <div class="col-lg-4 col-sm-4 col-xs-8">

                                    <asp:Image ID="Image1" runat="server" class="mheader-avatar" />

                                </div>
                                <div class="col-lg-4 col-sm-4 col-xs-3">
                                    <p style="margin-left: 12px;" class="text-muted">请上传医院的 LOGO</p>
                                    <asp:FileUpload ID="FileUpload1" CssClass="btn btn-link" runat="server" BackColor="#CCCCCC" ForeColor="White" />
                                    <asp:Button ID="Button1" Style="margin: 12px 12px;" runat="server" class="btn btn-info" Text=" 上 传 " OnClick="Button1_Click" />
                                    <p>
                                        <asp:Label ID="ResultLabel" runat="server" Text="" ForeColor="Red" Font-Bold="true"></asp:Label>

                                    </p>
                                </div>

                            </div>
                            <p>&nbsp;</p>
                            <div class="row">
                                <div class="col-lg-6 col-sm-6 col-xs-6">
                                    <div class="form-group">
                                        <span class="text-primary">医院名称：</span>
                                        <span class="input-icon icon-right">
                                            <asp:TextBox ID="HospitalName" class="form-control" runat="server"></asp:TextBox>
                                        </span>
                                    </div>

                                    <div class="form-group">
                                        <span class="text-primary">医院简介：</span>
                                        <span class="input-icon icon-right">
                                            <asp:TextBox ID="Introduction" runat="server" TextMode="MultiLine" Rows="3" class="form-control"></asp:TextBox>
                                        </span>
                                    </div>
                                    
                                    <p>
                                        <asp:Button ID="Button2" class="btn btn-info" runat="server" Text="保存信息" OnClick="Button2_Click" />
                                    </p>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</asp:Content>

