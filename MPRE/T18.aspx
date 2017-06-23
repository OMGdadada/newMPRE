<%@ Page Title="" Language="C#" MasterPageFile="~/Test.master" AutoEventWireup="true" CodeFile="T18.aspx.cs" Inherits="T18" %>

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
                      
                      <p>该测试表为为他评量表，根据测试者的实际情况，在每题对应的选项上打钩。</p>
                           
                               
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
                T18 护士用自杀风险评估量表（NGASR）
            </div>
            <div class="widget-header bordered-bottom bordered-blue">
                <div style="text-align:left;padding-top:10px;">
                    <p style="font-weight:bold">测试说明：</p>
                    <p>
                   该测试表为为他评量表，根据测试者的实际情况，在每题对应的选项上打钩。

                    </p>
                </div>
            </div>
            <div class="widget-body bordered-bottom bordered-darkorange">
                <br />
                <table class="table" style="width: 90%">
                    <tr>
                        <th colspan="4">条目 </th>
                        
                        <th>有</th>
                        <th>无</th>
                        


                    </tr>


                    <tr>
                        <th>Q1</th>
                        <th colspan="3">绝望感</th>
                        
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
                                    <input type="checkbox" name="1" value="0" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        
                    </tr>


                    <tr>
                        <th>Q2</th>
                        <th colspan="3">近期负性生活事件</th>                        
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
                                    <input type="checkbox" name="2" value="0" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        

                    </tr>


                    <tr>
                        <th>Q3</th>
                        <th colspan="3">被害妄想或有被害内容的幻听</th>
                        
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
                                    <input type="checkbox" name="3" value="0" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        
                    </tr>
                    <tr>
                        <th>Q4</th>
                        <th colspan="3">情绪低落 /兴趣丧失或愉快感缺乏</th>
                        
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
                                    <input type="checkbox" name="4" value="0" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        
                    </tr>
                    <tr>
                        <th>Q5</th>
                        <th colspan="3">人际和社会功能退缩</th>
                        
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
                                    <input type="checkbox" name="5" value="0" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        
                    </tr>
                    <tr>
                        <th>Q6</th>
                        <th colspan="3">言语流露自杀意图</th>
                        
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
                                    <input type="checkbox" name="6" value="0" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        
                    </tr>
                    <tr>
                        <th>Q7</th>
                        <th colspan="3">计划采取自杀行动</th>
                        
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
                                    <input type="checkbox" name="7" value="0" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        

                    </tr>
                    
                    


                    <tr>
                        <th>Q8</th>
                        <th colspan="3"> 自杀家族史</th>
                        
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
                                    <input type="checkbox" name="8" value="0" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                       
                    </tr>


                    <tr>
                        <th>Q9</th>
                        <th colspan="3">近期亲人死亡或重要的亲密关系丧失</th>
                        
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
                                    <input type="checkbox" name="9" value="0" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                       

                    </tr>


                    <tr>
                        <th>Q10</th>
                        <th colspan="3"> 精神病史</th>
                        
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
                                    <input type="checkbox" name="10" value="0" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        
                    </tr>
                    <tr>
                        <th>Q11</th>
                        <th colspan="3">鳏夫 /寡妇</th>
                        
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
                                    <input type="checkbox" name="11" value="0" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                       
                    </tr>
                    <tr>
                        <th>Q12</th>
                        <th colspan="3">自杀未遂史</th>
                        
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
                                    <input type="checkbox" name="12" value="0" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        
                    </tr>
                    <tr>
                        <th>Q13</th>
                        <th colspan="3">社会 - 经济地位低下</th>
                        
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
                                    <input type="checkbox" name="13" value="0" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        
                    </tr>
                    <tr>
                        <th>Q14</th>
                        <th colspan="3">饮酒史或酒滥用</th>
                        
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
                                    <input type="checkbox" name="14" value="0" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                       
                        </tr>

                   
                    <tr>
                        <th>Q15</th>
                        <th colspan="3">罹患晚期疾病</th>
                       
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
                                    <input type="checkbox" name="15" value="0" />
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
            for (var i = 1; i <= 15; i++)//条件：i应小于等于必做题目的总数
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

