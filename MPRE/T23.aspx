<%@ Page Title="" Language="C#" MasterPageFile="~/Test.master" AutoEventWireup="true" CodeFile="T23.aspx.cs" Inherits="T23" %>

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
                      
                      <p>该测试表他评量表，根据测试者的回答，在对应的选项上打钩。</p>
                           
                               
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
                T23 自知力与治疗态度问卷表（ITAQ）
            </div>
            <div class="widget-header bordered-bottom bordered-blue">
                <div style="text-align:left;padding-top:10px;">
                    <p style="font-weight:bold">测试说明：</p>
                    <p>
                   该测试表他评量表，根据测试者的回答，在对应的选项上打钩。

                    </p>
                </div>
            </div>
            <div class="widget-body bordered-bottom bordered-darkorange">
                <h5>第一题、在刚入院之时, 你有没有与多数人不同的精神 (神经紧张、担优)问题?[单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="1" value="0" />
                                <span class="text">A、没有认识</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="1" value="1"/>
                                <span class="text">B、部分认识</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="1" value="2"/>
                                <span class="text">C、全部认识</span>
                            </label>
                        </div>
                    </div>
                    
                </div>
                
                                        
                    
                
                <hr class="wide" />

                <h5>第二题、那时你有没有必要到这医院来?[单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="2" value="0" />
                                <span class="text">A、没有认识</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="2" value="1"/>
                                <span class="text">B、部分认识</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="2" value="2"/>
                                <span class="text">C、全部认识</span>
                            </label>
                        </div>
                    </div>
                    
                </div>
                
                                        
                    
                
                <hr class="wide" />

                <h5>第三题、你现在有什么精神 (神经紧张、担扰)问题吗?[单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="3" value="0" />
                                <span class="text">A、没有认识</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="3" value="1"/>
                                <span class="text">B、部分认识</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="3" value="2"/>
                                <span class="text">C、全部认识</span>
                            </label>
                        </div>
                    </div>
                    
                </div>
                
                                        
                    
                
                <hr class="wide" />

                <h5>第四题、你现在有必要住到这个医院里来吗 ?[单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="4" value="0" />
                                <span class="text">A、没有认识</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="4" value="1"/>
                                <span class="text">B、部分认识</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="4" value="2"/>
                                <span class="text">C、全部认识</span>
                            </label>
                        </div>
                    </div>
                    
                </div>
                
                                        
                    
                
                <hr class="wide" />

                <h5>第五题、在你出院之后 , 还有可能发生精神 (神经紧张、担扰)问题吗?[单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="5" value="0" />
                                <span class="text">A、没有认识</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="5" value="1"/>
                                <span class="text">B、部分认识</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="5" value="2"/>
                                <span class="text">C、全部认识</span>
                            </label>
                        </div>
                    </div>
                    
                </div>
                
                                        
                    
                
                <hr class="wide" />

                <h5>第六题、在你出院之后 , 你需要一位精神科医生(或精神卫生中心)随访 (照料)吗?[单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="6" value="0" />
                                <span class="text">A、没有认识</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="6" value="1"/>
                                <span class="text">B、部分认识</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="6" value="2"/>
                                <span class="text">C、全部认识</span>
                            </label>
                        </div>
                    </div>
                    
                </div>
                
                                        
                    
                
                <hr class="wide" />

                <h5>第七题、就在入院之前 , 你需要用药物来治疗精神 (神经紧张、担扰)间题吗?[单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="7" value="0" />
                                <span class="text">A、没有认识</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="7" value="1"/>
                                <span class="text">B、部分认识</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="7" value="2"/>
                                <span class="text">C、全部认识</span>
                            </label>
                        </div>
                    </div>
                    
                </div>
                
                                        
                    
                
                <hr class="wide" />

                <h5>第八题、现在你需要用药物来治疗精神 (神经紧张、担扰)问题吗?[单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="8" value="0" />
                                <span class="text">A、没有认识</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="8" value="1"/>
                                <span class="text">B、部分认识</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="8" value="2"/>
                                <span class="text">C、全部认识</span>
                            </label>
                        </div>
                    </div>
                    
                </div>
                
                                        
                    
                
                <hr class="wide" />

                <h5>第九、在你出院之后 , 你需要用药物来治疗精神 (神经紧张、担扰)问题吗?[单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="9" value="0" />
                                <span class="text">A、没有认识</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="9" value="1"/>
                                <span class="text">B、部分认识</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="9" value="2"/>
                                <span class="text">C、全部认识</span>
                            </label>
                        </div>
                    </div>
                    
                </div>
                
                                        
                    
                
                <hr class="wide" />

                <h5>第十题、你愿意服这些药吗?[单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="10" value="0" />
                                <span class="text">A、没有认识</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="10" value="1"/>
                                <span class="text">B、部分认识</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="10" value="2"/>
                                <span class="text">C、全部认识</span>
                            </label>
                        </div>
                    </div>
                    
                </div>
                
                                        
                    
                
                <hr class="wide" />

                 <h5>第十一题、这些药物对你有好处吗?[单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="11" value="0" />
                                <span class="text">A、没有认识</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="11" value="1"/>
                                <span class="text">B、部分认识</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="11" value="2"/>
                                <span class="text">C、全部认识</span>
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
        
    <!-- /Page Body -->

    
    <script type="text/javascript">
        <%--把checkbox复选框转换成单选按钮radio效果display:block;--%>
        checkboxToRadio("1");//需要转换的就添加这句（不可循环调用）
        checkboxToRadio("2");
        checkboxToRadio("3");
        checkboxToRadio("4");
        checkboxToRadio("5");
        checkboxToRadio("6");
        checkboxToRadio("7");
        checkboxToRadio("8");
        checkboxToRadio("9");
        checkboxToRadio("10");
        checkboxToRadio("11");
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
            for (var i = 1; i <= 11; i++)//条件：i应小于等于必做题目的总数
            {
                if(!$("input:checked[name="+i+"]").is(':checked'))
                {
                    error += "第"+i+"题" + "、";
                }
            }
            if(error != "")
            {
                error = error.substring(0, error.length - 1);//截取字符串，去掉末尾多余的一个“、”
                error += "未完成";
                alert(error);//弹框提示未完成题目
            }
            else
            {
                $("#WarningLabel").html("所有必做题目已完成，现在可以提交！");//改变提示信息的文字内容
                $("#check").css("display", "none");//检查按钮隐藏
                $("#ctl00_ContentPlaceHolder1_Button1").css("display", "block");//提交按钮显示
            }
            
        }
    </script>
</asp:Content>

