<%@ Page Title="" Language="C#" MasterPageFile="~/Test.master" AutoEventWireup="true" CodeFile="T26.aspx.cs" Inherits="T26" %>

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
                      
                      <p>该测试表为自评量表，请仔细阅读每一项，并根据近2月您对您家庭的看法，在四个可能的答案中选择形容你家庭对解决的选项。选择答案的原则是：很像我家：这一项非常准确地描述了您的家庭，像我家：这一项大致上描述了您的家庭。不像我家：这一项不大符合您的家庭。完全不像我家：这一项完全不符合您的家庭。测试者根据自身实际情况回答，并在相应的选项上打钩。</p>
                           
                               
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
                T26 家庭功能评定（FAD）
            </div>
            <div class="widget-header bordered-bottom bordered-blue">
                <div style="text-align:left;padding-top:10px;">
                    <p style="font-weight:bold">测试说明：</p>
                    <p>
                        此测试包含了一些对家庭的描述，请仔细阅读每一项，并根据近2月您对您家庭的看法，在四个可能的答案中选择形容你家庭对解决的选项。</p>
                </div>
            </div>
            <div class="widget-body bordered-bottom bordered-darkorange">
                <br />
                <table id="float_banner" class="table" style="width: 843px; left: 311px">
                    <tr>
                        <th class="auto-style5">项目 </th>
                        <th class="auto-style5">很像我家</th>
                        <th class="auto-style5">像我家</th>
                        <th class="auto-style5">不像我家</th>
                        <th class="auto-style5">完全不像我家</th>
                    </tr>
                </table>
                <table id="cont" class="table" style="width: 90%;margin-top:35px">
                    <tr>
                        
                        <th class="auto-style5" >*1.由于我们彼此误解，难于安排一些家庭活动</th>
                        
                        <th class="auto-style5">
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="1" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th class="auto-style5">
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="1" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th class="auto-style5">
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="1" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th class="auto-style5">
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="1" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        
                        
                    </tr>


                    <tr>
                        
                        <th>2.我们在住处附近解决大多数日常问题</th>
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
                  
                        <th>3.当家中有人烦恼时，其他人知道他为什么烦恼</th>
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
                        
                        <th>*4.当你要求某人去做某事时，你必须检查他们是否做了</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="4" value="4" />
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
                                    <input type="checkbox" name="4" value="2" />
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
                        
                        
                    </tr>
                    <tr>
                  
                        <th>*5.如果某人遇到困难时，其他人会过分关注</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="5" value="4" />
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
                                    <input type="checkbox" name="5" value="2" />
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
                        
                        
                    </tr>
                    <tr>
                        
                        <th>6.发生危机时，我们能相互扶持</th>
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
                        
                        <th>*7.当发生了出乎预料的意外时，我们手足无措</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="7" value="4" />
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
                                    <input type="checkbox" name="7" value="2" />
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
                        
                    </tr>

                    <tr>
                     
                        <th>*8.我们家时常把我们所需要的东西用光了</th>
                        
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="8" value="4" />
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
                                    <input type="checkbox" name="8" value="2" />
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
                    </tr>

                    <tr>
                        
                        <th>*9.我们相互都不愿意流露自己的感情</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="9" value="4" />
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
                                    <input type="checkbox" name="9" value="2" />
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
                    </tr>

                    <tr>
                        
                        <th>10.我们肯定家庭成员都尽到了各自的家庭职责</th>
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

                    <tr>
                    
                        <th>*11.我们不能相互讨论我们的忧愁</th>
                        
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="11" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="11" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="11" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="11" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>

                    <tr>
                    
                        <th>12.我们常根据我们对问题的决定去行动</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="12" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="12" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="12" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="12" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>

                    <tr>
                       
                        <th>*13.你的事只有对别人也重要时，他们才会感兴趣</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="13" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="13" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="13" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="13" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>

                    <tr>
                       
                        <th>*14.从那些人正在谈的话中，你不明白其中一个人是怎么想的</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="14" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="14" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="14" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="14" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>

                    <tr>
                        
                        <th>*15.家务事没有由家庭成员充分分担</th>
                        
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="15" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="15" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="15" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="15" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>

                    <tr>
                    
                        <th>16.每个人是什么样的，都能被别人认可</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="16" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="16" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="16" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="16" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>

                    <tr>
                        
                        <th>*17.你不按规矩办事，却很易逃脱处分</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="17" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="17" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="17" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="17" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>

                    <tr>

                        <th>18.大家都把事情摆在桌面上说，而不用暗示的方法</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="18" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="18" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="18" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="18" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>

                    <tr>
                        
                        <th>*19.我们中有些人缺乏感情</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="19" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="19" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="19" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="19" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>

                    <tr>
                        
                        <th>20.在遇到突然事件时，我们知道怎么处理</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="20" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="20" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="20" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="20" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>

                    <tr>
                       
                        <th>*21.我们避免谈及我们害怕和关注的事</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="21" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="21" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="21" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="21" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>

                    <tr>
                        
                        <th>*22.我们难得相互说出温存的感受</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="22" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="22" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="22" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="22" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>

                    <tr>
                        
                        <th>*23.我们遇到经济困难</th>
                        
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="23" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="23" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="23" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="23" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>

                    <tr>
                      
                        <th>24.在我们家试图解决一个问题之后我们通常要讨论这个问题是否已解决</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="24" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="24" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="24" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="24" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>

                    <tr>
                       
                        <th>*25.我们太以自我为中心了</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="25" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="25" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="25" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="25" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>

                    <tr>
                       
                        <th>26.我们能相互表达出自己的感受</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="26" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="26" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="26" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="26" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>

                    <tr>
                      
                        <th >*27.我们对梳妆服饰习惯无明确要求</th>
                        <th >
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="27" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th >
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="27" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th >
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="27" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th >
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="27" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>

                    <tr>
                   
                        <th>*28.我们彼此间不爱表示爱意</th>
                        
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="28" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="28" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="28" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="28" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>

                    <tr>
                     
                        <th>29.我们对人说话都直说，而不拐弯抹角</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="29" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="29" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="29" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="29" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>


                    <tr>
                   
                        <th>30.我们每个人都要特定的任务和职责</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="30" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="30" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="30" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="30" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>

                    <tr>
                     
                        <th>*31.家庭的情绪气氛很不好</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="31" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="31" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="31" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="31" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>

                    <tr>
                        
                        <th>32.我们有惩罚人的原则</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="32" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="32" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="32" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="32" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>

                    <tr>
                       
                        <th>*33.只有当某事使我们都感兴趣时，我们才一起参加</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="33" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="33" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="33" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="33" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>

                    <tr>
                        
                        <th>*34.没有时间做自己感兴趣的事</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="34" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="34" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="34" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="34" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>
                    <tr>
                        
                        <th>*35.我们常不把自己的想法说出来</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="35" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="35" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="35" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="35" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>
                    <tr>

                        <th>36.我们感到我们能对别人容忍</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="36" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="36" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="36" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="36" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>
                    <tr>
                      
                        <th>*37.只有定某件事对人有利时，我们相互才感兴趣</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="37" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="37" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="37" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="37" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>
                    <tr>
                      
                        <th>38.我们能解决大多情绪上的烦恼</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="38" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="38" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="38" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="38" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>
                    <tr>
                        
                        <th>*39.在我们家，亲密和温存居次要位置</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="39" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="39" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="39" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="39" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>
                    <tr>
                        
                        <th>40.我们讨论谁做家务</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="40" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="40" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="40" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="40" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>
                    <tr>
                       
                        <th>*41.在我们家对事情作出决定是困难的</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="41" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="41" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="41" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="41" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>
                    <tr>
                     
                        <th>*42.我们家的人只有在对自己有利时，才彼此关照</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="42" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="42" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="42" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="42" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>
                    <tr>
                      
                        <th>43.我们之间都很坦率</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="43" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="43" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="43" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="43" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>
                    <tr>
                    
                        <th>*44.我们从不遵守规则和标准</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="44" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="44" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="44" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="44" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>
                    <tr>
                    
                        <th>*45.如果要人去做某件事，他们常需要别人提醒</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="45" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="45" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="45" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="45" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>
                    <tr>
                    
                        <th>46.我们能过对如何解决问题作出决定</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="46" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="46" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="46" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="46" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>
                    <tr>
                    
                        <th>*47.如果原则被打破，我们不知道将会发生什么事</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="47" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="47" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="47" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="47" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>
                    <tr>
                        <th>*48.在我们家人和事情都行得通</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="48" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="48" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="48" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="48" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>
                    <tr>
                       
                        <th>49.我们将温存表达出来</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="49" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="49" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="49" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="49" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>
                    <tr>
                     
                        <th>50.我们镇定地面对涉及情感的问题</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="50" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="50" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="50" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="50" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>
                    <tr>
               
                        <th>*51.我们不能和睦相处</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="51" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="51" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="51" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="51" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>
                    <tr>
                       
                        <th>*52.我们一生了气，就互不讲话</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="52" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="52" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="52" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="52" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>
                    <tr>
                  
                        <th>*53.一般来说，我们对分配给自己的家务活都感到不满意</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="53" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="53" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="53" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="53" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>
                    <tr>
          
                        <th>*54.尽管我们用意良好，但还是过多的干预了彼此的生活</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="54" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="54" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="54" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="54" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>
                    <tr>

                        <th>55.我们有应对危险情况的原则</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="55" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="55" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="55" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="55" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>
                    <tr>
                        
                        <th>56.我们相互依赖</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="56" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="56" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="56" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="56" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>
                    <tr>
                    
                        <th>57.我们当众哭出声来</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="57" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="57" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="57" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="57" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>
                    <tr>
                        
                        <th>*58.我们没有适合的交通工具</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="58" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="58" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="58" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="58" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>
                    <tr>
                       
                        <th>59.当我们不喜欢有的人的为所欲为时，我们就会给他指出来</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="59" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="59" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="59" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="59" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>
                    <tr>
                       
                        <th>60.我们想尽各种办法来解决问题</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="60" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="60" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="60" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="60" value="4" />
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
        checkboxToRadio("11");
        checkboxToRadio("12");
        checkboxToRadio("13");
        checkboxToRadio("14");
        checkboxToRadio("15");
        checkboxToRadio("16");
        checkboxToRadio("17");
        checkboxToRadio("18");
        checkboxToRadio("19");
        checkboxToRadio("20");
        checkboxToRadio("21");
        checkboxToRadio("22");
        checkboxToRadio("23");
        checkboxToRadio("24");
        checkboxToRadio("25");
        checkboxToRadio("26");
        checkboxToRadio("27");
        checkboxToRadio("28");
        checkboxToRadio("29");
        checkboxToRadio("30");
        checkboxToRadio("31");
        checkboxToRadio("32");
        checkboxToRadio("33");
        checkboxToRadio("34");
        checkboxToRadio("35");
        checkboxToRadio("36");
        checkboxToRadio("37");
        checkboxToRadio("38");
        checkboxToRadio("39");
        checkboxToRadio("40");
        checkboxToRadio("41");
        checkboxToRadio("42");
        checkboxToRadio("43");
        checkboxToRadio("44");
        checkboxToRadio("45");
        checkboxToRadio("46");
        checkboxToRadio("47");
        checkboxToRadio("48");
        checkboxToRadio("49");
        checkboxToRadio("50");
        checkboxToRadio("51");
        checkboxToRadio("52");
        checkboxToRadio("53");
        checkboxToRadio("54");
        checkboxToRadio("55");
        checkboxToRadio("56");
        checkboxToRadio("57");
        checkboxToRadio("58");
        checkboxToRadio("59");
        checkboxToRadio("60");
        
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
            for (var i = 1; i <= 60; i++)//条件：i应小于等于必做题目的总数
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

<script type="text/javascript">
    var speed = 100;
    var scrollTop = null;
    var hold = 0;
    var float_banner;
    var cont;
    var pos = null;
    var timer = null;
    var moveHeight = null;
    float_banner = document.getElementById("float_banner");
    
    cont = document.getElementById("cont");
    
    window.onscroll=scroll_ad;
    function scroll_ad() {
         
        scrollTop = document.documentElement.scrollTop + document.body.scrollTop;
        
         pos = scrollTop - float_banner.offsetTop;
         pos = pos/10
         moveHeight = pos > 0 ? Math.ceil(pos) : Math.floor(pos);
         
         if (moveHeight != 0 && scrollTop >= cont.offsetTop + 70) {
             float_banner.style.position = "fixed";
             float_banner.style.top = 0 + "px";
             setTimeout(scroll_ad, speed);

         }
         else if (scrollTop < cont.offsetTop + 70) {
             float_banner.style.position = "absolute";
             float_banner.style.top = 301 + "px";
             setTimeout(scroll_ad, speed);
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
    #float_banner{position:absolute;z-index:2;}

    
    
    .auto-style5 {
        height: 40px;
    }
    



</style> 
</asp:Content>

