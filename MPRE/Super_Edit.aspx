<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Super_Edit.aspx.cs" Inherits="Super_Edit" %>
    
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>超级管理</title>
    <meta name="description" content="多维度精神康复评估系统" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<meta content="always" name="referrer" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="shortcut icon" href="#" type="image/x-icon" />

    <!--Basic Styles-->
    <link href="assets/css/bootstrap2.min.css" rel="stylesheet" />
    <link href="assets/css/font-awesome.min.css" rel="stylesheet" />
    <link href="assets/css/weather-icons.min.css" rel="stylesheet" />

    <!--Beyond styles-->
    <link href="assets/css/beyond2.min.css" rel="stylesheet" />
    <link href="assets/css/demo.min.css" rel="stylesheet" />
    <link href="assets/css/typicons.min.css" rel="stylesheet" />
    <link href="assets/css/animate.min.css" rel="stylesheet" />

    <!--[if lte IE 8]>
        <script>
            alert("为获得最佳效果，建议使用IE9、Chrome10或更高版本的浏览器。");
        </script>
    <![endif]-->
    <style type="text/css">
        body{
            zoom:1.3;
            font-size:14px;
            color:#333;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="CurrentPosition">当前位置：<a href="#">超级权限管理</a> >> <a href="#">导出导出设置</a></div>
    <div style="width:250px;  margin:100px auto;text-align:center">
        <div>
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/download.png" Height="129px" Width="189px" OnClick="Zipdownload"/>
        <p>数据导出</p>

        </div>
        
        
    </div>
    
</asp:Content>

