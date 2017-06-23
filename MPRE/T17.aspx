<%@ Page Language="C#" MasterPageFile="~/Test.master" AutoEventWireup="true" CodeFile="T17.aspx.cs" Inherits="T17" %>


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


                 $("#login1").click(function (e) {
                   
                     $(".module-area").slideDown(400);//fadeIn()
                     $('#text1').show();
                     $('#text2').show();
            
                     $('#text3').hide();
                     $('#text4').hide();
                     $('#text5').hide();
                     $('#text6').hide();
                     $('#text7').hide();
                     $('#text8').hide();
                 });


                 $("#login2").click(function (e) {
                  
                     $(".module-area").slideDown(400);//fadeIn()
                     $('#text3').show();
                     $('#text4').show();
                     $('#text1').hide();
                     $('#text2').hide();
                    
                     $('#text5').hide();
                     $('#text6').hide();
                     $('#text7').hide();
                     $('#text8').hide();

                 });
                 $("#login3").click(function (e) {
                
                     $(".module-area").slideDown(400);//fadeIn()
                     $('#text5').show();
                     $('#text6').show();
                     $('#text1').hide();
                     $('#text2').hide();
                     $('#text3').hide();
                     $('#text4').hide();
                     $('#text7').hide();
                     $('#text8').hide();

                 });
                 $("#login4").click(function (e) {
             
                     $(".module-area").slideDown(400);//fadeIn()
                     $('#text7').show();
                     $('#text8').show();
                     $('#text1').hide();
                     $('#text2').hide();
                     $('#text3').hide();
                     $('#text4').hide();
                     $('#text5').hide();
                     $('#text6').hide();

                 });
                 




                 $(".module-close").click(function (e) {
               
                     $(".module-area").slideUp(400);//fadeOut()
                     $('#text1').hide();
                     $('#text2').hide();
                     $('#text3').hide();
                     $('#text4').hide();
                     $('#text5').hide();
                     $('#text6').hide();
                     $('#text7').hide();
                     $('#text8').hide();

                 });

             }
         }
            </script>    
     <style type="text/css">
        #text1, #text2, #text3, #text4, #text5, #text6, #text7, #text8{
            display:none;
        }
      </style>
         <!-- 模态框弹出部分  --->
    <div class="blanks2" id="Cover" runat="server" ></div>
                    <div  class="module-area3 modal-content" id="Cover1" runat="server" >
                        <div class="module-head">
                            <span><strong> 操作说明</strong></span>
                            <div class="module-close2"></div>

                        </div>
                       <p>请仔细阅读下面操作说明，并按要求完成测试题:</p>
                      
                      <p>该测试表为为他评量表，根据测试者的实际情况，从下列每一类攻击行为中，选择一个最适合的评分，该评分能准确地描述特定观察周期内病人最严重的攻击行为。</p>
                           
                               
                                <p style="margin-left:40%">  <asp:Label ID="Label4" class="btn btn-info login" runat="server" Text="开始测试"></asp:Label>
                                
                            </p>  
                       
                    </div>


   <div class="dragContainer" style="position:fixed;left:10px;top:50px;width:100%;">
      <div id="dragDiv" style="z-index:1001; ">
                    <!-- 模态框弹出部分  --->
    
      

                    <div class="module-area">
                        <div class="module-head">
                    <div id="text1">
                        <strong>
                          言语攻击
                        </strong>
                    </div>
                    <div id="text3">
                        <strong>
                       对财产的攻击
                        </strong>
                    </div>
                    <div id="text5">
                        <strong>
                           自身的攻击
                        </strong>
                    </div>
                    <div id="text7">
                        <strong>
                           体力的攻击
                        </strong>
                    </div>
                            <div class="module-close"></div>
                         </div>
                           <div id="substance" >
                            <div id="text2">
                                <p  >
                                   &nbsp; &nbsp;言语敌对，即用平时讲话或辱骂的方式，试图通过贬低某人的话或脏话来使人遭受心理伤害，或者是体力袭击的威胁。

                                </p>
                            </div>
                            <div id="text4">
                                <p  >
                                   &nbsp; &nbsp;盲目地或不顾后果地毁坏病房的设备或他人的财物。
                                </p>
                            </div>
                             <div id="text6">
                                <p  >
                                &nbsp; &nbsp;对自己的体力伤害，如自残或自杀企图。

                                </p>
                        </div>
                               <div id="text8">
                                <p  >
                             &nbsp; &nbsp;故意的暴力行为致人疼痛、身体损伤或死亡。"

                                </p>
                        </div>
                            </div>
                           </div>
                      
          </div>
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
                T17 修订版外显攻击行为量表（MOAS）
            </div>
            <div class="widget-header bordered-bottom bordered-blue">
                <div style="text-align:left;padding-top:10px;">
                    <p style="font-weight:bold">测试说明：</p>
                    <p>
                    该测试表为为他评量表，根据测试者的实际情况，从下列每一类攻击行为中，选择一个最适合的评分，该评分能准确地描述特定观察周期内病人最严重的攻击行为。
                    </p>
                </div>
            </div>
            <div class="widget-body bordered-bottom bordered-darkorange">
                <h5>请从下列每一类攻击行为中，选择一个最适合的评分，该评分能准确地描述特定观察周期内病人最严重的攻击行为</h5>
                <h5>1.言语攻击[单选题]  <a id="login1">?</a> </h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="1" value="0" />
                                <span class="text">A、无言语攻击</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="1" value="1"/>
                                <span class="text">B、愤怒地喊叫，适度的咒骂或人格辱骂</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="1" value="2"/>
                                <span class="text">C、恶毒的咒骂，带有严重的侮辱性，可以有情绪的爆发</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="1" value="3"/>
                                <span class="text">D、对他人或自己的带一时冲动性质的暴力威胁</span>
                            </label>
                        </div>
                    </div>
                </div>
                <div class="row">             
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="1" value="4"/>
                                <span class="text">E、对他人或自己反复的或蓄意的暴力威胁（如：要抢钱或发生性关系）</span>
                            </label>
                        </div>
                    </div>                   
                </div>
                <hr class="wide" />

                <h5>2.对财产的攻击[单选题]  <a id="login2">?</a> </h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="2" value="0" />
                                <span class="text">A、无对财产的攻击</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="2" value="1"/>
                                <span class="text">B、愤怒地冲门、撕衣物、在地板上小便</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="2" value="2"/>
                                <span class="text">C、摔东西、踢家具、毁损墙壁</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="2" value="3"/>
                                <span class="text">D、击打房间内的东西、打碎玻璃</span>
                            </label>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="2" value="4"/>
                                <span class="text">E、防火、危险地扔东西（如，将贵重或易碎品仍处窗外，或砸碎之）</span>
                            </label>
                        </div>
                    </div>
                </div>
                <hr class="wide" />

                <h5>3.自身的攻击[单选题]  <a id="login3">?</a> </h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="3" value="0" />
                                <span class="text">A、无自身攻击</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="3" value="1"/>
                                <span class="text">B、挖或抓皮肤、拔头发、击打自己（未造成损伤）</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="3" value="2"/>
                                <span class="text">C、撞头、用拳击墙、自己跌倒于地上</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="3" value="3"/>
                                <span class="text">D、使自身遭受轻度的切割伤、烫伤、烧伤或殴打伤</span>
                            </label>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="3" value="4"/>
                                <span class="text">E、使自生遭受重伤或企图自杀</span>
                            </label>
                        </div>
                    </div>
                </div>
                <hr class="wide" />

                <h5>4.体力的攻击[单选题]  <a id="login4">?</a> </h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="4" value="0" />
                                <span class="text">A、无体力攻击</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="4" value="1"/>
                                <span class="text">B、作出恐吓的姿态、对人挥拳、抓住别人的衣服</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="4" value="2"/>
                                <span class="text">C、拳击、踢、推、抓他人或抓住别人的头发（未造成损伤）</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="4" value="3"/>
                                <span class="text">D、袭击他人，造成轻度损伤（水泡、扭伤、皮肤伤痕等）</span>
                            </label>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="4" value="4"/>
                                <span class="text">E、袭击他人，造成严重损伤（骨折、牙齿脱落、深度刀伤、意识丧失等）</span>
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
