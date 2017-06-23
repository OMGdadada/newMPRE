<%@ Page Language="C#" MasterPageFile="~/Test.master" AutoEventWireup="true" CodeFile="T14.aspx.cs" Inherits="T14" %>


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
                      
                      <p>该测试表为为他评量表，根据测试者的实际情况，在相应的选项打钩。</p>
                           
                               
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
                T14 临床总体印象量表(CGI)
            </div>
            <div class="widget-header bordered-bottom bordered-blue">
                <div style="text-align:left;padding-top:10px;">
                    <p style="font-weight:bold">测试说明：</p>
                    <p>
                    该测试表为为他评量表，根据测试者的实际情况，在相应的选项打钩。 </p>
                </div>
            </div>
            <div class="widget-body bordered-bottom bordered-darkorange">
                <h5>第1题、临床总体印象量表－严重程度评分（CGI-S）根据您对此类病人的经验，您认为该患者在这类精神病中的严重程度如何？[单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="1" value="1" /><%--为了方便这里checkbox的name命名是1~4--%>
                                <span class="text">A、正常，无病</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="1" value="2"/>
                                <span class="text">B、病情极轻</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="1" value="3"/>
                                <span class="text">C、轻度有病</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="1" value="4"/>
                                <span class="text">D、中度有病</span>
                            </label>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="1" value="5"/>
                                <span class="text">E、明显有病</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="1" value="6"/>
                                <span class="text">F、严重有病</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="1" value="7"/>
                                <span class="text">G、病情极重</span>
                            </label>
                        </div>
                                        
                    </div>
                </div>
                <hr class="wide" />

                <h5>第2题、临床总体印象量表－总体进步评分（CGI-I）根据您对此类病人的经验，您认为该患者与基线相比改善程度如何？[单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="2" value="1" />
                                <span class="text">A、进步非常明显</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="2" value="2"/>
                                <span class="text">B、进步明显</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="2" value="3"/>
                                <span class="text">C、稍有进步</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="2" value="4"/>
                                <span class="text">D、无变化</span>
                            </label>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="2" value="5"/>
                                <span class="text">E、稍有恶化</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="2" value="6"/>
                                <span class="text">F、明显恶化</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="2" value="7"/>
                                <span class="text">G、恶化非常明显</span>
                            </label>
                        </div>
                                        
                    </div>
                </div>
                <hr class="wide" />

                <h5>第3题、临床总体印象量表－疗效指数根据您对此类病人的经验，您认为该患者疗效如何？[单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="3" value="1" />
                                <span class="text">A、明显进步，全部症状近于完全缓解</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="3" value="2"/>
                                <span class="text">B、中度改善，肯定有进步，症状部分缓解</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="3" value="3"/>
                                <span class="text">C、稍有进步，但这种进步不能改变病人受照顾的状态</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="3" value="4"/>
                                <span class="text">D、无变化或恶化</span>
                            </label>
                        </div>
                    </div>
                </div>
                <hr class="wide" />

                <h5>第4题、根据您对此类病人的经验，您认为该患者治疗副作用如何？[单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="4" value="1" />
                                <span class="text">A、无</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="4" value="2"/>
                                <span class="text">B、轻度</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="4" value="3"/>
                                <span class="text">C、中度</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="4" value="4"/>
                                <span class="text">D、严重</span>
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
            for (var i = 1; i <= 4; i++)//条件：i应小于等于必做题目的总数
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

