<%@ Page Title="" Language="C#" MasterPageFile="~/Test.master" AutoEventWireup="true" CodeFile="T21.aspx.cs" Inherits="T21" %>

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
                     $('#text3').hide(); $('#text4').hide(); $('#text5').hide(); $('#text6').hide();
                     $('#text7').hide(); $('#text8').hide(); $('#text9').hide(); $('#text10').hide(); $('#text11').hide(); $('#text12').hide();
                     $('#text13').hide(); $('#text14').hide(); $('#text15').hide(); $('#text16').hide(); $('#text17').hide(); $('#text18').hide();
                     $('#text19').hide(); $('#text20').hide();
                 });


                 $("#login2").click(function (e) {
                    
                     $(".module-area").slideDown(400);//fadeIn()
                     $('#text3').show();
                     $('#text4').show();
                     $('#text1').hide(); $('#text2').hide();$('#text5').hide(); $('#text6').hide();
                     $('#text7').hide(); $('#text8').hide(); $('#text9').hide(); $('#text10').hide(); $('#text11').hide(); $('#text12').hide();
                     $('#text13').hide(); $('#text14').hide(); $('#text15').hide(); $('#text16').hide(); $('#text17').hide(); $('#text18').hide();
                     $('#text19').hide(); $('#text20').hide();
                 });
                 $("#login3").click(function (e) {
                    
                     $(".module-area").slideDown(400);//fadeIn()
                     $('#text5').show();
                     $('#text6').show();
                     $('#text1').hide(); $('#text2').hide(); $('#text3').hide(); $('#text4').hide();
                     $('#text7').hide(); $('#text8').hide(); $('#text9').hide(); $('#text10').hide(); $('#text11').hide(); $('#text12').hide();
                     $('#text13').hide(); $('#text14').hide(); $('#text15').hide(); $('#text16').hide(); $('#text17').hide(); $('#text18').hide();
                     $('#text19').hide(); $('#text20').hide();
                 });
                 $("#login4").click(function (e) {
                    
                     $(".module-area").slideDown(400);//fadeIn()
                     $('#text7').show();
                     $('#text8').show();
                     $('#text1').hide(); $('#text2').hide(); $('#text3').hide(); $('#text4').hide(); $('#text5').hide(); $('#text6').hide();
                    $('#text9').hide(); $('#text10').hide(); $('#text11').hide(); $('#text12').hide();
                    $('#text13').hide(); $('#text14').hide(); $('#text15').hide(); $('#text16').hide(); $('#text17').hide(); $('#text18').hide();
                    $('#text19').hide(); $('#text20').hide();
                 });
                 $("#login5").click(function (e) {
                   
                     $(".module-area").slideDown(400);//fadeIn()
                     $('#text9').show();
                     $('#text10').show();
                     $('#text1').hide(); $('#text2').hide(); $('#text3').hide(); $('#text4').hide(); $('#text5').hide(); $('#text6').hide();
                     $('#text7').hide(); $('#text8').hide();$('#text11').hide(); $('#text12').hide();
                     $('#text13').hide(); $('#text14').hide(); $('#text15').hide(); $('#text16').hide(); $('#text17').hide(); $('#text18').hide();
                     $('#text19').hide(); $('#text20').hide();
                 });
                 $("#login6").click(function (e) {
                   
                     $(".module-area").slideDown(400);//fadeIn()
                     $('#text11').show();
                     $('#text12').show();
                     $('#text1').hide(); $('#text2').hide(); $('#text3').hide(); $('#text4').hide(); $('#text5').hide(); $('#text6').hide();
                     $('#text7').hide(); $('#text8').hide(); $('#text9').hide(); $('#text10').hide();
                     $('#text13').hide(); $('#text14').hide(); $('#text15').hide(); $('#text16').hide(); $('#text17').hide(); $('#text18').hide();
                     $('#text19').hide(); $('#text20').hide();
                 });
                 $("#login7").click(function (e) {
                     
                     $(".module-area").slideDown(400);//fadeIn()
                     $('#text13').show();
                     $('#text14').show();
                     $('#text1').hide(); $('#text2').hide(); $('#text3').hide(); $('#text4').hide(); $('#text5').hide(); $('#text6').hide();
                     $('#text7').hide(); $('#text8').hide(); $('#text9').hide(); $('#text10').hide(); $('#text11').hide(); $('#text12').hide();
                     $('#text15').hide(); $('#text16').hide(); $('#text17').hide(); $('#text18').hide(); $('#text19').hide(); $('#text20').hide();

                 });

                 $("#login8").click(function (e) {
                    
                     $(".module-area").slideDown(400);//fadeIn()
                     $('#text15').show();
                     $('#text16').show();
                     $('#text1').hide(); $('#text2').hide(); $('#text3').hide(); $('#text4').hide(); $('#text5').hide(); $('#text6').hide();
                     $('#text7').hide(); $('#text8').hide(); $('#text9').hide(); $('#text10').hide(); $('#text11').hide(); $('#text12').hide();
                     $('#text13').hide(); $('#text14').hide(); $('#text17').hide(); $('#text18').hide(); $('#text19').hide(); $('#text20').hide();
                 });


                 $("#login9").click(function (e) {
                    
                     $(".module-area").slideDown(400);//fadeIn()
                     $('#text17').show();
                     $('#text18').show();
                     $('#text1').hide(); $('#text2').hide(); $('#text3').hide(); $('#text4').hide(); $('#text5').hide(); $('#text6').hide();
                     $('#text7').hide(); $('#text8').hide(); $('#text9').hide(); $('#text10').hide(); $('#text11').hide(); $('#text12').hide();
                     $('#text13').hide(); $('#text14').hide(); $('#text15').hide(); $('#text16').hide(); $('#text19').hide(); $('#text20').hide();

                 });
                 
                 $("#login10").click(function (e) {

                     $(".module-area").slideDown(400);//fadeIn()
                     $('#text19').show();
                     $('#text20').show();
                     $('#text1').hide(); $('#text2').hide(); $('#text3').hide(); $('#text4').hide(); $('#text5').hide(); $('#text6').hide();
                     $('#text7').hide(); $('#text8').hide(); $('#text9').hide(); $('#text10').hide(); $('#text11').hide(); $('#text12').hide();
                     $('#text13').hide(); $('#text14').hide(); $('#text15').hide(); $('#text16').hide(); $('#text17').hide(); $('#text18').hide();

                 });
                 




                 $(".module-close").click(function (e) {
                     $('.blanks').hide();
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
                      
                      <p>该测试表为为他评量表，根据对测试者观察的实际情况，在相应的选项打钩。</p><p>【评定注意事项】1.评定员应为经量表训练的精神科医生。2.在按检查程序进行的前后，有些项目通过病人的动作和交谈观察评定，有些项目需直接检查评定。3.评定时间：治疗前及治疗后2、4、6周内各一次。作一次评定需15～20分钟。4.主要用于评定抗精神病药物治疗中所引起的锥体外系副反应的门诊或住院患者。5.锥体外系副反应量表的第4、5两个项目，依据检查者对患者的具体检查过程中，对操作的抵抗程度的评分，其记分的标准同第3项目。</p>

                           
                               
                                <p style="margin-left:40%">  <asp:Label ID="Label4" class="btn btn-info login" runat="server" Text="开始测试"></asp:Label>
                                
                            </p>  
                       
                    </div>

           <div class="dragContainer" style="position:fixed;left:10px;top:50px;width:100%;">
                     <div id="dragDiv" style="z-index: 1001;">
                         <!-- 模态框弹出部分  --->

                         <div class="module-area">
                             <div class="module-head">

                                 <strong id="text1">步态
                        </strong>

                                 <strong id="text3">落臂
                        </strong>

                                 <strong id="text5">摇肩
                        </strong>

                                 <strong id="text7">肘强直
                        </strong>

                                 <strong id="text9">固定姿势或腕强直
                        </strong>

                                 <strong id="text11">腿的摆动
                        </strong>

                                 <strong id="text13">头颈部运动
                        </strong>

                                 <strong id="text15">眉间轻敲
                        </strong>

                                 <strong id="text17">震颤
                        </strong>

                                 <strong id="text19">流涎
                        </strong>





                                 <div class="module-close"></div>

                             </div>
                                <div id="substance" >
                             <div id="text2">
                                 <p  >
                                     &nbsp; &nbsp;当病人走进检查室时，对病人进行检查。病人的步态，双臂的摆动，他的一般姿势，这是对这项目全面评分的基础。按以下评分：（0）正常；（1）病人步行时，臂的摆动减少；（2）双臂摆动明显减少，伴有明显的手臂僵直；（3）僵直的步态，伴有双臂强直放在腹部前面；（4）弯腰驼背托足而行的步态，伴有前冲或后倾。

                               
                                 </p>
                             </div>
                             <div id="text4">
                                 <p  >
                                     &nbsp; &nbsp;病人让检查者同时抬起他们的双臂并肩，同时让其放下落到身体两侧。在正常人，当臂碰到身体两侧时，可以听到拍击声。有严重巴金森氏综合征病人，双臂落下非常缓慢。（0）正常，双臂自由落下时具有粗重的拍击声，有轻微的回跳；（1）落下稍缓慢，可听到轻轻的拍击声，有轻微的回跳；（2）落下缓慢，没有回跳；（3）明显缓慢，全没有拍击声；（4）双臂落下好像有抵抗一样，好像胶粘着一样。
                               
                                 </p>
                             </div>
                             <div id="text6">
                                 <p  >
                                     &nbsp; &nbsp;将病人的双臂在肘部弯曲成一直角，每次检查一侧胳臂，检查者一只手抓住其手，同时将另一手紧握病人肘部，把病人的上臂前后来回推动，并且将肱骨外旋，此抵抗性从正常到极端僵直的程度，按以下记分：（0）正常；（1）轻度发挺和抵抗；（2）中度发挺和抵抗；（3）明显的僵直，伴被动运动困难；（4）极端的发挺和强直，肩膀几乎像冻僵了一样。

                               
                                 </p>
                             </div>
                             <div id="text8">
                                 <p  >
                                     &nbsp; &nbsp;分别将肘关节弯成直角，同时被动地伸展和弯曲关节以及观察并触摸病人的肱二头肌。评定对操作的抵抗程度（分辨齿轮强直是否存在）。像在摇肩试验中那样记0～4分。

                               
                                 </p>
                             </div>
                             <div id="text10">
                                 <p  >
                                     &nbsp; &nbsp;固定姿势或腕强直：检查者用一只手举起病人的手腕同时用另一只手握住病人的手指，并且屈伸手腕，并将手腕向尺侧和挠侧活动。对此操作的抵抗的评分同第3项和第4项。

                               
                                 </p>
                             </div>
                             <div id="text12">
                                 <p  >
                                     &nbsp; &nbsp;病人坐在桌上，腿垂下并且自由摆动。检查者握住他的踝部同时将其抬高直到膝部部分地伸展，然后让腿落下。落下有抵抗和缺乏摆动是本项记分的根据：（0）双腿自由摆动；（1）双腿摆动轻度减少；（2）摆动中度减少；（3）明显的抵抗和摆动的减幅；（4）摆动完全消失。

                               
                                 </p>
                             </div>
                             <div id="text14">
                                 <p  >
                                     &nbsp; &nbsp;病人躺在一张有良好褥垫的台上，检查者用手抬起他的头，然后撒手让头落下。正常人的头落在诊查床上，有锥体外系障碍的病人此种动作迟缓，而严重巴金森氏症者缺乏这种活动。颈肌强直，而且头部不能达到诊查床上，按以下记分：（0）头自然落在诊查床上；（1）头落下稍缓慢，主要注意头部碰在诊查床上时没有扑咚声；（2）用眼睛可以观察到头落下时中度缓慢；（3）头落下时非常缓慢和僵硬；（4）头达不到诊查床上。

                               
                                 </p>
                             </div>
                             <div id="text16">
                                 <p  >
                                     &nbsp; &nbsp; 告诉病人睁大眼睛，不要眨眼，持续地，迅速轻敲病人的眉间。注意连续眨眼的次数。（0）0～5次眨眼；（1）6～10次眨眼；（2）11～15次眨眼；（3）16～20次眨眼；（4）21次以上眨眼。

                               
                                 </p>
                             </div>
                             <div id="text18">
                                 <p  >
                                     &nbsp; &nbsp; 病人走进诊室时进行观察，然后重新检查这个项目。（0）正常；（1）轻度的手指震颤，看起来或触起来是明显的；（2）间断地发生的手或臂的震颤；（3）一个肢体或一个以上肢体持续性的震颤；（4）全身震颤。

                               
                                 </p>
                             </div>
                             <div id="text20">
                                 <p  >
                                     &nbsp; &nbsp; 当与病人谈话时进行观察，然后要求其张开嘴并且抬高舌头。给予以下评分：（0）正常；（1）病人张口抬舌，有口涎积聚；（2）有口涎过多，偶有可能造成说话困难；（3）因为口涎过多而说话困难；（4）口涎外流无法控制。

                               
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
                T21 锥体外系副反应量表（RSESE）
            </div>
            <div class="widget-header bordered-bottom bordered-blue">
                <div style="text-align:left;padding-top:10px;">
                    <p style="font-weight:bold">测试说明：</p>
                    <p>
                        该测试表为为他评量表，根据对测试者观察的实际情况，在相应的选项打钩。</p><p>【评定注意事项】1.评定员应为经量表训练的精神科医生。2.在按检查程序进行的前后，有些项目通过病人的动作和交谈观察评定，有些项目需直接检查评定。3.评定时间：治疗前及治疗后2、4、6周内各一次。作一次评定需15～20分钟。4.主要用于评定抗精神病药物治疗中所引起的锥体外系副反应的门诊或住院患者。5.锥体外系副反应量表的第4、5两个项目，依据检查者对患者的具体检查过程中，对操作的抵抗程度的评分，其记分的标准同第3项目。

                    </p>
                    
                </div>
            </div>
            <div class="widget-body bordered-bottom bordered-darkorange">
                <br />
                <table class="table" style="width: 90%">
                    <tr>
                        <th colspan="4">项目 </th>                        
                        <th>正常</th>
                        <th>轻</th>
                        <th>中</th>
                        <th>重</th>
                        <th>极重</th>                        


                    </tr>


                    <tr>
                        <th>1</th>
                        <th colspan="3"><span>*步态</span> <a id="login1">?</a></th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="1" value="0" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="1" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="1" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="1" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="1" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        
                    </tr>


                    <tr>
                        <th>2</th>
                        <th colspan="3"><span>*</span>落臂 <a id="login2">?</a></th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="2" value="0" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="2" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="2" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="2" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="2" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        

                    </tr>


                    <tr>
                        <th>3</th>
                        <th colspan="3"><span>*</span>摇肩 <a id="login3">?</a></th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="3" value="0" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="3" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="3" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="3" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="3" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        
                    </tr>
                    <tr>
                        <th>4</th>
                        <th colspan="3"><span>*肘强直</span> <a id="login4">?</a></th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="4" value="0" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="4" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="4" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="4" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="4" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        
                    </tr>
                    <tr>
                        <th>5</th>
                        <th colspan="3"><span>*固定姿势或腕强直</span> <a id="login5">?</a></th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="5" value="0" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="5" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="5" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="5" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="5" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        
                    </tr>
                    <tr>
                        <th>6</th>
                        <th colspan="3"><span>*腿的摆动</span> <a id="login6">?</a></th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="6" value="0" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="6" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="6" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="6" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="6" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        
                    </tr>
                    <tr>
                        <th>7</th>
                        <th colspan="3"><span>*头颈部运动</span> <a id="login7">?</a></th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="7" value="0" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="7" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="7" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="7" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="7" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>

                    <tr>
                        <th>8</th>
                        <th colspan="3"><span>*眉间轻敲</span> <a id="login8">?</a></th>
                        
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="8" value="0" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="8" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="8" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="8" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="8" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>

                    <tr>
                        <th>9</th>
                        <th colspan="3"><span>*震颤</span> <a id="login9">?</a></th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="9" value="0" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="9" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="9" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="9" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="9" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>

                    <tr>
                        <th>10</th>
                        <th colspan="3"><span>*流涎</span> <a id="login10">?</a></th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="10" value="0" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="10" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="10" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="10" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="10" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>


                    

                </table>
                   

                
                
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
  
<style type="text/css">

   input[type="checkbox" i] {
    margin: 0px;
}
    input[type=checkbox] + .text, input[type=radio] + .text {
      
        display: table-row;
    
    }

    .radio, .checkbox {
    margin:auto;
    /*min-height: 20px;*/
      height:25px;
    /*margin: 9px;*/
   width:22px;
    border:2px solid #3DA0DB;
    /*color:#2489c5;*/
     padding:0;

   
}
    .table th a{ 
  border:1px solid #ff6a00;
  color:#ff6a00;
font-size: 13px;
            padding:1px 2px;

}
.table th a:hover{ 
    background-color:#ff6a00;
  color:#fff;
  border-bottom:none;

}

.table th { 
height:40px;
text-align:center; 
} 


</style> 
</asp:Content>

