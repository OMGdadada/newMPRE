<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Psychological_Test.aspx.cs" Inherits="NewPage_Psychological_Test" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="../assets/js/vue.js"></script>
    <style>
        th{
             height:30px;
            text-align:center;
             padding: 0 1em 0;
        }
        td{
              height:30px;
             padding: 0 1em 0;
            text-align:center;
        }
       .Label {
            width:100px ;
        }
       .bar { 
           width: 100%;
           height: 20px;
           border: 1px solid #2980b9;
           border-radius: 3px;
           background-image: repeating-linear-gradient( -45deg, #2980b9, #2980b9 11px, #eee 10px, #eee 20px /* determines size */ );
           background-size: 28px 28px;
           animation: move .5s linear infinite;
           }
       @keyframes move {
           0%
           {
               background-position: 0 0;
           }
           100%
           {
               background-position: 28px 0;
           }
       }
    </style>
    <link href="assets/css/style.css" rel="stylesheet" />
    <style type="text/css">
        body, table {
            font-size: 12px;
        }

        table {
            table-layout: fixed;
            empty-cells: show;
            border-collapse: collapse;
            margin: 0 auto;
        }

        td {
            height: 40px;
        }

        .table {
            border: 1px solid #cad9ea;
            color: #666;
        }

            .table th {
                height: 40px;
                text-align: center;
            }

            .table td, .table th {
                border: 1px solid #cad9ea;
                padding: 0 1em 0;
            }

                .table th p {
                    line-height: 18px;
                    margin: auto;
                }

        @media(max-width:1199px) {
            .profile-container .profile-body .nav-tabs.tabs-flat {
                margin-top: 210px;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row loading" style="display:block">
        <div class="col-md-3"></div>
        <div class="col-md-6" style="margin-top:300px"><div class="bar"></div></div>
        <div class="col-md-3"></div>
    </div>
    <div id="content" style="display:none">
        <div class="tab-pane active">
            <div style="margin-top:-10px">
                <div class="row" id="Patient" v-if="CanShow">
                    <div class="col-md-12">
                        <div class="widget" style="margin:0px;">
                            <div class="widget-header bg-blueberry">
                                <i class="widget-icon fa fa-arrow-right"></i>
                                <span class="widget-caption">患者资料信息</span>
                                <div class="widget-buttons" >
                                    <a style="cursor:pointer" v-on:click="PatientInFo(list[0].GUID)">
                                        <i class="fa fa-edit" style="font-size: 13px;">修改</i>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="widget-body">
                            <div style="width: 100%; margin: auto; text-align: center">
                                <div >
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
                    <div class="col-xs-9 col-md-9">
                        <br />
                        <div class="tabbable">
                            <ul class="nav nav-tabs tabs-flat  nav-justified" id="myTab11" style="box-shadow: 0px -1px 5px 0px rgba(0,0,0,0.2);margin-bottom: -6px !important;background-color:#fbfbfb">
                                <li class="active">
                                    <a data-toggle="tab" href="#overview">心理测评系统
                                    </a>
                                </li>
                                <li class="tab-red">
                                    <a data-toggle="tab" href="#timeline" onclick="ajax5()">以往测评
                                    </a>
                                </li>
                                <li class="tab-palegreen">
                                    <a data-toggle="tab" id="contacttab" href="#contacts">报告单
                                    </a>
                                </li>
                            </ul>
                            <div class="tab-content tabs-flat" style=" margin-top:5px; padding: 0px; box-shadow: 0px 0 0px 0px rgba(256,256,256,.3);">
                                <div id="overview" class="tab-pane active">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="widget" style="margin: 0px;">
                                                <div class="widget-header bg-blue">
                                                    <i class="widget-icon fa fa-arrow-right"></i>
                                                    <span class="widget-caption" style="font-size: 15px;"><strong>心理测评系统</strong></span>
                                                </div>
                                            </div>
                                            <div class="widget-body">
                                                <div class="row" id="Testlist">
                                                    <div class="col-md-12">
                                                        <div class="row">
                                                            <div class="form-group col-xs-3 col-md-3">
                                                                <span class="input-icon" style="float:right">
                                                                    <input type="text" placeholder="搜索..." class="form-control input-sm" v-model="Search" /> 
                                                                    <i class="glyphicon glyphicon-search danger circular"></i>
                                                                </span>
                                                            </div>
                                                            <div class="col-md-9">
                                                                <p class="text-right">
                                                                    <a v-if="CanShow" id="mp" data-toggle="modal" href="#example" class="btn btn-warning">选择患者</a>
                                                                    <a v-if="!CanShow" id="Start_Btn" class="btn btn-warning">开始测试</a>
                                                                </p>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <div class="pull-right">
                                                                    <span>总共：{{testlistt.length}}条记录，每页显示：
                                                                        <select v-model="Row">
                                                                            <option value="5">5</option>
                                                                            <option value="10">10</option>
                                                                            <option value="20">20</option>
                                                                            <option value="50">50</option>
                                                                        </select>
                                                                        条记录，共{{Math.ceil(testlistt.length/Row)}}页
                                                                    </span>
                                                                </div>
                                                                <br />
                                                                <br />
                                                                <br />
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <table class="table table-striped table-bordered table-hover">
                                                                    <thead>
                                                                        <tr>
                                                                            <th style="width:80px;">序</th>
                                                                            <th style="width:30px;"></th>
                                                                            <th>量表名称</th>
                                                                            <th style="width:240px;">所属测试</th>
                                                                            <th style="width:80px;">价格</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody>
                                                                        <tr v-for="test in testlist" v-on:click="clickTest(test.GUID)">
                                                                            <td>{{test.Serial}}</td>
                                                                            <td><input type="checkbox" name="Test" :value="test.GUID" onclick="event.stopPropagation(); " v-on:click="click(test.Serial)" /></td>
                                                                            <td><a href="####">{{test.TestName}}</a></td>
                                                                            <td>{{test.Dimension1name}}</td>
                                                                            <td>{{test.Price}}</td>
                                                                        </tr>
                                                                    </tbody>
                                                                </table>
                                                                <br />
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <div class="pages">
                                                                    <a class="pages" v-on:click="JumpPage(first)" style="cursor:pointer">首页</a>
                                                                    <a class="pages" v-on:click="JumpPage(up)" style="cursor:pointer">上一页</a>
                                                                    <span v-for="pages in Page" >
                                                                        <a v-if="!pages.Isthis" class="pages" v-on:click="JumpPage(pages.val)" style="cursor:pointer">{{pages.page}}</a>
                                                                        <span v-if="pages.Isthis" class="cpb" style="margin-right:5px;">{{pages.page}}</span>
                                                                    </span>
                            
                                                                    <a class="pages" v-on:click="JumpPage(next)" style="cursor:pointer">下一页</a>
                                                                    <a class="pages" v-on:click="JumpPage(last)" style="cursor:pointer">尾页</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <br />
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div id="timeline" class="tab-pane">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="widget" style="margin: 0px;">
                                                <div class="widget-header bg-red">
                                                    <i class="widget-icon fa fa-arrow-right"></i>
                                                    <span class="widget-caption" style="font-size: 15px;"><strong>以往测评</strong></span>
                                                </div>
                                            </div>
                                            <div class="widget-body">
                                                <div class="row" id="TestCarts">
                                                    <div class="col-md-12">
                                                        <div class="row">
                                                            <div class="form-group col-xs-3 col-md-3">
                                                                <span class="input-icon" style="float:right">
                                                                    <input type="text" placeholder="搜索..." class="form-control input-sm"/> 
                                                                    <i class="glyphicon glyphicon-search danger circular"></i>
                                                                </span>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <table class="table table-striped table-bordered table-hover">
                                                                    <thead>
                                                                        <tr>
                                                                            <th style="width:80px;">序</th>
                                                                            <th style="width:120px;">购买时间</th>
                                                                            <th>所属患者</th>
                                                                            <th style="width:120px;">测试情况</th>
                                                                            <th style="width:120px;">测试数量</th>
                                                                            <th style="width:80px;"></th>
                                                                            <th style="width:80px;">删除</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody>
                                                                        <tr v-for="test in TestCarts">
                                                                            <td>{{test.Serial}}</td>
                                                                            <td>{{test.CDT}}</td>
                                                                            <td>{{test.PatientName}}</td>
                                                                            <td>{{test.Situation}}</td>
                                                                            <td>{{test.row}}</td>
                                                                            <td><i id="Into_Btn" style="cursor:pointer;" class="glyphicon glyphicon-hand-right" v-on:click="Into(test.GUID)" ></i></td>
                                                                            <td><i v-if="test.Situation !='已完成'"   class="glyphicon glyphicon-remove" style="cursor:pointer" v-on:click="Del(test.GUID)"></i></td>
                                                                        </tr>
                                                                    </tbody>
                                                                </table>
                                                                <br />
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <div id="contacts" class="tab-pane">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="widget" style="margin: 0px;">
                                                <div class="widget-header bg-green">
                                                    <i class="widget-icon fa fa-arrow-right"></i>
                                                    <span class="widget-caption" style="font-size: 15px;"><strong>报告单</strong></span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <br />
                    </div>
                    <div class="col-md-3">
                        <br />
                        <div class="widget" style="margin: 0px;margin-top:35px">
                            <div id="head" class="widget-header bg-gray">
                                <i class="widget-icon fa fa-arrow-right"></i>
                                <span class="widget-caption" style="font-size: 15px;"><strong>已选测试</strong></span>
                            </div>
                        </div>
                        <div class="widget-body">
                            <div id="TestCart" class="row">
                                <div class="col-md-12">
                                    <table class="table table-bordered table-hover">
                                        <thead>
                                            <tr>
                                                <th style="width:32px;">序</th>
                                                <th style="width:100px;">已选测试</th>
                                                <th style="width:50px;">价格</th>
                                                <th style="width:30px;"></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr v-for="test in Testlist">
                                                <th>{{test.SSerial}}</th>
                                                <th>{{test.TestName}}<input type="checkbox" name="TestCart" :value="test.GUID" style="display:none" checked="checked" /></th>
                                                <th>{{test.Price}}</th>
                                                <th><i id="FinishBtn" class="glyphicon glyphicon-remove" v-on:click="Del(test.SSerial)" ></i></th>
                                            </tr>
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <th colspan="4">总价：{{count}}</th>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <br />
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="example" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                        <div class="modal-dialog " id="Patientlist" role="document" style="width: 800px;">
                            <div class="modal-content" style="margin-top: 5%;">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title">选择患者</h4>
                                </div>
                                <div class="modal-body" style="padding: 25px 25px 0 25px;">
                                    <div class="row">
                                        <div class="col-md-9">
                                            <input type="submit" name="AddBtn" value="新增新病人" id="AddBtn" class="btn btn-info" style="height:30px;float:left;margin-right:10px"/>
                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                            <input type="submit" name="ChangeBtn" value="修改信息" id="ChangeBtn" class="btn btn-info" style="height:30px;float:left;margin-right:10px"/>
                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                            <p style="float:left"><a id="StartBtn" class="btn btn-warning" style="height:30px;">开始测试</a></p>
                                        </div>
                                        <div class="form-group col-xs-3 col-md-3">
                                            <span class="input-icon" style="float:right">
                                                <input type="text" placeholder="搜索..." class="form-control input-sm" v-model="Search" />
                                                <i class="glyphicon glyphicon-search danger circular"></i>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <br />
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                                <table class="table table-striped table-bordered table-hover">
                                                <thead>
                                                    <tr>
                                                        <th style="width:30px;">序</th>
                                                        <th style="width:30px;"></th>
                                                        <th>患者姓名</th>
                                                        <th>性别</th>
                                                        <th>门诊号</th>
                                                        <th>联系电话</th>
                                                        <th>婚姻状况</th>
                                                        <th>出生日期</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr v-for="patient in patientlist" v-on:click="clickPatient(patient.GUID)" >
                                                        <td>{{patient.Serial}}</td>
                                                        <td><input type="radio" name="Patient" :value="patient.GUID" onclick="event.stopPropagation();"/></td>
                                                        <td><a >{{patient.PatientName}}</a></td>
                                                        <td>{{patient.Sex}}</td>
                                                        <td>{{patient.Num1}}</td>
                                                        <td>{{patient.Phone1}}</td>
                                                        <td>{{patient.Marriage}}</td>
                                                        <td>{{patient.Birthday}}</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                            <br />
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="pages">
                                                <a class="pages" v-on:click="JumpPage(first)" style="cursor:pointer">首页</a>
                                                <a class="pages" v-on:click="JumpPage(up)" style="cursor:pointer">上一页</a>
                                                <span v-for="pages in Page" >
                                                    <a v-if="!pages.Isthis" class="pages" v-on:click="JumpPage(pages.val)" style="cursor:pointer">{{pages.page}}</a>
                                                    <span v-if="pages.Isthis" class="cpb" style="margin-right:5px;">{{pages.page}}</span>
                                                </span>
                            
                                                <a class="pages" v-on:click="JumpPage(next)" style="cursor:pointer">下一页</a>
                                                <a class="pages" v-on:click="JumpPage(last)" style="cursor:pointer">尾页</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row" style="display:none">
                                        <div class="col-md-12">
                                            <label id="Tdata"></label>
                                        </div>
                                        <div class="col-md-12">
                                            <label id="Pdata"></label>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
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
        var i = 0;
        var x = 0;
        var list = "";
        var Lists = "";
        var List = "";
        var Ptt = new Vue({
            el: '#Patient',
            data: {
                list: [],
                CanShow: false
            },
            methods:{
                PatientInFo: function (val) {
                    var Url = "../Patient_Info.aspx?GUID=" + val;
                    window.open(Url, '_blank');
                }
            }
        })
        var vm = new Vue({
            el: '#Testlist',
            data: {
                tl: [
                ],//原始
                testlistt: [
                ],//处理过的
                testlist: [
                ],//分页后
                Search: '',//搜索框内容
                Row: 50,//初始行数
                Page: [],
                first: 1,
                last: 0,
                next: 0,
                up: 0,
                current: 0,
                col: 10,
                CanShow: true
            },
            watch: {
                Search: function () {
                    if (vm.Search.length > 0) {
                        i = vm.Search.length;
                        var _this = this;
                        var tab = this['tl'];
                        if (this.Search) {
                            _this['testlistt'] = [];
                            _this['testlist'] = [];
                            for (i in tab) {
                                if (tab[i].Serial == parseInt(_this.Search) || tab[i].TestName.indexOf(_this.Search) >= 0) {
                                    _this['testlistt'].push(tab[i]);
                                };
                            }
                        }
                    }
                    vm.Page = [];
                    if (i > 0 && vm.Search.length == 0) {
                        vm.testlistt = vm.tl;
                    }
                    vm.current = 0;
                },
                Row: function () {
                    vm.current = 0;
                },
                current: function () {
                    if (this.current <= 0) {
                        vm.current = 1;
                        return;
                    }
                    if (vm.current > Math.ceil(vm.testlistt.length / vm.Row)) {
                        //alert("数据超出引索范围！");
                        vm.current = 1;
                        return;
                    }
                    vm.testlist = [];
                    vm.Page = [];
                    for (x = Math.floor(vm.current - 1 / vm.col) * vm.Row; x < (Math.ceil(vm.current - 1 / vm.col) * vm.Row > vm.testlistt.length ? vm.testlistt.length : Math.ceil(vm.current - 1 / vm.col) * vm.Row) ; x++) {
                        vm.testlist.push(vm.testlistt[x]);
                    }
                    for (x = 0; x <= (Math.ceil(vm.testlistt.length / vm.Row) - (Math.floor((vm.current - 1) / vm.col) * vm.col) > vm.col ? vm.col + 1 : (Math.ceil(vm.testlistt.length / vm.Row) - (Math.floor((vm.current - 1) / vm.col) * vm.col))) ; x++) {

                        if (x == 0) {
                            if (vm.current < (vm.col + 1));
                            else {
                                vm.Page.push({ "page": "...", "Isthis": false, "val": Math.floor((vm.current - 1) / vm.col) * vm.col });
                            }
                        } else if (x == vm.current % vm.col || (x == vm.col && (vm.current % vm.col) == 0 && vm.current != 0)) {
                            vm.Page.push({ "page": "" + vm.current + "", "Isthis": true, "val": Math.floor((vm.current - 1) / vm.col) * vm.col + x });
                        }
                        else if (x == (vm.col + 1)) {
                            //alert(Math.ceil((vm.current) / 5) * vm.Row + 1);
                            vm.Page.push({ "page": "...", "Isthis": false, "val": Math.ceil(vm.current / vm.col) * vm.col + 1 });
                        } else {
                            vm.Page.push({ "page": "" + (Math.floor((vm.current - 1) / vm.col) * vm.col + x) + "", "Isthis": false, "val": Math.floor((vm.current - 1) / vm.col) * vm.col + x });
                        }
                    }
                    vm.last = Math.ceil(vm.testlistt.length / vm.Row);
                    vm.next = vm.current >= vm.testlistt.length ? vm.testlistt.length : vm.current + 1;
                    vm.up = vm.current == 1 ? 1 : vm.current - 1;
                    ch();
                }
            },
            methods: {
                JumpPage: function (val) {
                    if (val >= Math.ceil(vm.testlistt.length / vm.Row) && vm.current == Math.ceil(vm.testlistt.length / vm.Row) && val != 1) {
                        alert("已经是最后一页了");
                        return;
                    } else if (val == 1 && vm.current == 1) {
                        alert("已经是第一页了");
                        return;
                    }
                    vm.current = 0;
                    vm.current = val;
                },

              
                
           

                clickTest: function (val) {
                    var ch = document.getElementsByName("Test");
                    for (var i in ch) {
                        if (ch[i].value == val) {
                            ch[i].checked = !ch[i].checked;
                            if (ch[i].checked) {
                                Tc.Testlist.push(vm.testlist[i]);
                            } else {
                                for (var x in Tc.Testlist) {
                                    if (Tc.Testlist[x].GUID == val)
                                        Tc.Testlist.splice(x, 1);
                                }
                            }
                        }
                    }
                },
                click: function (val) {
                    var ch = document.getElementsByName("Test");
                    for (var i in ch) {
                        if (i == val - 1) {
                            if (ch[i].checked) {
                                Tc.Testlist.push(vm.testlist[i]);
                            } else {
                                for (var x in Tc.Testlist) {
                                    if (Tc.Testlist[x].GUID == vm.testlist[i].GUID)
                                        Tc.Testlist.splice(x, 1);
                                }
                            }
                        }
                    }
                }
            }
        })
        var Pt = new Vue({
            el: '#Patientlist',
            data: {
                Original: [
                ],//原始
                patientlistt: [
                ],
                patientlist: [
                ],
                Search: "",
                Row: 10,//初始行数
                Page: [],
                first: 1,
                last: 0,
                next: 0,
                up: 0,
                current: 0,
                col: 10,
            },
            watch: {
                Search: function () {
                    if (Pt.Search.length > 0) {
                        i = Pt.Search.length;
                        var _this = this;
                        var tab = this['Original'];
                        if (this.Search) {
                            _this['patientlistt'] = [];
                            _this['patientlist'] = [];

                            for (i in tab) {
                                if (tab[i].Serial == parseInt(_this.Search) || tab[i].PatientName.indexOf(_this.Search) >= 0 || tab[i].Phone1.indexOf(_this.Search) >= 0 || tab[i].Num1.indexOf(_this.Search) >= 0 || tab[i].Sex.indexOf(_this.Search) >= 0) {
                                    _this['patientlistt'].push(tab[i]);
                                };
                            }
                        }
                    }
                    if (i > 0 && Pt.Search.length == 0) {
                        Pt.patientlistt = Pt.Original;
                    }
                    Pt.Page = [];
                    Pt.current = 0;
                },
                Row: function () {
                    this.current = 0;
                },
                current: function () {
                    if (this.current <= 0) {
                        this.current = 1;
                        return;
                    }

                    if (this.current > Math.ceil(this.patientlistt.length / this.Row)) {
                      //  alert("数据超出引索范围！");
                        this.current = 1;
                        return;
                    }
                    this.patientlist = [];
                    this.Page = [];
                    for (x = Math.floor(this.current - 1 / this.col) * this.Row; x < (Math.ceil(this.current - 1 / this.col) * this.Row > this.patientlistt.length ? this.patientlistt.length : Math.ceil(this.current - 1 / this.col) * this.Row) ; x++) {
                        this.patientlist.push(this.patientlistt[x]);
                    }
                    for (x = 0; x <= (Math.ceil(this.patientlistt.length / this.Row) - (Math.floor((this.current - 1) / this.col) * this.col) > this.col ? this.col + 1 : (Math.ceil(this.patientlistt.length / this.Row) - (Math.floor((this.current - 1) / this.col) * this.col))) ; x++) {

                        if (x == 0) {
                            if (this.current < (this.col + 1));
                            else {
                                this.Page.push({ "page": "...", "Isthis": false, "val": Math.floor((this.current - 1) / this.col) * this.col });
                            }
                        } else if (x == this.current % this.col || (x == this.col && (this.current % this.col) == 0 && this.current != 0)) {
                            this.Page.push({ "page": "" + this.current + "", "Isthis": true, "val": Math.floor((this.current - 1) / this.col) * this.col + x });
                        }
                        else if (x == (this.col + 1)) {
                            //alert(Math.ceil((vm.current) / 5) * vm.Row + 1);
                            this.Page.push({ "page": "...", "Isthis": false, "val": Math.ceil(this.current / this.col) * this.col + 1 });
                        } else {
                            this.Page.push({ "page": "" + (Math.floor((this.current - 1) / this.col) * this.col + x) + "", "Isthis": false, "val": Math.floor((this.current - 1) / this.col) * this.col + x });
                        }
                    }
                    this.last = Math.ceil(this.patientlistt.length / this.Row);
                    this.next = this.current >= this.patientlistt.length ? this.patientlistt.length : this.current + 1;
                    this.up = this.current == 1 ? 1 : this.current - 1;
                }
            },
            methods: {
                clickPatient: function (val) {
                    var ch = document.getElementsByName("Patient");

                    for (var i in ch) {
                        if (ch[i].value == val)
                            ch[i].checked = !ch[i].checked;
                    }
                }, JumpPage: function (val) {

                    if (val >= Math.ceil(this.patientlistt.length / this.Row) && this.current == Math.ceil(this.patientlistt.length / this.Row) && val != 1) {
                        alert("已经是最后一页了");
                        return;
                    } else if (val == 1 && this.current == 1) {
                        alert("已经是第一页了");
                        return;
                    }
                    this.current = 0;
                    this.current = val;

                }
            }
        })
        var Tc = new Vue({
            el: '#TestCart',
            data: {
                Testlist: [],
                count: 0
            },
            watch: {
                Testlist: function () {
                    if (this.Testlist.length > 0) {
                        $("#head").removeClass("bg-gray");
                        $("#head").addClass("bg-gold");
                    } else {
                        $("#head").removeClass("bg-gold");
                        $("#head").addClass("bg-gray");
                    }
                    this.count = 0;
                    for (z in Tc.Testlist) {
                        Tc.Testlist[z].SSerial = parseInt(z) + 1;
                        Tc.count += Tc.Testlist[z].Price;
                    }
                }
            },
            methods: {
                Del: function (val) {
                    val -= 1;
                    var x = 0;
                    for (x in vm.testlist) {
                        if (vm.testlist[x].GUID == Tc.Testlist[val].GUID)
                            break;
                    }
                    var ch = document.getElementsByName("Test");
                    ch[x].checked = false;

                    this.Testlist.splice(parseInt(val), 1);
                }
            }
        })

        var TC = new Vue({
            el: "#TestCarts",
            data: {
                TestCarts: [],
            },
            methods: {
                Into: function (val) {
                    var Url = "TestCart.aspx?TGUID=" + val;
                    window.open(Url, '_blank');
                },
                Del: function (val) {
                    $.ajax({
                        type: "post",
                        url: "Gtest.asmx/DelTestCart", //服务端处理程序   
                        data: { "TGUID": val },
                        dataType: 'xml', //返回的类型为XML ，和前面的Json，不一样了
                        async: false,//设置为同步操作就可以给全局变量赋值成功 
                        success: function (Nums) {
                            try {
                                var Text = $(Nums).find("string").text();
                                alert(Text);
                                ajax5();
                                
                                
                            }
                            catch (e) {
                                alert(e);
                                return;
                            }
                        },
                        error: function (Num) {
                            alert("出现错误，删除失败！");
                            console.log('0');
                        },
                    })
                }
            }
        })


        if (newsname == "?GUID") {
            ajax4();
            vm.CanShow = false;
            Ptt.CanShow = true;
        } else {
            newsid = "NULL";
        }
        ajax1();
        ajax5();
        setTimeout("Show()", 500);
        function Show() {
            $(".loading").css("display", "none");
            $("#content").css("display", "block");
        }
        $("#example").on("show.bs.modal", function () {
            var data = "";
            var ch = document.getElementsByName("TestCart");
            for (var i in ch) {
                if (ch[i].checked) {
                    data += ch[i].value + '&';
                }
            }
            if (data.length > 0) {
                data = data.substring(0, data.length - 1);
                ajax2();
                $("#Tdata").text(data);
                var ph = document.getElementsByName("Patient");
                for (var i in ph) {
                    ph[i].checked = false;
                }
                $("#Pdata").text("");
            }
            else {
                alert("未选择测试量表");
                this.modal({ show: false });
            }

        })
        $("#StartBtn").click(function () {
            var Pdata = "";
            var ph = document.getElementsByName("Patient");
            for (var i in ph) {
                if (ph[i].checked) {

                    Pdata += ph[i].value;
                }
            }
            $("#Pdata").text(Pdata);
            if (Pdata.length > 0) {
                ajax3($("#Tdata").text(), $("#Pdata").text());
            }
            else {
                alert("请选择病人！");
            }
        })
        $(document).ready(function () {
            $("#Start_Btn").click(function () {
                //alert("1");
                var Pdata = newsid;
                var Tdata = "";
                var ch = document.getElementsByName("TestCart");
                for (var i in ch) {
                    if (ch[i].checked) {
                        Tdata += ch[i].value + '&';
                    }
                }
                if (Tdata.length <= 0) {
                    alert("未选择测试量表");
                } else if (Pdata.length <= 0) {
                    alert("未选择病人");
                } else {
                    ajax3(Tdata, Pdata);
                }
            })
        });

        function ch() {
            var ch = document.getElementsByName("Test");
            if (ch.length != vm.testlist.length) {
                setTimeout("ch()", 20);
                return;
            }
            for (var a in vm.testlist) {
                ch[a].checked = false;

            }

            for (var z in Tc.Testlist) {
                for (var a in vm.testlist) {
                    if (Tc.Testlist[z].GUID == vm.testlist[a].GUID) {
                        ch[a].checked = true;
                        break;
                    }

                }
            }
        }
        function ajax1() {
            $.ajax({
                type: "post",
                url: "Gtest.asmx/GetTestlist", //服务端处理程序   
                data: {},
                dataType: 'xml', //返回的类型为XML ，和前面的Json，不一样了
                async: false,//设置为同步操作就可以给全局变量赋值成功 
                success: function (Nums) {
                    try {
                        lists = $(Nums).find("string").text();
                        vm.tl = eval('(' + lists + ')');
                        vm.testlistt = eval('(' + lists + ')');
                        //vm.testlist = eval('(' + lists + ')');
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
            for (x = 0; x < vm.testlist.length; x++) {
                vm.tl[x].Serial = x + 1;
                vm.testlistt[x].Serial = x + 1;
            }
            for (x = 0; x < (vm.Row > vm.testlistt.length ? vm.testlistt.length : vm.Row) ; x++) {
                vm.testlist.push(vm.testlistt[x]);
            }
            vm.current = 1;
        }
        function ajax2() {
            $.ajax({
                type: "post",
                url: "Gtest.asmx/GetPatientlist", //服务端处理程序   
                data: {},
                dataType: 'xml', //返回的类型为XML ，和前面的Json，不一样了
                async: false,//设置为同步操作就可以给全局变量赋值成功 
                success: function (Nums) {
                    try {
                        Lists = $(Nums).find("string").text();
                        //alert(Lists);
                        Pt.Original = eval('(' + Lists + ')');
                        Pt.patientlistt = eval('(' + Lists + ')');
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
            for (i = 0; i < Pt.Original.length; i++) {
                var a = Pt.Original[i].Birthday;
                var date = new Date(parseInt(a.slice(6)));
                var result = date.getFullYear() + '年' + date.getMonth() + '月' + date.getDate() + '日';
                //alert(result);
                Pt.Original[i].Birthday = result;
                Pt.Original[i].Serial = i + 1;
                Pt.patientlistt[i].Birthday = result;
                Pt.patientlistt[i].Serial = i + 1;

            }
            Pt.current = 1;
        }
        function ajax3(Tdata, Pguid) {
            var Url = "";
           // Tdata = Tdata.substring(0, Tdata.length - 1);
            $.ajax({
                type: "post",
                url: "Gtest.asmx/Insert", //服务端处理程序   
                data: { "Pguid": Pguid, "Tdata": Tdata },
                dataType: 'xml', //返回的类型为XML ，和前面的Json，不一样了
                async: false,//设置为同步操作就可以给全局变量赋值成功 
                success: function (Nums) {
                    try {
                        Url = $(Nums).find("string").text();
                        location.href = Url;
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
        }
        function ajax4() {
            $.ajax({
                type: "post",
                url: "Gtest.asmx/Get_Patient", //服务端处理程序   
                data: { "PGUID": newsid },
                dataType: 'xml', //返回的类型为XML ，和前面的Json，不一样了
                async: false,//设置为同步操作就可以给全局变量赋值成功 
                success: function (Nums) {
                    try {

                        List = $(Nums).find("string").text();
                        //alert(List);
                        Ptt.list = eval('(' + List + ')');
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
            var a = Ptt.list[0].Birthday;
            var date = new Date(parseInt(a.slice(6)));
            var result = date.getFullYear() + '年' + date.getMonth() + '月' + date.getDate() + '日';
            //alert(result);
            Ptt.list[0].Birthday = result;
        }
        function ajax5() {
            $.ajax({
                type: "post",
                url: "Gtest.asmx/GetTestCart", //服务端处理程序   
                data: { "PGUID": newsid },
                dataType: 'xml', //返回的类型为XML ，和前面的Json，不一样了
                async: false,//设置为同步操作就可以给全局变量赋值成功 
                success: function (Nums) {
                    try {
                        
                        list = $(Nums).find("string").text();
                        //alert(list);
                        TC.TestCarts = eval('(' + list + ')');
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
            for (x = 0; x < TC.TestCarts.length; x++) {
                TC.TestCarts[x].Serial = x + 1;
                var a = TC.TestCarts[x].CDT;
                var date = new Date(parseInt(a.slice(6)));
                var result = date.getFullYear() + '年' + date.getMonth() + '月' + date.getDate() + '日';
                TC.TestCarts[x].CDT = result;
                
            }
        }


        </script>


</asp:Content>

