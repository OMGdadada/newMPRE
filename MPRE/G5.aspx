<%@ Page Title="" Language="C#" MasterPageFile="~/Test.master" AutoEventWireup="true" CodeFile="G5.aspx.cs" Inherits="G5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
        input[type="radio"]{
            vertical-align: middle;
            padding: 0; 
            margin: 0; 
            border: 0
        }
        #Ul { 
            list-style-type: none;
            padding:0;
            margin:0;
        }
        .Li{
            position: relative;
            height: 30px;
            line-height: 30px;
        }
        .Li:hover{
            background:rgb(239,239,239);
        }
        Label {
            cursor: pointer;
            margin-left:20px;
            width:100%;
        }
        .Ul input {
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
                
    </style>
    <script type="text/javascript">
            document.onreadystatechange = function () {
                if (document.readyState == "complete") {
                    $(".login").click(function (e) {
                        $('.Hands').css('display', 'none');;
                        $(".Testbox").css('display', 'block');;
                    });
                    $(".module-close2").click(function (e) {
                        $('.blanks2').hide();
                        $(".module-area3").slideUp(400);//fadeOut()
                    });

                }
            }
    </script>
    
    
    

                   <!-- 模态框弹出部分  --->
    
                    
    <asp:Label ID="StartDT" runat="server" Visible="false"></asp:Label> 
    <asp:Label ID="EndDT" runat="server" Visible="false" ></asp:Label>
    <asp:Label ID="GUID" runat="server"  Visible="false"></asp:Label>
    <asp:Label ID="TestName" runat="server"  Visible="false" ></asp:Label>
    <asp:Label ID="PatientGUID" runat="server"  Visible="false"></asp:Label>
    <asp:Label ID="DoctorGUID" runat="server"  Visible="false"></asp:Label>
     

     <div class="page-body" style="max-width:960px;margin:0 auto 0;">
        <div class="widget flat radius-bordered">
            <div id="Hands" class="Hands" runat="server" style="display:block">
                <div id="banner" >

                   <asp:Label ID="TestName1" runat="server" Text="Label"></asp:Label>

                </div>
                <div class="widget-header bordered-bottom bordered-blue">
                    <div style="text-align:left;padding-top:10px;">
                        <p style="font-weight:bold;width:100%;text-align:center;zoom:2.5"><span>请仔细阅读测试说明,确认后开始测试：</span></p>
                        <p style="min-height:110px;zoom:2">
                            <asp:Label ID="Description" runat="server" Text="Label"></asp:Label>
                        </p>
                        <p style="width:100%;text-align:center;zoom:2">  <asp:Label ID="Label4" class="btn btn-info login" runat="server" Text="开始测试"></asp:Label>
                                
                        </p>
                    </div>
                </div>
            </div>
            <div id="Testbox" class="Testbox" runat="server" style="display:none">
                <div class="widget-body bordered-bottom bordered-darkorange">
                    <div class="widget">
                        <div class="widget-header bg-blue" style="zoom:1.5">
                            <i class="widget-icon fa fa-arrow-right"></i>
                            <span class="widget-caption" >阅读下面题目，并回答问题</span>
                            <span class="widget-caption" style="float:right;margin-right:10px">
                                <asp:Label ID="Label1" runat="server" Text="0"></asp:Label>/
                                <asp:Label ID="Label2" runat="server" Text="0"></asp:Label>
                            </span>
                        </div>
                        <div class="widget-body" style="zoom:1.5">
                            <div class="row">
                                
                                <div class="col-md-12" style="min-height:160px">
                                    <div class="col-md-12">
                                        <div style="text-indent:2em">
                                            <asp:Label ID="QuestionSerial" runat="server" Text="Label" ></asp:Label>
                                            <asp:Label ID="QuestionText" runat="server" Text="Label" ></asp:Label>
                                        </div>
                                        <br />
                                    </div>
                                
                                    <div class="col-md-12">
                                        <div class="col-md-12">
                                            <ul id="Ul">
                                                <asp:Repeater ID="Repeater2" runat="server">
                                                    <ItemTemplate>
                                                        <li class="Li" style="width: 99%;">
                                                            <a href="javasript:" class="jqRadio" rel='Q<%# Eval("QuestionSerial") %>_<%# Eval("Serial") %>'></a>
                                                            <input type="radio" name='<%# Eval("QuestionSerial") %>' value='<%# Eval("Score") %>' id="Q<%# Eval("QuestionSerial") %>_<%# Eval("Serial") %>" />
                                                            
                                                            <label class="Label" for="Q<%# Eval("QuestionSerial") %>_<%# Eval("Serial") %>">
                                                                <asp:Label ID="Serial" runat="server" Text='<%# Eval("Serial") %>'></asp:Label>
                                                                <asp:Label ID="ItemText" runat="server" Text='<%# Eval("ItemText") %>'></asp:Label>
                                                            </label>

                                                        </li>
                                                    </ItemTemplate>
                                                </asp:Repeater>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <asp:Button ID="Button2" runat="server" Text="上一题" class=" btn btn-info" style="width:100px;height:40px;margin:0 70px;display:block;font-weight:bold;float:left" OnClick="ButtonUp_Click" />
                                <asp:Button ID="Button1" runat="server" Text="下一题" class=" btn btn-info" style="width:100px;height:40px;margin:0 70px;display:block;font-weight:bold;float:right" OnClick="ButtonDown_Click" />
                                <asp:Button ID="Button3" runat="server" Text="提  交" class=" btn btn-info" style="width:100px;height:40px;margin:0 70px;display:block;font-weight:bold;float:right;display:none" OnClick="Button1_Click" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="col-md-12"><p style="zoom:1.5">&nbsp;答题信息:</p></div>
                            </div>
                        </div>
                        <div class="row" style="min-height:120px">
                            <div class="col-md-12">
                                <div class="col-md-12">
                                    <asp:Repeater ID="Repeater1" runat="server">
                                        <ItemTemplate>
                                            <div class="col-md-1">
                                                <div class="checkbox" style="width:50px;height:50px">
                                                    <div style="width:100%;text-align:center">
                                                        <asp:Label ID="Serial" runat="server" Text='<%# Eval("Serial") %>' class="text" style="line-height:46px;text-align:center"></asp:Label>
                                                    </div>
                                                </div>
                                            </div>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </div>
                            </div>
                        </div>
                    </div>
                
                    
                    <br />
                   
               
                         <hr />
                </div>
            </div>
            
        </div>
    </div>
    <!-- /Page Body -->

    <%--把checkbox复选框转换成单选按钮radio效果--%>
    <script type="text/javascript">
        checkboxToRadio("1");//需要转换的就添加这句
        checkboxToRadio("2");
        checkboxToRadio("3");
        checkboxToRadio("4");
        function checkboxToRadio(checkboxName, form) {
            if (checkboxName == null) return;
            var f = form || document.forms[0];
             var checkboxs = document.getElementsByName(checkboxName);

            for(i = 0; i < checkboxs.length; i++){
                checkboxs[i].onclick = function(){
                    for (j = 0; j < checkboxs.length; j++ ){
                        if (this.value != checkboxs[j].value && checkboxs[j].checked == true){
                            checkboxs[j].checked = false;
                        }
                    }
                }
            }
        }
        
        /*
        document.getElementById('Q1_1').onclick = function () {
            RadioOncleck();
        };
        */
        //function RadioOncleck() {
            var radios = document.getElementById('Ul').getElementsByTagName("input");
            for (i = 0; i < radios.length; i++) {
                radios[i].onclick = function () {
                    var aa = document.getElementById('Ul').getElementsByTagName("a");

                    //alert(aa.length);
                    
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


        //}

        
        
    </script>

<style type="text/css">
    .table th { 
text-align:center; 
} 
   </style>
    
</asp:Content>

