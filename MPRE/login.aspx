<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>多维度精神康复评估系统--登录</title>
    <meta name="description" content="多维度精神康复评估系统" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<meta content="always" name="referrer" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="shortcut icon" href="#" type="image/x-icon" />

    <!--Basic Styles-->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/css/font-awesome.min.css" rel="stylesheet" />

    <!--Beyond styles-->
    <link href="assets/css/beyond.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/demo.min.css" rel="stylesheet" />
    <link href="assets/css/animate.min.css" rel="stylesheet" />

    <link href="assets/css/login.css" rel="stylesheet" type="text/css" media="all" />

    <!--[if lte IE 8]>
        <script>
            alert("为获得最佳效果，建议使用IE9、Chrome10或更高版本的浏览器。");
        </script>
    <![endif]-->

    <!--Skin Script: Place this script in head to load scripts for skins and rtl support-->
    <script type="text/javascript" src="assets/js/skins.min.js"></script>
    <script type="text/javascript">
        function reloadcode() {
            document.getElementById('safecode').src = 'CreatePic.aspx?' + Math.random();
        }
    </script>
     <script type="text/javascript">
         function finish() {
             bootbox.confirm("恭喜完成测试，已回到登录页！", function (result) {
                 if (result) {
                     //
                 }
             });
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel2" runat="server">  
            <ContentTemplate>
                <asp:Timer ID="Timer1" runat="server" Interval="35000"></asp:Timer><!-- 用于强制更新，防止session过期，每35秒更新一次-->
            </ContentTemplate>                  
        </asp:UpdatePanel>
        <asp:Label ID="DoctorGUID" runat="server"  Visible="false"></asp:Label>
        <asp:Label ID="HospitalGUID" runat="server"  Visible="false"></asp:Label>
        <asp:Label ID="StrToInt" runat="server"  Visible="false"></asp:Label>
        <div class="header">
          <h1 class="headerLogo"><img alt="logo" src="assets/img/login/logo.jpg" />

              

          </h1><div style="position:absolute;left:55%;top:25px;"><h1 style="font-family:SimHei;font-size:36px;">多维度精神康复评估系统</h1></div>
        </div>

        <div class="banner">

        <div class="login-aside">
          <div id="o-box-up"></div>
          <div id="o-box-down"  style="table-layout:fixed;background-color:#ecf9ff;" class="loginbox">
           
            <div class="widget-main " style="zoom:1.3;background-color:#ecf9ff;">
                    <div class="tabbable">
                        <ul class="nav nav-tabs nav-justified" id="myTab11" style="background-color:#f0f8ff;box-shadow:none;font-family:SimHei;font-size:14px;border-radius:5px;">
                            <li class="home11a active">
                                <a data-toggle="tab" href="#home11">
                                    管 理 登 录
                                </a>
                            </li>
                            <li class="profile11a">
                                <a data-toggle="tab" href="#profile11">
                                    自 评 登 录
                                </a>
                            </li>
                        </ul>
                        
                        <div class="tab-content tabs-flat" style="padding:5px 8px;background-color:#ecf9ff;">
                            <div id="home11" class="tab-pane home11b active">
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                <div class="loginbox-textbox" style="font-size:14px;"><asp:Label ID="ErrorLabel" runat="server" Text="" ForeColor="Red" Font-Bold="true"></asp:Label></div>
            
                                <div class="loginbox-textbox">
                                    <asp:DropDownList ID="UserNameDDL" runat="server" class="form-control"></asp:DropDownList>
                                </div>

                                <div class="loginbox-textbox">
                                    <asp:TextBox ID="Password" placeholder="输入密码" runat="server" MaxLength="30" TextMode="Password" class="form-control"></asp:TextBox>
                                </div>
                                <div class="loginbox-textbox">
                                    <asp:TextBox ID="ValidateCode" runat="server" placeholder="输入验证码" MaxLength="30" class="form-control"></asp:TextBox>
                                </div>
                                <div class="loginbox-textbox">                 
                                    <a href="javascript:reloadcode();" title="更换一张">
                                             <img src="CreatePic.aspx" id="safecode"  alt="更换一张验证"  width="80"/>
                                        换一张</a>
                                </div>
                                <div class="loginbox-submit">
                                    <asp:Button ID="Button1" runat="server" Text=" 登录 "  class="btn btn-info btn-block" onclick="Button1_Click" />
                                </div>
                                </ContentTemplate>
                                </asp:UpdatePanel>
                            </div>

                            <div id="profile11" class="tab-pane profile11b">
                                <asp:Label ID="TestNum" runat="server" Visible="false" Text=""></asp:Label>
                                <asp:Label ID="PatientGUID" runat="server" Visible="false" Text=""></asp:Label>
                                <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                <ContentTemplate>
                                <div style="margin-top:50px;"></div>
                                <div class="loginbox-textbox" style="font-size:14px;"><asp:Label ID="ErrorLabel2" runat="server" Text="" ForeColor="Red" Font-Bold="true"></asp:Label></div>
                                <div class="loginbox-textbox">
                                    <span class="input-icon icon-right">
                                    <asp:TextBox ID="Code" placeholder="请输入自评码..." runat="server" MaxLength="30" class="form-control"></asp:TextBox>
                                    <i class="glyphicon glyphicon-log-in themeprimary"></i>
                                    </span>
                
                                </div>
                                <div style="margin-top:20px;"></div>
                                <div class="loginbox-submit">
                                    <asp:Button ID="Button2" runat="server" Text=" 开始测试 "  class="btn btn-info btn-block"  onclick="Button2_Click" />
                                </div>
                                <div style="margin-top:82px;"></div>
                                </ContentTemplate>
                                </asp:UpdatePanel>
                            </div>
                        </div>
                    </div>
                </div>
          </div>

        </div>

	        <div class="bd">
		        <ul>
			        <li style="background:url(assets/img/login/theme-pic1.jpg) #00a1e9 center 0 no-repeat;"></li>
		        </ul>
	        </div>

	        <div class="hd"><ul></ul></div>
        </div>


        <div class="banner-shadow"></div>

        <div class="footer">
           <p>广州康泽医疗科技有限公司  版权所有 Copyright 2016 All Right Reserved</p>
        </div>

        <div class="footer" style="margin-top:5px;">
            <p>技术支持：020-85537930</p>
        </div>

    <!--Basic Scripts-->
    <script src="assets/js/jquery-2.0.3.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    
    <script type="text/javascript">
        $(document).ready(function Order(e) {

            var cookieCount = {};
            cookieCount.count = function () {
                var count = parseInt(this.getCount('MPREmyCount'));
                $(".home11a").click(function (e) {
                    $('.home11a').addClass("active");
                    $('.home11b').addClass("active");
                    $('.profile11a').removeClass("active");
                    $('.profile11b').removeClass("active");
                    count++;
                    document.cookie = 'MPREmyCount=' + count + '';

                });

                $(".profile11a").click(function (e) {
                    $('.home11a').removeClass("active");
                    $('.home11b').removeClass("active");
                    $('.profile11a').addClass("active");
                    $('.profile11b').addClass("active");
                    count++;
                    document.cookie = 'MPREmyCount=' + count + '';


                });
                if (count % 2 == 0) {
                    $('.home11a').addClass("active");
                    $('.home11b').addClass("active");
                    $('.profile11a').removeClass("active");
                    $('.profile11b').removeClass("active");
                }
                else {
                    
                    $('.home11a').removeClass("active");
                    $('.home11b').removeClass("active");
                    $('.profile11a').addClass("active");
                    $('.profile11b').addClass("active");
                }

            }
            cookieCount.setCount = function () {
                //首先得创建一个名为MPREmyCount的cookie
                var expireDate = new Date();
                expireDate.setDate(expireDate.getDate() + 1);
                document.cookie = 'MPREmyCount=' + '0' + ';expires=' + expireDate.toGMTString();
            }
            cookieCount.getCount = function (countName) {
                //获取名为计数cookie,为其加1
                var arrCookie = document.cookie.split('; ');
                var arrLength = arrCookie.length;
                var ini = true;
                for (var i = 0; i < arrLength; i++) {
                    if (countName == arrCookie[i].split('=')[0]) {
                        return parseInt(arrCookie[i].split('=')[1]);
                        break;
                    } else {
                        ini = false;
                    }
                }
                if (ini == false) this.setCount();
                return 0;
            }
            cookieCount.count();
        })
    </script>

    <!--Beyond Scripts-->
    <script src="assets/js/beyond.js"></script>
    <script src="assets/js/bootbox/bootbox.js"></script>
    </form>
</body>
</html>
