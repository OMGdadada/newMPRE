<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Test_Start.aspx.cs" Inherits="NewPage_Test_Start" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="../assets/css/beyond.min.css" />
    <link rel="stylesheet" href="../assets/css/font-awesome.min.css" />
    <script src="../assets/js/vue.js"></script>
    <script src="../assets/js/jquery-2.0.3.min.js"></script>
    <script src="../assets/js/bootstrap.min.js"></script>
    <style>
        input[type="radio"]{
            vertical-align: middle;
            padding: 0; 
            margin: 0; 
            border: 0;
            position:absolute;
            opacity:0 !important;
        }
        input[type="checkbox"]{
            vertical-align: middle;
            padding: 0; 
            margin: 0; 
            border: 0;
            position:absolute;
            opacity:0 !important;
        }
        .jqRadio {
        position: absolute;
        top: 0;
        bottom: 0;
        left: 0px;
        margin: auto;
        display: inline-block;
        width: 18px;
        height: 16px;
        cursor: auto;
        vertical-align: middle;
        background:transparent url(/images/radio.gif) no-repeat;
        zoom:0.8;
        }        
        .jqChecked {
            background-position:0 -16px;
        }
        .Label {
            cursor: pointer ;
            text-indent:20px ;
            width:1920px  ;
            color:#000000;
            text-align:left;
            display: inline-block;
        }
        #Ul { 
            list-style-type: none;
            padding:0;
            margin:0;
        }
        #Ul input {
        top: 0;
        bottom: 0;
        left: 40px;
        margin: auto; /* 这里及以上的定位，可以让该元素竖直居中。(top: 0; bottom: 0;) */
        opacity: 0;
        display: block;
        width: 30px;
        height: 30px;
        cursor: pointer;
        }
        .Li{
            position: relative;
            height: 30px;
            line-height: 30px;
        }
        .Li:hover{
            background:rgb(239,239,239);
        }
        .TestListbox{
            width:37px;
            height:37px;
            line-height:35px;
            border:2px #2980b9 solid ;
            text-align:center;
            float:left;
            margin-left:17px;
            margin-bottom:12px;
        }
        .TestListbox :hover{
            background-color:#f0f7ff;
        }
        .Finished{
            background-color:#2980b9;
            color:#eee;
        }
        .skip{
            border:2px #808080 solid ;
            background-color:#808080;
            
        }
    </style>
    <style>
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
    <script> 
        
    </script> 
</head>
<body style="zoom:1.3;font-family: 宋体 ,Microsoft Yahei, 微软雅黑, arial, sans-serif;font-size: 13px;">
    <form id="form1" runat="server">
        <div class="row loading" style="display:block">
            <div class="col-md-3"></div>
            <div class="col-md-6" style="margin-top:300px"><div class="bar"></div></div>
            <div class="col-md-3"></div>
        </div>
        <div id="content" style="display:none">
            <div class="navbar" id="Patient">
                <div class="navbar-inner">
                    <div class="navbar-container" style="max-width:960px;margin:0 auto 0;color:#fff;line-height:3;font-size:15px">
                        <div class="row">
                            <div class="col-lg-3 col-sm-3 col-xs-3" style="overflow: hidden;white-space: nowrap;text-overflow: ellipsis;">
                                <i class="fa fa-user"></i>
                                姓名：<span>{{list[0].PatientName}}</span>
                            </div>
                            <div class="col-lg-3 col-sm-3 col-xs-3" style="overflow: hidden;white-space: nowrap;text-overflow: ellipsis;">
                                <i class="fa fa-strikethrough"></i>
                                性别：<span>{{list[0].Sex}}</span>
                            </div>
                            <div class="col-lg-3 col-sm-3 col-xs-3" style="overflow: hidden;white-space: nowrap;text-overflow: ellipsis;">
                                <i class="fa fa-credit-card"></i>
                                卡号：<span>{{list[0].Num1}}</span>
                            </div>
                            <div class="col-lg-3 col-sm-3 col-xs-3" style="overflow: hidden;white-space: nowrap;text-overflow: ellipsis;">
                                <i class="fa fa-clock-o"></i>
                                时间：<span id="xs">00</span>:<span id="tt">00</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-2" style="width:17%;margin-left:20px;margin-top:8px">
                    <div id="TestList" class="widget flat radius-bordered" style="-webkit-box-shadow:1px 0 10px 1px rgba(0,0,0,.3);display:none">
                        <div  class="Testbox" >
                            <div class="widget-body bordered-bottom bordered-darkorange" >
                                <div class="row">
                                    <div v-for="item in list" class="TestListbox" v-on:click="Jump(item.Serial)" style="cursor:pointer;">
                                        <span>{{item.Serial}}</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-8">
                        <div class="page-body" style="max-width:960px;margin:0 auto 0;padding:7px 0 24px">
                        <div class="widget flat radius-bordered" style="-webkit-box-shadow:1px 0 10px 1px rgba(0,0,0,.3)">
                            <div id="Hands" class="Hands" style="display:block">
                                <div id="banner" style="background:url(../assets/img/logo.jpg);width:100%;height:140px;line-height:140px;font-size:70px;color:#fff;font-family:黑体" class="text-center">
                                    <span>{{list[0].TestName}}</span>
                                </div>
                                <div class="widget-header bordered-bottom bordered-blue" style="background:#f0f7ff">
                                    <div style="text-align:left;padding-top:10px;">
                                        <p style="font-weight:bold;width:100%;text-align:center;zoom:2.5"><span>请仔细阅读测试说明,确认后开始测试：</span></p>
                                        <p style="min-height:110px;zoom:2">
                                            <span>{{list[0].Description}}</span>
                                        </p>
                                        <p style="width:100%;text-align:center;zoom:2"><span id="Start_Btn" class="btn btn-info login" runat="server" >开始测试</span>
                                
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div id="Testbox" class="Testbox" style="display:none">
                                <div class="widget-body bordered-bottom bordered-darkorange" >
                                    <div class="widget" style="-webkit-box-shadow:1px 0 10px 1px rgba(0,0,0,.3)">
                                        <div class="widget-header bg-blue" style="zoom:1.5" >
                                            <i class="widget-icon fa fa-arrow-right"></i>
                                            <span class="widget-caption" >阅读下面题目，并回答问题</span>
                                            <span class="widget-caption" style="float:right;margin-right:10px">
                                                {{list[0].QuestionSerial}}/
                                                {{All}}
                                            </span>
                                        </div>
                                        <div class="widget-body" style="zoom:1.5">
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div style="float:left;text-indent: 2em;">
                                                        <label id="QuestionSerial">{{list[0].QuestionSerial}}</label>
                                                    </div>
                                                    <div style="text-indent: 7px;">
                                                        <span id="QuestionText"></span>
                                                    </div>
                                                    <label id="QuestionType" style="display:none">{{list[0].QuestionType}}</label>
                                                    <br />
                                                </div></div>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <ul id="Ul">
                                                        <li class="Li" v-for="item in list" >
                                                            <a href="javasript:void(0)" class="jqRadio"></a>
                                                            <input type="radio" :name="'q'+item.QuestionSerial+''" :value="item.Score" :id="'q'+item.QuestionSerial+item.Serial+''"/>
                                                            <label class="Label" :for="'q'+item.QuestionSerial+item.Serial+''">
                                                                <label>{{item.Serial}}</label>
                                                                <label>{{item.ItemText}}
                                                                    <label>
                                                                        <textarea v-if="item.HasTextBox" :id="'Item'+item.Serial+''"  style="height:15px;resize: none;"></textarea>
                                                                    </label>
                                                                </label>
                                                            </label>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <button v-if="list[0].QuestionSerial!=1" type="button" :value="list[0].QuestionSerial" class="btn btn-info login pull-left" onclick="Up(this)">上一页</button>
                                            <button v-if="list[0].QuestionSerial!=All" type="button" :value="list[0].QuestionSerial" class="btn btn-info login pull-right" onclick="Next(this)">下一页</button>
                                            <button v-if="list[0].QuestionSerial==All" type="button" :value="list[0].QuestionSerial" class="btn btn-warning login pull-right" onclick="OK()">提交</button>
                                        </div>
                                    </div>
                        
                                </div>
                    
                            </div>
                        </div>
                    </div>
                </div>
                
            </div>
            <div id="Answer" style="display:none">
            
            </div>
        </div>
        <footer id="footer">
            <!-- Lower Footer -->
            <div id="lower-footer">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <div class="footer">
                            <p>版权所有<span style="font-size:14px; font-family:Verdana;">©</span>2016 广州康泽医疗有限公司&nbsp;&nbsp;&nbsp;&nbsp;技术支持：020-85537930</p>
                        </div>
                    </div>
                </div>

            </div>
            <!-- /Lower Footer -->
        </footer>
        <script>
            var list = "";
            var lists = "";
            urlinfo = window.location.href; //获取当前页面的url
            len = urlinfo.length;//获取url的长度
            offset = urlinfo.indexOf("?");//设置参数字符串开始的位置
            newsidinfo = urlinfo.substr(offset, len)//取出参数字符串 这里会获得类似“id=1”这样的字符串
            newsids = newsidinfo.split("&");//对获得的参数字符串按照“&”进行分割
            TGUID = newsids[0].split("=");//得到参数值
            GUID = newsids[1].split("=");//得到参数名字
            //alert(TGUID[1] + "," + GUID[1]);
            var lists = "";
            var QuestionTexts = "";
            var Pt = new Vue({
                el: '#Patient',
                data: {
                    list: [
                        { "PatientName": "姓名", "Sex": "性别", "Num1": "卡号" }
                    ]
                }

            })
            var Test = new Vue({
                el: '#Hands',
                data: {
                    list: [
                        { "TestName": "测试名称", "Description": "测试说明" }
                    ]
                }
            })
            
            var vm = new Vue({
                el: '#Testbox',

                
                
                data: {
                    QuestionSerial: 0,
                    All:0,
                    list: [
                        { "QuestionText": "&lt;p&gt;123&lt;/p&gt;", "QuestionSerial": "1", "Score": "1", "Serial": "1", "ItemText": "是", "QuestionType": "1" },
                        { "QuestionText": "&lt;p&gt;123&lt;/p&gt;", "QuestionSerial": "1", "Score": "0", "Serial": "2", "ItemText": "否", "QuestionType": "1" }
                    ]
                },
                //data: {

                //    QuestionSerial: 0,


                //    list: []
                //},
                
                watch: {
                    QuestionSerial: function (newVal, oldVal) {
                        
                        //alert(newVal);
                        //alert($("#QuestionType").text());
                        //console.log(newVal);
                        //console.log(vm.list[0].QuestionType);
                        QuestionTexts = (vm.list[0].QuestionText.replace('&lt;', '<')).replace('&gt;', '>');
                        $("#QuestionText").html(QuestionTexts);
                        if (vm.list[0].QuestionType == 2) {
                            //console.log("true");
                            $('input[type=radio]').attr('type', 'checkbox');
                        }
                        else {
                            //console.log("false");
                            $('input[type=checkbox]').attr('type', 'radio');
                        }
                        var radios = document.getElementById('Ul').getElementsByTagName("input");
                        //alert(radios.length);
                        //console.log(radios.length);
                        var aa = document.getElementById('Ul').getElementsByTagName("a");
                        for (i = 0; i < radios.length; i++) {
                            radios[i].checked = false;
                            aa[i].setAttribute('class', 'jqRadio');
                        }
                        
                        if (Awr.list[0].ItemSerial != null) {
                            var z = parseInt(Awr.list[0].ItemSerial) - 1;
                            //alert(z);
                            radios[z].checked = true;
                            aa[z].classList.add("jqChecked");
                        }
                        for (i = 0; i < radios.length; i++) {
                            radios[i].onclick = function () {
                                //alert(radios[i]);
                                //var aa = document.getElementById('Ul').getElementsByTagName("a");
                                for (j = 0; j < radios.length; j++) {
                                    if (radios[j].checked == true) {
                                        aa[j].classList.add("jqChecked");
                                    }
                                    else {
                                        aa[j].setAttribute('class', 'jqRadio');
                                    }
                                }

                            }
                        }
                        
                    }
                }
                
            })
            var Awr = new Vue({
                el: '#Answer',
                data: {
                    list:[]
                }
            })
            var Tl = new Vue({
                el: '#TestList',
                data: {
                    list: []
                },
                methods: {
                    Jump: function (val) {
                        ajax(val);
                        ajax2(val);
                        ajax4();
                        SetTestLists();
                    }
                }
            })
            ajax1();
            
            ajax(1);
            ajax2(1);
            ajax4();

            setTimeout("Show()", 500);
            function Show() {
                $(".loading").css("display", "none");
                $("#content").css("display", "block");
            }

            function ajax1() {
                $.ajax({
                    type: "post",
                    url: "Gtest.asmx/GetPatient", //服务端处理程序   
                    data: { "Tguid": TGUID[1]},
                    dataType: 'xml', //返回的类型为XML ，和前面的Json，不一样了
                    async: false,//设置为同步操作就可以给全局变量赋值成功 
                    success: function (Nums) {
                        try {
                            list = $(Nums).find("string").text();
                            Pt.list = eval('(' + list + ')');
                            //alert(Pt.list);
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
                $.ajax({
                    type: "post",
                    url: "Gtest.asmx/GetTestName", //服务端处理程序   
                    data: { "GUID": GUID[1], "TGUID": TGUID[1] },
                    dataType: 'xml', //返回的类型为XML ，和前面的Json，不一样了
                    async: false,//设置为同步操作就可以给全局变量赋值成功 
                    success: function (Nums) {
                        try {
                            list = $(Nums).find("string").text();
                            if (list == "0") {
                            } else {
                                Test.list = eval('(' + list + ')');
                            }
                            
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
                if (list == "0") {
                    alert("请先购买量表！");
                    window.open("about:blank", "_self").close();
                }

                $.ajax({
                    type: "post",
                    url: "Gtest.asmx/InsertTest", //服务端处理程序   
                    data: { "GUID": GUID[1], "TGUID": TGUID[1] },
                    dataType: 'xml', //返回的类型为XML ，和前面的Json，不一样了
                    async: false,//设置为同步操作就可以给全局变量赋值成功 
                    success: function (Nums) {
                        try {
                            list = $(Nums).find("string").text();
                            if (list == "0") {
                            } else {
                                console.log(list);
                            }

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
                $.ajax({
                    type: "post",
                    url: "Gtest.asmx/AwrTest", //服务端处理程序   
                    data: { "GUID": GUID[1]},
                    dataType: 'xml', //返回的类型为XML ，和前面的Json，不一样了
                    async: false,//设置为同步操作就可以给全局变量赋值成功 
                    success: function (Nums) {
                        try {
                            list = $(Nums).find("string").text();
                            if (list == "0") {
                            } else {
                                vm.All = parseInt(list);
                                console.log(list);
                            }
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

            function ajax2(v) {
                $.ajax({
                    type: "post",
                    url: "Gtest.asmx/RQAnswer", //服务端处理程序   
                    data: { "GUID": GUID[1], "TGUID": TGUID[1],"v":v },
                    dataType: 'xml', //返回的类型为XML ，和前面的Json，不一样了
                    async: false,//设置为同步操作就可以给全局变量赋值成功 
                    success: function (Nums) {
                        try {
                            list = $(Nums).find("string").text();
                            if (list == "0") {
                            } else {
                                Awr.list = eval('(' + list + ')');
                            }

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





            function Next(btu) {
                //alert(btu.value);
                ajax3(parseInt(btu.value));
                var v = parseInt(btu.value) + 1;
                ajax(v);
                ajax2(v);
                ajax4();
                SetTestLists();
            }
            function Up(btu) {
                ajax3(parseInt(btu.value));
                //alert(btu.value);
                var v = parseInt(btu.value) - 1;
                ajax(v);
                ajax2(v);
                ajax4();
                SetTestLists();
            }
            function ajax(v) {
                
                $.ajax({
                    type: "post",
                    url: "Gtest.asmx/GetNums", //服务端处理程序   
                    data: { "v": v, "TGUID": GUID[1] },
                    dataType: 'xml', //返回的类型为XML ，和前面的Json，不一样了
                    async: false,//设置为同步操作就可以给全局变量赋值成功 
                    success: function (Nums) {
                        try {
                            lists = $(Nums).find("string").text();
                            //alert(lists);
                            vm.list = eval('(' + lists + ')');
                            //console.log("ajax.QuestionType=" + vm.list[0].QuestionType);
                            console.log("ajax.HasTextBox=" + vm.list[0].HasTextBox);
                            setTimeout("vm.QuestionSerial = vm.QuestionSerial + 1;", 20);
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
                //vm.QuestionSerial = vm.QuestionSerial + 1;
            }
            function ajax3(v) {

                var ItemSerial = 0;
                var Score = 0
                var InputText = "";
                var radios = document.getElementById('Ul').getElementsByTagName("input");
                for (i = 0; i < radios.length; i++) {
                    //alert(radios[i].checked);
                    if (radios[i].checked == true) {
                        ItemSerial = (i + 1);
                        //alert(radios[i].value);
                        Score += Number(radios[i].value);
                        //alert(Score);
                        if (vm.list[i].HasTextBox == true) {
                            var x = "Item" + (i+1);
                            InputText = $("#" + x).val();
                        }
                    }
                }
                
                if (ItemSerial == 0) {
                    return;
                }
                else {
                    //alert(ItemSerial);
                    $.ajax({
                        type: "post",
                        url: "Gtest.asmx/InsertItemSerial", //服务端处理程序   
                        data: { "v": v, "TGUID": TGUID[1], "GUID": GUID[1], "ItemSerial": ItemSerial, "Score": Score ,"InputText":InputText},
                        dataType: 'xml', //返回的类型为XML ，和前面的Json，不一样了
                        async: false,//设置为同步操作就可以给全局变量赋值成功 
                        success: function (Nums) {
                            try {
                                lists = $(Nums).find("string").text();
                                //alert(lists);

                                console.log(lists);
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
                
            }
            function ajax4() {
                $.ajax({
                    type: "post",
                    url: "Gtest.asmx/GetTL", //服务端处理程序   
                    data: { "TGUID": TGUID[1], "GUID": GUID[1] },
                    dataType: 'xml', //返回的类型为XML ，和前面的Json，不一样了
                    async: false,//设置为同步操作就可以给全局变量赋值成功 
                    success: function (Nums) {
                        try {
                            lists = $(Nums).find("string").text();
                            //alert(lists);
                            Tl.list = eval('(' + lists + ')');
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
        </script>
        <script>
            function OK() {
                ajax3(vm.All);
                window.opener.location.reload();
                window.close();
            }

            $("#Start_Btn").click(function () {
                $("#Hands").css("display", "none");
                $("#Testbox").css("display", "block");
                $("#TestList").css("display", "block");
                for (var i = 0;  i < Tl.list.length; i++) {
                    if(Tl.list[i].IsFinished == false){
                        ajax(i+1);
                        ajax2(i+1);
                        ajax4();
                        break;
                    }
                        
                }
                SetTestLists();
            })


            function SetTestLists() {
                var TestLists = document.getElementsByClassName("TestListbox");
                for (var i = 0; i < Tl.list.length; i++) {

                    if (Tl.list[i].IsFinished == true && Tl.list[i].ItemSerial != 0) {
                        TestLists[i].classList.add("Finished");
                    } else if (Tl.list[i].IsFinished == "true" && Tl.list[i].ItemSerial == 0) {
                        TestLists[i].classList.add("skip");
                    }
                }
            }
            
        </script>
        <script>
            window.setInterval("Timer()", 1000);
            function Timer() {
                var Timett = parseInt($("#tt").text()) + 1;
                if (Timett<10)
                    $("#tt").text("0" + Timett);
                else if(Timett==60){
                    $("#tt").text("00");
                    var Timexs = parseInt($("#xs").text()) +1;
                    if (Timexs < 10)
                        $("#xs").text("0" + Timexs);
                    else
                        $("#xs").text(Timexs);
                }
                else
                    $("#tt").text(Timett);
            }
        </script>
    </form>
</body>
</html>
