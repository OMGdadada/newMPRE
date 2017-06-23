<%@ Page Title="" Language="C#" MasterPageFile="~/Test.master" AutoEventWireup="true" CodeFile="T8.aspx.cs" Inherits="T8" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

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
                      
                      <p>该测试表为为他评量表，将测试者检测到的数据填入对应的方框内，要求带红色 <strong style="color:red">*</strong> 号的为必填选项。</p>
                           
                               
                                <p style="margin-left:40%">  <asp:Label ID="Label4" class="btn btn-info login" runat="server" Text="开始测试"></asp:Label>
                                
                            </p>  
                       
                    </div>

        <asp:Label ID="GUID" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="PatientGUID" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="TestName" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="StartDT" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="EndDT" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="DoctorGUID" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="Sex" runat="server" Visible="false" ></asp:Label>

    <div class="page-body" style="max-width: 960px; margin: 0 auto 0;">
        <div class="widget flat radius-bordered">
            <div id="banner">
                T8 躯体健康维度 (PH)
            </div>
            <div class="widget-header bordered-bottom bordered-blue">
                <div style="text-align: left; padding-top: 10px;">
                    <p style="font-weight: bold">测试说明：</p>
                    <p>
                        测试表为为他评量表，将测试者检测到的数据填入对应的方框内，要求带红色 <strong style="color:red">*</strong> 号的为必填选项。
                    </p>
                </div>
            </div>
            <div class="widget-body bordered-bottom bordered-darkorange">
                <h5>检测内容：</h5>  <asp:Label ID="Error" runat="server" Visible="false" ForeColor="Red" ></asp:Label>

                <table class="table" style="width:100%;">
                    <tr>
                        <th >指标</th>
                       
                        <th colspan="2">测量数据（无需输入单位）</th>
                    </tr>
                      <tr>
                        <th> <strong style="color:red">*</strong> 身高/cm</th>
                        
                        <th colspan="2">
                            <asp:TextBox ID="Height" runat="server" class="form-control" ></asp:TextBox>
                  
                        </th>
                    </tr>
                    <tr>
                        <th><strong style="color:red">*</strong> 体重/kg</th>
                       
                        <th colspan="2">
                            <asp:TextBox ID="Weight" runat="server" class="form-control" ></asp:TextBox>
                        </th>
                    </tr>
                    <tr>
                        <th> <strong style="color:red">*</strong> 腰围/cm</th>
                     
                        <th colspan="2">
                            <asp:TextBox ID="Waist" runat="server" class="form-control"></asp:TextBox>
                        </th>
                    </tr>
                    
                     

                    <tr>
                        <th>心率/bpm</th>
                       
                        <th colspan="2">
                            <asp:TextBox ID="HR" runat="server" class="form-control"></asp:TextBox>
                        </th>
                    </tr>
                      <tr>
                        <th> <strong style="color:red">*</strong> 心电图</th>
                       
                        <th><asp:DropDownList ID="QTCBoy" runat="server" Width="100%" Visible="false">
                            <asp:ListItem Value="1" Text="<430ms,正常"></asp:ListItem>
                            <asp:ListItem Value="2" Text="431-450ms,边缘"></asp:ListItem>
                            <asp:ListItem Value="3" Text=">450ms,异常"> </asp:ListItem>
                             </asp:DropDownList>
                            <asp:DropDownList ID="QTCGirl" runat="server" Width="100%" Visible="false">
                            <asp:ListItem Value="1" Text="<450ms,正常"> </asp:ListItem>
                            <asp:ListItem Value="2" Text="451-470ms,边缘"></asp:ListItem>
                            <asp:ListItem Value="3" Text=">470ms,异常"> </asp:ListItem>
                             </asp:DropDownList>
                           
                        </th>
                           <th>  <asp:TextBox ID="QTC_Add" runat="server" class="form-control" placeholder="异常时请填写具体情况"  TextMode="MultiLine"></asp:TextBox></th>
                    </tr>
                    <tr>
                        <th rowspan="3"> <strong style="color:red">*</strong> 血压/kpa</th>
                        <th>收缩压</th>
                        <th>
                            <asp:TextBox ID="BP1" runat="server" class="form-control"></asp:TextBox>
                        </th>
                    </tr>
                    <tr>
                      
                        <th>舒张压</th>
                        <th>
                            <asp:TextBox ID="BP2" runat="server" class="form-control"></asp:TextBox>
                        </th>
                    </tr>

                     <tr>
                      
                        <th>临床处理</th>
                        <th>
                            <asp:DropDownList ID="BP3" runat="server" Width="100%">
                            <asp:ListItem Value="2" Text="无需特殊临床处理"> </asp:ListItem>
                            <asp:ListItem Value="3" Text="需一般临床处理"></asp:ListItem>
                            <asp:ListItem Value="4" Text="需紧急抢救"></asp:ListItem>
                             </asp:DropDownList>
                            
                        </th>
                    </tr>

                    <tr>
                        <th  rowspan="2"><strong style="color:red">*</strong> 血糖mmol/l</th>
                        <th>空腹血糖</th>
                        <th>
                            <asp:TextBox ID="BS1" runat="server" class="form-control"></asp:TextBox>
                        </th>
                    </tr>
                       <tr>
                       
                        <th>临床处理</th>
                        <th>
                            <asp:DropDownList ID="BS2" runat="server" Width="100%">
                                 <asp:ListItem Value="1" Text="无需处理"> </asp:ListItem>
                            <asp:ListItem Value="2" Text="只需进食处理"> </asp:ListItem>
                            <asp:ListItem Value="3" Text="需医疗处理"></asp:ListItem>
                         
                             </asp:DropDownList>
                        </th>
                    </tr>
                     <tr>
                        <th>糖化血红蛋白mmol/l</th>
                       
                        <th colspan="2">
                            <asp:TextBox ID="HBA1c" runat="server" class="form-control"></asp:TextBox>
                        </th>
                    </tr>
                  
                    <tr>
                        <th rowspan="7">血脂</th>
                        <th><strong style="color:red">*</strong> 胆固醇（TC，CHO） mmol/L</th>
                        <th>
                            <asp:TextBox ID="TC" runat="server" class="form-control"></asp:TextBox>
                        </th>
                    </tr>
                    <tr>
                        <th><strong style="color:red">*</strong> 甘油三酯（TG）mmol/L</th>
                        <th>
                            <asp:TextBox ID="TG" runat="server" class="form-control"></asp:TextBox>
                        </th>
                    </tr>
                    <tr>
                        <th><strong style="color:red">*</strong> 高密度脂蛋白胆固醇（HDL-C）mmol/L</th>
                        <th>
                            <asp:TextBox ID="HDLC" runat="server" class="form-control"></asp:TextBox>
                        </th>
                    </tr>
                    <tr>
                        <th><strong style="color:red">*</strong> 低密度脂蛋白胆固醇（LDL-C）mmol/L</th>
                        <th>
                            <asp:TextBox ID="LDLC" runat="server" class="form-control"></asp:TextBox>
                        </th>
                    </tr>
                    <tr>
                        <th>脂蛋白（a）［Lp（a）］mmol/L</th>
                        <th>
                            <asp:TextBox ID="LP" runat="server" class="form-control"></asp:TextBox>
                        </th>
                    </tr>
                    <tr>
                        <th>载脂蛋白AⅠ（apoAⅠ）mmol/L</th>
                        <th>
                            <asp:TextBox ID="apoA" runat="server" class="form-control"></asp:TextBox>
                        </th>
                    </tr>
                    <tr>
                        <th>载脂蛋白B（apoB）mmol/L</th>
                        <th>
                            <asp:TextBox ID="apoB" runat="server" class="form-control"></asp:TextBox>
                        </th>
                    </tr>
                   
                    <tr>
                        <th></th>
                        <th>频率</th>
                        <th>剂量（吸烟/喝酒的日子里）</th>

                    </tr>

                    <tr>
                        <th>吸烟</th>
                        <th><asp:DropDownList ID="SmokingFQ" runat="server" Width="100%">
                            <asp:ListItem Value="1" Text="一月到一年一次">  </asp:ListItem>
                            <asp:ListItem Value="2" Text="一周到一月一次"></asp:ListItem>
                            <asp:ListItem Value="3" Text="一天到一周一次"> </asp:ListItem>
                             <asp:ListItem Value="4" Text="每天"> </asp:ListItem>
                             </asp:DropDownList>

                        </th>
                        <th><asp:DropDownList ID="SmokingDosage" runat="server" Width="100%">
                            <asp:ListItem Value="1" Text="每天1-4支">  </asp:ListItem>
                            <asp:ListItem Value="2" Text="每天 5-9支"></asp:ListItem>
                            <asp:ListItem Value="3" Text="每天 10-20支"> </asp:ListItem>
                             <asp:ListItem Value="4" Text="每天 20支以上"> </asp:ListItem>
                             </asp:DropDownList>
                          
                        </th>

                    </tr>

                    <tr>
                        <th>饮酒</th>
                        <th><asp:DropDownList ID="DrinkFQ" runat="server" Width="100%">
                             <asp:ListItem Value="1" Text="一月到一年一次">  </asp:ListItem>
                            <asp:ListItem Value="2" Text="一周到一月一次"></asp:ListItem>
                            <asp:ListItem Value="3" Text="一天到一周一次"> </asp:ListItem>
                             <asp:ListItem Value="4" Text="每天"> </asp:ListItem>
                             </asp:DropDownList></th>
                        <th>
                          <asp:DropDownList ID="DrinkDosage" runat="server" Width="100%">
                              <asp:ListItem Value="1" Text="小于1两白酒、一杯红酒（100ml）或一小瓶啤酒">  </asp:ListItem>
                            <asp:ListItem Value="2" Text="1-2两白酒、一杯至两杯红酒(200ml)或一小瓶至两小瓶（一大瓶）啤酒"></asp:ListItem>
                            <asp:ListItem Value="3" Text="2-5两白酒、两杯至五杯红酒或2至5小瓶啤酒"> </asp:ListItem>
                             <asp:ListItem Value="4" Text="5两白酒以上、500ml红酒以上或5小瓶（2.5大瓶）啤酒以上"> </asp:ListItem>
                          
                             </asp:DropDownList>
                        </th>
                    </tr>
                    <tr>
                        <th>其他物质使用情况</th>

                        <th colspan="2">
                     
                            <asp:TextBox ID="Other" runat="server"  class="form-control" TextMode="MultiLine"></asp:TextBox>
  
                        </th>
                    </tr>




                </table>

                <br />
                <br />
         
                            <p style="color:red;text-align:center; line-height: 0px;"> 带*为必填项 </p>

                <asp:Button ID="Button1" runat="server" Text="提  交" class=" btn btn-info" Style="width: 100px; height: 40px; margin: 0 auto; display: block; font-weight: bold;" OnClick="Button1_Click" />
                <hr />













            </div>
        </div>
    </div>

    <style type="text/css">
        /*#th1 {
            width: 40%;
        }

        #th2 {
            width: 40%;
        }

        #th3 {
            width: 20%;
        }*/

        .table th {
            text-align: center;
        }
    </style>
</asp:Content>
