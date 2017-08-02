<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TestList.aspx.cs" Inherits="NewPage_TestList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     
    <meta name="description" content="多维度精神康复评估系统" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>多维度精神康复评估系统</title>
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="../assets/css/beyond.min.css" />

    <script src="../assets/js/vue.js"></script>
    <script src="../assets/js/jquery-2.0.3.min.js"></script>
    <script src="../assets/js/bootstrap.min.js"></script>
    <style>
        th{
            text-align:center;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server" style="zoom:1.4">
              <div class="navbar">
            <div class="navbar-inner">
                <div class="navbar-container">
                    <!-- Navbar Barnd -->
                    <div class="navbar-header pull-left">
                        <a class="navbar-brand"  style="font-size:26px;">
                            <small style="font-size:60%;padding-top:3px;font-weight:600;">
                                多维度精神康复评估系统
                            </small>
                        </a>
                    </div>
                  
                 
                    <!-- /Account Area and Settings -->
                </div>
            </div>
        </div>

        <div class="page-body" style="padding: 18px 20px 24px;">
            <div class="row">
                <div class="col-md-12">
                    <div class="widget" style="margin:0px;">
                        <div class="widget-header bg-blueberry">
                            <i class="widget-caption glyphicon glyphicon-user" style="float:left;margin-right:10px;"></i> 
                            <span class="widget-caption">您的资料信息</span>
                        </div>
                    </div>
            
                    <div class="widget-body">
                        <div style="width: 100%; margin: auto; text-align: center">
                            <div id="Patient">
                                <table class="table table-bordered table-hover"  v-for="patient in list">
                                    <tr>
                                        <td style="width:25%">姓名</td>
                                        <td style="width:25%">{{patient.PatientName}}</td>
                                        <td style="width:25%">{{patient.Certificates}}</td>
                                        <td style="width:25%">{{patient.CertificatesNum}}</td>
                                    </tr>
                                    <tr>
                                        <td>性别</td>
                                        <td>{{patient.Sex}}</td>
                                        <td>出生日期</td>
                                        <td>{{patient.Birthday}}</td>
                                    </tr>
                                    <tr>
                                        <td>门诊号</td>
                                        <td>{{patient.Num1}}</td>
                                        <td>联系电话1</td>
                                        <td>{{patient.Phone1}}</td>
                                    </tr>
                                </table>

                            </div>
                            <code></code>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <br />
                <br />
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="widget" style="margin:0px;">
                        <div class="widget-header bg-blue">
                            <i class="widget-caption glyphicon glyphicon-shopping-cart" style="float:left;margin-right:10px;"></i> 
                            <span class="widget-caption">您所购试题</span>
                        </div>
                    </div>
                    <div class="widget-body">
                        <div style="width: 100%; margin: auto; text-align: center">
                            <div id="Test">
                                <table class="table table-bordered table-hover"  >
                                    <thead>
                                        <tr>
                                            <th>序号</th>
                                            <th>试题</th>
                                            <th>状态</th>
                                            <th>价格</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr v-for="test in list">
                                            <td>{{test.Serial}}</td>
                                            <td >{{test.TestName}}</td>
                                            <td>{{test.IsFinished}}</td>
                                            <td>{{test.Price}}</td>
                                            <td><i v-if="!test.Finished" id="StartBtn" style="cursor:pointer;" class="glyphicon glyphicon-hand-right" v-on:click="Start(test.TestGUID)"></i>
                                                <i v-if="test.Finished" id="FinishBtn" class="glyphicon glyphicon-ok" ></i>
                                            </td>
                                        </tr>
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            
                                            <td colspan="5" >总价：{{count}}</td>
                                        </tr>
                                    </tfoot>
                                    
                                    
                                </table>

                            </div>
                            <code></code>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script>
            urlinfo = window.location.href; //获取当前页面的url
            len = urlinfo.length;//获取url的长度
            offset = urlinfo.indexOf("?");//设置参数字符串开始的位置
            newsidinfo = urlinfo.substr(offset, len)//取出参数字符串 这里会获得类似“id=1”这样的字符串
            newsids = newsidinfo.split("=");//对获得的参数字符串按照“=”进行分割
            newsid = newsids[1];//得到参数值
            newsname = newsids[0];//得到参数名字
            var list = "";
            var Pt = new Vue({
                el: '#Patient',
                data: {
                    list:[]
                },
            })
            var Vm = new Vue({
                el: '#Test',
                data: {
                    count: 0,
                    list: []
                },
                methods: {
                    Start: function (val) {
                        //alert(val);
                        var Url = "Test_Start.aspx?TGUID=" + newsid + "&GUID=" + val;
                        window.open(Url, '_blank', 'top=0,left=0,width=' + (screen.availWidth - 5) + ',height=' + (screen.availHeight - 50) + ',menubar=no,toolbar=no,location=no,directories=no,status=no,scrollbars=no,resizable=yes');

                    }
                }
            })
            if (newsname == "?TGUID") {
                ajax1();
            } else if (newsname == "?GUID") {
                ajax2();
            } else {
                alert("请使用正确标识！");
            }
            
            function ajax1() {
                $.ajax({
                    type: "post",
                    url: "Gtest.asmx/GetPatient", //服务端处理程序   
                    data: { "Tguid": newsid },
                    dataType: 'xml', //返回的类型为XML ，和前面的Json，不一样了
                    async: false,//设置为同步操作就可以给全局变量赋值成功 
                    success: function (Nums) {
                        try {

                            list = $(Nums).find("string").text();
                            //alert(list);
                            Pt.list = eval('(' + list + ')');
                            ////console.log("ajax.QuestionType=" + vm.list[0].QuestionType);
                            //console.log("ajax.HasTextBox=" + vm.list[0].HasTextBox);
                            //setTimeout("vm.QuestionSerial = vm.QuestionSerial + 1;", 20);
                        }
                        catch (e) {
                            alert(e);
                            return;
                        }
                    },
                    error: function (Num) {
                        console.log('0');
                    },
                })
                var a = Pt.list[0].Birthday;
                var date = new Date(parseInt(a.slice(6)));
                var result = date.getFullYear() + '年' + date.getMonth() + '月' + date.getDate() + '日';
                //alert(result);
                Pt.list[0].Birthday = result;

                $.ajax({
                    type: "post",
                    url: "Gtest.asmx/GetTestList", //服务端处理程序   
                    data: { "Tguid": newsid },
                    dataType: 'xml', //返回的类型为XML ，和前面的Json，不一样了
                    async: false,//设置为同步操作就可以给全局变量赋值成功 
                    success: function (Nums) {
                        try {

                            list = $(Nums).find("string").text();
                            //alert(list);
                            Vm.list = eval('(' + list + ')');
                            ////console.log("ajax.QuestionType=" + vm.list[0].QuestionType);
                            //console.log("ajax.HasTextBox=" + vm.list[0].HasTextBox);
                            //setTimeout("vm.QuestionSerial = vm.QuestionSerial + 1;", 20);
                        }
                        catch (e) {
                            alert(e);
                            return;
                        }
                    },
                    error: function (Num) {
                        console.log('0');
                    },
                })
                for (i = 0 ; i < Vm.list.length; i++) {
                    var a = Vm.list[i].IsFinished;
                    if (a) {
                        Vm.list[i].IsFinished = "已完成";
                        Vm.list[i].Finished = true;
                    }else{
                        Vm.list[i].IsFinished = "未完成";
                        Vm.list[i].Finished = false;
                    }
                    Vm.list[i].Serial = i + 1;
                    Vm.count += Vm.list[i].Price;
                }
                
            }
            
        </script>
    </form>
</body>
</html>
