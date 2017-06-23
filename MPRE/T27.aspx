<%@ Page Title="" Language="C#" MasterPageFile="~/Test.master" AutoEventWireup="true" CodeFile="T27.aspx.cs" Inherits="T27" %>

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
                      
                      <p>该测试表为自评量表，测试者根据自身实际情况回答，并在相应的选项上打钩。</p>
                           
                               
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
                T27 婚恋评估（MRQ）
            </div>
            <div class="widget-header bordered-bottom bordered-blue">
                <div style="text-align:left;padding-top:10px;">
                    <p style="font-weight:bold">测试说明：</p>
                    <p>
                    该测试表为自评量表，测试者根据自身实际情况回答，并在相应的选项上打钩。

                    </p>
                </div>
            </div>
            <div class="widget-body bordered-bottom bordered-darkorange">
                <h5>请选择您当前的身份</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="A" value="2" />
                                <span class="text" onclick="check1()">A、已婚</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="A" value="1" />
                                <span class="text" onclick="check2()">B、交往中</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="A" value="0" />
                                <span class="text" onclick="check3()">C、单身</span>
                            </label>
                        </div>
                    </div>                 
                                   
                                          
                </div>

                <hr class="wide" />
               
                               
                <div id="Marital_Status" style="display:none">       
                <h5>第一题、和配偶相处是否满意?[单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="1" value="2" />
                                <span class="text">A、满意</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="1" value="1"/>
                                <span class="text">B、一般</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="1" value="0"/>
                                <span class="text">C、不满意</span>
                            </label>
                        </div>
                    </div>                 
                                   
                                          
                </div>
                <hr class="wide" />

                <h5>第二题、和配偶性格是否合得来?[单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="2" value="2" />
                                <span class="text">A、合得来</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="2" value="1"/>
                                <span class="text">B、一般</span>
                            </label>
                        </div>
                    </div>                 
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="2" value="0"/>
                                <span class="text">C、合不来</span>
                            </label>
                        </div>
                    </div>               
                                          
                </div>
                <hr class="wide" />
                

                <h5>第三题、和配偶是否有交流?[单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="3" value="2" />
                                <span class="text">A、主动交流</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="3" value="1"/>
                                <span class="text">B、被动交流</span>
                            </label>
                        </div>
                    </div>                   
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="3" value="0"/>
                                <span class="text">C、没有交流</span>
                            </label>
                        </div>
                    </div>     
                </div>
                
                                        
                    
                
                <hr class="wide" />

                <h5>第四题、和配偶交流有效性?[单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="4" value="2" />
                                <span class="text">A、有效</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="4" value="1"/>
                                <span class="text">B、一般</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="4" value="0"/>
                                <span class="text">C、无效</span>
                            </label>
                        </div>
                    </div>
                    
                    
                </div>
                
                                        
                    
                
                <hr class="wide" />

                <h5>第五题、和配偶有矛盾时，解决方式?[单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="5" value="2" />
                                <span class="text">A、协商解决</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="5" value="1"/>
                                <span class="text">B、听对方的</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="5" value="0"/>
                                <span class="text">C、不解决</span>
                            </label>
                        </div>
                    </div>
                    
                </div>
                
                                        
                    
                
                <hr class="wide" />

                <h5>第六题、和配偶是否有共同的爱好或活动?[单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="6" value="2" />
                                <span class="text">A、比较多</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="6" value="1"/>
                                <span class="text">B、有一些</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="6" value="0"/>
                                <span class="text">C、基本没有</span>
                            </label>
                        </div>
                    </div>
                    
                </div>
                
                                        
                    
                
                <hr class="wide" />

                <h5>第七题、和配偶是否有性生活?[单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="7" value="2" />
                                <span class="text">A、正常</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="7" value="1"/>
                                <span class="text">B、很少</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="7" value="0"/>
                                <span class="text">C、基本没有</span>
                            </label>
                        </div>
                    </div>
                    
                    
                </div>
                
                                        
                    
                
                <hr class="wide" />

                <h5>第八题、和配偶是否平等相处?[单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="8" value="2" />
                                <span class="text">A、基本和平</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="8" value="1"/>
                                <span class="text">B、不太平等</span>
                            </label>
                        </div>
                    </div>
                     <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="8" value="0"/>
                                <span class="text">C、很不平等</span>
                            </label>
                        </div>
                    </div>
                    
                    
                </div>
                
                                        
                    
                
                <hr class="wide" />

                <h5>第九、家人对结婚是否支持?[单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="9" value="2" />
                                <span class="text">A、支持</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="9" value="1"/>
                                <span class="text">B、中立</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="9" value="0"/>
                                <span class="text">C、不支持</span>
                            </label>
                        </div>
                    </div>
                    
                    
                </div>
                
                                        
                    
                
                <hr class="wide" />
                </div>

                <div id="Have_object" style="display:none">
                <h5>第一题、和对象相处是否满意?[单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="11" value="2" />
                                <span class="text">A、满意</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="11" value="1"/>
                                <span class="text">B、一般</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="11" value="0"/>
                                <span class="text">C、不满意</span>
                            </label>
                        </div>
                    </div>                 
                                   
                                          
                </div>
                <hr class="wide" />

                <h5>第二题、和对象性格是否合得来?[单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="12" value="2" />
                                <span class="text">A、合得来</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="12" value="1"/>
                                <span class="text">B、一般</span>
                            </label>
                        </div>
                    </div>                 
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="12" value="0"/>
                                <span class="text">C、合不来</span>
                            </label>
                        </div>
                    </div>               
                                          
                </div>
                <hr class="wide" />
                

                <h5>第三题、和对象是否有交流?[单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="13" value="2" />
                                <span class="text">A、主动交流</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="13" value="1"/>
                                <span class="text">B、被动交流</span>
                            </label>
                        </div>
                    </div>                   
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="13" value="0"/>
                                <span class="text">C、没有交流</span>
                            </label>
                        </div>
                    </div>     
                </div>
                
                                        
                    
                
                <hr class="wide" />

                <h5>第四题、和对象交流有效性?[单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="14" value="2" />
                                <span class="text">A、有效</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="14" value="1"/>
                                <span class="text">B、一般</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="14" value="0"/>
                                <span class="text">C、无效</span>
                            </label>
                        </div>
                    </div>
                    
                    
                </div>
                
                                        
                    
                
                <hr class="wide" />

                <h5>第五题、和对象有矛盾时，解决方式?[单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="15" value="2" />
                                <span class="text">A、协商解决</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="15" value="1"/>
                                <span class="text">B、听对方的</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="15" value="0"/>
                                <span class="text">C、不解决</span>
                            </label>
                        </div>
                    </div>
                    
                </div>
                
                                        
                    
                
                <hr class="wide" />

                <h5>第六题、和对象是否有共同的爱好或活动?[单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="16" value="2" />
                                <span class="text">A、比较多</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="16" value="1"/>
                                <span class="text">B、有一些</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="16" value="0"/>
                                <span class="text">C、基本没有</span>
                            </label>
                        </div>
                    </div>
                    
                </div>
                
                                        
                    
                
                <hr class="wide" />

                <h5>第七题、和对象是否有身体亲密接触?[单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="17" value="2" />
                                <span class="text">A、正常</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="17" value="1"/>
                                <span class="text">B、很少</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="17" value="0"/>
                                <span class="text">C、基本没有</span>
                            </label>
                        </div>
                    </div>
                    
                    
                </div>
                
                                        
                    
                
                <hr class="wide" />

                <h5>第八题、和对象是否平等相处?[单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="18" value="2" />
                                <span class="text">A、基本平等</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="18" value="1"/>
                                <span class="text">B、不太平等</span>
                            </label>
                        </div>
                    </div>
                     <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="18" value="0"/>
                                <span class="text">C、很不平等</span>
                            </label>
                        </div>
                    </div>
                    
                    
                </div>
                
                                        
                    
                
                <hr class="wide" />

                <h5>第九、家人对谈朋友是否支持?[单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="19" value="2" />
                                <span class="text">A、支持</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="19" value="1"/>
                                <span class="text">B、中立</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="19" value="0"/>
                                <span class="text">C、不支持</span>
                            </label>
                        </div>
                    </div>
                    
                    
                </div>


                
                                        
                    
                
                <hr class="wide" />
                </div>
                <div id="Single" style="display:none">
                <h5>第一题、以前是否谈过朋友?[单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="21" value="2" />
                                <span class="text">A、有</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="21" value="0"/>
                                <span class="text">B、没有</span>
                            </label>
                        </div>
                    </div>
                              
                                  
                                         
                </div>
                <hr class="wide" />

                <h5>第二题、以前是否相过亲?[单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="22" value="2" />
                                <span class="text">A、有</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="22" value="0"/>
                                <span class="text">B、没有</span>
                            </label>
                        </div>
                    </div>                 
                    
                                          
                </div>
                <hr class="wide" />
                

                <h5>第三题、家人亲戚或朋友是否帮忙介绍过对象?[单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="23" value="2" />
                                <span class="text">A、有</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="23" value="0"/>
                                <span class="text">B、没有</span>
                            </label>
                        </div>
                    </div>                   
                    
                </div>
                
                                        
                    
                
                <hr class="wide" />

                <h5>第四题、目前有无谈朋友想法?[单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="24" value="2" />
                                <span class="text">A、有</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="24" value="0"/>
                                <span class="text">B、没有</span>
                            </label>
                        </div>
                    </div>
                    
                    
                    
                </div>
                
                                        
                    
                
                <hr class="wide" />

                <h5>第五题、目前有无一般异性朋友?[单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="25" value="2" />
                                <span class="text">A、有</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="25" value="0"/>
                                <span class="text">B、无（选择该选择则后面四题全为无，只需填最后一题）</span>
                            </label>
                        </div>
                    </div>
                    
                    
                </div>
                
                                        
                    
                
                <hr class="wide" />

                <h5>第六题、和一般异性朋友是否有交流?[单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="26" value="2" />
                                <span class="text">A、主动交流</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="26" value="1"/>
                                <span class="text">B、被动交流</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="26" value="0"/>
                                <span class="text">C、没有交流</span>
                            </label>
                        </div>
                    </div>
                    
                </div>
                
                                        
                    
                
                <hr class="wide" />

                <h5>第七题、和一般异性朋友交流有效性?[单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="27" value="2" />
                                <span class="text">A、有效</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="27" value="1"/>
                                <span class="text">B、一般</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="27" value="0"/>
                                <span class="text">C、无效</span>
                            </label>
                        </div>
                    </div>
                    
                    
                </div>
                
                                        
                    
                
                <hr class="wide" />

                <h5>第八题、和一般异性朋友有矛盾时，解决方式?[单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="28" value="2" />
                                <span class="text">A、协商解决</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="28" value="1"/>
                                <span class="text">B、听对方的</span>
                            </label>
                        </div>
                    </div>
                     <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="28" value="0"/>
                                <span class="text">C、不解决</span>
                            </label>
                        </div>
                    </div>
                    
                    
                </div>
                
                                        
                    
                
                <hr class="wide" />

                <h5>第九、和一般异性朋友是否有共同的爱好或活动?[单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="29" value="2" />
                                <span class="text">A、比较多</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="29" value="1"/>
                                <span class="text">B、有一些</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="29" value="0"/>
                                <span class="text">C、基本没有</span>
                            </label>
                        </div>
                    </div>
                    
                    
                </div>
                
                                        
                    
                
                <hr class="wide" />

                <h5>第十、家人对谈朋友是否支持?[单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="30" value="2" />
                                <span class="text">A、支持</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="30" value="1"/>
                                <span class="text">B、中立</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="30" value="0"/>
                                <span class="text">C、不支持</span>
                            </label>
                        </div>
                    </div>
                    
                    
                </div>
                   <hr class="wide" />
                </div>
                                        
                    
                

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
        checkboxToRadio("10");
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
        checkboxToRadio("A");
        
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
            obj = document.getElementsByName("A");
            var N11;
            for (k in obj) {
                if (obj[k].checked) {
                    N11 = obj[k].value;
                }
            }
            if (N11 == 2) {
                var error = "";
                for (var i = 1; i <= 9; i++)//条件：i应小于等于必做题目的总数
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
                else {
                    $("#WarningLabel").html("所有必做题目已完成，现在可以提交！");//改变提示信息的文字内容
                    $("#check").css("display", "none");//检查按钮隐藏
                    $("#ctl00_ContentPlaceHolder1_Button1").css("display", "block");//提交按钮显示
                }

            }
            else if (N11 == 1) {
                var error = "";
                for (var i = 11; i <= 19; i++)//条件：i应小于等于必做题目的总数
                {
                    if (!$("input:checked[name=" + i + "]").is(':checked')) {
                        i = i - 10;
                        error += "第" + i + "题" + "、";
                        i = i + 10;
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
            
            else if (N11 == 0) {
                var error = "";
                for (var i = 21; i <= 30; i++)//条件：i应小于等于必做题目的总数
                {
                    if (!$("input:checked[name=" + i + "]").is(':checked')) {
                        i = i - 20;
                        error += "第" + i + "题" + "、";
                        i = i + 20;
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
        }    
        function check1() {

            Marital_Status.style.display = "block";
            Have_object.style.display = "none";
            Single.style.display = "none";
       

        }
        function check2() {

            Marital_Status.style.display = "none";
            Have_object.style.display = "block";
            Single.style.display = "none";
        }
        function check3() {

            Marital_Status.style.display = "none";
            Have_object.style.display = "none";
            Single.style.display = "block";
        }
    </script>
</asp:Content>

