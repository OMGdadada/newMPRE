<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Super_Licenses.aspx.cs" Inherits="Super_Licenses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>超级管理-修改授权登录数</title>
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
    <div id="CurrentPosition">当前位置：<a href="#">超级权限管理</a> >> <a href="#">修改授权登陆数</a></div>
    <p>&nbsp;</p>
    <div class="row">
        <div class="col-lg-6 col-sm-6 col-xs-12">
            <div class="well with-header  with-footer">
                <div style="text-align:center;margin:40px 0">
                    当前授权登陆数：
                    <asp:Label ID="Licensesnum" runat="server" Text="5"></asp:Label>
                </div>

                <div class="form-group" style="width:300px;text-align:center;margin: 0 auto;">
                    <span style="color:red">修改授权登录数：</span>
                    <span class="input-icon icon-right">
                    <asp:TextBox ID="Licenses" runat="server" class="form-control"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ErrorMessage="不符合登录数规则（填正整数）" ControlToValidate="Licenses" 
                    ValidationExpression="^[1-9]\d*$"></asp:RegularExpressionValidator>
                    <br />
                    <asp:Label ID="ErrorLabel" runat="server" Text="" Font-Bold="true" ForeColor="Red" />
                    </span>
                 </div>
                <div class="row" style="margin: 4px 0px; text-align: center;">
                    <asp:Button ID="InitBtn" runat="server" Text="确 定" class="btn btn-success" OnClick="InitBtn_Click" />
                </div>
            </div>
        </div>
    </div>

</asp:Content>

