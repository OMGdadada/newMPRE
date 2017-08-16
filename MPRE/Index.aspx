<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Label ID="HospitalGUID" runat="server" Visible="false" Text=""></asp:Label>
    <!-- Page Body -->
    <div class="page-body" style="padding:0px 0px 24px">
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
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="profile-header row">
                                <div class="divright" id="div1">
                                    <a href="NewPage/Multidimensional_Test.aspx" target="_blank"><i class="fa fa-cogs"></i></a>
                                    <h1>多维度精神康复评估系统</h1>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="profile-header row">
                                <div class="divright" id="div2">
                                      <a  href="NewPage/Psychological_Test.aspx" target="_blank"><i class="fa fa-heart"></i></a>
                                      <h1>心理测评系统</h1>
                                </div>
                            </div>
                        </div>
                    </div>

                    

                       <div class="profile-header row">
                        <div class="divbottom">
                            <div class="row">
                                <div class="col-md-2" style="text-align: right;">
                                    <h2>快速链接 :</h2>
                                </div>
                                <div class="col-md-10 divbottom-icon">
                                    <div class="col-md-3">
                                        <div class="divleft">
                                              <a  href="Patient_List.aspx" target="_blank"><i class="fa fa-list-ol"></i></a>
                                              <h3>患者列表</h3>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="divleft">
                                              <a  href="Patient_Info.aspx" target="_blank"><i class="fa fa-user"></i></a>
                                              <h3>新增患者</h3>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="divleft">
                                              <a  href="Report_List.aspx" target="_blank"><i class="fa fa-file-text"></i></a>
                                              <h3>报告单</h3>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="divleft">
                                              <a  href="NewPage/Gauge_Library.aspx" target="_blank"><i class="fa fa-folder"></i></a>
                                              <h3>试题库</h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <style type="text/css">
       .profile-header div{
            margin: 0 auto;
        }
        .divright{
            text-align:center;
            margin-top: 20px !important;
            width: 320px;
            height: 220px;        
        }
        .divright h1 {
            font-size: 28px;
            color: #000;
            line-height: 1.2!important;
        }
        .divright i {
            -webkit-border-radius: 2px;
            border-radius: 50%;
            padding: 10px 10px;
            color: #000;
            text-align: center;
            border: 2px solid #000;
            zoom:4.0;      
            width: 35px;
            height: 35px;   
        }
        #div1 i{
            color: #1f839c;
            border: 1px solid #1f839c;
        }
        #div1 h1{
            color: #1f839c;
        }
        #div2 i{
            color: #D14850;
            border: 1px solid #D14850;
        }
        #div2 h1{
            color: #D14850;
        }
        .divbottom {
            padding-top: 50px;
            padding-left: 20px;  
            margin: 0 auto;       
        }
        .divbottom i {
            border-radius: 50%;
            padding: 4px 4px;
            color: #000;
            text-align: center;
            border: 1px solid #000;
            zoom:4.0;      
            width: 20px;
            height: 20px;   
            font-size: 10px;
        }
        .divbottom div {
            margin-top: -5px;
            text-align: center;
        }
    </style>
</asp:Content>

