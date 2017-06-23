<%@ Page Title="" Language="C#" MasterPageFile="~/Test.master" AutoEventWireup="true" CodeFile="T4.aspx.cs" Inherits="T4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <script type="text/javascript">
            document.onreadystatechange = function () {
                if (document.readyState == "complete") {
                    //var d = document.getElementById('dragDiv');
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
                      
                      <p>该测试表为自评量表，分填空和选择题，根据所提问题，选择或填入对应的数字。</p>
                           
                               
                                <p style="margin-left:40%">  <asp:Label ID="Label4" class="btn btn-info login" runat="server" Text="开始测试"></asp:Label>
                                
                            </p>  
                       
                    </div>

  <asp:Label ID="GUID" runat="server" Visible="false"></asp:Label>
    <asp:Label ID="PatientGUID" runat="server"  Visible="false"></asp:Label>
    <asp:Label ID="DoctorGUID" runat="server"  Visible="false"></asp:Label>
    <asp:Label ID="TestName" runat="server"  Visible="false"></asp:Label>
    <asp:Label ID="StartDT" runat="server"  Visible="false"></asp:Label>
    <asp:Label ID="EndDT" runat="server" Visible="false"></asp:Label>


   <div class="page-body" style="max-width: 960px; margin: 0 auto 0;">
      
            <div class="widget flat radius-bordered">
                <div id="banner">
                    T4 工作与学习维度影响量表 （SIWS）
                </div>
                <div class="widget-header bordered-bottom bordered-blue">
                    <div style="text-align: left; padding-top: 10px;">
                        <p style="font-weight: bold">测试说明：</p>
                        <p>该测试表为自评量表，分填空和选择题，根据所提问题，选择或填入对应的数字。

                        </p>
                    </div>
                </div>
               
                <div class="widget-body bordered-bottom bordered-darkorange">
                    <h5>下面的问题是关于疾病对你工作或学习的影响。请按提示填入或选出对应选项。</h5>
                    <br />
                     <h5>  1.你目前有工作（有工资的工作）/上学吗？（如果选择“否”，结束测试！）</h5>
                     <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox" onclick="check1()">
                            <label>
                                <input type="checkbox" class="colored-blue" name="a" value="1" />
                                <span class="text">A、是</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-6">
                        <div class="checkbox"  onclick="check2()">
                            <label>
                                <input type="checkbox" class="colored-blue" name="a" value="0"/>
                                <span class="text">B、否</span>
                            </label>
                        </div>
                    </div>
                
              
                </div>
                    <div id="connent" >
                <p></p>
                    <h5>下面的问题是关于过去7天的情况，不包括今天。</h5>  
              <table class="table" style="width: 100%">
                  <tr>
                      <th id="th1">2.过去7天你有多少小时因疾病而不能工作或学习？包括因疾病请病假，迟到和早退等。</th>
                      <th id="th2"><asp:TextBox ID="D2" runat="server" Width="50%" Text="0"></asp:TextBox>小时</th>

                  </tr>
                  <tr>
                      <th >3.过去7天你有多少小时因为其他任何原因不能工作或学习？</th>
                      <th> <asp:TextBox ID="D3" runat="server" Width="50%" Text="0"></asp:TextBox>小时
                          </th>

                  </tr>
                  <tr>
                      <th >4.过去7天你实际工作或学习有多少小时?  <strong style="color:red">（如果为“0”，跳到问题6。  ）</strong></th>
                      <th><asp:TextBox ID="D4" runat="server" Width="50%" Text="0"></asp:TextBox>小时
                         </th>

                  </tr>
                
       
              </table>

                    <br />

                   <h5> 5.过去7天，疾病对你的工作或学习效率影响有多大？</h5>
                    <p>(想一下有多少天你的工作或学习总量或种类受到限制，有多少天你实际完成得比你想要完成的工作或学习少或者不能像平常一样认真完成。如果疾病对你影响很小，选择一个较小的数字，对你影响很大，选择一个较大的数字。)
                      </p><p> 想一下仅仅由于疾病对你的工作或学习效率影响有多大。(疾病对我的工作或学习没有影响------>>疾病使我完全不能工作或学习)</p>
                    <div class="row">
                     <div class="abc">
                        
                        	<div class="chk">

                                <label class="lb_1">
                                    <input type="checkbox" name="b" value="0" style="display:none"/>
                                    <span style="margin-left:20px">0</span>
                                </label>
                                
                                <label class="lb_1">
                                    <input type="checkbox" name="b" value="1" style="display:none"/>
                                    <span>1</span>
                                 </label>

                                <label class="lb_1">
                                    <input type="checkbox" name="b" value="2" style="display:none"/>
                                    <span>2</span>
                                 </label>

                                <label class="lb_1">
                                    <input type="checkbox" name="b" value="3" style="display:none"/>
                                    <span>3</span>
                                 </label>

                                <label class="lb_1">
                                    <input type="checkbox" name="b" value="4" style="display:none"/>
                                    <span>4</span>
                                 </label>

                                <label class="lb_1">
                                    <input type="checkbox" name="b" value="5" style="display:none"/>
                                    <span>5</span>
                                 </label>

                                <label class="lb_1">
                                    <input type="checkbox" name="b" value="6" style="display:none"/>
                                    <span>6</span>
                                 </label>

                                <label class="lb_1">
                                    <input type="checkbox" name="b" value="7" style="display:none"/>
                                    <span>7</span>
                                 </label>

                                <label class="lb_1">
                                    <input type="checkbox" name="b" value="8" style="display:none"/>
                                    <span>8</span>
                                 </label>

                                <label class="lb_1">
                                    <input type="checkbox" name="b" value="9" style="display:none"/>
                                    <span>9</span>
                                 </label>

                                <label class="lb_1">
                                    <input type="checkbox" name="b" value="10" style="display:none"/>
                                    <span>10</span>
                                 </label>
            
                                
        
                        	</div>
                        
                    </div>
                 
                </div>
                      <br />
                <h5>6.过去7天，除了工作外，疾病对你的日常活动能力影响有多大？</h5>  
<p>我们所说的日常活动，指的是你平常做的事情，比如做家务，买东西，照顾孩子，锻炼，学习等。想一下有多少天你的日常活动总量或种类受到限制，有多少天你实际完成的比你想要完成的活动少或者不能像平常一样认真完成。如果抑郁症对你影响很小，选择一个较小的数字，对你影响很大，选择一个较大的数字。
</p>
                    <p>想一下除了工作外，仅仅由于疾病对你的日常活动能力影响有多大。(疾病对我的日常活动能力没有影响------>>疾病使我完全不能进行日常活动”)</p>
                            <div class="row">
                    <div class="abc">
                        
                        	<div class="chk">

                                <label class="lb_2">
                                    <input type="checkbox" name="c" value="0" style="display:none"/>
                                    <span style="margin-left:20px">0</span>
                                </label>
                                
                                <label class="lb_2">
                                    <input type="checkbox" name="c" value="1" style="display:none"/>
                                    <span>1</span>
                                 </label>

                                <label class="lb_2">
                                    <input type="checkbox" name="c" value="2" style="display:none"/>
                                    <span>2</span>
                                 </label>

                                <label class="lb_2">
                                    <input type="checkbox" name="c" value="3" style="display:none"/>
                                    <span>3</span>
                                 </label>

                                <label class="lb_2">
                                    <input type="checkbox" name="c" value="4" style="display:none"/>
                                    <span>4</span>
                                 </label>

                                <label class="lb_2">
                                    <input type="checkbox" name="c" value="5" style="display:none"/>
                                    <span>5</span>
                                 </label>

                                <label class="lb_2">
                                    <input type="checkbox" name="c" value="6" style="display:none"/>
                                    <span>6</span>
                                 </label>

                                <label class="lb_2">
                                    <input type="checkbox" name="c" value="7" style="display:none"/>
                                    <span>7</span>
                                 </label>

                                <label class="lb_2">
                                    <input type="checkbox" name="c" value="8" style="display:none"/>
                                    <span>8</span>
                                 </label>

                                <label class="lb_2">
                                    <input type="checkbox" name="c" value="9" style="display:none"/>
                                    <span>9</span>
                                 </label>

                                <label class="lb_2">
                                    <input type="checkbox" name="c" value="10" style="display:none"/>
                                    <span>10</span>
                                 </label>
            
                                
        
                        	</div>
                        
                    </div>
                 
                </div>
</div>
                    <br />

                    <asp:Button ID="Button1" runat="server" Text="提  交" class=" btn btn-info" Style="width: 100px; height: 40px; margin: 0 auto; display: block; font-weight: bold;" OnClick="Button1_Click" />









                </div>
            </div>
        </div>
       <script src="assets/js/jquery-2.0.3.min.js" type="text/javascript"></script>
       <script type="text/javascript">
        $(function(){
	    
	    $(".lb_2").click(function(){
		    slider($(".chk .lb_2").index($(this)));
	    });
	    
	    function slider(x){
		    
		    $(".lb_2 span").removeClass("chk_1");
		    $(".lb_2 span").eq(x).addClass("chk_1");
		    
	        }
		});
	    
        </script>
        <script type="text/javascript">
            $(function () {

                $(".lb_1").click(function () {
                    slider($(".chk .lb_1").index($(this)));
                });

                function slider(x) {

                    $(".lb_1 span").removeClass("chk_1");
                    $(".lb_1 span").eq(x).addClass("chk_1");

                }
            });

        </script>
        
       <script type="text/javascript">
        checkboxToRadio("a");//需要转换的就添加这句
        checkboxToRadio("b");
        checkboxToRadio("c");
        
        
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

            connent.style.display = "block";
          
           
        }
        function check2() {
            connent.style.display = "none";

        }

    </script>
    <style type="text/css">

    #th1 {width:85%;
    }
     #th2{width:15%;
    }
    .abc{
    margin:auto;
	width:600px;
	height:50px;
	background-color:#00c6ff;
	border-radius: 10px;
}


	
.lb_1 span {		
	padding: 15px 20px 14px 20px;
	
	display: inline-block;
	position: relative;	
	color: #FFF;
	font-size: 14px;
	width: 20px;
	
}

.lb_1 span:hover  {	
	background-color: #FC8C1E;	
}


.lb_1 span.chk_1{	
	background-color:#FF5F00;
		
}

.lb_2 span {		
	padding: 15px 20px 14px 20px;
	
	display: inline-block;
	position: relative;	
	color: #FFF;
	font-size: 14px;
	width: 20px;
	
}

.lb_2 span:hover  {	
	background-color: #FC8C1E;	
}


.lb_2 span.chk_1{	
	background-color:#FF5F00;
		
}
</style>

</asp:Content>


