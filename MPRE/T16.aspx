<%@ Page Title="" Language="C#" MasterPageFile="~/Test.master" AutoEventWireup="true" CodeFile="T16.aspx.cs" Inherits="T16" %>

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
                      
                      <p>该测试表为为他评量表，按操作手册对被试实施每个分测验。在系统中录入每个分测验的粗分和T分。</p>
                           
                               
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
                T16 MATRICS共识认知成套测验（MCCB）</div>
            <div class="widget-header bordered-bottom bordered-blue">
                <div style="text-align:left;padding-top:10px;">
                    <p style="font-weight:bold">测试说明：</p>
                    <p>
                    该测试表为为他评量表，按操作手册对被试实施每个分测验。在系统中录入每个分测验的粗分和T分。</p>
                </div>
            </div>
            <div class="widget-body bordered-bottom bordered-darkorange">
                <table class ="table" style="width:90%">
                    <tr>
                        <th>认知领域</th>
                        <th>粗分</th>
                        <th>T分</th>
                    </tr>
                    <tr>
                        <th>连线测试</th>
                        <th><asp:TextBox ID="C1" runat="server" CssClass="from-contol" ></asp:TextBox></th>
                        <th><asp:TextBox ID="T1" runat="server" CssClass="from-contol" ></asp:TextBox></th>
                    </tr>
                    <tr>
                        <th>精神分裂症简易认知评估：符号编码</th>
                        <th><asp:TextBox ID="C2" runat="server" CssClass="from-contol" ></asp:TextBox></th>
                        <th><asp:TextBox ID="T2" runat="server" CssClass="from-contol" ></asp:TextBox></th>
                    </tr>
                    <tr>
                        <th>霍普金斯词语学习测验-修订版</th>
                        <th><asp:TextBox ID="C3" runat="server" CssClass="from-contol" ></asp:TextBox></th>
                        <th><asp:TextBox ID="T3" runat="server" CssClass="from-contol" ></asp:TextBox></th>
                    </tr>
                    <tr>
                        <th>韦氏记忆量表-第三版：空间广度</th>
                        <th><asp:TextBox ID="C4" runat="server" CssClass="from-contol" ></asp:TextBox></th>
                        <th><asp:TextBox ID="T4" runat="server" CssClass="from-contol" ></asp:TextBox></th>
                    </tr>
                    <tr>
                        <th>神经心理评估成套测验：迷宫</th>
                        <th><asp:TextBox ID="C5" runat="server" CssClass="from-contol" ></asp:TextBox></th>
                        <th><asp:TextBox ID="T5" runat="server" CssClass="from-contol" ></asp:TextBox></th>
                    </tr>
                    <tr>
                        <th>简易视觉空间记忆测验：修订版</th>
                        <th><asp:TextBox ID="C6" runat="server" CssClass="from-contol" ></asp:TextBox></th>
                        <th><asp:TextBox ID="T6" runat="server" CssClass="from-contol" ></asp:TextBox></th>
                    </tr>
                    <tr>
                        <th>范畴流畅测验</th>
                        <th><asp:TextBox ID="C7" runat="server" CssClass="from-contol" ></asp:TextBox></th>
                        <th><asp:TextBox ID="T7" runat="server" CssClass="from-contol" ></asp:TextBox></th>
                    </tr>
                    <tr>
                        <th>Mayer-Salovey-Caruso（情绪智商测验：情绪管理）</th>
                        <th><asp:TextBox ID="C8" runat="server" CssClass="from-contol" ></asp:TextBox></th>
                        <th><asp:TextBox ID="T8" runat="server" CssClass="from-contol" ></asp:TextBox></th>
                    </tr>
                    <tr>
                        <th>持续操作测验-相同配对</th>
                        <th><asp:TextBox ID="C9" runat="server" CssClass="from-contol" ></asp:TextBox></th>
                        <th><asp:TextBox ID="T9" runat="server" CssClass="from-contol" ></asp:TextBox></th>
                    </tr>
                    
                </table>
                <hr class="wide" />
                
               
                <asp:Button ID="Button1" runat="server" Text="提  交" class=" btn btn-info" style="width:100px;height:40px;margin:0 auto;display:block;font-weight:bold;"  OnClick="Button1_Click"/>
            </div>
        </div>
    </div>
        
    <!-- /Page Body -->

   
</asp:Content>

