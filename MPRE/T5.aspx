<%@ Page Title="" Language="C#" MasterPageFile="~/Test.master" AutoEventWireup="true" CodeFile="T5.aspx.cs" Inherits="T5" %>

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
                      
                      <p>该测试表为为他量表，单选题，评估测试者过去的三个月的整体状态，根据所问问题，在描述恰当的选项上打钩。</p>
                           
                               
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
                T5 生活技能量表（LSP）    

            </div>
            <div class="widget-header bordered-bottom bordered-blue">
                <div style="text-align: left; padding-top: 10px;">
                    <p style="font-weight: bold">测试说明：</p>
                    <p>
                      该测试表为为他量表，单选题，评估测试者过去的三个月的整体状态，根据所问问题，在描述恰当的选项上打钩。

                    </p>
                </div>
            </div>
            <div class="widget-body bordered-bottom bordered-darkorange">
              
                <hr />
                <h5>1. 在起动话题和应答方面有困难吗？[单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="1" value="1" />
                                <span class="text">A、无</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="1" value="2"/>
                                <span class="text">B、很少</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="1" value="3"/>
                                <span class="text">C、经常</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="1" value="4"/>
                                <span class="text">D、总是</span>
                            </label>
                        </div>
                    </div>
                </div>

                 <hr class="wide" />
                
                <h5> 2. 会打断或干涉别人的谈话吗？（例如：在别人交谈时打断人家）[单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="2" value="1" />
                                <span class="text">A、无</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="2" value="2"/>
                                <span class="text">B、有时 </span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="2" value="3"/>
                                <span class="text">C、经常</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="2" value="4"/>
                                <span class="text">D、总是</span>
                            </label>
                        </div>
                    </div>
                </div>
        
                <hr class="wide" />

                <h5>3.会回避与社会接触吗？[单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="3" value="1" />
                                <span class="text">A、无</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="3" value="2"/>
                                <span class="text">B、很少</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="3" value="3"/>
                                <span class="text">C、经常</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="3" value="4"/>
                                <span class="text">D、总是</span>
                            </label>
                        </div>
                    </div>
                </div>
                <hr class="wide" />

                <h5>4. 对人热情吗？[单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="4" value="1" />
                                <span class="text">A、非常</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="4" value="2"/>
                                <span class="text">B、中度</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="4" value="3"/>
                                <span class="text">C、轻度</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="4" value="4"/>
                                <span class="text">D、无</span>
                            </label>
                        </div>
                    </div>
                </div>

                  <hr class="wide" />

                <h5>5. 对别人发怒或挑刺吗？[单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="5" value="1" />
                                <span class="text">A、无</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="5" value="2"/>
                                <span class="text">B、很少</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="5" value="3"/>
                                <span class="text">C、有时</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="5" value="4"/>
                                <span class="text">D、经常</span>
                            </label>
                        </div>
                    </div>
                </div>
        
                 <hr class="wide" />

                <h5>6. 容易生气吗？[单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="6" value="1" />
                                <span class="text">A、无</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="6" value="2"/>
                                <span class="text">B、有时</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="6" value="3"/>
                                <span class="text">C、经常</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="6" value="4"/>
                                <span class="text">D、总是</span>
                            </label>
                        </div>
                    </div>
                </div>

                 <hr class="wide" />
                <h5>7. 在交谈的时候和别人保持眼光的接触吗？ [单选题] </h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="7" value="1" />
                                <span class="text">A、总是</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="7" value="2"/>
                                <span class="text">B、经常</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="7" value="3"/>
                                <span class="text">C、有时</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="7" value="4"/>
                                <span class="text">D、无</span>
                            </label>
                        </div>
                    </div>
                </div>

                <hr class="wide" />
                <h5>8. 说话的方式使别人难以理解吗？（例如：颠三倒四、混乱、没有顺序）[单选题] </h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="8" value="1" />
                                <span class="text">A、从不</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="8" value="2"/>
                                <span class="text">B、很少</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="8" value="3"/>
                                <span class="text">C、经常</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="8" value="4"/>
                                <span class="text">D、总是</span>
                            </label>
                        </div>
                    </div>
                </div>

                 <hr class="wide" />
                <h5> 9 .谈论奇怪或怪异的想法吗？[单选题] </h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="9" value="1" />
                                <span class="text">A、无</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="9" value="2"/>
                                <span class="text">B、有时</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="9" value="3"/>
                                <span class="text">C、经常</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="9" value="4"/>
                                <span class="text">D、总是</span>
                            </label>
                        </div>
                    </div>
                </div>

                 <hr class="wide" />
                <h5>10. 能保持干净整齐吗？（例如：衣着整洁、梳头）[单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="10" value="1" />
                                <span class="text">A、总是</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="10" value="2"/>
                                <span class="text">B、经常</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="10" value="3"/>
                                <span class="text">C、有时</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="10" value="4"/>
                                <span class="text">D、从不</span>
                            </label>
                        </div>
                    </div>
                </div>

                <hr  class="wide"/>
                  <h5>11. 外表（面部表情、姿势）与所处的环境相协调吗？[单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="11" value="1" />
                                <span class="text">A、总是</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="11" value="2"/>
                                <span class="text">B、经常</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="11" value="3"/>
                                <span class="text">C、有时</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="11" value="4"/>
                                <span class="text">D、从不</span>
                            </label>
                        </div>
                    </div>
                </div>

                 <hr class="wide" />
                
                <h5> 12. 在没有他人的督促下会自行洗漱吗？）[单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="12" value="1" />
                                <span class="text">A、经常</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="12" value="2"/>
                                <span class="text">B、有时 </span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="12" value="3"/>
                                <span class="text">C、很少</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="12" value="4"/>
                                <span class="text">D、从不</span>
                            </label>
                        </div>
                    </div>
                </div>
        
                <hr class="wide" />

                <h5>13. 身上有难闻的气味吗？（例如由于身体、 呼吸、或衣服发出的气味）[单选题] </h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="13" value="1" />
                                <span class="text">A、无</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="13" value="2"/>
                                <span class="text">B、轻度</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="13" value="3"/>
                                <span class="text">C、中度</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="13" value="4"/>
                                <span class="text">D、重度</span>
                            </label>
                        </div>
                    </div>
                </div>
                <hr class="wide" />

                <h5>14. 穿着整洁或确保脏了就及时换洗吗？[单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="14" value="1" />
                                <span class="text">A、总是</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="14" value="2"/>
                                <span class="text">B、经常</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="14" value="3"/>
                                <span class="text">C、很少</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="14" value="4"/>
                                <span class="text">D、从不</span>
                            </label>
                        </div>
                    </div>
                </div>

                  <hr class="wide" />

                <h5>15. 会忽视自己身体的健康吗？[单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="15" value="1" />
                                <span class="text">A、无</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="15" value="2"/>
                                <span class="text">B、很少</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="15" value="3"/>
                                <span class="text">C、有时</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="15" value="4"/>
                                <span class="text">D、经常</span>
                            </label>
                        </div>
                    </div>
                </div>
        
                 <hr class="wide" />

                <h5>16. 能保持适度的饮食吗? [单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="16" value="1" />
                                <span class="text">A、总是</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="16" value="2"/>
                                <span class="text">B、经常</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="16" value="3"/>
                                <span class="text">C、有时</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="16" value="4"/>
                                <span class="text">D、从不</span>
                            </label>
                        </div>
                    </div>
                </div>

                 <hr class="wide" />
                <h5>17. 在没有他人的提醒下能保管或服用（或去医院注射）处方药吗？[单选题] </h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="17" value="1" />
                                <span class="text">A、总是</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="17" value="2"/>
                                <span class="text">B、经常</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="17" value="3"/>
                                <span class="text">C、有时</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="17" value="4"/>
                                <span class="text">D、从不</span>
                            </label>
                        </div>
                    </div>
                </div>

                <hr class="wide" />
                <h5>18.  愿意服用医生开具的精神类药物吗？ [单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="18" value="1" />
                                <span class="text">A、总是</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="18" value="2"/>
                                <span class="text">B、经常</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="18" value="3"/>
                                <span class="text">C、很少</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="18" value="4"/>
                                <span class="text">D、从不</span>
                            </label>
                        </div>
                    </div>
                </div>

                 <hr class="wide" />
                <h5> 19. 能和医务人员配合吗？（例如医生和/或其他保健人员） [单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="19" value="1" />
                                <span class="text">A、总是</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="19" value="2"/>
                                <span class="text">B、j经常</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="19" value="3"/>
                                <span class="text">C、很少</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="19" value="4"/>
                                <span class="text">D、从不</span>
                            </label>
                        </div>
                    </div>
                </div>

                 <hr class="wide" />
                <h5>20. 会懒散吗？（例如:大部分时间里无所事事地坐着或站着） [单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="20" value="1" />
                                <span class="text">A、无</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="20" value="2"/>
                                <span class="text">B、有时</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="20" value="3"/>
                                <span class="text">C、经常</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="20" value="4"/>
                                <span class="text">D、总是</span>
                            </label>
                        </div>
                    </div>
                </div>

                <hr class="wide"/>
                 <h5>21. 有一定的兴趣爱好并定期参与吗？（例如有一些业余爱好、体育运动、各种活动） [单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="21" value="1" />
                                <span class="text">A、总是</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="21" value="2"/>
                                <span class="text">B、经常</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="21" value="3"/>
                                <span class="text">C、很少</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="21" value="4"/>
                                <span class="text">D、从不</span>
                            </label>
                        </div>
                    </div>
                </div>

                 <hr class="wide" />
                
                <h5> 22.  会参加社会组织吗？（例如：教会、俱乐部或兴趣小组，但除外精神治疗小组） [单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="22" value="1" />
                                <span class="text">A、总是</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="22" value="2"/>
                                <span class="text">B、经常 </span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="22" value="3"/>
                                <span class="text">C、很少</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="22" value="4"/>
                                <span class="text">D、从不</span>
                            </label>
                        </div>
                    </div>
                </div>
        
                <hr class="wide" />

                <h5>23.  能够准备（如果需要）自己的膳食吗？ [单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="23" value="1" />
                                <span class="text">A、完全有能力</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="23" value="2"/>
                                <span class="text">B、轻度受限</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="23" value="3"/>
                                <span class="text">C、中度受限</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="23" value="4"/>
                                <span class="text">D、无能力</span>
                            </label>
                        </div>
                    </div>
                </div>
                <hr class="wide" />

                <h5>24. 能够用自己的方式（如果需要）做出生活的预算吗？ [单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="24" value="1" />
                                <span class="text">A、完全有能力</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="24" value="2"/>
                                <span class="text">B、轻度受限</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="24" value="3"/>
                                <span class="text">C、中度受限</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="24" value="4"/>
                                <span class="text">D、无能力</span>
                            </label>
                        </div>
                    </div>
                </div>

                  <hr class="wide" />

                <h5>25. 与其他家庭成员生活时有问题吗（例如：摩擦，回避）？ [单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="25" value="1" />
                                <span class="text">A、从不</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="25" value="2"/>
                                <span class="text">B、很少</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="25" value="3"/>
                                <span class="text">C、有时</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="25" value="4"/>
                                <span class="text">D、经常</span>
                            </label>
                        </div>
                    </div>
                </div>
        
                 <hr class="wide" />

                <h5>26. 能胜任怎样的工作？（即使是失业、退休或做免费的家务） [单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="26" value="1" />
                                <span class="text">A、全职</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="26" value="2"/>
                                <span class="text">B、兼职</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="26" value="3"/>
                                <span class="text">C、为残障者开设的工作</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="26" value="4"/>
                                <span class="text">D、无工作能力</span>
                            </label>
                        </div>
                    </div>
                </div>

                 <hr class="wide" />
                <h5>27. 行为鲁莽吗？（例如：当横穿马路时不顾红绿灯） [单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="27" value="1" />
                                <span class="text">A、无</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="27" value="2"/>
                                <span class="text">B、很少</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="27" value="3"/>
                                <span class="text">C、有时</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="27" value="4"/>
                                <span class="text">D、经常</span>
                            </label>
                        </div>
                    </div>
                </div>

                <hr class="wide" />
                <h5>28. 会有毁坏财物的行为吗？  [单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="28" value="1" />
                                <span class="text">A、无</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="28" value="2"/>
                                <span class="text">B、很少</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="28" value="3"/>
                                <span class="text">C、有时</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="28" value="4"/>
                                <span class="text">D、经常</span>
                            </label>
                        </div>
                    </div>
                </div>

                 <hr class="wide" />
                <h5> 29. 行为令人讨厌吗？（包括性行为） [单选题] </h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="29" value="1" />
                                <span class="text">A、无</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="29" value="2"/>
                                <span class="text">B、很少</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="29" value="3"/>
                                <span class="text">C、有时</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="29" value="4"/>
                                <span class="text">D、经常</span>
                            </label>
                        </div>
                    </div>
                </div>

                 <hr class="wide" />
                <h5>30. 有大多数人认为不良的习惯或行为吗？ （例如：随地吐痰、随地乱扔燃着的烟头、弄脏厕所以及吃饭时很狼籍）[单选题] </h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="30" value="1" />
                                <span class="text">A、无</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="30" value="2"/>
                                <span class="text">B、很少</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="30" value="3"/>
                                <span class="text">C、有时</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="30" value="4"/>
                                <span class="text">D、经常</span>
                            </label>
                        </div>
                    </div>
                </div>

                <hr  class="wide"/>
                  <h5>31. 会遗失个人的财物吗？[单选题] </h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="31" value="1" />
                                <span class="text">A、无</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="31" value="2"/>
                                <span class="text">B、很少</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="31" value="3"/>
                                <span class="text">C、有时</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="31" value="4"/>
                                <span class="text">D、经常</span>
                            </label>
                        </div>
                    </div>
                </div>

                 <hr class="wide" />
                
                <h5>32. 会侵占他人的空间吗？（例如他人的房间、私人财产）[单选题] </h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="32" value="1" />
                                <span class="text">A、无</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="32" value="2"/>
                                <span class="text">B、很少 </span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="32" value="3"/>
                                <span class="text">C、有时</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="32" value="4"/>
                                <span class="text">D、经常</span>
                            </label>
                        </div>
                    </div>
                </div>
        
                <hr class="wide" />

                <h5>33. 会拿不属于自己的东西吗? [单选题] </h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="33" value="1" />
                                <span class="text">A、无</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="33" value="2"/>
                                <span class="text">B、很少</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="33" value="3"/>
                                <span class="text">C、有时</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="33" value="4"/>
                                <span class="text">D、经常</span>
                            </label>
                        </div>
                    </div>
                </div>
                <hr class="wide" />

                <h5>34. 会对别人有暴力行为吗？  [单选题] </h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="34" value="1" />
                                <span class="text">A、无</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="34" value="2"/>
                                <span class="text">B、很少</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="34" value="3"/>
                                <span class="text">C、有时</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="34" value="4"/>
                                <span class="text">D、经常</span>
                            </label>
                        </div>
                    </div>
                </div>

                  <hr class="wide" />

                <h5>35. 会对自己有暴力行为吗？[单选题] </h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="35" value="1" />
                                <span class="text">A、无</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="35" value="2"/>
                                <span class="text">B、很少</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="35" value="3"/>
                                <span class="text">C、有时</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="35" value="4"/>
                                <span class="text">D、经常</span>
                            </label>
                        </div>
                    </div>
                </div>
        
                 <hr class="wide" />

                <h5>36 会经常被警察找麻烦吗？[单选题] </h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="36" value="1" />
                                <span class="text">A、从不</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="36" value="2"/>
                                <span class="text">B、很少</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="36" value="3"/>
                                <span class="text">C、有时</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="36" value="4"/>
                                <span class="text">D、经常</span>
                            </label>
                        </div>
                    </div>
                </div>

                 <hr class="wide" />
                <h5>37  会酗酒或吸毒吗？ [单选题] </h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="37" value="1" />
                                <span class="text">A、无</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="37" value="2"/>
                                <span class="text">B、很少</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="37" value="3"/>
                                <span class="text">C、有时</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="37" value="4"/>
                                <span class="text">D、经常</span>
                            </label>
                        </div>
                    </div>
                </div>

                <hr class="wide" />
                <h5>38. 有不负责任的行为吗？ [单选题] </h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="38" value="1" />
                                <span class="text">A、无</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="38" value="2"/>
                                <span class="text">B、很少</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="38" value="3"/>
                                <span class="text">C、有时</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="38" value="4"/>
                                <span class="text">D、经常</span>
                            </label>
                        </div>
                    </div>
                </div>

                 <hr class="wide" />
                <h5> 39 能交朋友和（或）维持友情吗？ [单选题] </h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="39" value="1" />
                                <span class="text">A、经常</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="39" value="2"/>
                                <span class="text">B、有时</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="39" value="3"/>
                                <span class="text">C、很少</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="39" value="4"/>
                                <span class="text">D、不能</span>
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
           for (var i = 1; i <= 39; i++)//条件：i应小于等于必做题目的总数
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

