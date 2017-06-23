<%@ Page Title="" Language="C#" MasterPageFile="~/Test.master" AutoEventWireup="true" CodeFile="T10.aspx.cs" Inherits="T10" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <script type="text/javascript">
         document.onreadystatechange = function () {
             if (document.readyState == "complete") {
                 $(".login").click(function (e) {
                     $('.blanks2').hide();
                     $(".module-area3").slideUp(400);
                 });
                 $(".module-close2").click(function (e) {
                     $('.blanks2').hide();
                     $(".module-area3").slideUp(400);//fadeOut()
                 });

             }
         }

    </script>
                   <!-- 模态框弹出部分  --->
    <div class="blanks2" id="Cover" runat="server" ></div>
                    <div  class="module-area3 modal-content" id="Cover1" runat="server" >
                        <div class="module-head">
                            <span><strong> 操作说明</strong></span>
                            <div class="module-close2"></div>

                        </div>
                       <p>请仔细阅读下面操作说明，并按要求完成测试题:</p>
                      
                      <p>该测试表为自评量表，每个描述后有四个选项，请根据真实情况，在最符合您情况的一项上打√。必须答齐全部10题目，否则无效。</p>
                           
                               
                                <p style="margin-left:40%">  <asp:Label ID="Label4" class="btn btn-info login" runat="server" Text="开始测试"></asp:Label>
                                
                            </p>  
                       
                    </div>

    <asp:Label ID="GUID" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="PatientGUID" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="DoctorGUID" runat="server"  Visible="false"></asp:Label>
    <asp:Label ID="TestName" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="StartDT" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="EndDT" runat="server" Text="" Visible="false"></asp:Label>

    <div class="page-body" style="max-width:960px;margin:0 auto 0;">
        <div class="widget flat radius-bordered">
            <div id="banner">
              T10 一般自我效能感量表 (GSES)
            </div>
            <div class="widget-header bordered-bottom bordered-blue">
                <div style="text-align:left;padding-top:10px;">
                    <p style="font-weight:bold">测试说明：</p>
                    <p>  该测试表为自评量表，每个描述后有四个选项，请根据真实情况，在最符合您情况的一项上打√。必须答齐全部10题目，否则无效。</p>
                </div>
            </div>
            <div class="widget-body bordered-bottom bordered-darkorange">
                <h5>指导语：一下10个句子关于你平时对自己的一般看法，请你根据你的实际情况（实际感受），在合适的方框内打√。答案没有对错之分，对每一个句子无须多考虑</h5>
                <hr  class="wide"/>
                <h5>1. 如果我尽力去做的话，我总是能够解决问题的   [单选题] </h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="1" value="1"/>
                                <span class="text">A、完全不正确</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="1" value="2" />
                                <span class="text">B、有点正确</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="1" value="3"/>
                                <span class="text">C、多数正确</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="1" value="4" />
                                <span class="text">D、完全正确</span>
                            </label>
                        </div>
                    </div>
                </div>
             
                <hr class="wide" />

                <h5>2. 即使别人反对我，我仍有办法取得我所要的  [单选题] </h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="2" value="1" />
                                <span class="text">A、完全不正确</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="2" value="2"/>
                                <span class="text">B、有点正确</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="2" value="3"/>
                                <span class="text">C、多数正确</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="2" value="4"/>
                                <span class="text">D、完全正确</span>
                            </label>
                        </div>
                    </div>
                </div>
               
                <hr class="wide" />

                <h5>3. 对我来说，坚持理想和达成目标是轻而易举的  [单选题] </h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="3" value="1" />
                                <span class="text">A、完全不正确</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="3" value="2"/>
                                <span class="text">B、有点正确</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="3" value="3"/>
                                <span class="text">C、多数正确</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="3" value="4"/>
                                <span class="text">D、完全正确</span>
                            </label>
                        </div>
                    </div>
                </div>
                <hr class="wide" />

                <h5>4.我自信能有效地应付任何突如其来的事情  [单选题] </h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="4" value="1" />
                                <span class="text">A、完全不正确</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="4" value="2"/>
                                <span class="text">B、有点正确</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="4" value="3"/>
                                <span class="text">C、多数正确</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="4" value="4"/>
                                <span class="text">D、完全正确</span>
                            </label>
                        </div>
                    </div>
                </div>

                 
                <hr class="wide" />

                <h5>5.以我的才智，我定能应对意料之外的情况  [单选题] </h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="5" value="1" />
                                <span class="text">A、完全不正确</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="5" value="2"/>
                                <span class="text">B、有点正确</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="5" value="3"/>
                                <span class="text">C、多数正确</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="5" value="4"/>
                                <span class="text">D、完全正确</span>
                            </label>
                        </div>
                    </div>
                </div>
                <hr class="wide" />

                <h5>6. 如果我付出必要的努力，我一定能解决大多数的难题  [单选题] </h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="6" value="1" />
                                <span class="text">A、完全不正确</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="6" value="2"/>
                                <span class="text">B、有点正确</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="6" value="3"/>
                                <span class="text">C、多数正确</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="6" value="4"/>
                                <span class="text">D、完全正确</span>
                            </label>
                        </div>
                    </div>
                </div>

                 
                <hr class="wide" />

                <h5>7.我能冷静地面对困难，因为我信赖自己处理问题的能力  [单选题] </h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="7" value="1" />
                                <span class="text">A、完全不正确</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="7" value="2"/>
                                <span class="text">B、有点正确</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="7" value="3"/>
                                <span class="text">C、多数正确</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="7" value="4"/>
                                <span class="text">D、完全正确</span>
                            </label>
                        </div>
                    </div>
                </div>
                <hr class="wide" />

                <h5>8. 面对一个难题时，我通常能找到几个解决的方法  [单选题] </h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="8" value="1" />
                                <span class="text">A、完全不正确</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="8" value="2"/>
                                <span class="text">B、有点正确</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="8" value="3"/>
                                <span class="text">C、多数正确</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="8" value="4"/>
                                <span class="text">D、完全正确</span>
                            </label>
                        </div>
                    </div>
                </div>

                 
                <hr class="wide" />

                <h5>9.有麻烦的时候，我通常能想到一些应付的方法  [单选题] </h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="9" value="1" />
                                <span class="text">A、完全不正确</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="9" value="2"/>
                                <span class="text">B、有点正确</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="9" value="3"/>
                                <span class="text">C、多数正确</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="9" value="4"/>
                                <span class="text">D、完全正确</span>
                            </label>
                        </div>
                    </div>
                </div>
                <hr class="wide" />

                <h5>10.无论什么事在我身上发生，我都能应付自如  [单选题] </h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="10" value="1" />
                                <span class="text">A、完全不正确</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="10" value="2"/>
                                <span class="text">B、有点正确</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="10" value="3"/>
                                <span class="text">C、多数正确</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="10" value="4"/>
                                <span class="text">D、完全正确</span>
                            </label>
                        </div>
                    </div>
                </div>
 <hr class="wide" />

                <%--提示信息--%>
                <p id="WarningLabel" style="font-weight:bold;color:green;text-align:center;"></p>
                <%--检查按钮--%>
                <a onclick="ck();" id="check" class="btn btn-warning"  style="width:100px;height:40px;margin:0 auto;display:block;font-weight:bold;line-height:28px;">检查完成情况</a>
                <%--提交按钮--%>
                <asp:Button ID="Button1" runat="server" Text="提  交" class=" btn btn-success" style="width:100px;height:40px;margin:0 auto;display:none;font-weight:bold;"  OnClick="Button1_Click"/>

                 </div>
        </div>
    </div>
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    <!-- /Page Body -->

    <%--把checkbox复选框转换成单选按钮radio效果--%>
    <script type="text/javascript">
        checkboxToRadio("1");//需要转换的就添加这句
        checkboxToRadio("2");
        checkboxToRadio("3");
        checkboxToRadio("4");
        checkboxToRadio("5");
        checkboxToRadio("6");
        checkboxToRadio("7");
        checkboxToRadio("8");
        checkboxToRadio("9");
        checkboxToRadio("10");


     <%--  document.onreadystatechange = function () {
            var Value = document.getElementById("<%=Label1.ClientID %>").textContent;
            if (Value != null) {
                var strs = new Array(); //定义一数组 
                strs = Value.split(","); //字符分割 --%>
                
                //var boxs = document.getElementsByName(checkboxName);

                //for (i = 0; i < boxs.length; i++) {
                //    for (j = 0; j < boxs[j].length; i++) {
                //        if (boxs[j].value == strs[i]) {
                //            boxs[j].checked = true;
                //            break;
                //        }
                //    }
                  
                //}

           /*  var boxe1 = document.getElementsByName("1");
                var boxe2 = document.getElementsByName("2");
                var boxe3 = document.getElementsByName("3");
                var boxe4 = document.getElementsByName("4");
                var boxe5 = document.getElementsByName("5");
                var boxe6 = document.getElementsByName("6");
                var boxe7 = document.getElementsByName("7");
                var boxe8 = document.getElementsByName("8");
                var boxe9 = document.getElementsByName("9");
                var boxe10 = document.getElementsByName("10");
                for (i = 0; i < boxe1.length; i++) {
                    if (boxe1[i].value == strs[0]) {
                        boxe1[i].checked = true;
                        break;
                    }
                }
                for (i = 0; i < boxe2.length; i++) {
                    if (boxe2[i].value == strs[1]) {
                        boxe2[i].checked = true;
                        break;
                    }
                }
                for (i = 0; i < boxe3.length; i++) {
                    if (boxe3[i].value == strs[2]) {
                        boxe3[i].checked = true;
                        break;
                    }
                }
                for (i = 0; i < boxe4.length; i++) {
                    if (boxe4[i].value == strs[3]) {
                        boxe4[i].checked = true;
                        break;
                    }
                }
                for (i = 0; i < boxe5.length; i++) {
                    if (boxe5[i].value == strs[4]) {
                        boxe5[i].checked = true;
                        break;
                    }
                }
                for (i = 0; i < boxe6.length; i++) {
                    if (boxe6[i].value == strs[5]) {
                        boxe6[i].checked = true;
                        break;
                    }
                }
                for (i = 0; i < boxe7.length; i++) {
                    if (boxe7[i].value == strs[6]) {
                        boxe7[i].checked = true;
                        break;
                    }
                }
                for (i = 0; i < boxe8.length; i++) {
                    if (boxe8[i].value == strs[7]) {
                        boxe8[i].checked = true;
                        break;
                    }
                }
                for (i = 0; i < boxe9.length; i++) {
                    if (boxe9[i].value == strs[8]) {
                        boxe9[i].checked = true;
                        break;
                    }
                }
                for (i = 0; i < boxe10.length; i++) {
                    if (boxe10[i].value == strs[9]) {
                        boxe10[i].checked = true;
                        break;
                    }
                }
            }
        }*/
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

           <%--jQuery方法检查必做题目是否完成--%>
        function ck() {
            var error = "";
            for (var i = 1; i <= 10; i++)//条件：i应小于等于必做题目的总数
            {
                if (!$("input:checked[name=" + i + "]").is(':checked')) {
                    error += "第" + i + "题" + "、";
                }
            }
            if (error != "") {
                error = error.substring(0, error.length - 1);//截取字符串，去掉末尾多余的一个“、”
                error += "未完成";
                alert(error);//弹框提示未完成题目
            }
            else {
                $("#WarningLabel").html("所有必做题目已完成，现在可以提交！");//改变提示信息的文字内容
                $("#check").css("display", "none");//检查按钮隐藏
                $("#ctl00_ContentPlaceHolder1_Button1").css("display", "block");//提交按钮显示
            }

        }
    </script>

</asp:Content>    