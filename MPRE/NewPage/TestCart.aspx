<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="TestCart.aspx.cs" Inherits="NewPage_TestCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <style>
        th{
            text-align:center;
        }
        .bar { width: 100%; height: 20px; border: 1px solid #2980b9; border-radius: 3px; background-image: repeating-linear-gradient( -45deg, #2980b9, #2980b9 11px, #eee 10px, #eee 20px /* determines size */ ); background-size: 28px 28px; animation: move .5s linear infinite; } @keyframes move { 0% { background-position: 0 0; } 100% { background-position: 28px 0; } }
    </style>
    <script src="../assets/js/vue.js"></script>
    <div class="row loading" style="display:block">
        <div class="col-md-3"></div>
        <div class="col-md-6" style="margin-top:300px"><div class="bar"></div></div>
        <div class="col-md-3"></div>
    </div>
    <div id="content" style="display:none">
        <div class="row" >
                <div class="col-md-12">
                    <div class="widget" style="margin:0px;">
                        <div class="widget-header bg-blueberry">
                            <i class="widget-caption glyphicon glyphicon-user" style="float:left;margin-right:10px;"></i> 
                            <span class="widget-caption">患者资料信息</span>
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
                            <span class="widget-caption">所购试题</span>
                        </div>
                    </div>
                    <div class="widget-body">
                        <div style="width: 100%; margin: auto; text-align: center">
                            <div id="Test">
                                <table class="table table-bordered table-hover"  >
                                    <thead>
                                        <tr >
                                            <th>序号</th>
                                            <th>试题</th>
                                            <th>状态</th>
                                            <th>价格</th>
                                            <th></th>
                                            <th>删除</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr v-for="test in list">
                                            <td>{{test.Serial}}</td>
                                            <td >{{test.TestName}}</td>
                                            <td>{{test.IsFinished}}</td>
                                            <td>{{test.Price}}</td>
                                            <td><i v-if="!test.Finished" id="StartBtn" style="cursor:pointer;" class="glyphicon glyphicon-hand-right":data-test="test.TestGUID" :data-url="test.TestUrl" :data-Pguid="test.PatientGUID" onclick="Start(this)" ></i>
                                                <i v-if="test.Finished" id="ReportBtn"  style="cursor:pointer;"  class="glyphicon glyphicon-list-alt" :data-TestGUID="test.TestGUID"  :data-PatientGUID="test.PatientGUID"  :data-CatGUID="test.GUID"  onclick="Report(this)"></i>
                                            </td>
                                            <td> <i v-if="!test.Finished"   class="glyphicon glyphicon-remove" :data-id="test.ID" onclick="Delete(this)" style="cursor:pointer"></i></td>
                                        </tr>
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            
                                            <td colspan="6" >总价：{{count}}</td>
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
                //methods: {
                //    Start: function (val) {
                //        //alert(val);
                //        var Url = "Test_Start.aspx?TGUID=" + newsid +"&GUID="+ val;
                //        window.open(Url, '_blank', 'top=0,left=0,width=' + (screen.availWidth - 5) + ',height=' + (screen.availHeight - 50) + ',menubar=no,toolbar=no,location=no,directories=no,status=no,scrollbars=no,resizable=yes');

                //    }
                //}
            })
            if (newsname == "?TGUID") {
                ajax1();
                setTimeout("Show()", 500);
            } else if (newsname == "?GUID") {
                ajax2();
            } else {
                alert("请使用正确标识！");
            }
            function Start(e) {
                var testurl = e.getAttribute("data-url");
                var testguid = e.getAttribute("data-test");
                var Patientguid = e.getAttribute("data-Pguid");
                if (testurl == null) {
                    //alert(val);
                    var Url = "Test_Start.aspx?TGUID=" + newsid + "&GUID=" + testguid;
                    window.open(Url, '_blank', 'top=0,left=0,width=' + (screen.availWidth - 5) + ',height=' + (screen.availHeight - 50) + ',menubar=no,toolbar=no,location=no,directories=no,status=no,scrollbars=no,resizable=yes');

                }
                else {
                    var Url = "..\\"+testurl + "?GUID=" + Patientguid;
                    window.open(Url, '_blank');
                }
            }

            function Delete(e) {
                var id = e.getAttribute("data-id");
                $.ajax({
                    type: "post",
                    url: "Gtest.asmx/Delete",
                    data: { ID: id },
                    success: function (Nums) {
                     
                        ajax1();
                    },
                    error: function (Num) {
                        alert("删除失败");
                },
                });
            }
            function Report(e) {
                var TestGUID = e.getAttribute("data-TestGUID");
                var PatientGUID = e.getAttribute("data-PatientGUID");
                var CatGUID = e.getAttribute("data-CatGUID");
                var Url = "Psychological_Report.aspx?TestGUID=" + TestGUID + "&PatientGUID=" + PatientGUID + "&CatGUID=" + CatGUID;
                window.open(Url, '_blank');

            }
            function Show() {
                $(".loading").css("display", "none");
                $("#content").css("display", "block");
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
                            Vm.list = eval('(' + list + ')');
                          
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
</asp:Content>

