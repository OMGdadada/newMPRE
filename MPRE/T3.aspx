<%@ Page Title="" Language="C#" MasterPageFile="~/Test.master" AutoEventWireup="true" CodeFile="T3.aspx.cs" Inherits="T3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


       <script type="text/javascript">
           window.onload=function(){ 
             
               $(".login").click(function (e) {
                   $('.blanks2').hide();
                   $(".module-area3").slideUp(400);
               });
               $(".module-close2").click(function (e) {
                   $('.blanks2').hide();
                   $(".module-area3").slideUp(400);//fadeOut()
               });

             
                   $(".TipButton").click(function (e) {
                       $('#Tip').show();
                       $(".module-area").slideDown(400);//fadeIn()
                       $('#text1').show();
                       $('#text2').hide();
                  

                   });
                   $(".TipButton1").click(function (e) {
                       $('#Tip').show();
                       $(".module-area").slideDown(400);//fadeIn()
                       $('#text2').show();
                       $('#text1').hide();
                   

                   });

       


                   $(".module-close").click(function (e) {
                       $('#Tip').hide();
                       $(".module-area").slideUp(400);//fadeOut()
                     
                    

                   });

               
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
                      
                      <p>该测试表为可自评、知情人评定或通过访谈来评定。分三部分测试，第一、二部分为测试者的基本信息资料，第三部分为测试内容，根据测试者的回答，在对应的方框内打勾；整个测试量表，分记录的题目和算分的题目。记录题（F1~A5，天数等不算分，追问的题目也不算分，如P5.1等保留不计分可不填）。</p>
                           
                               
                                <p style="margin-left:40%">  <asp:Label ID="Label4" class="btn btn-info login" runat="server" Text="开始测试"></asp:Label>
                                
                            </p>  
                       
                    </div>
   

    <div class="page-body" style="max-width: 960px; margin: 0 auto 0;">
        <div class="widget flat radius-bordered">
                        <asp:Label ID="StartDT" runat="server" Visible="false"></asp:Label> 
    <asp:Label ID="EndDT" runat="server" Visible="false" ></asp:Label>
<asp:Label ID="GUID" runat="server"  Visible="false"></asp:Label>
<asp:Label ID="TestName" runat="server"  Visible="false" ></asp:Label>
<asp:Label ID="PatientGUID" runat="server"  Visible="false"></asp:Label>
            <asp:Label ID="DoctorGUID" runat="server"  Visible="false"></asp:Label>
            <asp:Label ID="Marriage" runat="server" Visible="false" ></asp:Label>
  
              <div class="dragContainer" style="position:fixed;left:10px;top:50px;width:100%;">
      <div id="dragDiv" style="z-index:1001; ">
          
               <div id="Tip"> 
                 <div class="module-head">
                            <div class="module-close"></div>

                 </div>
                    <div id="substance" >
                <div style="text-align:center;" id="text1"><strong style="color:red;">提示卡一：</strong>
                健康问题：·疾病、疾患或其它健康问题·损伤·精神或情感问题·饮酒问题·药瘾问题
                <p>对从事一项活动有困难指的是：·吃力·不适或痛苦·速度减慢·改变从事此项活动的方式</p>
               <p><strong style="color:red;">提示卡二：</strong>无  轻度  中度 重度   极重度/不能做</p></div>
                  <div style="text-align:center;" id="text2"><strong style="color:red;">提示卡三：</strong>
                <p> A: 1天；</p><p>B: 2-7天=1周以内；</p><p> C: 8-14天 =2周以内；</p><p>D: 15-29天=2周以上；</p><p>E: 30天</p>
              </div>
                       </div>
            </div>

	  </div>
          </div>
           

            <div id="banner">
                T3 世界卫生组织残疾评估量表(WHO DAS )
            </div>
            <div class="widget-header bordered-bottom bordered-blue">
                <div style="text-align: left; padding-top: 10px;">
                    <p style="font-weight: bold">测试说明：</p>
                    <p>
                       该测试表为可自评、知情人评定或通过访谈来评定。分三部分测试，第一、二部分为测试者的基本信息资料，第三部分为测试内容，根据测试者的回答，在对应的方框内打勾；整个测试量表，分记录的题目和算分的题目。记录题（F1~A5，天数等不算分，追问的题目也不算分，如P5.1等保留不计分可不填）。
                    </p>
                </div>
            </div>
            <div class="widget-body bordered-bottom bordered-darkorange">
                <h5>第一部分：首页</h5>
                 <asp:Label ID="Error" runat="server" Text=""></asp:Label>
                <table class="table" style="width: 90%;">
                    <tr>
                        <th id="th1"><strong style="color: red">F1-F4由受检者在开始检查之前完成</strong></th>
                        <th id="th2"></th>
                    </tr>
                    <tr>
                        <th>F1、    受检者编码	</th>
                        <th>
                            <asp:TextBox ID="Num1" runat="server"></asp:TextBox></th>
                    </tr>
                    <tr>
                        <th>F2、  检查日期（月/日/年）</th>
                        <th>
                            <asp:TextBox ID="CDate" runat="server"  Enabled="false"></asp:TextBox>
                        </th>
                    </tr>
                    <tr>
                        <th colspan="2">F3 、  样本（只圈一项）
                                 <div class="row">
                                     <div class="col-lg-3 col-sm-3 col-xs-6">
                                         <div class="checkbox">
                                             <label>
                                                 <input type="checkbox" class="colored-blue" name="RR" value="1" />
                                                 <span class="text">A、一般人群</span>
                                             </label>
                                         </div>
                                     </div>
                                     <div class="col-lg-3 col-sm-3 col-xs-6">
                                         <div class="checkbox">
                                             <label>
                                                 <input type="checkbox" class="colored-blue" name="RR" value="2" />
                                                 <span class="text">B、药瘾</span>
                                             </label>
                                         </div>
                                     </div>
                                     <div class="col-lg-3 col-sm-3 col-xs-6">
                                         <div class="checkbox">
                                             <label>
                                                 <input type="checkbox" class="colored-blue" name="RR" value="3" />
                                                 <span class="text">C、酒瘾</span>
                                             </label>
                                         </div>
                                     </div>
                                     <div class="col-lg-3 col-sm-3 col-xs-6">
                                         <div class="checkbox">
                                             <label>
                                                 <input type="checkbox" class="colored-blue" name="RR" value="4" />
                                                 <span class="text">D、精神健康问题</span>
                                             </label>
                                         </div>
                                     </div>
                                 </div>
                            <div class="row">
                                <div class="col-lg-3 col-sm-3 col-xs-6">
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" class="colored-blue" name="RR" value="5" />
                                            <span class="text">E、躯体问题</span>
                                        </label>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-sm-3 col-xs-6">
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" class="colored-blue" name="RR" value="6" />
                                            <span class="text">F、其它（请注明）<asp:TextBox ID="F3Add" runat="server" Width="100%"></asp:TextBox></span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </th>






                    </tr>

                    <tr>
                        <th colspan="2">F4、 检查时的居住情况（只选一项）
                                 <div class="row">
                                     <div class="col-lg-3 col-sm-3 col-xs-6">
                                         <div class="checkbox">
                                             <label>
                                                 <input type="checkbox" class="colored-blue" name="SS" value="1" />
                                                 <span class="text">A、 在社区独立生活</span>
                                             </label>
                                         </div>
                                     </div>
                                     <div class="col-lg-3 col-sm-3 col-xs-6">
                                         <div class="checkbox">
                                             <label>
                                                 <input type="checkbox" class="colored-blue" name="SS" value="2" />
                                                 <span class="text">B、受人照顾</span>
                                             </label>
                                         </div>
                                     </div>
                                     <div class="col-lg-3 col-sm-3 col-xs-6">
                                         <div class="checkbox">
                                             <label>
                                                 <input type="checkbox" class="colored-blue" name="SS" value="3" />
                                                 <span class="text">C、住院 </span>
                                             </label>
                                         </div>
                                     </div>

                                 </div>

                        </th>

                    </tr>
                </table>
                <h5>第二部分: 人口学和背景资料</h5>
                前言：此项检查由世界卫生组织开发，目的是更好地了解人们因健康问题而存在的困难。您在检查中提供的信息是保密的，并将只用作研究。对来自一般人群（非临床人群）的受试者说：尽管您是健康人，没有困难，我也将询问您以下的全部问题。我将从一些背景问题开始。
                
                    <table class="table" style="width: 90%;">
                        <tr>
                            <th id="th1"><strong style="color: red">对来自一般人群（非临床人群）的受试者说：尽管您是健康人，没有困难，我也将询问您以下的全部问题。
我将从一些背景问题开始</strong></th>
                            <th id="th2"></th>
                        </tr>
                        <tr>
                            <th>A1、 性别			</th>
                            <th>
                                <asp:TextBox ID="Sex" runat="server" Enabled="false" ></asp:TextBox></th>
                        </tr>
                        <tr>
                            <th>A2、  您多大年纪? 	</th>
                            <th>
                                <asp:TextBox ID="Age" runat="server" Enabled="false"></asp:TextBox>/岁
                            </th>
                        </tr>
                        <tr>
                            <th>A3 、 您的学龄是多少年?			</th>
                            <th>
                                <asp:TextBox ID="EducationYears" runat="server" Enabled="false"></asp:TextBox>/年
                            </th>
                        </tr>
                        <tr>
                            <th colspan="2">A4  您目前的婚姻状况? （选择最适合的一项）
                              <div class="row">
                                  <div class="col-lg-3 col-sm-3 col-xs-6">
                                      <div class="checkbox">
                                          <label>
                                              <input type="checkbox" class="colored-blue" name="TT" value="1" />
                                              <span class="text">A、未婚</span>
                                          </label>
                                      </div>
                                  </div>
                                  <div class="col-lg-3 col-sm-3 col-xs-6">
                                      <div class="checkbox">
                                          <label>
                                              <input type="checkbox" class="colored-blue" name="TT" value="2" />
                                              <span class="text">B、现婚</span>
                                          </label>
                                      </div>
                                  </div>
                                  <div class="col-lg-3 col-sm-3 col-xs-6">
                                      <div class="checkbox">
                                          <label>
                                              <input type="checkbox" class="colored-blue" name="TT" value="3" />
                                              <span class="text">C、分居</span>
                                          </label>
                                      </div>
                                  </div>
                                  <div class="col-lg-3 col-sm-3 col-xs-6">
                                      <div class="checkbox">
                                          <label>
                                              <input type="checkbox" class="colored-blue" name="TT" value="4" />
                                              <span class="text">D、离婚</span>
                                          </label>
                                      </div>
                                  </div>
                              </div>
                                <div class="row">
                                    <div class="col-lg-3 col-sm-3 col-xs-6">
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox" class="colored-blue" name="TT" value="5" />
                                                <span class="text">E、丧偶</span>
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-sm-3 col-xs-6">
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox" class="colored-blue" name="TT" value="6" />
                                                <span class="text">F、同居</span>
                                            </label>
                                        </div>
                                    </div>
                                </div>

                            </th>
                        </tr>

                        <tr>
                            <th colspan="2">A5、哪一项是您最主要的工作?  （选择最适合的一项）
                                 <div class="row">
                                     <div class="col-lg-3 col-sm-3 col-xs-6">
                                         <div class="checkbox" onclick="check1()">
                                             <label>
                                                 <input type="checkbox"  class="colored-blue" name="XX" value="1" />
                                                 <span class="text">A、有偿工作 </span>
                                             </label>
                                         </div>
                                     </div>
                                     <div class="col-lg-3 col-sm-3 col-xs-6">
                                         <div class="checkbox" onclick="check2()">
                                             <label>
                                                 <input type="checkbox" class="colored-blue" name="XX" value="2" />
                                                 <span class="text">B、自雇工作(如自己的企业或农场)</span>
                                             </label>
                                         </div>
                                     </div>
                                     <div class="col-lg-3 col-sm-3 col-xs-6">
                                         <div class="checkbox" onclick="check3()">
                                             <label>
                                                 <input type="checkbox" class="colored-blue" name="XX" value="3" />
                                                 <span class="text">C、无偿工作(如志愿者或慈善人员) </span>
                                             </label>
                                         </div>
                                     </div>
                                     <div class="col-lg-3 col-sm-3 col-xs-6">
                                         <div class="checkbox" onclick="check4()">
                                             <label>
                                                 <input type="checkbox" class="colored-blue" name="XX" value="4" />
                                                 <span class="text">D、学生</span>
                                             </label>
                                         </div>
                                     </div>
                                 </div>
                                <div class="row">
                                    <div class="col-lg-3 col-sm-3 col-xs-6">
                                        <div class="checkbox" onclick="check5()">
                                            <label>
                                                <input type="checkbox" class="colored-blue" name="XX" value="5" />
                                                <span class="text">E、做家务</span>
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-sm-3 col-xs-6">
                                        <div class="checkbox" onclick="check6()">
                                            <label>
                                                <input type="checkbox" class="colored-blue" name="XX" value="6" />
                                                <span class="text">F、退休</span>
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-sm-3 col-xs-6">
                                        <div class="checkbox" onclick="check7()">
                                            <label>
                                                <input type="checkbox" class="colored-blue" name="XX" value="7" />
                                                <span class="text">G、无业（由于健康原因）</span>
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-sm-3 col-xs-6">
                                        <div class="checkbox" onclick="check8()">
                                            <label>
                                                <input type="checkbox" class="colored-blue" name="XX" value="8" />
                                                <span class="text">H、无业（由于其它原因）</span>
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-sm-3 col-xs-6">
                                        <div class="checkbox" onclick="check9()">
                                            <label>
                                                <input type="checkbox" class="colored-blue" name="XX" value="9" />
                                                <span class="text">G、 其它（请注明） <asp:TextBox ID="A5Add" runat="server" Width="100%"></asp:TextBox></span>
                                            </label>
                                        </div>
                                    </div>
                                </div>

                            </th>

                        </tr>
                    </table>

                <h5>第三部分:  前言</h5>
                向受试者说：
    此检查是关于人们由于健康原因而出现的困难。（向受试者出示提示卡1）。我指的健康原因包括：疾病或疾患、短期存在或是长久持续的其它健康问题、损伤、精神或情感问题、以及酒药问题。
                <p>
                    您回答问题时，我提醒您记住您所有的健康问题。当我问到您在进行一项活动时所遇到的困难时，<strong> 请您考虑（指着提示卡1）：              
   ·吃力
   ·不适或痛苦
   ·速度减慢
   ·改变您从事这种活动的方式
                    </strong>
                </p>
                <p><strong>(指着<a class="TipButton">提示卡1</a>）</strong>在回答问题时，请您考虑最近30天内的情况。平均而言，在最近30天内，您像往常一样从事某项活动时遇到了多大的困难。</p>
                <p><strong>（向受试者出示<a class="TipButton">提示卡2</a>）</strong>用这种方法评估，（大声宣读）：无，轻度，中度，重度，极重度或不能做。</p>
                <p><strong>（检查过程中，应让受试者始终能够看到<a class="TipButton">提示卡1和2</a>。在受试者提供经历困难的天数时，<a class="TipButton1">使用提示卡3。</a>）</strong></p>
                <hr />
                <h5>第四部分:  领域回顾</h5>
               <p> <strong>领域1--理解与交流 :<a class="TipButton"> 出示提示卡1和2,</a> 回答超过1（无）时，<a class="TipButton1">出示提示卡3</a></strong></p>
                <p|>现在我要询问一些有关理解与交流的问题---问：这些困难存在多少天？</p>
               <p>在最近30天内，您在以下活动中存在多大困难?   </p>

                <table class="table" style="width: 90%;" id="checkbox1">
                    <tr>
                        <th style="width:50%"></th>
                        <th>无</th>
                        <th>轻度 </th>
                        <th>中度 </th>
                        <th> 重度</th>
                        <th>极重度/不能做</th>
                        <th>天数代码</th>
                    </tr>
                    <tr>
                        <th>D1.1集中做事10分钟</th>
                         <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="a" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="a" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="a" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="a" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="a" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                       <th><asp:DropDownList ID="D11D" runat="server">
                          <asp:ListItem Value="1" Text="A">A</asp:ListItem>
                            <asp:ListItem Value="2" Text="B">B</asp:ListItem>
                            <asp:ListItem Value="3" Text="C">C</asp:ListItem>
                            <asp:ListItem Value="4" Text="D">D</asp:ListItem>
                            <asp:ListItem Value="5" Text="E">E</asp:ListItem>
                           </asp:DropDownList> </th>
                        
                    </tr>
                   <tr>
                        <th>D1.2记住做重要的事	</th>
                         <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="b" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="b" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="b" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="b" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="b" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                       <th><asp:DropDownList ID="D12D" runat="server">
                            <asp:ListItem Value="1" Text="A">A</asp:ListItem>
                            <asp:ListItem Value="2" Text="B">B</asp:ListItem>
                            <asp:ListItem Value="3" Text="C">C</asp:ListItem>
                            <asp:ListItem Value="4" Text="D">D</asp:ListItem>
                            <asp:ListItem Value="5" Text="E">E</asp:ListItem>
                           </asp:DropDownList></th>
                    </tr>
                     <tr>
                        <th>D1.3 在日常生活中分析并找到解决问题的办法</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="c" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="c" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="c" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="c" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="c" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th><asp:DropDownList ID="D13D" runat="server">
                            <asp:ListItem Value="1" Text="A">A</asp:ListItem>
                            <asp:ListItem Value="2" Text="B">B</asp:ListItem>
                            <asp:ListItem Value="3" Text="C">C</asp:ListItem>
                            <asp:ListItem Value="4" Text="D">D</asp:ListItem>
                            <asp:ListItem Value="5" Text="E">E</asp:ListItem>
                           </asp:DropDownList></th>
                    </tr>
                     <tr>
                        <th>D1.4  学习新事物（如学习去 一个新地方）</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="d" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="d" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="d" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="d" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="d" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                         <th><asp:DropDownList ID="D14D" runat="server">
                            <asp:ListItem Value="1" Text="A">A</asp:ListItem>
                            <asp:ListItem Value="2" Text="B">B</asp:ListItem>
                            <asp:ListItem Value="3" Text="C">C</asp:ListItem>
                            <asp:ListItem Value="4" Text="D">D</asp:ListItem>
                            <asp:ListItem Value="5" Text="E">E</asp:ListItem>
                           </asp:DropDownList></th>
                    </tr>
                     <tr>
                        <th>D1.5  大体上了解人们说什么</th>
                         <th>
                            <div class="checkbox" id="checkbox1">
                                <label>
                                    <input type="checkbox" name="e" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="e" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="e" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="e" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="e" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th><asp:DropDownList ID="D15D" runat="server">
                         <asp:ListItem Value="1" Text="A">A</asp:ListItem>
                            <asp:ListItem Value="2" Text="B">B</asp:ListItem>
                            <asp:ListItem Value="3" Text="C">C</asp:ListItem>
                            <asp:ListItem Value="4" Text="D">D</asp:ListItem>
                            <asp:ListItem Value="5" Text="E">E</asp:ListItem>
                           </asp:DropDownList></th>
                    </tr>
                   
                          <tr>
                        <th> D1.6  发起并继续一次谈话</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="f" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="f" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="f" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="f" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="f" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th><asp:DropDownList ID="D16D" runat="server">
                           <asp:ListItem Value="1" Text="A">A</asp:ListItem>
                            <asp:ListItem Value="2" Text="B">B</asp:ListItem>
                            <asp:ListItem Value="3" Text="C">C</asp:ListItem>
                            <asp:ListItem Value="4" Text="D">D</asp:ListItem>
                            <asp:ListItem Value="5" Text="E">E</asp:ListItem>
                           </asp:DropDownList></th>
                    </tr>
                    <tr>
                        <th><p>追问：如果对D1.1-D1.6中任何一个问题的评分超过1，追问：</p> P1.1  这些困难对您的生活影响多大?</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="g" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="g" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="g" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="g" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="g" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th><asp:DropDownList ID="P11D" runat="server">
                            <asp:ListItem Value="1" Text="A">A</asp:ListItem>
                            <asp:ListItem Value="2" Text="B">B</asp:ListItem>
                            <asp:ListItem Value="3" Text="C">C</asp:ListItem>
                            <asp:ListItem Value="4" Text="D">D</asp:ListItem>
                            <asp:ListItem Value="5" Text="E">E</asp:ListItem>
                           </asp:DropDownList></th>

                    </tr>
                </table>

                <hr />
                     <p> <strong>领域2--四处走动: <a class="TipButton">出示提示卡1和2</a>, 回答超过1（无）时，<a class="TipButton1">出示提示卡3</a></strong></p>
                <p|>现在我要询问您关于四处走动的困难---问：这些困难存在多少天？</p>
               <p>在最近30天内，您在以下活动中存在多大困难?   </p>

                <table class="table" style="width: 90%;" id="checkbox1">
                    <tr>
                        <th style="width:50%"></th>
                        <th>无</th>
                        <th>轻度 </th>
                        <th>中度 </th>
                        <th> 重度</th>
                        <th>极重度/不能做</th>
                        <th>天数代码</th>
                    </tr>
                    <tr><th> D2.1  长时间站立（如30分钟）</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="h" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="h" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="h" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="h" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="h" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th><asp:DropDownList ID="D21D" runat="server">
                          <asp:ListItem Value="1" Text="A">A</asp:ListItem>
                            <asp:ListItem Value="2" Text="B">B</asp:ListItem>
                            <asp:ListItem Value="3" Text="C">C</asp:ListItem>
                            <asp:ListItem Value="4" Text="D">D</asp:ListItem>
                            <asp:ListItem Value="5" Text="E">E</asp:ListItem>
                           </asp:DropDownList></th>
                    </tr>
                      <tr><th> D2.2　从座位上站起</th>
                       <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="i" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="i" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="i" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="i" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="i" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th><asp:DropDownList ID="D22D" runat="server">
                           <asp:ListItem Value="1" Text="A">A</asp:ListItem>
                            <asp:ListItem Value="2" Text="B">B</asp:ListItem>
                            <asp:ListItem Value="3" Text="C">C</asp:ListItem>
                            <asp:ListItem Value="4" Text="D">D</asp:ListItem>
                            <asp:ListItem Value="5" Text="E">E</asp:ListItem>
                           </asp:DropDownList></th>
                    </tr>
                      <tr><th>	D2.3  在家里来回移动	</th>
                       <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="j" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="j" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="j" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="j" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="j" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th><asp:DropDownList ID="D23D" runat="server">
                            <asp:ListItem Value="1" Text="A">A</asp:ListItem>
                            <asp:ListItem Value="2" Text="B">B</asp:ListItem>
                            <asp:ListItem Value="3" Text="C">C</asp:ListItem>
                            <asp:ListItem Value="4" Text="D">D</asp:ListItem>
                            <asp:ListItem Value="5" Text="E">E</asp:ListItem>
                           </asp:DropDownList></th>
                    </tr>
                      <tr><th>D2.4  走出家门	</th>
                       <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="k" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="k" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="k" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="k" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="k" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th><asp:DropDownList ID="D24D" runat="server">
                           <asp:ListItem Value="1" Text="A">A</asp:ListItem>
                            <asp:ListItem Value="2" Text="B">B</asp:ListItem>
                            <asp:ListItem Value="3" Text="C">C</asp:ListItem>
                            <asp:ListItem Value="4" Text="D">D</asp:ListItem>
                            <asp:ListItem Value="5" Text="E">E</asp:ListItem>
                           </asp:DropDownList></th>
                    </tr>
                      <tr><th> D2.5  长距离行走（如1公里）</th>
                      <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="l" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="l" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="l" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="l" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="l" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th><asp:DropDownList ID="D25D" runat="server">
                           <asp:ListItem Value="1" Text="A">A</asp:ListItem>
                            <asp:ListItem Value="2" Text="B">B</asp:ListItem>
                            <asp:ListItem Value="3" Text="C">C</asp:ListItem>
                            <asp:ListItem Value="4" Text="D">D</asp:ListItem>
                            <asp:ListItem Value="5" Text="E">E</asp:ListItem>
                           </asp:DropDownList></th>
                    </tr>
                      <tr><th><p>追问：如果对D2.1-D2.5中任何一个问题的评分超过1，追问：</p> P2.1  这些困难对您的生活影响多大?</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="m" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="m" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="m" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="m" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="m" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th><asp:DropDownList ID="P21D" runat="server">
                            <asp:ListItem Value="1" Text="A">A</asp:ListItem>
                            <asp:ListItem Value="2" Text="B">B</asp:ListItem>
                            <asp:ListItem Value="3" Text="C">C</asp:ListItem>
                            <asp:ListItem Value="4" Text="D">D</asp:ListItem>
                            <asp:ListItem Value="5" Text="E">E</asp:ListItem>
                           </asp:DropDownList></th>
                    </tr>
                     
                    </table>

                   <hr />
                     <p> <strong>领域3--自我照料: <a class="TipButton">出示提示卡1和2</a>, 回答超过1（无）时，<a class="TipButton1">出示提示卡3</a></strong></p>
                <p|> 现在我要询问您关于自我照料的困难---问：这些困难存在多少天？</p>
               <p>在最近30天内，您在以下活动中存在多大困难?   </p>

                <table class="table" style="width: 90%;" id="checkbox1">
                    <tr>
                        <th style="width:50%"></th>
                        <th>无</th>
                        <th>轻度 </th>
                        <th>中度 </th>
                        <th> 重度</th>
                        <th>极重度/不能做</th>
                        <th>天数代码</th>
                    </tr>
                    <tr><th>  D3.1	洗澡</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="n" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="n" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="n" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="n" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="n" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th><asp:DropDownList ID="D31D" runat="server">
                            <asp:ListItem Value="1" Text="A">A</asp:ListItem>
                            <asp:ListItem Value="2" Text="B">B</asp:ListItem>
                            <asp:ListItem Value="3" Text="C">C</asp:ListItem>
                            <asp:ListItem Value="4" Text="D">D</asp:ListItem>
                            <asp:ListItem Value="5" Text="E">E</asp:ListItem>
                           </asp:DropDownList></th>
                    </tr>
                      <tr><th> D3.2	穿衣</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="o" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="o" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="o" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="o" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="o" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th><asp:DropDownList ID="D32D" runat="server">
                            <asp:ListItem Value="1" Text="A">A</asp:ListItem>
                            <asp:ListItem Value="2" Text="B">B</asp:ListItem>
                            <asp:ListItem Value="3" Text="C">C</asp:ListItem>
                            <asp:ListItem Value="4" Text="D">D</asp:ListItem>
                            <asp:ListItem Value="5" Text="E">E</asp:ListItem>
                           </asp:DropDownList></th>
                    </tr>
                      <tr><th>  D3.3	进食</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="p" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="p" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="p" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="p" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="p" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th><asp:DropDownList ID="D33D" runat="server">
                            <asp:ListItem Value="1" Text="A">A</asp:ListItem>
                            <asp:ListItem Value="2" Text="B">B</asp:ListItem>
                            <asp:ListItem Value="3" Text="C">C</asp:ListItem>
                            <asp:ListItem Value="4" Text="D">D</asp:ListItem>
                            <asp:ListItem Value="5" Text="E">E</asp:ListItem>
                           </asp:DropDownList></th>
                    </tr>
                      <tr><th>D3.4	自己生活数日	</th>
                    <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="q" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="q" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="q" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="q" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="q" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th><asp:DropDownList ID="D34D" runat="server">
                           <asp:ListItem Value="1" Text="A">A</asp:ListItem>
                            <asp:ListItem Value="2" Text="B">B</asp:ListItem>
                            <asp:ListItem Value="3" Text="C">C</asp:ListItem>
                            <asp:ListItem Value="4" Text="D">D</asp:ListItem>
                            <asp:ListItem Value="5" Text="E">E</asp:ListItem>
                           </asp:DropDownList></th>
                    </tr>
                    
                      <tr><th><p>如果对D3.1-D3.4中任何一个问题的评分超过1，追问：</p>P3.1 这些困难对您的生活影响多大?</th>
                         <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="r" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="r" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="r" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="r" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="r" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th><asp:DropDownList ID="P31D" runat="server">
                           <asp:ListItem Value="1" Text="A">A</asp:ListItem>
                            <asp:ListItem Value="2" Text="B">B</asp:ListItem>
                            <asp:ListItem Value="3" Text="C">C</asp:ListItem>
                            <asp:ListItem Value="4" Text="D">D</asp:ListItem>
                            <asp:ListItem Value="5" Text="E">E</asp:ListItem>
                           </asp:DropDownList></th>
                    </tr>
                     
                    </table>
                   <hr />
                     <p> <strong>领域4---与他人相处: <a class="TipButton">出示提示卡1和2</a>, 回答超过1（无）时，<a class="TipButton1">出示提示卡3</a></strong></p>
                <p|> 现在我要询问您关于与他人相处的困难。请记住，我只询问由于健康问题所致的困难。这些问题包括：疾病或疾患、损伤、精神或情感问题、以及酒药问题。---问：这些困难存在多少天？</p>
               <p>在最近30天内，您在以下活动中存在多大困难?   </p>

                <table class="table" style="width: 90%;" id="checkbox1">
                    <tr>
                        <th style="width:50%"></th>
                        <th>无</th>
                        <th>轻度 </th>
                        <th>中度 </th>
                        <th> 重度</th>
                        <th>极重度/不能做</th>
                        <th>天数代码</th>
                    </tr>
                    <tr><th>  D4.1	与陌生人相处</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="s" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="s" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="s" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="s" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="s" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th><asp:DropDownList ID="D41D" runat="server">
                            <asp:ListItem Value="1" Text="A">A</asp:ListItem>
                            <asp:ListItem Value="2" Text="B">B</asp:ListItem>
                            <asp:ListItem Value="3" Text="C">C</asp:ListItem>
                            <asp:ListItem Value="4" Text="D">D</asp:ListItem>
                            <asp:ListItem Value="5" Text="E">E</asp:ListItem>
                           </asp:DropDownList></th>
                    </tr>
                      <tr><th>D4.2	保持友谊</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="t" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="t" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="t" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="t" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="t" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th><asp:DropDownList ID="D42D" runat="server">
                            <asp:ListItem Value="1" Text="A">A</asp:ListItem>
                            <asp:ListItem Value="2" Text="B">B</asp:ListItem>
                            <asp:ListItem Value="3" Text="C">C</asp:ListItem>
                            <asp:ListItem Value="4" Text="D">D</asp:ListItem>
                            <asp:ListItem Value="5" Text="E">E</asp:ListItem>
                           </asp:DropDownList></th>
                    </tr>
                      <tr><th> D4.3	与关系密切的人相处</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="u" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="u" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="u" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="u" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="u" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th><asp:DropDownList ID="D43D" runat="server">
                            <asp:ListItem Value="1" Text="A">A</asp:ListItem>
                            <asp:ListItem Value="2" Text="B">B</asp:ListItem>
                            <asp:ListItem Value="3" Text="C">C</asp:ListItem>
                            <asp:ListItem Value="4" Text="D">D</asp:ListItem>
                            <asp:ListItem Value="5" Text="E">E</asp:ListItem>
                           </asp:DropDownList></th>
                    </tr>
                      <tr><th> D4.4	结交新朋友</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="v" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="v" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="v" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="v" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="v" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th><asp:DropDownList ID="D44D" runat="server">
                            <asp:ListItem Value="1" Text="A">A</asp:ListItem>
                            <asp:ListItem Value="2" Text="B">B</asp:ListItem>
                            <asp:ListItem Value="3" Text="C">C</asp:ListItem>
                            <asp:ListItem Value="4" Text="D">D</asp:ListItem>
                            <asp:ListItem Value="5" Text="E">E</asp:ListItem>
                           </asp:DropDownList></th>
                    </tr>
                      <tr><th>  D4.5	性活动</th>
                         <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="w" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="w" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="w" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="w" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="w" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th><asp:DropDownList ID="D45D" runat="server">
                            <asp:ListItem Value="1" Text="A">A</asp:ListItem>
                            <asp:ListItem Value="2" Text="B">B</asp:ListItem>
                            <asp:ListItem Value="3" Text="C">C</asp:ListItem>
                            <asp:ListItem Value="4" Text="D">D</asp:ListItem>
                            <asp:ListItem Value="5" Text="E">E</asp:ListItem>
                           </asp:DropDownList></th>
                    </tr>
                      <tr><th><p>追问：如果对D4.1-D4.5中任何一个问题的评分超过1，追问：</p> P4.1	这些困难对您的生活影响多大?	</th>
                       <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="x" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="x" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="x" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="x" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="x" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th><asp:DropDownList ID="P41D" runat="server">
                            <asp:ListItem Value="1" Text="A">A</asp:ListItem>
                            <asp:ListItem Value="2" Text="B">B</asp:ListItem>
                            <asp:ListItem Value="3" Text="C">C</asp:ListItem>
                            <asp:ListItem Value="4" Text="D">D</asp:ListItem>
                            <asp:ListItem Value="5" Text="E">E</asp:ListItem>
                           </asp:DropDownList></th>
                    </tr>
                     
                    </table>
                   <hr />
                     <p> <strong>领域5--生活活动: <a class="TipButton">出示提示卡1和2</a>, 回答超过1（无）时，<a class="TipButton1">出示提示卡3</a></strong></p>
                <p|>家务活动
以下问题是关于这些活动的：操持家务和照料与您共同生活或关系密切的人。这些活动包括：做饭、打扫卫生、购物、照料他人和照管自己的物品。</p>
                <p style="background:#f2f2f2; width:90%;margin:auto;height:30px">
                    <strong>D5.1　您一般每周要花多少时间去从事这些活动?	  </strong>   <asp:TextBox ID="D51" runat="server"></asp:TextBox>小时</p>

                     ---问：这些困难存在多少天？
               <p>在最近30天内，由于您的健康原因，您在以下活动中存在多大困难? </p>

                <table class="table" style="width: 90%;" id="checkbox1">
                    <tr>
                        <th style="width:50%"></th>
                        <th>无</th>
                        <th>轻度 </th>
                        <th>中度 </th>
                        <th> 重度</th>
                        <th>极重度/不能做</th>
                        <th>天数代码</th>
                    </tr>
                    <tr><th>D5.2  承担家庭责任	</th>
                          <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="y" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="y" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="y" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="y" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="y" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th><asp:DropDownList ID="D52D" runat="server">
                            <asp:ListItem Value="1" Text="A">A</asp:ListItem>
                            <asp:ListItem Value="2" Text="B">B</asp:ListItem>
                            <asp:ListItem Value="3" Text="C">C</asp:ListItem>
                            <asp:ListItem Value="4" Text="D">D</asp:ListItem>
                            <asp:ListItem Value="5" Text="E">E</asp:ListItem>
                           </asp:DropDownList></th>
                    </tr>
                      <tr><th>D5.3  很好地完成您最重要的家务劳动</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="z" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="z" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="z" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="z" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="z" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th><asp:DropDownList ID="D53D" runat="server">
                           <asp:ListItem Value="1" Text="A">A</asp:ListItem>
                            <asp:ListItem Value="2" Text="B">B</asp:ListItem>
                            <asp:ListItem Value="3" Text="C">C</asp:ListItem>
                            <asp:ListItem Value="4" Text="D">D</asp:ListItem>
                            <asp:ListItem Value="5" Text="E">E</asp:ListItem>
                           </asp:DropDownList></th>
                    </tr>
                      <tr><th>D5.4 干完您需要做的所有家务劳动</th>
                       <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="AA" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="AA" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="AA" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="AA" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="AA" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th><asp:DropDownList ID="D54D" runat="server">
                            <asp:ListItem Value="1" Text="A">A</asp:ListItem>
                            <asp:ListItem Value="2" Text="B">B</asp:ListItem>
                            <asp:ListItem Value="3" Text="C">C</asp:ListItem>
                            <asp:ListItem Value="4" Text="D">D</asp:ListItem>
                            <asp:ListItem Value="5" Text="E">E</asp:ListItem>
                           </asp:DropDownList></th>
                    </tr>
                      <tr><th>D5.5 按照需要，尽快完成家务劳动</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="BB" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="BB" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="BB" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="BB" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="BB" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th><asp:DropDownList ID="D55D" runat="server">
                           <asp:ListItem Value="1" Text="A">A</asp:ListItem>
                            <asp:ListItem Value="2" Text="B">B</asp:ListItem>
                            <asp:ListItem Value="3" Text="C">C</asp:ListItem>
                            <asp:ListItem Value="4" Text="D">D</asp:ListItem>
                            <asp:ListItem Value="5" Text="E">E</asp:ListItem>
                           </asp:DropDownList></th>
                    </tr>
                      <tr><th colspan="7">如果对D5.2-D5.5中任何一个问题的评分超过1，追问：</th>
                      
                    </tr>
                      <tr><th> P5.1  这些困难对您的生活影响多大?</th>
                       <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="CC" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="CC" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="CC" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="CC" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="CC" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th><asp:DropDownList ID="P51D" runat="server">
                            <asp:ListItem Value="1" Text="A">A</asp:ListItem>
                            <asp:ListItem Value="2" Text="B">B</asp:ListItem>
                            <asp:ListItem Value="3" Text="C">C</asp:ListItem>
                            <asp:ListItem Value="4" Text="D">D</asp:ListItem>
                            <asp:ListItem Value="5" Text="E">E</asp:ListItem>
                           </asp:DropDownList></th>
                    </tr>
                      <tr><th> D5.6 在最近30天内，由于您的健康原因，您有多少天<strong style="border-bottom:1px double ">少做了或者完全没有做家务劳动?</strong>	</th>
                        
                        <th colspan="6"> &nbsp;&nbsp;&nbsp; <asp:TextBox ID="D56" runat="server"></asp:TextBox> 小时</th>
                    </tr>
                     
                    </table>
                 <div id="connent">
                <p style="color:red">如果受试者有工作(有偿、无偿、自雇)或是一名学生，则继续询问问题D５.7-D５.14，否则跳到下一页的领域6。</p>
                 现在，我要询问一些有关您工作或学习的问题。
                 <p style="background:#f2f2f2; width:90%;margin:auto;height:30px">
                    <strong>  D5.7  一般在一周时间内，您花多少个小时用于工作（如果是学生，则指学习时间）?　  </strong> <asp:TextBox ID="D57" runat="server"></asp:TextBox>小时</p>
          <br />
               -- 问：这些困难存在多少天?
 <p>在最近30天内，由于您的健康原因，您在以下活动中存在多大困难?	  </p>
                <table class="table" style="width: 90%;" id="checkbox1">
                    <tr>
                        <th style="width:50%"></th>
                        <th>无</th>
                        <th>轻度 </th>
                        <th>中度 </th>
                        <th> 重度</th>
                        <th>极重度/不能做</th>
                        <th>天数代码</th>
                    </tr>
                    <tr><th> D5.8  您的日常工作</th>
                       <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="DD" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="DD" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="DD" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="DD" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="DD" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th><asp:DropDownList ID="D58D" runat="server">
                            <asp:ListItem Value="1" Text="A">A</asp:ListItem>
                            <asp:ListItem Value="2" Text="B">B</asp:ListItem>
                            <asp:ListItem Value="3" Text="C">C</asp:ListItem>
                            <asp:ListItem Value="4" Text="D">D</asp:ListItem>
                            <asp:ListItem Value="5" Text="E">E</asp:ListItem>
                           </asp:DropDownList></th>
                    </tr>
                      <tr><th> D5.9  很好地完成您最重要的工作任务	</th>
                         <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="EE" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="EE" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="EE" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="EE" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="EE" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th><asp:DropDownList ID="D59D" runat="server">
                            <asp:ListItem Value="1" Text="A">A</asp:ListItem>
                            <asp:ListItem Value="2" Text="B">B</asp:ListItem>
                            <asp:ListItem Value="3" Text="C">C</asp:ListItem>
                            <asp:ListItem Value="4" Text="D">D</asp:ListItem>
                            <asp:ListItem Value="5" Text="E">E</asp:ListItem>
                           </asp:DropDownList></th>
                    </tr>
                      <tr><th> D5.10 完成您需要做的所有工作</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="FF" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="FF" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="FF" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="FF" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="FF" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th><asp:DropDownList ID="D510D" runat="server">
                            <asp:ListItem Value="1" Text="A">A</asp:ListItem>
                            <asp:ListItem Value="2" Text="B">B</asp:ListItem>
                            <asp:ListItem Value="3" Text="C">C</asp:ListItem>
                            <asp:ListItem Value="4" Text="D">D</asp:ListItem>
                            <asp:ListItem Value="5" Text="E">E</asp:ListItem>
                           </asp:DropDownList></th>
                    </tr>
                      <tr><th>D5.11按照需要尽快完成您的工作</th>
                         <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="GG" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="GG" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="GG" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="GG" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="GG" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th><asp:DropDownList ID="D511D" runat="server">
                            <asp:ListItem Value="1" Text="A">A</asp:ListItem>
                            <asp:ListItem Value="2" Text="B">B</asp:ListItem>
                            <asp:ListItem Value="3" Text="C">C</asp:ListItem>
                            <asp:ListItem Value="4" Text="D">D</asp:ListItem>
                            <asp:ListItem Value="5" Text="E">E</asp:ListItem>
                           </asp:DropDownList></th>
                    </tr>
                      <tr><th>   D5.12 您是否因为健康原因，不得不从事低层次的工作?</th>
                       
                        <th colspan="6">&nbsp;&nbsp;&nbsp;  <asp:DropDownList ID="D512" runat="server">
                            <asp:ListItem Value="1"> 是</asp:ListItem>
                            <asp:ListItem Value="2"> 否</asp:ListItem>
                                         </asp:DropDownList></th>
                    </tr>
                      <tr><th> D5.13您是否因为健康原因少挣钱?	</th>
                        <th colspan="6"> &nbsp;&nbsp;&nbsp; <asp:DropDownList ID="D513" runat="server">
                            <asp:ListItem Value="1"> 是</asp:ListItem>
                            <asp:ListItem Value="2"> 否</asp:ListItem>
                                         </asp:DropDownList></th>
                    </tr>
                    <tr><th colspan="7">如果对D5.8-D5.11中任何一个问题的评分超过1，追问：</th></tr>
                     <tr><th>P5.2  这些困难对您的生活影响多大?	</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="HH" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="HH" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="HH" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="HH" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="HH" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th></th>
                    </tr>
                      <tr><th> D5.14 在最近30天内，由于您的健康原因，您有多少天只能完成半天或者更少的工作量?</th>
                         <th colspan="6">
                             &nbsp;&nbsp;&nbsp; <asp:TextBox ID="D514" runat="server"></asp:TextBox> 天
                       </th>
                    </tr>
                     
                    </table>
               </div>
                   <hr />
                     <p> <strong>领域6--社会参与: <a class="TipButton">出示提示卡1和2</a></strong></p>
                <p|> 现在，我要询问您关于社会参与的问题，以及您的健康问题对您和您的家庭
 的影响。这些提问可能超出了最近30天的范围，但在回答时，请您主要回
答近30天的情况。我还要再次提醒您，在回答提问时考虑以下健康问题：
躯体方面、精神和情感方面、以及酒药相关问题。</p>
               <p style="color:red">注意： 此领域中的每个问题均不要求记录天数  </p>
               
                <table class="table" style="width: 90%;" id="checkbox1">
                    <tr>
                        <th style="width:50%"> 在最近30天内</th>
                        <th>无</th>
                        <th>轻度 </th>
                        <th>中度 </th>
                        <th> 重度</th>
                        <th>极重度/不能做</th>
                      
                    </tr>
                    <tr><th> D6.1  您同其他人一样参加社区活动（如节日活动、宗教活动或其它活动）时，存在多大困难?	</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="II" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="II" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="II" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="II" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="II" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>
                      <tr><th>D6.2  您周围环境的阻碍和限制，使您产生多大困难? 	</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="JJ" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="JJ" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="JJ" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="JJ" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="JJ" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>
                      <tr><th> D6.3  其他人的态度和行为对您有尊严地生活造成多大困难?</th>
                       <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="KK" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="KK" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="KK" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="KK" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="KK" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>
                      <tr><th> D6.4  您在自己的健康或疾病结局上花费多少时间?</th>
                     <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="LL" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="LL" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="LL" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="LL" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="LL" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>
                      <tr><th>D6.5  您的健康问题对情绪的影响有多大?</th>
                    <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="MM" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="MM" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="MM" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="MM" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="MM" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>
                      <tr><th> D6.6  您和您的家庭在您的健康问题上的经济花费有多大?</th>
                         <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="NN" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="NN" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="NN" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="NN" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="NN" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>
                    
                      <tr><th>D6.7  因为您的健康问题，您的家庭遇到多大困难? </th>
                      <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="OO" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="OO" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="OO" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="OO" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="OO" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>
                      <tr><th>D6.8 您自己在放松和休闲上遇到多大困难?</th>
                       <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="PP" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="PP" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="PP" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="PP" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="PP" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>
                      <tr><th colspan="6">追问：					  
如果对D6.1-D6.8中任何一个问题的评分超过1，追问：</th>
                       
                    </tr>
                      <tr><th>P6.1  这些困难对您的生活影响多大？</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="QQ" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="QQ" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="QQ" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="QQ" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="QQ" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>
                     
                      <tr><th> P6.2 在最近30天内，这些困难存在的天数?</th>
                   <th colspan="5"> &nbsp;&nbsp;&nbsp;  <asp:TextBox ID="P62" runat="server"></asp:TextBox> 天</th>
                    </tr>
                      <tr><th>H3  总体来说，在最近３０天内，您有多少天体验到了我们在检查中谈到的各种困难？</th>
                        <th colspan="5"> &nbsp;&nbsp;&nbsp; <asp:TextBox ID="H3" runat="server"></asp:TextBox> 天</th>
                     
                   </tr>
                   
                 
                 
                    </table>

                 <p> 检查到此结束，谢谢您的参与。</p>


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
                  <asp:Label ID="Marriages" runat="server" ForeColor="#EEEEEE"></asp:Label>
    <script type="text/javascript">
        checkboxToRadio("a");//需要转换的就添加这句
        checkboxToRadio("b");
        checkboxToRadio("c");
        checkboxToRadio("d");
        checkboxToRadio("e");
        checkboxToRadio("f");
        checkboxToRadio("g");
        checkboxToRadio("h");
        checkboxToRadio("i");
        checkboxToRadio("j");
        checkboxToRadio("k");
        checkboxToRadio("l");
        checkboxToRadio("m");
        checkboxToRadio("n");
        checkboxToRadio("o");
        checkboxToRadio("p");
        checkboxToRadio("q");
        checkboxToRadio("r");
        checkboxToRadio("s");
        checkboxToRadio("t");
        checkboxToRadio("u");
        checkboxToRadio("v");
        checkboxToRadio("w");
        checkboxToRadio("x");
        checkboxToRadio("y");
        checkboxToRadio("z");
        checkboxToRadio("AA");
        checkboxToRadio("BB");
        checkboxToRadio("CC");
        checkboxToRadio("DD");
        checkboxToRadio("EE");
        checkboxToRadio("FF");
        checkboxToRadio("GG");
        checkboxToRadio("HH");
        checkboxToRadio("II");
        checkboxToRadio("JJ");
        checkboxToRadio("KK");
        checkboxToRadio("LL");
        checkboxToRadio("MM");
        checkboxToRadio("NN");
        checkboxToRadio("OO");//需要转换的就添加这句
        checkboxToRadio("PP");
        checkboxToRadio("QQ");
        checkboxToRadio("RR");
        checkboxToRadio("SS");
        checkboxToRadio("TT");//需要转换的就添加这句
        checkboxToRadio("XX");
    
        document.onreadystatechange = function () {
            var MarryValue = document.getElementById("<%=Marriages.ClientID %>").textContent;

            if (MarryValue == "1") {
                $("input[name=TT][value='1']").attr("checked", true);
            }
            if (MarryValue == "2") {
                $("input[name=TT][value='2']").attr("checked", true);
            }
            if (MarryValue == "3") {
                $("input[name=TT][value='3']").attr("checked", true);
            }
            if (MarryValue == "4") {
                $("input[name=TT][value='4']").attr("checked", true);
            }
            if (MarryValue == "5") {
                $("input[name=TT][value='5']").attr("checked", true);
            }
            if (MarryValue == "6") {
                $("input[name=TT][value='6']").attr("checked", true);
            }

        }

        function checkboxToRadio(checkboxName, form) {
            if (checkboxName == null) return;
            var f = form || document.forms[0];
            var checkboxs = document.getElementsByName(checkboxName);
            
            for (i = 0; i < checkboxs.length; i++) {
                checkboxs[i].onclick = function () {
                    for (j = 0; j < checkboxs.length; j++) {
                        if (this.value != checkboxs[j].value && checkboxs[j].checked == true) {
                            checkboxs[j].checked = false;
                        }
                    }
                }
            }    
        }

        function check1() {
            connent.style.display = "block";
        }
        function check2() {
            connent.style.display = "block";
        }
        function check3() {
            connent.style.display = "block";
        }
        function check4() {
            connent.style.display = "block";
        }

        function check5() {
            connent.style.display = "none";
        }
        function check6() {
            connent.style.display = "none";
        }
        function check7() {
            connent.style.display = "none";
        }
        function check8() {
            connent.style.display = "none";    }
        function check9() {
            connent.style.display = "none";        }


        function ck() {
            var error = "";
                if (!$("input:checked[name=a]").is(':checked')) {
                    error += "第D1.1题" + "、";
                }
                if (!$("input:checked[name=b]").is(':checked')) {
                    error += "第D1.2题" + "、";
                }
                if (!$("input:checked[name=c]").is(':checked')) {
                    error += "第D1.3题" + "、";
                }
                if (!$("input:checked[name=d]").is(':checked')) {
                    error += "第D1.4题" + "、";
                }
                if (!$("input:checked[name=e]").is(':checked')) {
                    error += "第D1.5题" + "、";
                }
                if (!$("input:checked[name=f]").is(':checked')) {
                    error += "第D1.6题" + "、";
                }
                if (!$("input:checked[name=h]").is(':checked')) {
                    error += "第D2.1题" + "、";
                }
                if (!$("input:checked[name=i]").is(':checked')) {
                    error += "第D2.2题" + "、";
                }
                if (!$("input:checked[name=j]").is(':checked')) {
                    error += "第D2.3题" + "、";
                }
                if (!$("input:checked[name=k]").is(':checked')) {
                    error += "第D2.4题" + "、";
                }
                if (!$("input:checked[name=l]").is(':checked')) {
                    error += "第D2.5题" + "、";
                }
                if (!$("input:checked[name=n]").is(':checked')) {
                    error += "第D3.1题" + "、";
                }
                if (!$("input:checked[name=o]").is(':checked')) {
                    error += "第D3.2题" + "、";
                }
                if (!$("input:checked[name=p]").is(':checked')) {
                    error += "第D3.3题" + "、";
                }
                if (!$("input:checked[name=q]").is(':checked')) {
                    error += "第D3.4题" + "、";
                }
                if (!$("input:checked[name=s]").is(':checked')) {
                    error += "第D4.1题" + "、";
                }
                if (!$("input:checked[name=t]").is(':checked')) {
                    error += "第D4.2题" + "、";
                }
                if (!$("input:checked[name=u]").is(':checked')) {
                    error += "第D4.3题" + "、";
                }
                if (!$("input:checked[name=v]").is(':checked')) {
                    error += "第D4.4题" + "、";
                }
                if (!$("input:checked[name=w]").is(':checked')) {
                    error += "第D4.5题" + "、";
                }
                if (!$("input:checked[name=y]").is(':checked')) {
                    error += "第D5.2题" + "、";
                }
                if (!$("input:checked[name=z]").is(':checked')) {
                    error += "第D5.3题" + "、";
                }
                if (!$("input:checked[name=AA]").is(':checked')) {
                    error += "第D5.4题" + "、";
                }
                if (!$("input:checked[name=BB]").is(':checked')) {
                    error += "第D5.5题" + "、";
                }
                if (connent.style.display == "block") {
                    if (!$("input:checked[name=DD]").is(':checked')) {
                        error += "第D5.8题" + "、";
                    }
                    if (!$("input:checked[name=EE]").is(':checked')) {
                        error += "第D5.9题" + "、";
                    }
                    if (!$("input:checked[name=FF]").is(':checked')) {
                        error += "第D5.10题" + "、";
                    }
                    if (!$("input:checked[name=GG]").is(':checked')) {
                        error += "第D5.11题" + "、";
                    }

                }
                if (!$("input:checked[name=II]").is(':checked')) {
                    error += "第D6.1题" + "、";
                }
                if (!$("input:checked[name=JJ]").is(':checked')) {
                    error += "第D6.2题" + "、";
                }
                if (!$("input:checked[name=KK]").is(':checked')) {
                    error += "第D6.3题" + "、";
                }
                if (!$("input:checked[name=LL]").is(':checked')) {
                    error += "第D6.4题" + "、";
                }
                if (!$("input:checked[name=MM]").is(':checked')) {
                    error += "第D6.5题" + "、";
                }
                if (!$("input:checked[name=NN]").is(':checked')) {
                    error += "第D6.6题" + "、";
                }
                if (!$("input:checked[name=OO]").is(':checked')) {
                    error += "第D6.7题" + "、";
                }
                if (!$("input:checked[name=PP]").is(':checked')) {
                    error += "第D6.8题" + "、";
                }
                if (!$("input:checked[name=RR").is(':checked')) {
                    error += "第F3题" + "、";
                }
                if (!$("input:checked[name=SS]").is(':checked')) {
                    error += "第F4题" + "、";
                }
                if (!$("input:checked[name=XX]").is(':checked')) {
                    error += "第A5题" + "、";
                }
                if (!$("input:checked[name=TT]").is(':checked')) {
                    error += "第A4题" + "、";
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

    <style type="text/css">
        #checkbox1 i {
            margin: 0px;
        }

        #checkbox1 .text {
            display: table-row;
        }

        #checkbox1 th div {
            margin: auto;
            height: 25px;
            width: 22px;
            border: 2px solid #3DA0DB;
            padding: 0;
        }

        .table td, .table th {
            border-top: 1px dashed #ddd;
            border-bottom: 1px dashed #cad9ea;
        }

        #checkbox1 td, #checkbox1 th {
            border: 1px solid #cad9ea;
            padding: 8px 0px;
        }
    </style>
    </asp:Content>


