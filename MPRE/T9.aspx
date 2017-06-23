<%@ Page Title="" Language="C#" MasterPageFile="~/Test.master" AutoEventWireup="true" CodeFile="T9.aspx.cs" Inherits="T9" %>

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
                      
                      <p>该测试表为自评量表，根据下列问题，选择最适合您状况的答案。</p>
                           
                               
                                <p style="margin-left:40%">  <asp:Label ID="Label4" class="btn btn-info login" runat="server" Text="开始测试"></asp:Label>
                                
                            </p>  
                       
                    </div>

    <asp:Label ID="GUID" runat="server"  Visible="false"></asp:Label>
    <asp:Label ID="PatientGUID" runat="server"  Visible="false"></asp:Label>
    <asp:Label ID="DoctorGUID" runat="server"  Visible="false"></asp:Label>
    <asp:Label ID="TestName" runat="server" Visible="false"></asp:Label>
    <asp:Label ID="StartDT" runat="server"  Visible="false"></asp:Label>
    <asp:Label ID="EndDT" runat="server" Visible="false"></asp:Label>
      <div class="page-body" style="max-width: 960px; margin: 0 auto 0;">
        <div class="widget flat radius-bordered">
            <div id="banner">
               T9 SF-36健康调查量表(SF-36)
            </div>
            <div class="widget-header bordered-bottom bordered-blue">
                <div style="text-align: left; padding-top: 10px;">
                    <p style="font-weight: bold">测试说明：</p>
                    <p>该测试表为自评量表，根据下列问题，选择最适合您状况的答案。

                    </p>
                </div>
            </div>
            <div class="widget-body bordered-bottom bordered-darkorange">
                         <h5>指导语：请回答下列每个问题，有些问题可能看起来相似，但其实每个问题都是不同的。请花时间阅读每个问题，选择最适合您状况的答案。</h5>
                <hr />
                <h5>1. 总体来讲，您的健康状况是：[单选题] </h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="1" value="5" />
                                <span class="text">A、完美的</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="1" value="4"/>
                                <span class="text">B、很好</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="1" value="3"/>
                                <span class="text">C、好</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="1" value="2"/>
                                <span class="text">D、可以</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="1" value="1"/>
                                <span class="text">E、很差</span>
                            </label>
                        </div>
                    </div>
                </div>

                 <hr class="wide" />
                
                <h5>2. 与一年前相比，您如何评价您现在的身体和情绪状况？[单选题] </h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="2" value="5" />
                                <span class="text">A、好的多</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="2" value="4"/>
                                <span class="text">B、好一些 </span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="2" value="3"/>
                                <span class="text">C、差不多</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="2" value="2"/>
                                <span class="text">D、差一些</span>
                            </label>
                        </div>
                    </div>
                      <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="2" value="1"/>
                                <span class="text">E、差多了</span>
                            </label>
                        </div>
                    </div>
                </div>
        
                <hr class="wide" />

                <h5>3. 以下这些问题都与您的日常活动有关。你现在的健康状况是否使这些活动受到了限制？如果有限制，情况如何？ </h5>
                <p>a. 重体力活动（如跑动、举重物、激烈运动等）[单选题]</p>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="3" value="1" />
                                <span class="text">A、有很多限制</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="3" value="2"/>
                                <span class="text">B、有一点限制</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="3" value="3"/>
                                <span class="text">C、根本没限制</span>
                            </label>
                        </div>
                    </div>
                 
                </div>
 

                <p>b. 适度活动（如移桌子、推椅子、打保龄球或喂猪等）[单选题] </p>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="4" value="1" />
                                <span class="text">A、有很多限制</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="4" value="2"/>
                                <span class="text">B、有一点限制</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="4" value="3"/>
                                <span class="text">C、根本没限制</span>
                            </label>
                        </div>
                    </div>
               
                </div>

                <p>c. 提日杂用品[单选题] </p>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="5" value="1" />
                                <span class="text">A、有很多限制</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="5" value="2"/>
                                <span class="text">B、有一点限制</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="5" value="3"/>
                                <span class="text">C、根本没限制</span>
                            </label>
                        </div>
                    </div>
                 
                </div>
        
          
                <p>d. 爬几层楼梯[单选题] </p>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="6" value="1" />
                                <span class="text">A、有很多限制</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="6" value="2"/>
                                <span class="text">B、有一点限制</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="6" value="3"/>
                                <span class="text">C、根本没限制</span>
                            </label>
                        </div>
                    </div>
                 
                </div>

              
                <p>e. 爬一层楼梯  [单选题] </p>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="7" value="1" />
                                <span class="text">A、有很多限制</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="7" value="2"/>
                                <span class="text">B、有一点限制</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="7" value="3"/>
                                <span class="text">C、根本没限制</span>
                            </label>
                        </div>
                    </div>
                 
                </div>

              
                <p>f. 弯腰、曲膝、下蹲 [单选题] </p>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="8" value="1" />
                                <span class="text">A、有很多限制</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="8" value="2"/>
                                <span class="text">B、有一点限制</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="8" value="3"/>
                                <span class="text">C、根本没限制</span>
                            </label>
                        </div>
                    </div>
                 
                </div>  

        
                <p> g. 步行三里以上[单选题] </p>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="9" value="1" />
                                <span class="text">A、有很多限制</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="9" value="2"/>
                                <span class="text">B、有一点限制</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="9" value="3"/>
                                <span class="text">C、根本没限制</span>
                            </label>
                        </div>
                    </div>
                
                </div>
                <p>h. 走几个路口的距离[单选题] </p>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="10" value="1" />
                                <span class="text">A、有很多限制</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="10" value="2"/>
                                <span class="text">B、有一点限制</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="10" value="3"/>
                                <span class="text">C、根本没限制</span>
                            </label>
                        </div>
                    </div>
                
                </div>

                  <p>i. 走一个路口的距离[单选题] </p>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="11" value="1" />
                                <span class="text">A、有很多限制</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="11" value="2"/>
                                <span class="text">B、有一点限制</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="11" value="3"/>
                                <span class="text">C、根本没限制</span>
                            </label>
                        </div>
                    </div>
                
                </div>

                <p> j. 自己洗澡或穿衣）[单选题] </p>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="12" value="1" />
                                <span class="text">A、有很多限制</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="12" value="2"/>
                                <span class="text">B、有一点限制 </span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="12" value="3"/>
                                <span class="text">C、根本没限制</span>
                            </label>
                        </div>
                    </div>
                 
                </div>
        
                <hr class="wide" />

                <h5>4. 在过去的四周里，您是否由于身体健康状况使得工作或其他日常活动出现以下问题？ </h5>
                <p>a. 减少工作或其他活动的时间？[单选题] </p>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="13" value="1" />
                                <span class="text">A、是</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="13" value="2"/>
                                <span class="text">B、否</span>
                            </label>
                        </div>
                    </div>
               
                
                </div>
    
                <p>b. 完成得比预想的要少？[单选题] </p>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="14" value="1" />
                                <span class="text">A、是</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="14" value="2"/>
                                <span class="text">B、否</span>
                            </label>
                        </div>
                    </div>
               
                </div>

                <p>c. 工作或其他活动的种类受到限制？[单选题] </p>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="15" value="1" />
                                <span class="text">A、是</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="15" value="2"/>
                                <span class="text">B、否</span>
                            </label>
                        </div>
                    </div>
                
                </div>
        
       

                <p>d. 从事工作或其他活动有困难（例如，需要花额外的时间）[单选题] </p>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="16" value="1" />
                                <span class="text">A、是</span>
                            </label>
                        </div>
                    </div>
               <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="16" value="2" />
                                <span class="text">B、否</span>
                            </label>
                        </div>
                    </div>
                
                </div>

                 <hr class="wide" />
                <h5>5. 在过去的四周里，您是否由于情绪问题（例如抑郁或焦虑）使得工作或其他日常活动出现以下情况？ </h5>
               <p>a. 减少工作或其他活动的时间？[单选题] </p>
                 <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="17" value="1" />
                                <span class="text">A、是</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="17" value="2"/>
                                <span class="text">B、否</span>
                            </label>
                        </div>
                    </div>
                
                </div>

                
                <p>b. 完成得比预想的要少？[单选题] </p>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="18" value="1" />
                                <span class="text">A、是</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="18" value="2"/>
                                <span class="text">B、否</span>
                            </label>
                        </div>
                    </div>
                  
                </div>

               
                <p>c. 做工作或其他活动不如平常那样仔细 [单选题] </p>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="19" value="1" />
                                <span class="text">A、是</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="19" value="2"/>
                                <span class="text">B、否</span>
                            </label>
                        </div>
                    </div>
                 
                  
                </div>

                 <hr class="wide" />
                <h5>6. 在过去的四周里，您的躯体健康或情绪问题在多大程度上干扰到您和亲戚、朋友、邻居或其他人群的正常社交活动？[单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="20" value="5" />
                                <span class="text">A、根本没有影响</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="20" value="4"/>
                                <span class="text">B、有一点影响</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="20" value="3"/>
                                <span class="text">C、有中度影响</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="20" value="2"/>
                                <span class="text">D、有较大影响</span>
                            </label>
                        </div>
                    </div>
                       <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="20" value="1"/>
                                <span class="text">E、有极大影响</span>
                            </label>
                        </div>
                    </div>
                </div>

                <hr class="wide"/>
                 <h5>7. 在过去四周里，您有身体上的疼痛吗？ [单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="21" value="5" />
                                <span class="text">A、根本没有疼痛</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="21" value="4"/>
                                <span class="text">B、有轻微疼痛</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="21" value="3"/>
                                <span class="text">C、有中度疼痛</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="21" value="2"/>
                                <span class="text">D、有严重疼痛</span>
                            </label>
                        </div>
                    </div>
                     <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="21" value="1"/>
                                <span class="text">E、有很严重疼痛</span>
                            </label>
                        </div>
                    </div>
                </div>

                 <hr class="wide" />
                
                <h5>8. 在过去四周里，身体上的疼痛影响您的正常工作（包括出去上班和家务劳动）吗？[单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="22" value="5" />
                                <span class="text">A、根本没有影响</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="22" value="4"/>
                                <span class="text">B、有一点影响 </span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="22" value="3"/>
                                <span class="text">C、有中度影响</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="22" value="2"/>
                                <span class="text">D、有较大影响</span>
                            </label>
                        </div>
                    </div>
                       <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="22" value="1"/>
                                <span class="text">E、有极大影响</span>
                            </label>
                        </div>
                    </div>
                </div>
        
                <hr class="wide" />

                <h5>9. 以下这些问题有关过去四周里您的感觉如何以及您的情况如何。对每一条问题，请钩出最接近您的感觉的那个答案。以过去四周里多少时间论。</h5>
                <p>a. 您觉得干劲十足吗？[单选题] </p>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="23" value="6" />
                                <span class="text">A、所有的时间</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="23" value="5"/>
                                <span class="text">B、大部分时间</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="23" value="4"/>
                                <span class="text">C、比较多时间</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="23" value="3"/>
                                <span class="text">D、一部分时间</span>
                            </label>
                        </div>
                    </div>
                      <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="23" value="2"/>
                                <span class="text">E、小部分时间</span>
                            </label>
                        </div>
                    </div>
                      <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="23" value="1"/>
                                <span class="text">F、没有此感觉</span>
                            </label>
                        </div>
                    </div>
                </div>
           
                <p>b. 您是一个精神紧张的人吗？[单选题] </p>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="24" value="1" />
                                <span class="text">A、所有的时间</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="24" value="2"/>
                                <span class="text">B、大部分时间</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="24" value="3"/>
                                <span class="text">C、比较多时间</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="24" value="4"/>
                                <span class="text">D、一部分时间</span>
                            </label>
                        </div>
                    </div>
                     <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="24" value="5"/>
                                <span class="text">E、小部分时间</span>
                            </label>
                        </div>
                    </div>
                     <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="24" value="6"/>
                                <span class="text">F、没有此感觉</span>
                            </label>
                        </div>
                    </div>
                </div>

                <p>c. 您感到垂头丧气，什么事都不能使您振作起来吗？[单选题] </p>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="25" value="1" />
                                <span class="text">A、所有的时间</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="25" value="2"/>
                                <span class="text">B、大部分时间</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="25" value="3"/>
                                <span class="text">C、比较多时间</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="25" value="4"/>
                                <span class="text">D、一部分时间</span>
                            </label>
                        </div>
                    </div>
                       <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="25" value="5"/>
                                <span class="text">E、小部分时间</span>
                            </label>
                        </div>
                    </div>
                       <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="25" value="6"/>
                                <span class="text">F、没有此感觉</span>
                            </label>
                        </div>
                    </div>
                </div>
   

                <p>d. 您觉得平静和安宁吗？[单选题] </p>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="26" value="6" />
                                <span class="text">A、所有的时间</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="26" value="5"/>
                                <span class="text">B、大部分时间</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="26" value="4"/>
                                <span class="text">C、比较多时间</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="26" value="3"/>
                                <span class="text">D、一部分时间</span>
                            </label>
                        </div>
                    </div>
                       <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="26" value="2"/>
                                <span class="text">E、小部分时间</span>
                            </label>
                        </div>
                    </div>
                       <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="26" value="1"/>
                                <span class="text">F、没有此感觉</span>
                            </label>
                        </div>
                    </div>
                </div>

                 
                <p>e. 您有足够的精力去做想做的事情吗？   [单选题] </p>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="27" value="6" />
                                <span class="text">A、所有的时间</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="27" value="5"/>
                                <span class="text">B、大部分时间</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="27" value="4"/>
                                <span class="text">C、比较多时间</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="27" value="3"/>
                                <span class="text">D、一部分时间</span>
                            </label>
                        </div>
                    </div>
                       <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="27" value="2"/>
                                <span class="text">E、小部分时间</span>
                            </label>
                        </div>
                    </div>
                       <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="27" value="1"/>
                                <span class="text">F、没有此感觉</span>
                            </label>
                        </div>
                    </div>
                </div>

                <p>f. 您感到闷闷不乐、心情忧郁吗？[单选题] </p>
                  <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="28" value="1" />
                                <span class="text">A、所有的时间</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="28" value="2"/>
                                <span class="text">B、大部分时间</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="28" value="3"/>
                                <span class="text">C、比较多时间</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="28" value="4"/>
                                <span class="text">D、一部分时间</span>
                            </label>
                        </div>
                    </div>
                       <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="28" value="5"/>
                                <span class="text">E、小部分时间</span>
                            </label>
                        </div>
                    </div>
                       <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="28" value="6"/>
                                <span class="text">F、没有此感觉</span>
                            </label>
                        </div>
                    </div>
                </div>
                <p> g. 您觉得筋疲力尽吗？ [单选题] </p>
                    <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="29" value="1" />
                                <span class="text">A、所有的时间</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="29" value="2"/>
                                <span class="text">B、大部分时间</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="29" value="3"/>
                                <span class="text">C、比较多时间</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="29" value="4"/>
                                <span class="text">D、一部分时间</span>
                            </label>
                        </div>
                    </div>
                       <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="29" value="5"/>
                                <span class="text">E、小部分时间</span>
                            </label>
                        </div>
                    </div>
                       <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="29" value="6"/>
                                <span class="text">F、没有此感觉</span>
                            </label>
                        </div>
                    </div>
                </div>

         
                <p>h. 您是个快乐的人吗？[单选题] </p>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="30" value="6" />
                                <span class="text">A、所有的时间</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="30" value="5"/>
                                <span class="text">B、大部分时间</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="30" value="4"/>
                                <span class="text">C、比较多时间</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="30" value="3"/>
                                <span class="text">D、一部分时间</span>
                            </label>
                        </div>
                    </div>
                       <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="30" value="2"/>
                                <span class="text">E、小部分时间</span>
                            </label>
                        </div>
                    </div>
                       <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="30" value="1"/>
                                <span class="text">F、没有此感觉</span>
                            </label>
                        </div>
                    </div>
                </div>

                  <p>i. 您感觉疲劳吗？[单选题] </p>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="31" value="1" />
                                <span class="text">A、所有的时间</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="31" value="2"/>
                                <span class="text">B、大部分时间</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="31" value="3"/>
                                <span class="text">C、比较多时间</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="31" value="4"/>
                                <span class="text">D、一部分时间</span>
                            </label>
                        </div>
                    </div>
                       <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="31" value="5"/>
                                <span class="text">E、小部分时间</span>
                            </label>
                        </div>
                    </div>
                       <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="31" value="6"/>
                                <span class="text">F、没有此感觉</span>
                            </label>
                        </div>
                    </div>
                </div>

                 <hr class="wide" />
                
                <h5>10. 在过去的四周里，有多少时间因为您的躯体健康或情绪问题而干扰到您的社交活动（如走亲访友等）？[单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="32" value="1" />
                                <span class="text">A、所有的时间</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="32" value="2"/>
                                <span class="text">B、大部分时间 </span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="32" value="3"/>
                                <span class="text">C、一部分时间</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="32" value="4"/>
                                <span class="text">D、小部分时间</span>
                            </label>
                        </div>
                    </div>
                      <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="32" value="5"/>
                                <span class="text">E、没有此感觉</span>
                            </label>
                        </div>
                    </div>
                </div>
        
                <hr class="wide" />

                <h5>11. 请对下面的每一句话，选出最符合您情况的答案 </h5>
                <p>a. 我好象比别人容易生病[单选题] </p>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="33" value="1" />
                                <span class="text">A、绝对正确</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="33" value="2"/>
                                <span class="text">B、大部分正确</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="33" value="3"/>
                                <span class="text">C、不能肯定</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="33" value="4"/>
                                <span class="text">D、大部分错误</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="33" value="5"/>
                                <span class="text">E、绝对错误</span>
                            </label>
                        </div>
                    </div>
                </div>
             
                <p>b. 我跟我认识的人一样健康 [单选题] </p>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="34" value="5" />
                                <span class="text">A、绝对正确</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="34" value="4"/>
                                <span class="text">B、大部分正确</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="34" value="3"/>
                                <span class="text">C、不能肯定</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="34" value="2"/>
                                <span class="text">D、大部分错误</span>
                            </label>
                        </div>
                    </div>
                       <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="34" value="1"/>
                                <span class="text">E、绝对错误</span>
                            </label>
                        </div>
                    </div>
                </div>

                <p>c. 我认为我的健康状况在变坏[单选题] </p>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="35" value="1" />
                                <span class="text">A、绝对正确</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="35" value="2"/>
                                <span class="text">B、大部分正确</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="35" value="3"/>
                                <span class="text">C、不能肯定</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="35" value="4"/>
                                <span class="text">D、大部分错误</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="35" value="5"/>
                                <span class="text">E、绝对错误</span>
                            </label>
                        </div>
                    </div>
                </div>
        
                

                <p>d. 我的健康状况非常好[单选题] </p>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="36" value="5" />
                                <span class="text">A、绝对正确</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="36" value="4"/>
                                <span class="text">B、大部分正确</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="36" value="3"/>
                                <span class="text">C、不能肯定</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="36" value="2"/>
                                <span class="text">D、大部分错误</span>
                            </label>
                        </div>
                    </div>
                      <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="36" value="1"/>
                                <span class="text">E、绝对错误</span>
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
           for (var i = 1; i <= 36; i++)//条件：i应小于等于必做题目的总数
           {
               if (!$("input:checked[name=" + i + "]").is(':checked')) {
                   if (i == 1 ) { error = "第1题" + "、"; }
                   else if (i == 2) { error = "第2题" + "、"; }
                   else if (i >= 3 && i <= 12) { error = "第三大题" + "、"; }
                   else if (i >= 13 && i <= 16) { error = "第四大题" + "、"; }
                   else if (i >= 17 && i <= 19) { error = "第五大题" + "、"; }
                   else if (i == 20) { error = "第6题" + "、"; }
                   else if (i == 21) { error = "第7题" + "、"; }
                   else if (i == 22) { error = "第8题" + "、"; }
                   else if (i >= 23 && i <= 31) { error = "第九大题" + "、"; }
                   else if (i == 32) { error = "第10题" + "、"; }
                    else if (i >= 33 && i <= 36) { error = "第十一大题" + "、"; }
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

