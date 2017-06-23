<%@ Page Title="" Language="C#" MasterPageFile="~/Test.master" AutoEventWireup="true" CodeFile="T24.aspx.cs" Inherits="T24" %>

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
                      
                      <p>该测试表为他评量表，由医生提问问题，并根据病人的实际回答和操作表现进行选择</p>
                           
                               
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
                T24 药物管理能力评估（MMAA）
            </div>
            <div class="widget-header bordered-bottom bordered-blue">
                <div style="text-align:left;padding-top:10px;">
                    <p style="font-weight:bold">测试说明：</p>
                    <p>
                   该测试表为他评量表，由医生提问问题，并根据病人的实际回答进行选择。
                    </p>
                </div>
            </div>
            <div class="widget-body bordered-bottom bordered-darkorange">
                <h5>第一题、你是否知道你现在吃多少种类的药？[单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="1" value="0" />
                                <span class="text">A、不知道</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="1" value="10"/>
                                <span class="text">B、知道</span>
                            </label>
                        </div>
                    </div>
                    
                </div>
                
                <hr class="wide" />

                <h5>第二题、你是否知道服用药物的名称？[单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="2" value="0" />
                                <span class="text">A、不知道</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="2" value="10"/>
                                <span class="text">B、知道</span>
                            </label>
                        </div>
                    </div>                    
                </div>
                
                <hr class="wide" />

                <h5>第三题、你是否知道你所吃的药物的服用方法？[单选题]</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="3" value="0" />
                                <span class="text">A、不知道</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="3" value="10"/>
                                <span class="text">B、知道</span>
                            </label>
                        </div>
                    </div>                    
                </div>
                <hr class="wide" />
                <h5>角色扮演</h5>
                <h5>甲乙丙丁四种药物，四种颜色，放置在四个药瓶里，药瓶上有服用标签  </h5>
                <h5>甲药 2片，一天两次，与食物同服  </h5>
                <h5>乙药 1片，一天三次  丙药 2片，一天三次，餐前服用  </h5>
                <h5>丁药 2片，一天四次，餐前一小时或餐后2小时服用</h5>
                <h5>延迟半小时后再测试，一小时候，给患者药瓶，药物，以及周一至周日的摆药盒</h5>
                <h5>让患者按要求摆药，并回答服用方法。其中乙药有意少两天的药量，并在电脑屏幕提问患者“在摆药过程中是否发现有什么不对？”</h5>
                <br />
                <h5>根据其摆药情况询问患者问题：</h5>
                
                <hr class="wide" />

                <h5>第四题：您一共要服用哪几种药物？</h5>
                
                    
                    <br />
                    <table class="table" style="width: 90%">
                    <tr>
                        <th colspan="4">条目 </th>
                        
                        <th>正确</th>
                        <th>错误</th>                       


                    </tr>

                    <tr>
                        <th>P1</th>
                        <th colspan="3">您一共要服用哪几种药物？</th>
                        
                        <th>
                            <div class="checkbox1">
                                <label>
                                    <input type="checkbox" name="4" value="5" />
                                    <span class="tablerow text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox1">
                                <label>
                                    <input type="checkbox" name="4" value="0" />
                                    <span class="tablerow text"></span>
                                </label>
                            </div>
                        </th>
                        
                    </tr>
                    <tr>
                        <th>P2</th>
                        <th colspan="3">对于甲药，您一天服用几次？</th>
                        
                        <th>
                            <div class="checkbox1">
                                <label>
                                    <input type="checkbox" name="5" value="5" />
                                    <span class="tablerow text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox1">
                                <label>
                                    <input type="checkbox" name="5" value="0" />
                                    <span class="tablerow text"></span>
                                </label>
                            </div>
                        </th>
                        
                    </tr>
                    <tr>
                        <th>P3</th>
                        <th colspan="3">对于甲药，每次服用几片？</th>
                        
                        <th>
                            <div class="checkbox1">
                                <label>
                                    <input type="checkbox" name="6" value="5" />
                                    <span class="tablerow text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox1">
                                <label>
                                    <input type="checkbox" name="6" value="0" />
                                    <span class="tablerow text"></span>
                                </label>
                            </div>
                        </th>
                        
                    </tr>
                     <tr>
                        <th>P4</th>
                        <th colspan="3">对于甲药，服用时有何要求？</th>
                        
                        <th>
                            <div class="checkbox1">
                                <label>
                                    <input type="checkbox" name="7" value="5" />
                                    <span class="tablerow text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox1">
                                <label>
                                    <input type="checkbox" name="7" value="0" />
                                    <span class="tablerow text"></span>
                                </label>
                            </div>
                        </th>
                        
                    </tr>
                     <tr>
                        <th>P5</th>
                        <th colspan="3">对于乙药，您一天服用几次？</th>
                        
                        <th>
                            <div class="checkbox1">
                                <label>
                                    <input type="checkbox" name="8" value="5" />
                                    <span class="tablerow text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox1">
                                <label>
                                    <input type="checkbox" name="8" value="0" />
                                    <span class="tablerow text"></span>
                                </label>
                            </div>
                        </th>
                        
                    </tr>
                    <tr>
                        <th>P6</th>
                        <th colspan="3">对于乙药，每次服用几片？</th>
                        
                        <th>
                            <div class="checkbox1">
                                <label>
                                    <input type="checkbox" name="9" value="5" />
                                    <span class="tablerow text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox1">
                                <label>
                                    <input type="checkbox" name="9" value="0" />
                                    <span class="tablerow text"></span>
                                </label>
                            </div>
                        </th>
                        
                    </tr>
                     <tr>
                        <th>P7</th>
                        <th colspan="3">对于乙药，服用时有何要求？</th>
                        
                        <th>
                            <div class="checkbox1">
                                <label>
                                    <input type="checkbox" name="10" value="5" />
                                    <span class="tablerow text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox1">
                                <label>
                                    <input type="checkbox" name="10" value="0" />
                                    <span class="tablerow text"></span>
                                </label>
                            </div>
                        </th>
                        
                    </tr>
                    <tr>
                        <th>P8</th>
                        <th colspan="3">对于丙药，您一天服用几次？</th>
                        
                        <th>
                            <div class="checkbox1">
                                <label>
                                    <input type="checkbox" name="11" value="5" />
                                    <span class="tablerow text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox1">
                                <label>
                                    <input type="checkbox" name="11" value="0" />
                                    <span class="tablerow text"></span>
                                </label>
                            </div>
                        </th>
                        
                    </tr>
                    <tr>
                        <th>P9</th>
                        <th colspan="3">对于丙药，每次服用几片？</th>
                        
                        <th>
                            <div class="checkbox1">
                                <label>
                                    <input type="checkbox" name="12" value="5" />
                                    <span class="tablerow text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox1">
                                <label>
                                    <input type="checkbox" name="12" value="0" />
                                    <span class="tablerow text"></span>
                                </label>
                            </div>
                        </th>
                        
                    </tr>
                     <tr>
                        <th>P10</th>
                        <th colspan="3">对于丙药，服用时有何要求？</th>
                        
                        <th>
                            <div class="checkbox1">
                                <label>
                                    <input type="checkbox" name="13" value="5" />
                                    <span class="tablerow text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox1">
                                <label>
                                    <input type="checkbox" name="13" value="0" />
                                    <span class="tablerow text"></span>
                                </label>
                            </div>
                        </th>
                        
                    </tr>
                     <tr>
                        <th>P11</th>
                        <th colspan="3">对于丁药，您一天服用几次？</th>
                        
                        <th>
                            <div class="checkbox1">
                                <label>
                                    <input type="checkbox" name="14" value="5" />
                                    <span class="tablerow text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox1">
                                <label>
                                    <input type="checkbox" name="14" value="0" />
                                    <span class="tablerow text"></span>
                                </label>
                            </div>
                        </th>
                        
                    </tr>
                    <tr>
                        <th>P12</th>
                        <th colspan="3">对于丁药，每次服用几片？</th>
                        
                        <th>
                            <div class="checkbox1">
                                <label>
                                    <input type="checkbox" name="15" value="5" />
                                    <span class="tablerow text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox1">
                                <label>
                                    <input type="checkbox" name="15" value="0" />
                                    <span class="tablerow text"></span>
                                </label>
                            </div>
                        </th>
                        
                    </tr>
                     <tr>
                        <th>P13</th>
                        <th colspan="3">对于丁药，服用时有何要求？</th>
                        
                        <th>
                            <div class="checkbox1">
                                <label>
                                    <input type="checkbox" name="16" value="5" />
                                    <span class="tablerow text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox1">
                                <label>
                                    <input type="checkbox" name="16" value="0" />
                                    <span class="tablerow text"></span>
                                </label>
                            </div>
                        </th>
                        
                    </tr>


                    </table>
                    <hr class="wide" />
                    
                    
                    <h5>第五题：6在摆药过程中是否发现有什么不对？</h5>
                    <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="17" value="5" />
                                <span class="text">A、正确（乙药少两天的药量）</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="17" value="2"/>
                                <span class="text">B、部分正确（乙药少了）</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="colored-blue" name="17" value="0"/>
                                <span class="text">C、错误（回答不出/没有发现任何问题）</span>
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
    input[type=checkbox] + .tablerow, input[type=radio] + .tablerow {
      
        display: table-row;
    
    }

    .radio, .checkbox1 {
    margin:auto;
    /*min-height: 20px;*/
      height:25px;
    /*margin: 9px;*/
   width:22px;
    border:2px solid #3DA0DB;
    /*color:#2489c5;*/
     padding:0;

   
}

.table{ 
table-layout:fixed; 
empty-cells:show; 
border-collapse: collapse; 
margin:0 auto; 
} 
td{ 
height:40px; 

} 
.table{ 
border:1px solid #cad9ea; 
color:#666; 
} 
.table th { 
height:40px;
text-align:center; 
} 
.table td,.table th{ 
border:1px solid #cad9ea; 
padding:0 1px 0; 
} 
.table th p{ 
    line-height:18px;

   margin:auto;
}
.table th a{ 
  border:1px solid #ff6a00;
  color:#ff6a00;

}
.table th a:hover{ 
    background-color:#ff6a00;
  color:#fff;
  border-bottom:none;

}
    </style>
</asp:Content>

