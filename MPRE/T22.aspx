<%@ Page Title="" Language="C#" MasterPageFile="~/Test.master" AutoEventWireup="true" CodeFile="T22.aspx.cs" Inherits="T22" %>

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
                      
                      <p>该测试表为自评量表，测试者根据实际情况，每个条目做“是”或“否”回答，并在相应的选项打钩。</p>
                           
                               
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
                T22 服药依从性问卷（MAQ）
            </div>
            <div class="widget-header bordered-bottom bordered-blue">
                <div style="text-align:left;padding-top:10px;">
                    <p style="font-weight:bold">测试说明：</p>
                    <p>
                    该测试表为自评量表，测试者根据实际情况，每个条目做“是”或“否”回答，并在相应的选项打钩。

                    </p>
                </div>
            </div>
            
        
            <div class="widget-body bordered-bottom bordered-darkorange">
                <br />
                <table class="table" style="width: 90%">
                    <tr>
                        <th colspan="4">条目 </th>
                        
                        <th>是</th>
                        <th>否</th>
                        


                    </tr>


                    <tr>
                        <th>Q1</th>
                        <th colspan="3">您曾经忘记吃药吗？</th>
                        
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
                        
                    </tr>


                    <tr>
                        <th>Q2</th>
                        <th colspan="3">您是否有时候对吃药不太在意？</th>                        
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
                        

                    </tr>


                    <tr>
                        <th>Q3</th>
                        <th colspan="3">当你感觉变得更好的时候，是不是有时停止吃药？</th>
                        
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
                        
                    </tr>
                    <tr>
                        <th>Q4</th>
                        <th colspan="3">当你感觉更糟糕的时候，是不是有时停止吃药？</th>
                        
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
            for (var i = 1; i <= 4; i++)//条件：i应小于等于必做题目的总数
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

