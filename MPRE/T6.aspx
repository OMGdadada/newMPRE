<%@ Page Title="" Language="C#" MasterPageFile="~/Test.master" AutoEventWireup="true" CodeFile="T6.aspx.cs" Inherits="T6" %>

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
                      
                      <p>该测试表为为他量表，单选题，根据所问问题，在描述恰当的选项上打钩。</p>
                           
                               
                                <p style="margin-left:40%">  <asp:Label ID="Label4" class="btn btn-info login" runat="server" Text="开始测试"></asp:Label>
                                
                            </p>  
                       
                    </div>

    <asp:Label ID="GUID" runat="server" Visible="false"></asp:Label>
    <asp:Label ID="PatientGUID" runat="server" Visible="false"></asp:Label>
    <asp:Label ID="DoctorGUID" runat="server"  Visible="false"></asp:Label>
    <asp:Label ID="TestName" runat="server"  Visible="false"></asp:Label>
    <asp:Label ID="StartDT" runat="server"  Visible="false"></asp:Label>
    <asp:Label ID="EndDT" runat="server"  Visible="false"></asp:Label>
    <div class="page-body" style="max-width: 960px; margin: 0 auto 0;">
        <div class="widget flat radius-bordered">
            <div id="banner">
                T6 社交技能操作评估（SSES）
            </div>
            <div class="widget-header bordered-bottom bordered-blue">
                <div style="text-align: left; padding-top: 10px;">
                    <p style="font-weight: bold">测试说明：</p>
                    <p>
                      该测试表为为他量表，单选题，根据所问问题，在描述恰当的选项上打钩。

                    </p>
                </div>
            </div>
            <div class="widget-body bordered-bottom bordered-darkorange">
                <h5>一、人际活动</h5>
              
                <hr />  
                <h5>下列条目基于测查者对被试的访谈进行评分。</h5>
                <p>1.您与家人交流么？ [单选题]<strong style="color:red"> 如果被试回答从不，跳至条目6</strong></p>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox" onclick="check2()">
                            <label>
                                <input type="checkbox" class="colored-blue" name="1" value="3" />
                                <span class="text">A、经常</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox" onclick="check2()">
                            <label>
                                <input type="checkbox" class="colored-blue" name="1" value="2"/>
                                <span class="text">B、有时</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox" onclick="check2()">
                            <label>
                                <input type="checkbox" class="colored-blue" name="1" value="1"/>
                                <span class="text">C、偶尔</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox" onclick="check1()">
                            <label>
                                <input type="checkbox" class="colored-blue" name="1" value="0"/>
                                <span class="text">D、从不</span>
                            </label>
                        </div>
                    </div>
                </div>

                <br />
                  <div id="content2">
                <p> 2．您与哪一位家人交流最多？如果被试说出超过了3人，让其选出最亲密的3人（每一个家庭成员1分，最高3分）[单选题]</p>
                    <div class="row">
                  
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox" onclick="check3()">
                            <label>
                                <input type="checkbox" class="colored-blue" name="2" value="1" />
                                <span class="text">A、一个人</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox" onclick="check4()">
                            <label>
                                <input type="checkbox" class="colored-blue" name="2" value="2"/>
                                <span class="text">B、两个人 </span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="2" value="3"/>
                                <span class="text" onclick="check5()">C、三个人</span>
                            </label>
                        </div>
                    </div>
                   
                </div>
               
                
                
                <br />

                  </div>
                 <div id="content3">
                <p>3．对于第一位家人，您与他交流得怎么样？ [单选题]<strong style="color:red">如果被试仅提到1位家人，跳至条目10。</strong> </p>
                <div class="row">
                     
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="3" value="3" />
                                <span class="text">A、非常有效</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="3" value="2"/>
                                <span class="text">B、比较有效 </span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="3" value="1"/>
                                <span class="text">C、没多大效果</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="3" value="0"/>
                                <span class="text">D、无效</span>
                            </label>
                        </div>
                    </div>
                </div>
          <br />
              </div>
                 <div id="content4">
                <p>4．对于第二位家人，您与他交流得怎么样？[单选题]<strong style="color:red">如果被试仅提到2位家人，跳至条目10。</strong> </p>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="4" value="3" />
                                <span class="text">A、非常有效</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="4" value="2"/>
                                <span class="text">B、比较有效</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="4" value="1"/>
                                <span class="text">C、没多大效果</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="4" value="0"/>
                                <span class="text">D、无效</span>
                            </label>
                        </div>
                    </div>
                </div>
              
                  <br />
                </div>
                      <div id="content5"> 
                <p>5. 对于第三位家人，您与他交流得怎么样？[单选题]</p>
                  <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="5" value="3" />
                                <span class="text">A、非常有效</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="5" value="2"/>
                                <span class="text">B、比较有效</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="5" value="1"/>
                                <span class="text">C、没多大效果</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="5" value="0"/>
                                <span class="text">D、无效</span>
                            </label>
                        </div>
                    </div>
                </div>

               <br />

                      </div>
                 <div id="content6">
                <p>6．您常常和哪些亲戚来往？（每一个亲戚1分，最高3分）[单选题]<strong style="color:red"> 如果被试回答无，跳至条目8。</strong></p>
                  <div class="row">
                        <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox" onclick="check6()">
                            <label>
                                <input type="checkbox" class="colored-blue" name="6" value="0"/>
                                <span class="text">C、无</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox" onclick="check7()">
                            <label>
                                <input type="checkbox" class="colored-blue" name="6" value="1" />
                                <span class="text">A、一个人</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox" onclick="check7()">
                            <label>
                                <input type="checkbox" class="colored-blue" name="6" value="2"/>
                                <span class="text">B、两个人</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox" onclick="check7()">
                            <label>
                                <input type="checkbox" class="colored-blue" name="6" value="3"/>
                                <span class="text">C、三个人或三人以上</span>
                            </label>
                        </div>
                    </div>
                   
                   
                    </div>
              <br />

                 </div>
                 <div id="content7">
                 <p>7．您与他们交流如何？[单选题]</p>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="7" value="3" />
                                <span class="text">A、非常有效</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="7" value="2"/>
                                <span class="text">B、比较有效</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="7" value="1"/>
                                <span class="text">C、没多大效果</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="7" value="0"/>
                                <span class="text">D、无效</span>
                            </label>
                        </div>
                    </div>
                   
                    </div>
            
        
             
                  <br />

                 </div>
                 <div id="content8">
                 <p>8．您常常与哪些朋友来往？（每一个密友1分，最高3分）[单选题]<strong style="color:red"> 如果被试回答无，跳至条目10。</strong></p>
                 <div class="row">
                        <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox" onclick="check8()">
                            <label>
                                <input type="checkbox" class="colored-blue" name="8" value="0"/>
                                <span class="text">C、无</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox" onclick="check9()">
                            <label>
                                <input type="checkbox" class="colored-blue" name="8" value="1" />
                                <span class="text">A、一个人</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox" onclick="check9()">
                            <label>
                                <input type="checkbox" class="colored-blue" name="8" value="2"/>
                                <span class="text">B、两个人</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox" onclick="check9()">
                            <label>
                                <input type="checkbox" class="colored-blue" name="8" value="3"/>
                                <span class="text">C、三个人或三人以上</span>
                            </label>
                        </div>
                    </div>
                   
                   
                    </div>
               <br />
                </div>
                 <div id="content9">
                <p>9. 您与他们交流如何？非常有效、比较有效、没多大效果或无效？[单选题]</p>
                  <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="9" value="3" />
                                <span class="text">A、非常有效</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="9" value="2"/>
                                <span class="text">B、比较有效</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="9" value="1"/>
                                <span class="text">C、没多大效果</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="9" value="0"/>
                                <span class="text">D、无效</span>
                            </label>
                        </div>
                    </div>
                   
                    </div>

                 </div>

                 <div id="content10">
                <p>10．您与同事来往交流么？[单选题]<strong style="color:red">若回答从不或没有，跳至条目12。</strong>  </p>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox" onclick="check11()">
                            <label>
                                <input type="checkbox" class="colored-blue" name="10" value="3" />
                                <span class="text">A、经常</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox" onclick="check11()">
                            <label>
                                <input type="checkbox" class="colored-blue" name="10" value="2"/>
                                <span class="text" >B、有时</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox" onclick="check11()">
                            <label>
                                <input type="checkbox" class="colored-blue" name="10" value="1"/>
                                <span class="text">C、偶尔</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox" onclick="check10()">
                            <label>
                                <input type="checkbox" class="colored-blue" name="10" value="0"/>
                                <span class="text">D、从不或没有</span>
                            </label>
                        </div>
                    </div>
                </div>

                 </div>

                 <div id="content11">
                <p>11．您与他们交流如何？ [单选题]</p>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="11" value="3" />
                                <span class="text">A、非常有效</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="11" value="2"/>
                                <span class="text">B、比较有效</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="11" value="1"/>
                                <span class="text">C、没多大效果</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="11" value="0"/>
                                <span class="text">D、无效</span>
                            </label>
                        </div>
                    </div>
                </div>
                </div>
                 <div id="content12">
                <p> 12．您愿意和陌生人交谈么？[单选题] <strong style="color:red"> 若回答不愿意。跳至条目14。</strong> </p>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox" onclick="check13()">
                            <label>
                                <input type="checkbox" class="colored-blue" name="12" value="3" />
                                <span class="text">A、非常愿意</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox" onclick="check13()">
                            <label>
                                <input type="checkbox" class="colored-blue" name="12" value="2"/>
                                <span class="text">B、比较愿意</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox" onclick="check13()"> 
                            <label>
                                <input type="checkbox" class="colored-blue" name="12" value="1"/>
                                <span class="text">C、不怎么愿意</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox" onclick="check12()">
                            <label>
                                <input type="checkbox" class="colored-blue" name="12" value="0"/>
                                <span class="text">D、不愿意</span>
                            </label>
                        </div>
                    </div>
                </div>

                 </div>

                 <div id="content13">
                <p>13．您与他们交流如何？[单选题]</p>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="13" value="3" />
                                <span class="text">A、非常有效</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="13" value="2"/>
                                <span class="text">B、比较有效</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="13" value="1"/>
                                <span class="text">C、没多大效果</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="13" value="0"/>
                                <span class="text">D、无效</span>
                            </label>
                        </div>
                    </div>
                </div>

                 </div>

               
                  <p>14．您愿意去公共场所么？[单选题]</p>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="14" value="3" />
                                <span class="text">A、非常喜欢</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="14" value="2"/>
                                <span class="text">B、比较喜欢</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="14" value="1"/>
                                <span class="text">C、不怎么喜欢</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="14" value="0"/>
                                <span class="text">D、不喜欢</span>
                            </label>
                        </div>
                    </div>
                </div>

              <br />

                  <p>15．您通常去哪些公共场所？（每一个公共场所1分，最高6分）[单选题]</p>
                 
                 <div class="row">
                        <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="15" value="0"/>
                                <span class="text">C、无</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="15" value="1" />
                                <span class="text">A、一个</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="15" value="2"/>
                                <span class="text">B、两个</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="15" value="3"/>
                                <span class="text">C、三个</span>
                            </label>
                        </div>
                    </div>
                   
                   
                    </div>
                           <div class="row">
                        <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="15" value="4"/>
                                <span class="text">C、四个</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="15" value="5" />
                                <span class="text">A、五个</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="15" value="6"/>
                                <span class="text">B、六个及六个以上</span>
                            </label>
                        </div>
                    </div>
                   
                   
                   
                    </div>
                 <br />


                
                <p> 16．您喜欢参加亲属的聚会么？[单选题]</p>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="16" value="3" />
                                <span class="text">A、非常喜欢</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="16" value="2"/>
                                <span class="text">B、比较喜欢 </span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="16" value="1"/>
                                <span class="text">C、不怎么喜欢</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="16" value="0"/>
                                <span class="text">D、不喜欢</span>
                            </label>
                        </div>
                    </div>
                </div>
        
            

                <p>17．您喜欢参加朋友的聚会么？[单选题]</p>
                  <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="17" value="3" />
                                <span class="text">A、非常喜欢</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="17" value="2"/>
                                <span class="text">B、比较喜欢 </span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="17" value="1"/>
                                <span class="text">C、不怎么喜欢</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="17" value="0"/>
                                <span class="text">D、不喜欢</span>
                            </label>
                        </div>
                    </div>
                </div>
              

                <p>18．您喜欢参加同事的聚会么？[单选题]</p>
                  <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="18" value="3" />
                                <span class="text">A、非常喜欢</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="18" value="2"/>
                                <span class="text">B、比较喜欢 </span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="18" value="1"/>
                                <span class="text">C、不怎么喜欢</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="18" value="0"/>
                                <span class="text">D、不喜欢</span>
                            </label>
                        </div>
                    </div>
                </div>

               

                <p>19．您喜欢参加公众集会么（如商场前广场的产品推销会）？[单选题]</p>
                  <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="19" value="3" />
                                <span class="text">A、非常喜欢</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="19" value="2"/>
                                <span class="text">B、比较喜欢 </span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="19" value="1"/>
                                <span class="text">C、不怎么喜欢</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="19" value="0"/>
                                <span class="text">D、不喜欢</span>
                            </label>
                        </div>
                    </div>
                </div>
        
                



                <p>20．参加聚会的频率是？[单选题]</p>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="20" value="3" />
                                <span class="text">A、至少每月1次</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="20" value="2"/>
                                <span class="text">B、三月1次</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="20" value="1"/>
                                <span class="text">C、六月1次</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="20" value="0"/>
                                <span class="text">D、几乎没有</span>
                            </label>
                        </div>
                    </div>
                </div>

                 <hr class="wide" />
                <h5> <strong> 二、社会认知</strong></h5>
                <p>本测试分2部分，一部分通过访谈评估，另一部分通过观察评估。</p>
                
                <h5>第1部分 访谈（45分）</h5>
         
                <p>1．您了解自己么？[单选题] </p>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="21" value="3" />
                                <span class="text">A、非常了解</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="21" value="2"/>
                                <span class="text">B、比较了解</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="21" value="1"/>
                                <span class="text">C、不太了解</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="21" value="0"/>
                                <span class="text">D、不了解</span>
                            </label>
                        </div>
                    </div>
                </div>

             
                <p>2．您在多大程度上可以接受自己？ [单选题] </p>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="22" value="3" />
                                <span class="text">A、完全</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="22" value="2"/>
                                <span class="text">B、部分</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="22" value="1"/>
                                <span class="text">C、很少</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="22" value="0"/>
                                <span class="text">D、无</span>
                            </label>
                        </div>
                    </div>
                </div>

               
                <p> 3．您对与人相处时坦陈相待如何看？ [单选题] </p>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="23" value="3" />
                                <span class="text">A、必须</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="23" value="2"/>
                                <span class="text">B、看情况</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="23" value="1"/>
                                <span class="text">C、不在意</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="23" value="0"/>
                                <span class="text">D、诚实是非常傻的</span>
                            </label>
                        </div>
                    </div>
                </div>

               
                <p>4．当您有需要时可以恰当地表达么？[单选题] </p>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="24" value="3" />
                                <span class="text">A、很好</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="24" value="2"/>
                                <span class="text">B、比较好</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="24" value="1"/>
                                <span class="text">C、不太会/能</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="24" value="0"/>
                                <span class="text">D、一点也不</span>
                            </label>
                        </div>
                    </div>
                </div>

              
                 <p>5．您能领会别人的意思吗？[单选题] </p>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="25" value="3" />
                                <span class="text">A、很好</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="25" value="2"/>
                                <span class="text">B、比较好</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="25" value="1"/>
                                <span class="text">C、不太会/能</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="25" value="0"/>
                                <span class="text">D、一点也不</span>
                            </label>
                        </div>
                    </div>
                </div>

              
                
                <p>6．您觉得与他人达成共识困难么？[单选题] </p>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="26" value="0" />
                                <span class="text">A、非常困难</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="26" value="1"/>
                                <span class="text">B、有些困难 </span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="26" value="2"/>
                                <span class="text">C、不是特别难</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="26" value="3"/>
                                <span class="text">D、一点不难</span>
                            </label>
                        </div>
                    </div>
                </div>
        
                <p>7．您有信心与他人建立互信么？[单选题] </p>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="27" value="3" />
                                <span class="text">A、非常自信</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="27" value="2"/>
                                <span class="text">B、一般自信</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="27" value="1"/>
                                <span class="text">C、很少自信</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="27" value="0"/>
                                <span class="text">D、无自信</span>
                            </label>
                        </div>
                    </div>
                </div>
        

                <p>8．您对人际关系中平等是如何看待的？[单选题] </p>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="28" value="3" />
                                <span class="text">A、非常重要</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="28" value="2"/>
                                <span class="text">B、比较重要</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="28" value="1"/>
                                <span class="text">C、不太重要</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="28" value="0"/>
                                <span class="text">D、不重要</span>
                            </label>
                        </div>
                    </div>
                </div>

           

                <p>9．您对人际关系中互惠互利是如何看待的？[单选题] </p>
                  <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="29" value="3" />
                                <span class="text">A、非常重要</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="29" value="2"/>
                                <span class="text">B、比较重要</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="29" value="1"/>
                                <span class="text">C、不太重要</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="29" value="0"/>
                                <span class="text">D、不重要</span>
                            </label>
                        </div>
                    </div>
                </div>
        

                <p>10．您对团队规则怎么看？[单选题] </p>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="30" value="3" />
                                <span class="text">A、必须</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="30" value="2"/>
                                <span class="text">B、看情况</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="30" value="1"/>
                                <span class="text">C、不在意</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="30" value="0"/>
                                <span class="text">D、遵守非常傻</span>
                            </label>
                        </div>
                    </div>
                </div>

                 
                <p>11．如果一个朋友欺骗你，您应该怎么做？   [单选题] </p>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="31" value="3" />
                                <span class="text">A、找出骗你的原因</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="31" value="2"/>
                                <span class="text">B、继续信任他/她</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="31" value="1"/>
                                <span class="text">C、不再信任</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="31" value="0"/>
                                <span class="text">D、与其争吵</span>
                            </label>
                        </div>
                    </div>
                </div>

                <p>12．如果一个朋友希望你陪他购物，但是你非常疲劳，您应该怎么做？[单选题] </p>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="32" value="3" />
                                <span class="text">A、抱歉并告之实情</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="32" value="2"/>
                                <span class="text">B、答应前往但告之自己非常疲劳</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="32" value="1"/>
                                <span class="text">C、抱怨对方不理解自己</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="32" value="0"/>
                                <span class="text">D、避免与此朋友再次见面</span>
                            </label>
                        </div>
                    </div>
                </div>

                <p> 13．如果正在谈话中，但对方在不停地看表，您认为他/她是什么想的？ [单选题] </p>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="33" value="3" />
                                <span class="text">A、他/她想要走了</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="33" value="2"/>
                                <span class="text">B、他/她在表示不耐烦</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="33" value="1"/>
                                <span class="text">C、他/她喜欢自己的手表</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="33" value="0"/>
                                <span class="text">D、你也不知道是怎么回事</span>
                            </label>
                        </div>
                    </div>
                </div>

              
                <p>14．当您要去超市，如果朋友让你带一些东西回来，您应该怎么做？）[单选题] </p>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="34" value="3" />
                                <span class="text">A、很高兴去做</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="34" value="2"/>
                                <span class="text">B、跟对方说告之太重了提不动并要求对方一起去</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="34" value="1"/>
                                <span class="text">C、抱怨但仍去做</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="34" value="0"/>
                                <span class="text">D、拒绝去做并不给予解释</span>
                            </label>
                        </div>
                    </div>
                </div>

            
                  <p>15．如果您是一个团队的一员，这个团队要求每一个人定期参与聚会，您会怎么做？[单选题] </p>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="35" value="3" />
                                <span class="text">A、大多数时间愿意去</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="35" value="2"/>
                                <span class="text">B、有时去但不想去时给些理由</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="35" value="1"/>
                                <span class="text">C、只有自己想去时再去</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="35" value="0"/>
                                <span class="text">D、感到受限制并退出该团队</span>
                            </label>
                        </div>
                    </div>
                </div>

                 <hr class="wide" />
                <h5>第2部分 观察（21分）</h5>
                <p>基于整个访谈过程中的观察圈出最适合的答案</p>

                <p>16．恰当地打招呼（如“你好！最近怎么样？好久不见等！”）[单选题] </p>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="36" value="0" />
                                <span class="text">A、没有</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="36" value="1"/>
                                <span class="text">B、在测查者打招呼之后做了 </span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="36" value="2"/>
                                <span class="text">C、自己做的，但欠缺感情</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="36" value="3"/>
                                <span class="text">D、带着感情去做</span>
                            </label>
                        </div>
                    </div>
                </div>
        
       

                <p>眼神交流  [单选题] </p>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="37" value="0" />
                                <span class="text">A、没有</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="37" value="1"/>
                                <span class="text">B、偶有，但回避与测查者的交流</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="37" value="2"/>
                                <span class="text">C、常常，但欠缺感情</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="37" value="3"/>
                                <span class="text">D、常常，并带有感情</span>
                            </label>
                        </div>
                    </div>
                </div>
              

                <p>表达想法  [单选题] </p>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="38" value="0" />
                                <span class="text">A、无法理解</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="38" value="1"/>
                                <span class="text">B、部分理解，但抓不住重点</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="38" value="2"/>
                                <span class="text">C、可理解，但有些复杂</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="38" value="3"/>
                                <span class="text">D、简单明了</span>
                            </label>
                        </div>
                    </div>
                </div>

                 
                <p>情绪反应  [单选题] </p>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="39" value="0" />
                                <span class="text">A、没有</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="39" value="1"/>
                                <span class="text">B、偶有但平淡</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="39" value="2"/>
                                <span class="text">C、有时，但不鲜明</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="39" value="3"/>
                                <span class="text">D、生动自然</span>
                            </label>
                        </div>
                    </div>
                </div>
        
           

                <p>对测试者的理解  [单选题] </p>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="40" value="0" />
                                <span class="text">A、完全不理解</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="40" value="1"/>
                                <span class="text">B、常常不理解，偶尔理解</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="40" value="2"/>
                                <span class="text">C、不准确，但仍有些正确的回应</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="40" value="3"/>
                                <span class="text">D、理解清楚，回答反应及时迅速</span>
                            </label>
                        </div>
                    </div>
                </div>

              
                <p>共情 [单选题] </p>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="41" value="0" />
                                <span class="text">A、没有</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="41" value="1"/>
                                <span class="text">B、很少，但在测查者共情时有礼貌性的回复</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="41" value="2"/>
                                <span class="text">C、有的时候能站在你的角度</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="41" value="3"/>
                                <span class="text">D、深刻适切</span>
                            </label>
                        </div>
                    </div>
                </div>

              
                <p>与一般人相比，总的社交技能如何 [单选题] </p>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="42" value="0" />
                                <span class="text">A、糟糕</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="42" value="1"/>
                                <span class="text">B、差，但仍保留了些能力</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="42" value="2"/>
                                <span class="text">C、还行，能进行正常的交流</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="42" value="3"/>
                                <span class="text">D、好，有效而自然的交流</span>
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
        checkboxToRadio("40");
        checkboxToRadio("41");
        checkboxToRadio("42");


    
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

        function check1() {
            
            content2.style.display = "none";
            content3.style.display = "none";
            content4.style.display = "none";
            content5.style.display = "none";
            content6.style.display = "block";
            content7.style.display = "block";
            content8.style.display = "block";
            content9.style.display = "block";
            content10.style.display = "block";
        }
        function check2() {
            content2.style.display = "block";
            content3.style.display = "block";
            content4.style.display = "block";
            content5.style.display = "block";
            content6.style.display = "block";
            content7.style.display = "block";
            content8.style.display = "block";
            content9.style.display = "block";
            content10.style.display = "block";

        }
        function check3() {

            content4.style.display = "none";
            content5.style.display = "none";
            content6.style.display = "none";
            content7.style.display = "none";
            content8.style.display = "none";
            content9.style.display = "none";


        }
        function check4() {
            content4.style.display = "block";
            content5.style.display = "none";
            content6.style.display = "none";
            content7.style.display = "none";
            content8.style.display = "none";
            content9.style.display = "none";

        }
        function check5() {
            content4.style.display = "block";
            content5.style.display = "block";
            content6.style.display = "block";
            content7.style.display = "block";
            content8.style.display = "block";
            content9.style.display = "block";



        }
        function check6() {
            content7.style.display = "none";

        }
        function check7() {

            content7.style.display = "block";


        }
        function check8() {
            content9.style.display = "none";

        }
        function check9() {

            content9.style.display = "block";


        }
        function check10() {
            content11.style.display = "none";

        }
        function check11() {
            content11.style.display = "block";


        }
        function check12() {
            content13.style.display = "none";

        }

        function check13() {

            content13.style.display = "block";

        }
      
        function ck() {
            var error = "";


            if (content2.style.display == "block") {
                if (!$("input:checked[name=2]").is(':checked')) {
                    error += "第2题" + "、";
                }
            }

            if (content3.style.display == "block") {
                if (!$("input:checked[name=3]").is(':checked')) {
                    error += "第3题" + "、";
                }
            }


            if (content4.style.display == "block") {
                if (!$("input:checked[name=4]").is(':checked')) {
                    error += "第4题" + "、";
                }
            }
            if (content5.style.display == "block") {
                if (!$("input:checked[name=5]").is(':checked')) {
                    error += "第5题" + "、";
                }
            }
            if (content6.style.display == "block") {
                if (!$("input:checked[name=6]").is(':checked')) {
                    error += "第6题" + "、";
                }
            }
            if (content7.style.display == "block") {
                if (!$("input:checked[name=7]").is(':checked')) {
                    error += "第7题" + "、";
                }
            }
            if (content8.style.display == "block") {
                if (!$("input:checked[name=8]").is(':checked')) {
                    error += "第8题" + "、";
                }
            }
            if (content9.style.display == "block") {
                if (!$("input:checked[name=9]").is(':checked')) {
                    error += "第9题" + "、";
                }
            }
            if (content10.style.display == "block") {
                if (!$("input:checked[name=10]").is(':checked')) {
                    error += "第10题" + "、";
                }
            }
            if (content11.style.display == "block") {
                if (!$("input:checked[name=11]").is(':checked')) {
                    error += "第11题" + "、";
                }
            }
            if (content12.style.display == "block") {
                if (!$("input:checked[name=12]").is(':checked')) {
                    error += "第12题" + "、";
                }
            }
            if (content13.style.display == "block") {
                if (!$("input:checked[name=13]").is(':checked')) {
                    error += "第13题" + "、";
                }
            }


            for (var i = 1; i <= 42; i++)//条件：i应小于等于必做题目的总数
            {
                if (!$("input:checked[name=" + i + "]").is(':checked')) {
                    if (i==1) { error += "第" + i + "题" + "、"; }
                    if (i >= 14 && i <= 20) { error += "人际活动第" + i + "题" + "、"; }
                    if (i >= 21 && i <= 35) { var j = i - 20; error += "访谈部分第" + j + "题" + "、"; }
                    if (i >= 36 && i <= 42) { error += "观察部分" + "、"; }
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

