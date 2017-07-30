<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Psychological_Test.aspx.cs" Inherits="NewPage_Psychological_Test" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script src="../assets/js/vue.js"></script>
    <div class="tab-pane active">
        <div class="row">
            <div class="col-xs-12 col-md-12">
                <div class="widget" style="margin: 0px;">
                    <div class="widget-header bg-blueberry">
                        <i class="widget-icon fa fa-arrow-right"></i>
                        <span class="widget-caption" style="font-size: 15px;"><strong>心理测试</strong></span>
                    </div>

                    <div class="widget-body">
          
            
                    
                         <div class="col-md-12">
                                <p class="text-right"><a id="mp" data-toggle="modal" href="#example" class="btn btn-warning">选择病人</a></p> 
                            </div>
                        <div class="col-md-12">
                            <div id="Testlist">
                                <table class="table table-striped table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <th style="width:5%;">序</th>
                                            <th style="width:5%;"></th>
                                            <th>量表名称</th>
                                            <th>所属测试</th>
                                            <th>价格</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr v-for="test in testlist" v-on:click="clickTest(test.GUID)">
                                            <td>{{test.Serial}}</td>
                                            <td><input type="checkbox" name="Test" :value="test.GUID" /></td>
                                            <td style="text-align:left;"><a style="margin-left:15px" href="####">{{test.TestName}}</a></td>
                                            <td>{{test.Dimension1name}}</td>
                                            <td>{{test.Price}}</td>
                                        </tr>
                                    </tbody>
                                </table>
                            <br />
                            </div>

                        </div>

                        
                           

                    
                        <div style="clear:both"></div>
              
        


                 


                </div>
                    </div>
            </div>
        </div>
    </div>

        <div class="modal fade" id="example" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                            <div class="modal-dialog " id="Patientlist" role="document" style="width: 80%;">
                                <div class="modal-content" style="margin-top: 5%;">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        <h4 class="modal-title">选择病人</h4>
                                    </div>
                                    <div class="modal-body" style="padding: 25px 25px 0 25px;">
                                        <div class="row">
                                              <div class="form-group col-xs-3 col-md-3">
                                                <span class="input-icon" style="float:right">
                                                    <input type="text" placeholder="搜索..." class="form-control input-sm" v-model="Search" /> 
                                                    <i class="glyphicon glyphicon-search danger circular"></i>
                                                </span>
                                            </div>
                                            <div class="col-md-9">
                                                <span  id="AddBtn" onclick="AddBtn(this)"  class="btn btn-info" style="height:30px;float:left;margin-right:10px">新增新病人</span>
                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                                <p style="height:30px;float:left;margin-right:10px"><a id="ChangeBtn"  class="btn btn-info"> 修改信息</a></p>
                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                                <p style="float:left"><a id="StartBtn" class="btn btn-warning" style="height:30px;">开始测试</a></p>
                                                
                                            </div>
                                          
                                        </div>
                                        
                                        <div class="row">
                                            <div class="col-md-12">
                                                <br />
                                                <div>
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
                                                                <th>日期</th>
                                                                <th>就诊医生</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr v-for="patient in patientlist" v-on:click="clickPatient(patient.GUID)" >
                                                                <td>{{patient.Serial}}</td>
                                                                <td><input type="radio" name="Patient" :value="patient.GUID" /></td>
                                                                <td><a >{{patient.PatientName}}</a></td>
                                                                <td>{{patient.Sex}}</td>
                                                                <td>{{patient.Num1}}</td>
                                                                <td>{{patient.Phone1}}</td>
                                                                <td>{{patient.Marriage}}</td>
                                                                <td>{{patient.CDT}}</td>
                                                                <td>{{patient.DoctorName}}</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                <br />
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
    </style>

    <script>
            var lists = "";
            var Lists = "";
            var vm = new Vue({
                el: '#Testlist',
                data: {
                    testlist: [
                    ]
                },
                methods: {
                    clickTest: function (val) {
                        //alert(document.getElementById(val).nodeName)
                        var ch = document.getElementsByName("Test");
                        //alert(ch[1].id);

                        for (var i in ch) {
                            if (ch[i].value == val)
                                ch[i].checked = !ch[i].checked;
                        }
                        //$("input[name='Patient'").removeAttr("checked");
                        //$("#"+val).eq(0).attr("checked", "checked");

                    }
                }

            })
            var Pt = new Vue({
                el: '#Patientlist',
                data: {
                    Original: [
                    ],//原始
                    patientlist: [
                    ],
                    Search:""
                },
                watch: {
                    Search: function () {
                        if (Pt.Search.length > 0) {
                            i = Pt.Search.length;
                            var _this = this;
                            var tab = this['Original'];
                            if (this.Search) {
                                _this['patientlist'] = [];
                                for (i in tab) {
                                    if (tab[i].Serial == parseInt(_this.Search) || tab[i].PatientName.indexOf(_this.Search) >= 0 || tab[i].Phone1.indexOf(_this.Search) >= 0 || tab[i].Num1.indexOf(_this.Search) >= 0 || tab[i].Sex.indexOf(_this.Search) >= 0) {
                                        _this['patientlist'].push(tab[i]);
                                    };
                                }
                            }
                        }
                        if (i > 0 && Pt.Search.length == 0) {
                            Pt.patientlist = Pt.Original;
                        }
                    }
                },
                methods: {
                    clickPatient: function (val) {
                        //alert(document.getElementById(val).nodeName)
                        var ch = document.getElementsByName("Patient");
                        //alert(ch[1].id);
                        
                        for (var i in ch) {
                            if (ch[i].value == val)
                                ch[i].checked = !ch[i].checked;
                        }
                        //$("input[name='Patient'").removeAttr("checked");
                        //$("#"+val).eq(0).attr("checked", "checked");
                        
                    }
                }
            })
            ajax1();
            
            
            
            $("#example").on("show.bs.modal",function () {
                var data = "";
                var ch=document.getElementsByName("Test");
                for(var i in ch){
                    if (ch[i].checked) {
                        //data += "{"+ch[i].value + "},";
                        data += ch[i].value + '&';
                    }
                }
                //alert(data[data.length - 1]);
                if(data.length>0){
                    data = data.substring(0, data.length - 1);
                    //data += "]";
                    //alert(data);
                    ajax2();
                    $("#Tdata").text(data);
                    var ph=document.getElementsByName("Patient");
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
                //alert(Pdata.length);
                $("#Pdata").text(Pdata);
                if (Pdata.length > 0) {
                    ajax3();
                }
                else {
                    alert("请选择病人！");
                }
                
                //$("#SQL").text("INSERT INTO TestCart (GUID,PatientGUID,TestGUID,CDT,IsPaid,IsFinished) VALUES (" + guid + "," + Pdata + "," + Tdatalist[0] + ",2017-07-28,1,0)");
            })
            $("#ChangeBtn").click(function () {
                var Pdata = "";
                var ph = document.getElementsByName("Patient");
                for (var i in ph) {
                    if (ph[i].checked) {
                        Pdata += ph[i].value;
                    }
                }
                //alert(Pdata.length);
                if (Pdata.length > 0) {
                    window.open("../Patient_Info.aspx?GUID=" + Pdata);
                }
                else {
                    alert("请选择病人！");
                }

                //$("#SQL").text("INSERT INTO TestCart (GUID,PatientGUID,TestGUID,CDT,IsPaid,IsFinished) VALUES (" + guid + "," + Pdata + "," + Tdatalist[0] + ",2017-07-28,1,0)");
            })



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
                            vm.testlist = eval('(' + lists + ')');
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
                for (i = 0; i < vm.testlist.length; i++) {

                    vm.testlist[i].Serial = i + 1;
                }
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
                            Pt.patientlist = eval('(' + Lists + ')');
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
                    var a = Pt.Original[i].CDT;
                    var date = new Date(parseInt(a.slice(6)));
                    var result = date.getFullYear() + '年' + date.getMonth() + '月' + date.getDate() + '日';
                    //alert(result);
                    Pt.Original[i].CDT = result;
                    Pt.Original[i].Serial = i + 1;
                    Pt.patientlist[i].CDT = result;
                    Pt.patientlist[i].Serial = i + 1;

                }
                
            }
            function ajax3() {
                var Tdata = $("#Tdata").text();//"1,2,3"
                //Tdatalist = Tdata.split("&");
                var Pguid = $("#Pdata").text();
                var Url = "";
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

            $(document).ready(function () {


            });
            function AddBtn() {
                window.open("../Patient_Info.aspx");
            }
            
                
        </script>


</asp:Content>

