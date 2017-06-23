<%@ Page Title="" Language="C#" MasterPageFile="~/Test.master" AutoEventWireup="true" CodeFile="T11.aspx.cs" Inherits="T11" %>

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
                      
                      <p>该测试表为自评量表，每个描述后有四个选项，请根据真实情况，在最符合您情况的一项上打√。</p>
                           
                               
                                <p style="margin-left:40%">  <asp:Label ID="Label4" class="btn btn-info login" runat="server" Text="开始测试"></asp:Label>
                                
                            </p>  
                       
                    </div>
    <asp:Label ID="GUID" runat="server"  Visible="false"></asp:Label>
    <asp:Label ID="PatientGUID" runat="server" Visible="false"></asp:Label>
    <asp:Label ID="DoctorGUID" runat="server"  Visible="false"></asp:Label>
    <asp:Label ID="TestName" runat="server"  Visible="false"></asp:Label>
    <asp:Label ID="StartDT" runat="server"  Visible="false"></asp:Label>
    <asp:Label ID="EndDT" runat="server" Visible="false"></asp:Label>
     
  <div class="page-body" style="max-width:960px;margin:0 auto 0;">
        <div class="widget flat radius-bordered">
            <div id="banner">
              T11 精神疾病内化污名量表(ISMI)
            </div>
            <div class="widget-header bordered-bottom bordered-blue">
                <div style="text-align:left;padding-top:10px;">
                    <p style="font-weight:bold">测试说明：</p>
                    <p>
                   该测试表为自评量表，每个描述后有四个选项，请根据真实情况，在最符合您情况的一项上打√。
 </p>
                </div>
            </div>
            <div class="widget-body bordered-bottom bordered-darkorange">
                <h5>指导语：在接下来的量表中，我们会使用到“精神疾病”这样一个名词，但你可以把它想成任何你觉得合适的名词。</h5>
                <br />
                <table class="table" style="width: 90%">
                    <tr>
                        <th colspan="4">一、 疏离感 </th>
                        <th>非常不同意</th>
                        <th>不同意</th>
                        <th>同意</th>
                        <th>非常同意</th>
                      


                    </tr>


                    <tr>
                        
                        <th colspan="4">1. 因为我有精神疾病，我感到被这个世界排除在外</th>
                       
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
                    </tr><tr>
                        
                        <th colspan="4">2.有精神疾病毁坏了我的生活 </th>
                     
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
                        
                        <th colspan="4">3.没有精神疾病的人不可能理解我</th>
                     
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
                     
                        <th colspan="4">4.我有精神疾病，我为此感到尴尬或羞耻 </th>
                  
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
                     
                        <th colspan="4">5.我为我有精神疾病而感到失望</th>
         
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
                 
                        <th colspan="4">6.我感到我不如其他没有精神疾病的人</th>
                        
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
                    
                    <tr><th colspan="8"></th></tr>
                    <%--阴性分项目--%>
                     <tr>
                        <th colspan="4">二、刻板印象认同 </th>
                            <th>非常不同意</th>
                        <th>不同意</th>
                        <th>同意</th>
                        <th>非常同意</th>
                       

                       


                    </tr>


                    <tr>
                
                        <th colspan="4"> 7.对精神疾病的刻板印象适用于我</th>
                       
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

                        <th colspan="4"> 8.人们能够通过我看问题的方式判断出我有精神疾病</th>
                      
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
                        
                        <th colspan="4"> 9.精神疾病的人都倾向于有暴力倾向 </th>
                       
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
                       
                        <th colspan="4"> 10.因为我有精神疾病，我需要其他人来帮我做出大部分的决定</th>
                        
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
                       
                        <th colspan="4"> 11.有精神疾病的人不能过一个好的、值得的人生 </th>
                      
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="11" value="1" />
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
                                    <input type="checkbox" name="11" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="11" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                      
                    </tr>
                    <tr>
                        
                        <th colspan="4"> 12.有精神疾病的人不应该结婚 </th>
                      
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
                        <th colspan="4"> 13.因为我有精神疾病，我就不能对社会有任何贡献</th>
                     
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="13" value="1" />
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
                                    <input type="checkbox" name="13" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="13" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                       
                       
                        </tr>

                      <tr><th colspan="8"></th></tr>
                      <%-- 一般精神病理学分项目----%>
                    <tr>
                        <th colspan="4">三、歧视体验</th>
                            <th>非常不同意</th>
                        <th>不同意</th>
                        <th>同意</th>
                        <th>非常同意</th>
                       
                    </tr>
                    <tr>
                        
                        <th colspan="4">14.因为我有精神疾病，人们会歧视我</th>
                    
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="14" value="1" />
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
                                    <input type="checkbox" name="14" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="14" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                      
                    </tr>
                    <tr>
                        <th colspan="4"> 15.因为我有精神疾病，其他人认为我不能达到一定的人生高度</th>
                        
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="15" value="1" />
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
                                    <input type="checkbox" name="15" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="15" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                       
                    </tr>
                    <tr>
                
                        <th colspan="4"> 16.只是因为我有精神疾病，人们会忽视我或对我不重视</th>
                      
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
                     
                        <th colspan="4"> 17.只是因为我有精神疾病，人们常以高人一等的姿态对待我或者拿我当一个小孩</th>
                    
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="17" value="1" />
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
                                    <input type="checkbox" name="17" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="17" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                      
                    </tr>
                    <tr>
                       
                        <th colspan="4"> 18.因为我有精神疾病，没人有兴趣接近我 </th>
                       
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

                    
                     <tr><th colspan="8"></th></tr>
                      <%-- 一般精神病理学分项目----%>
                    <tr>
                        <th colspan="4">四、社交退缩 </th>
                            <th>非常不同意</th>
                        <th>不同意</th>
                        <th>同意</th>
                        <th>非常同意</th>
                       
                    </tr>
                    <tr>

                        <th colspan="4"> 19.我不想因为精神疾病增添别人的负担，所以我不谈论自己 </th>
                    
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="19" value="1" />
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
                                    <input type="checkbox" name="19" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="19" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                      
                    </tr>
                    <tr>
                       
                        <th colspan="4"> 20.因为我的精神疾病会使我看起来看起来或表现的“奇怪”，我的社交不会如同往常一样多
 </th>
                        
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
                      
                        <th colspan="4">21.对于精神疾病消极的刻板印象使得我同“正常的”世界隔离开来 </th>
                      
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="21" value="1" />
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
                                    <input type="checkbox" name="21" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="21" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        
                    </tr>
                    <tr>
                      
                        <th colspan="4"> 22.我远离社交场合是为了使我的家庭或朋友免于尴尬</th>
                    
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="22" value="1" />
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
                                    <input type="checkbox" name="22" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="22" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                      
                    </tr>
                    <tr>
       
                        <th colspan="4"> 23.在没有精神疾病的人群中，使我感到被排除在外或不自在 </th>
                       
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="23" value="1" />
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
                                    <input type="checkbox" name="23" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="23" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                      
                    </tr>

                      <tr>
       
                        <th colspan="4">24.我避免和没有精神疾病的人接近以防止被拒绝 </th>
                       
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

    <%--把checkbox复选框转换成单选按钮radio效果--%>
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

           <%--jQuery方法检查必做题目是否完成--%>
        function ck() {
            var error = "";
            for (var i = 1; i <= 24; i++)//条件：i应小于等于必做题目的总数
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




</style> 
</asp:Content>  

