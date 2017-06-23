<%@ Page Title="" Language="C#" MasterPageFile="~/Test.master" AutoEventWireup="true" CodeFile="T1.aspx.cs" Inherits="T1" %>

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
                      
                      <p>该测试表为为他评量表，根据测试者情况，按1~100来评分；可以使用适当的中间数值，在输入框中输入分数。</p>
                           
                               
                                <p style="margin-left:40%">  <asp:Label ID="Label4" class="btn btn-info login" runat="server" Text="开始测试"></asp:Label>
                                
                            </p>  
                       
                    </div>
    <asp:Label ID="StartDT" runat="server" Visible="false"></asp:Label> 
    <asp:Label ID="EndDT" runat="server" Visible="false" ></asp:Label>
<asp:Label ID="GUID" runat="server"  Visible="false"></asp:Label>
<asp:Label ID="TestName" runat="server"  Visible="false" ></asp:Label>
<asp:Label ID="PatientGUID" runat="server"  Visible="false"></asp:Label>
    <asp:Label ID="DoctorGUID" runat="server"  Visible="false"></asp:Label>
     

     <div class="page-body" style="max-width:960px;margin:0 auto 0;">
        <div class="widget flat radius-bordered">
            <div id="banner">
               T1 大体功能评定量表（GAF） 
            </div>
            <div class="widget-header bordered-bottom bordered-blue">
                <div style="text-align:left;padding-top:10px;">
                    <p style="font-weight:bold">测试说明：</p>
                    <p>
                   该测试表为为他评量表，根据测试者情况，按1~100来评分；可以使用适当的中间数值，在输入框中输入分数。
                    </p>
                </div>
            </div>
            <div class="widget-body bordered-bottom bordered-darkorange">
                  
            
                                    <div class="widget">
                                        <div class="widget-header bg-blue">
                                            <i class="widget-icon fa fa-arrow-right"></i>
                                            <span class="widget-caption">评分说明</span>
                                            <div class="widget-buttons">


                                                <a href="#" data-toggle="collapse">
                                                    <i class="fa fa-minus"></i>
                                                </a>

                                            </div>
                                            <!--Widget Buttons-->
                                        </div>
                                        <!--Widget Header-->
                                        <div class="widget-body">
                                            <div style="width: 100%; margin: auto; text-align: center">
                                              
                    <table class="table" >
                    <tr>
                        <th  >91~100	</th>
                        <th colspan="4"> 在广泛的活动范围内功能优异，看起来生活问题从未失去控制。由于热心正直别人喜欢他/她。没有症状。</th>    
                       
                    </tr>
                    <tr>
                        <th  >81~90</th>
                        <th colspan="4"> 在所有领域的功能良好，兴趣广泛，能有效地进行社交，对生活大体满意。有或没有短暂的症状以及偶尔存在生活失去控制或有超出正常范围的“日常”担忧。
</th>    
                       
                    </tr>
                        <tr>
                        <th  >71~80</th>
                        <th colspan="4">有轻微的功能损害，存在不同程度超出正常范围的“日常”担忧以及有时失去控制的生活问题。有或没有轻微症状。
</th>    
                       
                    </tr>
                        <tr>
                        <th  >61~70</th>
                        <th colspan="4">有一些轻度症状（如抑郁心境和轻度失眠），或者在几个功能领域有一些困难，但一般功能非常好，有一些有意义的人际交往，但多数未经培训的人不认为其“患病”。</th>    
                       
                    </tr>
                           <tr>
                        <th  >51~60</th>
                        <th colspan="4"> 有中度症状，或者一般功能有一些困难（如：朋友少、情感平淡、抑郁心境和病理性自我怀疑、欣块心境或言语迫促，有中等程度的严重的反社会行为。</th>    
                       
                    </tr>
                           <tr>
                        <th  >41~50</th>
                        <th colspan="4">有严重的症状或功能的损害，大多数医生认为显然需要治疗或注意（如：自杀先占观念或姿态、严重的强迫性仪式、频繁焦虑发作、严重反社会行为、冲动性饮酒、轻度但确定的躁狂综合征）。</th>    
                       
                    </tr>
                           <tr>
                        <th  >31~40</th>
                        <th colspan="4"> 在几个领域有严重损害，大多数医生认为显然需要治疗或注意（如抑郁者回避朋友、不照顾家人、不能做家务），或者显示检验能力或交流能力损害（如言语有时含糊、不合逻辑或离题），或者有一次自杀企图。</th>    
                       
                    </tr>
                           <tr>
                        <th  >21~30</th>
                        <th colspan="4"> 几乎在所有领域都不能发挥功能（如：整天卧床），或者行为明显受妄想或者幻觉影响，或者交流能力严重损害（如：有时语无伦次或反应迟钝）或判断力损害（如：大量行为不适宜）。</th>    
    
                    </tr>
                        
                           <tr>
                        <th  >11~20</th>
                        <th colspan="4">必须加以监护以防止自伤或伤人，或者需要监护以保持最低限度的个人卫生（如：反复的自杀企图、经常出现暴力行为、躁狂性兴奋、涂抹粪便），或者总体的交流能力明显损害（如：在大多数时间语无伦次或缄默）。</th>    
    
                    </tr>
                      
                           <tr>
                        <th  >1~10</th>
                        <th colspan="4">必须加以持续监护数天以防止自伤或伤人（如：必须在重症监护病房由工作人员进行特殊观察），不能保持最低限度的个人卫生，或者有目的明确、期望死亡的严重自杀行为。</th>    
    
                    </tr>
                        </table>


                                                <code>
                                                </code>
                                            </div>

                                            <!--Widget Body-->
                                        </div>
                                        <!--Widget-->

                                    </div>
                    <h5>评分：可以使用适当的中间数值，如45，68，72等；0=资料不足。</h5>
                <br />
                                <table class="table" style="width: 90%">
                    <tr>
                        <th colspan="2">评分</th>    
                       
                    </tr>
                    <tr>
                        <th >总分</th>
                        <th><asp:TextBox ID="Score" runat="server" class="form-control"  placeholder="0~100"></asp:TextBox></th>    
                       
                    </tr>


                  </table>
                <br />
                   <asp:Button ID="Button1" runat="server" Text="提  交" class=" btn btn-info" style="width:100px;height:40px;margin:0 auto;display:block;font-weight:bold;" OnClick="Button1_Click" />
               
                     <hr />



      


               
	
	
	
	
	
	
	
               
             
            </div>
        </div>
    </div>
    <!-- /Page Body -->    <%--把checkbox复选框转换成单选按钮radio效果--%>    <script type="text/javascript">
        checkboxToRadio("a");//需要转换的就添加这句
        checkboxToRadio("b");
        checkboxToRadio("c");
        checkboxToRadio("d");
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
    </script>
<style type="text/css">
    .table th { 
text-align:center; 
} 
   </style>
</asp:Content>

