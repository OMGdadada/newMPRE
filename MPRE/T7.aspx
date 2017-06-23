<%@ Page Title="" Language="C#" MasterPageFile="~/Test.master" AutoEventWireup="true" CodeFile="T7.aspx.cs" Inherits="T7" %>

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
                      
                      <p>该测试表为为他评量表，单选题，根据测试者回答或操作表现情况，在恰当的选项上打钩。</p>
                           
                               
                                <p style="margin-left:40%">  <asp:Label ID="Label4" class="btn btn-info login" runat="server" Text="开始测试"></asp:Label>
                                
                            </p>  
                       
                    </div>
    <asp:Label ID="GUID" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="PatientGUID" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="DoctorGUID" runat="server"  Visible="false"></asp:Label>
    <asp:Label ID="TestName" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="StartDT" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="EndDT" runat="server" Text="" Visible="false"></asp:Label>
     <div class="page-body" style="max-width: 960px; margin: 0 auto 0;">
        <div class="widget flat radius-bordered">
            <div id="banner">
               T7 北京精神分裂症操作性功能评估量表(BP)
            </div>
            <div class="widget-header bordered-bottom bordered-blue">
                <div style="text-align: left; padding-top: 10px;">
                    <p style="font-weight: bold">测试说明：</p>
                    <p>该测试表为为他评量表，单选题，根据测试者回答或操作表现情况，在恰当的选项上打钩。 </p>
                </div>
            </div>
            <div class="widget-body bordered-bottom bordered-darkorange">
                <h5>一、计划交通</h5>
                小道具： 角色扮演卡片，一张包括3条公交线路（8、69、336路）、三条地铁线（1、2、3）、火车站、机场以及一些其他地址的地图。<strong style="color:red">（注意：如果被试提到出租车，您应该告之，假设我们不坐出租车。）</strong>
              <h5>将城市地图放在被试面前并询问下列问题：</h5>
                  <hr />
                <p>1．看地图，您在这（位置1），告诉我坐哪辆公交车可以到人民医院，时间1分钟。[单选题] </p>
                    <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="1" value="1" />
                                <span class="text">A、8路</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="1" value="0"/>
                                <span class="text">B、错误</span>
                            </label>
                        </div>
                    </div>
                </div>

                          <p>2．看地图，您在这（位置2），告诉我去中央公园的最佳线路，时间1分钟。[单选题] </p>
                    <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="2" value="2" />
                                <span class="text">A、69路、2路</span>
                            </label>
                        </div>
                    </div>
                           <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="2" value="1" />
                                <span class="text">B、69路、2路其中一条</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="2" value="0"/>
                                <span class="text">C、错误</span>
                            </label>
                        </div>
                    </div>
                </div>

                
                          <p>3.您在这（位置3），告诉我去火车站的最佳线路，时间1分钟。[单选题] </p>
                    <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="3" value="2" />
                                <span class="text">A、1号线、336路</span>
                            </label>
                        </div>
                    </div>
                         <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="3" value="1" />
                                <span class="text">B、1号线、336路其中一条</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="3" value="0"/>
                                <span class="text">C、错误</span>
                            </label>
                        </div>
                    </div>
                </div>

                
                          <p>4.您在这（位置4），告诉我去机场的最佳线路，时间1分钟。[单选题] </p>
                    <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="4" value="2" />
                                <span class="text">A、1号线、3号线</span>
                            </label>
                        </div>
                    </div>
                        <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="4" value="1" />
                                <span class="text">B、1号线、3号线其中一条</span>
                            </label>
                        </div>
                    </div>

                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="4" value="0"/>
                                <span class="text">C、错误</span>
                            </label>
                        </div>
                    </div>
                </div>

                
                          <p>5. 您在这（位置5），告诉我去红星电影院的最佳线路，时间1分钟。[单选题] </p>
                    <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="5" value="3" />
                                <span class="text">A、69路、336路、1号线</span>
                            </label>
                        </div>
                    </div>
                           <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="5" value="2" />
                                <span class="text">B、69路、336路、1号线其中两条</span>
                            </label>
                        </div>
                    </div>
                           <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="5" value="1" />
                                <span class="text">C、69路、336路、1号线其中一条</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="5" value="0"/>
                                <span class="text">D、错误</span>
                            </label>
                        </div>
                    </div>
                </div>
                <hr />
  
                         <h5>二、财务管理</h5>
                小道具：1张100块人民币纸币，1张50块人民币纸币，1张10块人民币纸币，1张5块人民币纸币，6张1块人民币纸币，1个5角硬币，6个1角硬币，1个5分硬币，6个1分硬币，1份医疗保险的报销说明，1张餐馆账单
                <p style="color:red";>程序: 将纸币按面额从大到小的顺序给被试。 （测试者注意：被试不能用笔算或计算器计算）</p>
                <hr />

                <p>1．想象您在一家商店里购物。我是收银员，您给我100块人民币付账单。（测查者从被试手里接过100块人民币）。购物花了46.51元。请数出应找给您的钱数。[单选题] </p>
                        <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="6" value="1" />
                                <span class="text">A、53.49元</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="6" value="0"/>
                                <span class="text">B、错误</span>
                            </label>
                        </div>
                    </div>
                </div>

                 <p>2. 将医疗保险报销说明交给被试并说“这是医疗保险报销说明，假设您在一家三级医院花费了36000元，请告诉我您可以报销多少钱？”[单选题] </p>
                        <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="7" value="1" />
                                <span class="text">A、32400元</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="7" value="0"/>
                                <span class="text">B、错误</span>
                            </label>
                        </div>
                    </div>
                </div>

                 <p>3．将餐馆账单交给被试并说“假设您与一个朋友在餐馆吃了顿饭，这是餐馆账单，除酒水之外可以打8折，那么您将付多少钱？”[单选题] </p>
                        <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="8" value="1" />
                                <span class="text">A、66元</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="8" value="0"/>
                                <span class="text">B、错误</span>
                            </label>
                        </div>
                    </div>
                </div>

                 <p>4．将暖气与房屋管理账单交给被试并说“这是暖气与物业费的账单”。</p>
                <p>（1）您要付钱的公司名称与电话号码是什么？ [单选题] </p>
                        <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="9" value="2" />
                                <span class="text">A、佳美物业公司、61538629</span>
                            </label>
                        </div>
                    </div>
                              <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="9" value="1" />
                                <span class="text">A、佳美物业公司、61538629答对其中一个</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="9" value="0"/>
                                <span class="text">B、错误</span>
                            </label>
                        </div>
                    </div>
                </div>

                 <p>（2）暖气费与物业费各是多少钱？  [单选题] </p>
                        <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="10" value="2" />
                                <span class="text">A、1260元、256.78元</span>
                            </label>
                        </div>
                    </div>
                              <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="10" value="1" />
                                <span class="text">A、1260元、256.78元答对其中一个</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="10" value="0"/>
                                <span class="text">B、错误</span>
                            </label>
                        </div>
                    </div>
                </div>
                   <p>（3）这些账单应该在什么时候支付？     [单选题] </p>
                        <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="11" value="1" />
                                <span class="text">A、2010.1.31之前</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="11" value="0"/>
                                <span class="text">B、错误</span>
                            </label>
                        </div>
                    </div>
                </div>
                <hr />

                
                         <h5>三、工作</h5>
                小道具：1张圆餐桌，高75cm，直径150cm、餐桌上放置餐具、11副餐具，每副包括水杯、餐巾、红酒杯、白酒杯、饭碗、汤匙、食物碟、骨碟、金属勺、勺垫、筷子与牙签。1个收银机。财务现金、1组有条形码和价格的商品，包括3个商品。牛奶、啤酒和可乐，总价36.70元。
                <p style="color:red";>1.准备餐具-----将12种餐具自左向右排成2排，第一排是水杯、餐巾、红酒杯、白酒杯、碗、汤匙。第二排是餐碟、骨碟、金属餐勺、勺垫、筷子与牙签。 指着餐具说：这是一些餐具，我希望您为10个人准备餐具，
向被试展示在圆桌中间摆放餐具。首先放骨碟，并将餐碟放在上面，之后将勺垫放在碟子的右侧，将金属餐勺放在上面，将筷子放在金属餐勺的右侧，牙签放在左侧，将餐巾放入玻璃水杯，红酒杯与白酒杯从左至右放在碟子的前面，将碗放在碟子的左上方并将汤勺放入。将这些摆放在餐桌中央并说：
现在您有5分钟将这些餐具放在餐桌上，从这开始，（指着正对着样板的位置），请按顺时针的顺序快速有序的摆放，必须按照我摆的样子摆，但您不必按照我摆放的顺序进行。尽量不要打碎这些餐具。
准备好了么？开始！
5分钟后，喊“停”。</p>
                <p>W1数量:[单选题] </p>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="12" value="4" />
                                <span class="text">A、9套以上</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="12" value="3"/>
                                <span class="text">B、7-9套</span>
                            </label>
                        </div>
                    </div>
              
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="12" value="2" />
                                <span class="text">C、3-6套</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="12" value="1"/>
                                <span class="text">D、<3套</span>
                            </label>
                        </div>
                    </div>
                      <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="12" value="0"/>
                                <span class="text">E、无</span>
                            </label>
                        </div>
                    </div>
                </div>

         
                <p style="color:red";>2.做一名收银员------将收银机放在被试面前，将全部现金（除了1张100元的钞票）放入收银机。并说
假设您是超市的一名的收银员，我将假装为超市的顾客，请您做一名收银员所需要做的事。
将牛奶、啤酒以及可乐放在被试面前，等待被试的反应，如果被试说“你好”，你给予相同的回复，如果被试什么没说而是直接扫条形码，你应该说“你好”并观察被试的反应。
如果被试说“36.70元”在被试结束扫描后，给被试100元并等待找零。
如果被试在结束扫描后什么也没说，你应该问到“多少钱？”，如果被试回答正确，给被试100元并等待找零。如果不正确，你应该说“可能错了，价格应该是36.70元”，如果有必要解释为什么是这个价格，之后给被试100元并等待找零。
如果被试未找零，问被试要。如果被试找零正确，你应该说“不错”并等待购物小票；如果找零不正确，你应该说“应该找63.30元”，如果有必要解释为什么是这个价格，等待购物小票。
如果被试没给你购物小票，提醒被试。如果给你购物小票了，等待被试的进一步反应。
收回所有钱币，拿走所有的道具。</p>

                 <p>W3 扫码:[单选题] </p>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="13" value="1" />
                                <span class="text">A、扫码正确</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="13" value="0"/>
                                <span class="text">B、 扫码错误</span>
                            </label>
                        </div>
                    </div>
                    </div>
                    <p> W4 总价:[单选题] </p>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="14" value="2" />
                                <span class="text">A、主动告知 </span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="14" value="1"/>
                                <span class="text">B、 回答正确</span>
                            </label>
                        </div>
                    </div>
                 <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="14" value="0"/>
                                <span class="text">B、 扫码错误</span>
                            </label>
                        </div>
                    </div>
                </div>
                     <p> W5 输金额:[单选题] </p>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="15" value="1" />
                                <span class="text">A、输入正确 </span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="15" value="0"/>
                                <span class="text">B、 输入错误</span>
                            </label>
                        </div>
                    </div>
                    </div>
                          <p>  W6 找零:[单选题] </p>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="16" value="2" />
                                <span class="text">A、主动找零 </span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="16" value="1"/>
                                <span class="text">B、 找零正确</span>
                            </label>
                        </div>
                    </div>
                     <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="16" value="0"/>
                                <span class="text">B、 找零错误 </span>
                            </label>
                        </div>
                    </div>
                              
                </div>

                    
                          <p>   W7 购物小票:[单选题] </p>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="17" value="2" />
                                <span class="text">A、自行给 </span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="17" value="1"/>
                                <span class="text">B、 询问下给</span>
                            </label>
                        </div>
                    </div>
                     <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="17" value="0"/>
                                <span class="text">B、 无反应  </span>
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
             <script type="text/javascript">
        checkboxToRadio("1");//需要转换的就添加这句
         checkboxToRadio("2");
         checkboxToRadio("3");
         checkboxToRadio("4");
         checkboxToRadio("5");
         checkboxToRadio("6");//需要转换的就添加这句
         checkboxToRadio("7");
        checkboxToRadio("8");
        checkboxToRadio("9");
        checkboxToRadio("10");
        checkboxToRadio("11");
        checkboxToRadio("12");
        checkboxToRadio("13");
        checkboxToRadio("14");
        checkboxToRadio("15");
        checkboxToRadio("16");
        checkboxToRadio("17");
       
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
                     for (var i = 1; i <= 17; i++)//条件：i应小于等于必做题目的总数
                     {
                         if (!$("input:checked[name=" + i + "]").is(':checked')) {
                             if (i >= 1 && i <= 5) { error = "第一部分：计划交通" + "、"; }
                             else if (i >= 6 && i <= 11) { error = "第二部分：财务管理" + "、"; }
                             else { error = "第三部分：工作" + "、"; }
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

