<%@ Page Title="" Language="C#" MasterPageFile="~/Test.master" AutoEventWireup="true" CodeFile="T2.aspx.cs" Inherits="T2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script type="text/javascript">
        document.onreadystatechange = function () {
            if (document.readyState == "complete") {
                //var d = document.getElementById('dragDiv');
                $(".login").click(function (e) {
                    $('.blanks2').hide();
                    $(".module-area3").slideUp(400);
                });
                $(".module-close2").click(function (e) {
                    $('.blanks2').hide();
                    $(".module-area3").slideUp(400);//fadeOut()
                });


            
                $(".Explain1").click(function (e) {
                    $('#Tip').show();
                    $(".module-area").slideDown(400);//fadeIn()
                    $('#text1').show();
                    $('#text3').show();
                    $('#text2').hide();
                    $('#text4').hide();
                    $('#text5').hide();
                    $('#text6').hide();
                    //d.style.top = "0";
                    //d.style.left = "0";

                });
                $(".Explain2").click(function (e) {
                    $('#Tip').show();
                    $(".module-area").slideDown(400);//fadeIn()
                    $('#text2').show();
                    $('#text4').show();
                    $('#text3').hide();
                    $('#text1').hide();
                    $('#text5').hide();
                    $('#text6').hide();
                    //d.style.top = "0";
                    //d.style.left = "0";

                });
                $(".Explain3").click(function (e) {
                    $('#Tip').show();
                    $(".module-area").slideDown(400);//fadeIn()
                    $('#text5').show();
                    $('#text6').show();
                    $('#text2').hide();
                    $('#text4').hide();
                    $('#text3').hide();
                    $('#text1').hide();
                    //d.style.top = "0";
                    //d.style.left = "0";

                });




                $(".module-close").click(function (e) {
                    $('#Tip').hide();
                    $(".module-area").slideUp(400);//fadeOut()



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
                      
                      <p>该测试表为为他评量表，根据测试者情况，从“无”到“非常严重”按6级评分。在下拉框中选择对应选项。</p>
                           
                               
                                <p style="margin-left:40%">  <asp:Label ID="Label4" class="btn btn-info login" runat="server" Text="开始测试"></asp:Label>
                                
                            </p>  
                       
                    </div>



    <div class="dragContainer" style="position: fixed; left: 10px; top:5px; width: 100%;">
        <div id="dragDiv" style="z-index: 1001;">
            <div id="Tip" style="background: #ffffff; width: 800px;">
                <div class="module-head">
                    <strong style="color: red;" id="text3">a-c方面的严重程度：</strong>
                    <strong style="color: red;" id="text4">d方面的严重程度：</strong>
                    <strong style="color: red;" id="text5">全表评分说明：</strong>
                    <div class="module-close"></div>

                </div>
                <div style="text-align: left; padding: 10px;" id="text1">
                    1.无；
            <p>2.轻度，只有非常熟悉受试者的人才能觉察到某方面的困难；</p>
                    <p>3.中度，所有的人都能觉察到受试者有某方面的困难，但是按照其社会文化背景、年龄、性别和受教育水平，该困难并未造成受试者在某方面的功能实质性下降；</p>
                    <p>4.偏重，其困难严重干扰某方面的功能，但是在没有专业人员*或社会帮助的情况下受试者仍然能够做一些事情，尽管做得不充分或只是偶尔能做；若得到他人帮助，受试者可达到以前的功能水平；</p>
                    <p>5.重度，若没有专业人员*的帮助，其困难使受试者无法进行某方面的任何功能；或者导致受试者具有破坏性，但是没有生命危险； </p>
                    <p>6.极重，严重的损害和困难危及受试者生命；</p>
                </div>
                <div style="text-align: left; padding: 10px;" id="text2">
                    1.无
                <p>2.轻度，轻度无礼，不太符合社会规范的行为，或因琐事而抱怨；</p>
                    <p>3.中度，不符合社会规范的行为，如说话声音太大，或与他人说话时显得过于近乎，或进食方式不合礼仪；</p>
                    <p>4.偏重，当众侮辱他人，损坏物品，经常出现不符合社会规范但非危险性的行为（如当众脱光衣服或小便），<a style="text-decoration: none;">非偶然的</a>；</p>
                    <p>5.重度，经常有言语威胁或经常有身体攻击，但非蓄意也没有造成严重伤害的可能性，<a style="text-decoration: none;">非偶然的</a>；</p>
                    <p>6.极重，经常出现攻击行为，欲造成或者很可能导致严重伤害，<a style="text-decoration: none;">非偶然的</a>；</p>
                    <p style="color: red">
                        ※如果只是“偶然”而不是“非偶然的”出现攻击行为，评分时减一级。
                    </p>
                    <p style="color: red">
                        “非偶然的”定义为一个月内出现三次以上相关行为，或虽少于三次但评估者根据目前情境与过去表现认为未来有再次出现的危险性。
                    </p>
                </div>
                <div style="text-align: left; padding: 10px;" id="text6">
                    <table class="table" style="width: 100%">
                        <tr>

                            <th id="th2">标准</th>
                            <th id="th1">评分</th>

                        </tr>
                        <tr>

                            <th>100-91</th>
                            <th>全部4个维度的功能均优异。受试者因良好的品质而得到高度评价，能够充分地应对生活问题，参与广泛的兴趣活动</th>

                        </tr>
                        <tr>
                            <th>90-81</th>
                            <th>全部4个维度的功能良好，只有常见的问题和困难</th>
                        </tr>
                        <tr>
                            <th>80-71</th>
                            <th>a-c维度中一个或多个存在轻度困难</th>
                        </tr>
                        <tr>
                            <th>70-61</th>
                            <th>a-c维度中一个或多个存在中度但不偏重的困难，或者d维度存在轻度困难</th>
                        </tr>
                        <tr>
                            <th>60-51</th>
                            <th>a-c维度之一存在偏重的困难，或者d维度存在中度困难</th>
                        </tr>
                        <tr>
                            <th>50-41</th>
                            <th>a-c维度中两个或三个存在偏重的困难，或者一个领域存在重度困难，d维度存在或不存在中度困难</th>
                        </tr>
                        <tr>
                            <th>40-31</th>
                            <th>a-c维度中之一存在重度的困难且至少一项存在偏重困难，或者d维度存在偏重困难</th>
                        </tr>
                        <tr>
                            <th>30-21</th>
                            <th>a-c维度中有两个存在重度的困难，或者d维度存在重度困难，伴或不伴a-c维度的损害</th>
                        </tr>
                        <tr>
                            <th>20-11</th>
                            <th>所有a-d维度均存在重度困难，或者d维度存在极重度困难，伴或不伴整个a-c维度的损害。若病人对外界刺激有反应，建议评分为20-16；若没有反应，建议评分为15-11</th>
                        </tr>
                        <tr>
                            <th>10-1</th>
                            <th>基本功能缺乏自主性，伴有极端的行为，但是没有生命危险（评分6-10），或有生命危险，如因营养不良、脱水、感染、不能识别明显危险的环境引起的死亡危险（评分5-1）</th>
                        </tr>

                    </table>

                </div>
            </div>

        </div>
    </div>

    <asp:Label ID="StartDT" runat="server" Visible="false"></asp:Label> 
    <asp:Label ID="EndDT" runat="server" Visible="false" ></asp:Label>
<asp:Label ID="GUID" runat="server"  Visible="false"></asp:Label>
<asp:Label ID="TestName" runat="server"  Visible="false" ></asp:Label>
<asp:Label ID="PatientGUID" runat="server"  Visible="false"></asp:Label>
       <asp:Label ID="DoctorGUID" runat="server" Text="" Visible="false"></asp:Label>

    <div class="page-body" style="max-width: 960px; margin: 0 auto 0;">
        <div class="widget flat radius-bordered">
            <div id="banner">
                T2 个人与社会表现量表(PSP) 
            </div>
            <div class="widget-header bordered-bottom bordered-blue">
                <div style="text-align: left; padding-top: 10px;">
                    <p style="font-weight: bold">测试说明：</p>
                    <p>
                        该测试表为为他评量表，根据测试者情况，从“无”到“非常严重”按6级评分。在下拉框中选择对应选项。

                    </p>
                </div>
            </div>

            <div class="widget-body bordered-bottom bordered-darkorange">
                <h5>PSP评定4个方面的功能：a 社会中有用的活动，b 个人和社会关系，c 自我照料，d 干扰和攻击行为。但访谈实践中，比较容易涉及的话题是日常生活和自我照料，比较困难也对患者比较有压力的是紊乱和攻击行为，因此，本提纲的访谈顺序是c-a-b-d.
                </h5>
                <h5>在操作时采用两套标准对严重度评分。 一套是对<a class="Explain1">a-c方面</a>，一套只对<a class="Explain2">d方面</a>。 </h5>
                <br />
                引导语：下面我想问你最近一个月（或上次访谈以来）的情况。告诉我，这段时间来你的情况还好吗？
                <p></p>
                c：自我照料 →<strong class="Explain1">评分说明</strong>
                <table class="table" style="width: 100%">
                    <tr>
                        <th id="th1">问题</th>
                        <th id="th2">评分</th>

                    </tr>
                    <tr>
                        <th>1.你是自己住还是与谁住在一起？有人照顾你吗？你需要人照顾吗？如果（需要）有人照顾：哪些事情需要人照顾？</th>
                        <th>
                            <asp:DropDownList ID="DDL1" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">轻度</asp:ListItem>
                                <asp:ListItem Value="2">中度</asp:ListItem>
                                <asp:ListItem Value="3">偏重</asp:ListItem>
                                <asp:ListItem Value="4">重度</asp:ListItem>
                                <asp:ListItem Value="5">极重</asp:ListItem>
                            </asp:DropDownList>
                        </th>

                    </tr>
                    <tr>
                        <th>2.医生给你开药了吗？你能按时服药吗？需要有人提醒或督促或拿给你吃吗？</th>
                        <th>
                            <asp:DropDownList ID="DDL2" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">轻度</asp:ListItem>
                                <asp:ListItem Value="2">中度</asp:ListItem>
                                <asp:ListItem Value="3">偏重</asp:ListItem>
                                <asp:ListItem Value="4">重度</asp:ListItem>
                                <asp:ListItem Value="5">极重</asp:ListItem>
                            </asp:DropDownList></th>

                    </tr>
                    <tr>
                        <th>3.一日三餐正规吗？需要人提醒或督促吗？是别人准备好了你才吃的吗？如果没有准备好食物，你会自己设法做或去买吗？</th>
                        <th>
                            <asp:DropDownList ID="DDL3" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">轻度</asp:ListItem>
                                <asp:ListItem Value="2">中度</asp:ListItem>
                                <asp:ListItem Value="3">偏重</asp:ListItem>
                                <asp:ListItem Value="4">重度</asp:ListItem>
                                <asp:ListItem Value="5">极重</asp:ListItem>
                            </asp:DropDownList></th>

                    </tr>
                    <tr>
                        <th>4.你多少时间洗一次澡 ？洗头发呢？换衣服呢？洗衣服呢？需要人提醒或督促吗？</th>
                        <th>
                            <asp:DropDownList ID="DDL4" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">轻度</asp:ListItem>
                                <asp:ListItem Value="2">中度</asp:ListItem>
                                <asp:ListItem Value="3">偏重</asp:ListItem>
                                <asp:ListItem Value="4">重度</asp:ListItem>
                                <asp:ListItem Value="5">极重</asp:ListItem>
                            </asp:DropDownList></th>

                    </tr>
                    <tr>
                        <th>5.你天天刷牙吗？（如果不是天天刷：多久刷1次？）需要人提醒或督促吗？ </th>
                        <th>
                            <asp:DropDownList ID="DDL5" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">轻度</asp:ListItem>
                                <asp:ListItem Value="2">中度</asp:ListItem>
                                <asp:ListItem Value="3">偏重</asp:ListItem>
                                <asp:ListItem Value="4">重度</asp:ListItem>
                                <asp:ListItem Value="5">极重</asp:ListItem>
                            </asp:DropDownList></th>

                    </tr>
                    <tr>
                        <th>6.你注意穿着打扮吗？你觉得自己的外表如何？你觉得别人对你的外表评价如何？</th>
                        <th>
                            <asp:DropDownList ID="DDL6" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">轻度</asp:ListItem>
                                <asp:ListItem Value="2">中度</asp:ListItem>
                                <asp:ListItem Value="3">偏重</asp:ListItem>
                                <asp:ListItem Value="4">重度</asp:ListItem>
                                <asp:ListItem Value="5">极重</asp:ListItem>
                            </asp:DropDownList></th>

                    </tr>


                </table>
                <br />

                a：社会中有用的活动，包括工作和学习→<strong class="Explain1">评分说明</strong>
                <table class="table" style="width: 100%">
                    <tr>
                        <th id="th1">问题</th>
                        <th id="th2">评分</th>

                    </tr>
                    <tr>
                        <th>1.最近1个月你是怎么过的？你的时间是如何安排的？</th>
                        <th>
                            <asp:DropDownList ID="DDL7" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">轻度</asp:ListItem>
                                <asp:ListItem Value="2">中度</asp:ListItem>
                                <asp:ListItem Value="3">偏重</asp:ListItem>
                                <asp:ListItem Value="4">重度</asp:ListItem>
                                <asp:ListItem Value="5">极重</asp:ListItem>
                            </asp:DropDownList></th>

                    </tr>
                    <tr>
                        <th>2.你工作吗？在哪里做些志愿工作吗？上学吗？参加任何治疗项目吗？（如果是，每周多少时间？如何安排的？你都去吗？）你的工作/学习/治疗任务能完成吗？你是否很努力地去做好它？你觉得你做得好吗？别人认为你做得好吗？ 你能遵守劳动/学习纪律吗？</th>
                        <th>
                            <asp:DropDownList ID="DDL8" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">轻度</asp:ListItem>
                                <asp:ListItem Value="2">中度</asp:ListItem>
                                <asp:ListItem Value="3">偏重</asp:ListItem>
                                <asp:ListItem Value="4">重度</asp:ListItem>
                                <asp:ListItem Value="5">极重</asp:ListItem>
                            </asp:DropDownList></th>

                    </tr>
                    <tr>
                        <th>3.你得病前最好的工作/学习状态是什么样的？</th>
                        <th>
                            <asp:DropDownList ID="DDL9" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">轻度</asp:ListItem>
                                <asp:ListItem Value="2">中度</asp:ListItem>
                                <asp:ListItem Value="3">偏重</asp:ListItem>
                                <asp:ListItem Value="4">重度</asp:ListItem>
                                <asp:ListItem Value="5">极重</asp:ListItem>
                            </asp:DropDownList></th>

                    </tr>
                    <tr>
                        <th>4.最近1个月你做家务吗，如做饭、打扫卫生，采购食品？做得多吗？多少时间做1次？做的好吗？家人怎么认为的？</th>
                        <th>
                            <asp:DropDownList ID="DDL10" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">轻度</asp:ListItem>
                                <asp:ListItem Value="2">中度</asp:ListItem>
                                <asp:ListItem Value="3">偏重</asp:ListItem>
                                <asp:ListItem Value="4">重度</asp:ListItem>
                                <asp:ListItem Value="5">极重</asp:ListItem>
                            </asp:DropDownList></th>

                    </tr>
                    <tr>
                        <th>5.你参加集体活动或有组织的活动吗，如宗教活动、康复小组活动、俱乐部？多久参加1次？</th>
                        <th>
                            <asp:DropDownList ID="DDL11" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">轻度</asp:ListItem>
                                <asp:ListItem Value="2">中度</asp:ListItem>
                                <asp:ListItem Value="3">偏重</asp:ListItem>
                                <asp:ListItem Value="4">重度</asp:ListItem>
                                <asp:ListItem Value="5">极重</asp:ListItem>
                            </asp:DropDownList></th>

                    </tr>
                    <tr>
                        <th>6.闲暇时间你是怎么打发的？你有什么爱好吗,如修东西、打毛衣、园艺？你经常做吗？有收益吗？</th>
                        <th>
                            <asp:DropDownList ID="DDL12" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">轻度</asp:ListItem>
                                <asp:ListItem Value="2">中度</asp:ListItem>
                                <asp:ListItem Value="3">偏重</asp:ListItem>
                                <asp:ListItem Value="4">重度</asp:ListItem>
                                <asp:ListItem Value="5">极重</asp:ListItem>
                            </asp:DropDownList></th>

                    </tr>


                </table>
                <br />

                b：个人和社会关系→<strong class="Explain1">评分说明</strong>
                <table class="table" style="width: 100%">
                    <tr>
                        <th id="th1">问题</th>
                        <th id="th2">评分</th>

                    </tr>
                    <tr>
                        <th>1.你有亲近的人吗？是谁？你跟他（们）的交往频繁吗？上个月有多少时间你跟他（们）在一起？</th>
                        <th>
                            <asp:DropDownList ID="DDL13" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">轻度</asp:ListItem>
                                <asp:ListItem Value="2">中度</asp:ListItem>
                                <asp:ListItem Value="3">偏重</asp:ListItem>
                                <asp:ListItem Value="4">重度</asp:ListItem>
                                <asp:ListItem Value="5">极重</asp:ListItem>
                            </asp:DropDownList></th>

                    </tr>
                    <tr>
                        <th>2.上个月有多少时间你一人独处/跟家人在一起/跟朋友在一起？你经常给亲戚朋友打电话吗？ </th>
                        <th>
                            <asp:DropDownList ID="DDL14" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">轻度</asp:ListItem>
                                <asp:ListItem Value="2">中度</asp:ListItem>
                                <asp:ListItem Value="3">偏重</asp:ListItem>
                                <asp:ListItem Value="4">重度</asp:ListItem>
                                <asp:ListItem Value="5">极重</asp:ListItem>
                            </asp:DropDownList></th>

                    </tr>
                    <tr>
                        <th>3.你跟工作/学校/治疗组的人相处得好吗？有来往吗？</th>
                        <th>
                            <asp:DropDownList ID="DDL15" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">轻度</asp:ListItem>
                                <asp:ListItem Value="2">中度</asp:ListItem>
                                <asp:ListItem Value="3">偏重</asp:ListItem>
                                <asp:ListItem Value="4">重度</asp:ListItem>
                                <asp:ListItem Value="5">极重</asp:ListItem>
                            </asp:DropDownList></th>

                    </tr>
                    <tr>
                        <th>4.你遇到困难需要帮助，或有烦恼想要倾诉时，你会找人帮助吗？有谁可以帮你？</th>
                        <th>
                            <asp:DropDownList ID="DDL16" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">轻度</asp:ListItem>
                                <asp:ListItem Value="2">中度</asp:ListItem>
                                <asp:ListItem Value="3">偏重</asp:ListItem>
                                <asp:ListItem Value="4">重度</asp:ListItem>
                                <asp:ListItem Value="5">极重</asp:ListItem>
                            </asp:DropDownList></th>

                    </tr>

                </table>
                <br />

                d：干扰和攻击行为→<strong class="Explain2">评分说明</strong>
                <table class="table" style="width: 100%">
                    <tr>
                        <th id="th1">问题</th>
                        <th id="th2">评分</th>

                    </tr>
                    <tr>
                        <th>1.最近1个月来你是否很容易被人惹火？（如果是，能具体说说是什么样的情况吗？你发火时做过些什么吗？）</th>
                        <th>
                            <asp:DropDownList ID="DDL17" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">轻度</asp:ListItem>
                                <asp:ListItem Value="2">中度</asp:ListItem>
                                <asp:ListItem Value="3">偏重</asp:ListItem>
                                <asp:ListItem Value="4">重度</asp:ListItem>
                                <asp:ListItem Value="5">极重</asp:ListItem>
                            </asp:DropDownList></th>

                    </tr>
                    <tr>
                        <th>2.是不是有时候你的行为举止在别人眼里看来不妥当，如在公共场合大声说话或嚷嚷打扰了别人，对陌生人过于随便，不遵守规则随便插队或横冲直撞，乱丢垃圾或到处吐痰？ </th>
                        <th>
                            <asp:DropDownList ID="DDL18" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">轻度</asp:ListItem>
                                <asp:ListItem Value="2">中度</asp:ListItem>
                                <asp:ListItem Value="3">偏重</asp:ListItem>
                                <asp:ListItem Value="4">重度</asp:ListItem>
                                <asp:ListItem Value="5">极重</asp:ListItem>
                            </asp:DropDownList></th>

                    </tr>
                    <tr>
                        <th>3.最近1个月来你有没有故意弄坏东西，如敲坏东西，把门摔得乒乓响？（如果有，能告诉我具体情况吗？你扔东西了吗？拿拳头砸家具或砸墙吗？有过多少次？）</th>
                        <th>
                            <asp:DropDownList ID="DDL19" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">轻度</asp:ListItem>
                                <asp:ListItem Value="2">中度</asp:ListItem>
                                <asp:ListItem Value="3">偏重</asp:ListItem>
                                <asp:ListItem Value="4">重度</asp:ListItem>
                                <asp:ListItem Value="5">极重</asp:ListItem>
                            </asp:DropDownList></th>

                    </tr>
                    <tr>
                        <th>4.最近1个月来你没有跟人吵架？有没有嗓门很大,或对人叫喊/咒骂,或教训父母家人，或威胁别人？（如果有，能告诉我具体情况吗？有过几次？）</th>
                        <th>
                            <asp:DropDownList ID="DDL20" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">轻度</asp:ListItem>
                                <asp:ListItem Value="2">中度</asp:ListItem>
                                <asp:ListItem Value="3">偏重</asp:ListItem>
                                <asp:ListItem Value="4">重度</asp:ListItem>
                                <asp:ListItem Value="5">极重</asp:ListItem>
                            </asp:DropDownList></th>

                    </tr>
                    <tr>
                        <th>5.最近1个月来有没有跟人打架？有没有使人受伤？有没有想伤害别人？（如果有，能告诉我具体情况吗？）</th>
                        <th>
                            <asp:DropDownList ID="DDL21" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">轻度</asp:ListItem>
                                <asp:ListItem Value="2">中度</asp:ListItem>
                                <asp:ListItem Value="3">偏重</asp:ListItem>
                                <asp:ListItem Value="4">重度</asp:ListItem>
                                <asp:ListItem Value="5">极重</asp:ListItem>
                            </asp:DropDownList></th>

                    </tr>
                    <tr>
                        <th>6.你有自杀计划吗？有没有想伤害你自己？如果有，是否想把你自己废了，弄得不能工作，或者住医院，或者无法自理生活？能说具体些吗？（注：主要询问对功能的影响，而不是自杀观念或行为本身）</th>
                        <th>
                            <asp:DropDownList ID="DDL22" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">轻度</asp:ListItem>
                                <asp:ListItem Value="2">中度</asp:ListItem>
                                <asp:ListItem Value="3">偏重</asp:ListItem>
                                <asp:ListItem Value="4">重度</asp:ListItem>
                                <asp:ListItem Value="5">极重</asp:ListItem>
                            </asp:DropDownList></th>

                    </tr>
                    <tr>
                        <th>7.这些行为在最近这个月里有多少次？有什么影响吗？你还会再做吗？你是怎么想的？</th>
                        <th>
                            <asp:DropDownList ID="DDL23" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">轻度</asp:ListItem>
                                <asp:ListItem Value="2">中度</asp:ListItem>
                                <asp:ListItem Value="3">偏重</asp:ListItem>
                                <asp:ListItem Value="4">重度</asp:ListItem>
                                <asp:ListItem Value="5">极重</asp:ListItem>
                            </asp:DropDownList></th>

                    </tr>

                </table>
                <br />
                <p style="width: 100%; "><strong>提示：</strong><strong class="Explain3">全表评分说明</strong></p>
                <br />
                <asp:Button ID="Button1" runat="server" Text="提  交" class=" btn btn-info" Style="width: 100px; height: 40px; display: table-footer-group;margin-left: 44.5%; font-weight: bold;" OnClick="Button1_Click" />









            </div>
        </div>
    </div>
    <style type="text/css">
        .Explain1, .Explain2, .Explain3 {
            color: #0094ff;
            border: none;
        }

            .Explain1:hover, .Explain2:hover, .Explain3:hover {
                color: #ff0000;
                background: white;
                text-decoration: none;
                cursor: pointer;
            }

        #th1 {
            width: 85%;
        }

        #th2 {
            width: 15%;
        }
    </style>

</asp:Content>
