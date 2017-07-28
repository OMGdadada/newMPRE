<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="CurrentPosition">当前位置：<a href="#">首页</a></div>
    <asp:Label ID="HospitalGUID" runat="server" Visible="false" Text=""></asp:Label>
    <!-- Page Body -->
    <div class="page-body">
        <div class="row">
            <div class="col-md-12">
                <div class="profile-container">
                    <div class="profile-header row">
                        <div class="col-lg-4 col-md-4 col-sm-12 text-center">
                            <asp:Image ID="Image1" runat="server" class="header-avatar" />
                        </div>
                        <div class="col-lg-8 col-md-8 col-sm-12 profile-info">
                            <div class="header-fullname">
                                <asp:Label ID="HospitalName" runat="server" Text="Label"></asp:Label>

                            </div>
                            <div class="header-information">
                                <asp:Label ID="Introduction" runat="server" Text="Label"></asp:Label>
                            </div>
                        </div>

                    </div>

                    <div class="profile-header row">
                       
                        <div class="col-lg-6 col-md-8 col-xs-12">
                        <div class="divleft" >
                              <a href="NewPage/Multidimensional_Test.aspx" target="_blank"><i class="fa fa-cogs"></i></a>
                              <h1> 多维度康复系统</h1>

                        </div>

                        </div>

                          <div class="col-lg-6 col-md-8 col-xs-12">
                        <div class="divright" >
                              <a  href="NewPage/Psychological_Test.aspx" target="_blank"><i class="fa fa-heart"></i></a>
                              <h1> 心理测试系统</h1>

                        </div>

                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <style type="text/css">
        .divleft{
            text-align:center;
            margin-top:10px;
        }
         .divright{
            text-align:center;
            margin-top:10px;
        }
        .divleft i {
            -webkit-border-radius: 2px;
            border-radius: 50%;
            padding: 10px 10px;
            color: #000;
            text-align: center;
            border: 2px solid #000;
            zoom:4.0;
           
        }


          .divright i {
            -webkit-border-radius: 2px;
            border-radius: 50%;
            padding: 10px 10px;
            color: #000;
            text-align: center;
            border: 2px solid #000;
            zoom:4.0;
           
        }
    </style>
</asp:Content>

