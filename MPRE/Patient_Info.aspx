<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Patient_Info.aspx.cs" Inherits="Patient_Info" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
         
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="assets/css/style.css" rel="stylesheet" />
  
             <script type="text/javascript">
                 $(document).ready(function (e) {
                     $(".login").click(function (e) {
                         $('.blanks').show();
                         $('.blanks').height($(document).height());
                         $(".module-area2").slideDown(400);//fadeIn()


                     });
                     $(".module-close").click(function (e) {
                         $('.blanks').hide();
                         $(".module-area2").slideUp(400);//fadeOut()
                     });

                     $(".close1").click(function (e) {
                         $('.blanks').hide();
                         $(".module-area2").slideUp(400);//fadeOut()
                     });

                 });

    </script>

       <script  type="text/javascript" src="My97DatePicker/WdatePicker.js" charset="gb2312"></script>
       <p>&nbsp;</p>
 
                    <!-- 模态框弹出部分  --->

    <div class="module-area2 modal-content">
        <div class="module-head">
            <span>药物查询</span>
            <div class="module-close"></div>

        </div>
        <div id="BDCenter">
            
                    <div id="loginInput">  <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Visible="false"></asp:TextBox>
                        <p style="float: left; width: 100%;">
                            <asp:TextBox ID="ArTagName" runat="server" Height="28px" Width="40%"></asp:TextBox>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="AddArTag" runat="server" class="btn btn-info " Text="添加新药物" OnClick="AddArTag_Click" />
                            （用逗号隔开）
                           
                        </p>
                      
                        <div runat="server" style="overflow: scroll; width: 100%; height: 150px; overflow-x: hidden;">
                            <asp:CheckBoxList ID="TagsList" runat="server" Style="margin-left: 5px; margin-top: 0px; text-align: left; width: 100%" RepeatDirection="Horizontal"
                                RepeatLayout="Table" RepeatColumns="5">
                            </asp:CheckBoxList>
                        </div>   
                          </ContentTemplate>
            </asp:UpdatePanel>
                    </div>
           
             <asp:Button ID="Sure" runat="server" Text="确定"  class="Sure2 "  OnClick="Sure_Click" />
              <asp:Label ID="Close" class="close1" runat="server" Text="取消"></asp:Label>
             
        </div> 
        <hr />
    </div>
      <!-- //模态框弹出部分结束  --->
                       <div id="CurrentPosition">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;当前位置：<a href="Dashboard.aspx">后台首页</a>>> <a href="Patient_List.aspx">病人管理</a>   </div>
                          <div class="page-body" style="padding: 18px 20px 24px;">       
                                 <asp:Label ID="GUIDLabel" runat="server"  Visible="false"></asp:Label>
                               <asp:Label ID="ResultLabel" runat="server" ></asp:Label>
                          <asp:Label ID="tag_return" runat="server" Text="," Visible="false"></asp:Label>
                                <asp:Label ID="TagiIDs" runat="server" Text="" Visible="false"></asp:Label>
                          <asp:Label ID="ID_Label" runat="server" Text="Label" Visible="false"></asp:Label>
       

                            <div class="row">
                                  <!---1 -->
                                <div class="col-xs-12 col-md-12">
                     <div class="widget">
                                        <div class="widget-header bg-palegreen">
                                            <i class="widget-icon fa fa-arrow-down"></i>
                                            <span class="widget-caption" style="font-size:larger;">患者基本资料</span>
                                            <div class="widget-buttons">
                                               
                                              
                                                <a href="#" data-toggle="collapse">
                                                    <i class="fa fa-minus"></i>
                                                </a>
                                               
                                            </div><!--Widget Buttons-->
                                        </div><!--Widget Header-->
                                        <div class="widget-body">
                                            <div style="margin:auto;border:1px solid">
 
                                            <div class="col-lg-6 col-sm-6 col-xs-12"  style="padding:10px 10px; text-align:justify"> <asp:Label ID="Label1" runat="server"></asp:Label>：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <asp:TextBox ID="Patient" runat="server"></asp:TextBox>  
                                                 
                                            </div>
                                               <div class="col-lg-6 col-sm-6 col-xs-12"style="padding:10px 10px;"> <asp:Label ID="Label2" runat="server"></asp:Label>：&nbsp;<asp:TextBox ID="Initials" runat="server"></asp:TextBox></div>     
                                                 <div class="col-lg-6 col-sm-6 col-xs-12" style="padding:0px 10px;"> <asp:Label ID="Label3" runat="server"></asp:Label>：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                                     <asp:DropDownList ID="sex1" runat="server"  >
                                                         <asp:ListItem  Value="0" >男</asp:ListItem>
                                                        <asp:ListItem Value="1">女</asp:ListItem>
                                                     </asp:DropDownList>
                                                 </div>

                                                 <div class="col-lg-6 col-sm-6 col-xs-12" style="padding:10px 10px;"> <asp:Label ID="Label5" runat="server"></asp:Label>： 
                                                     <asp:TextBox ID="Birthday" runat="server" onClick="WdatePicker()"></asp:TextBox> </div>
                                         
                                                 <div class="col-lg-6 col-sm-6 col-xs-12" style="padding:0px 0px;">
                                                       <asp:DropDownList ID="DDLCertificates" runat="server" class="select2-chosen"  >
                                                         <asp:ListItem  Value="0" Text ="身份证" ></asp:ListItem>
                                                        <asp:ListItem Value="1"  Text="护照"></asp:ListItem>
                                                            <asp:ListItem Value="2" Text="三无人员"></asp:ListItem>
                                                     </asp:DropDownList>
                                                     <asp:TextBox ID="CertificatesNum" runat="server" ></asp:TextBox> </div>


                                                 <div class="col-lg-6 col-sm-6 col-xs-12" style="padding:10px 10px;"> <asp:Label ID="Label6" runat="server"></asp:Label>：<asp:DropDownList ID="Department" runat="server"></asp:DropDownList></div>

                                                  <div class="col-lg-6 col-sm-6 col-xs-12" style="padding:10px 10px;"> <asp:Label ID="Label7" runat="server"></asp:Label> ：<asp:TextBox ID="Num1" runat="server"></asp:TextBox></div>
                                             <div class="col-lg-6 col-sm-6 col-xs-12" style="padding:10px 10px;"> <asp:Label ID="Label8" runat="server"></asp:Label> ：<asp:TextBox ID="Num2" runat="server"></asp:TextBox></div>
                                             <div class="col-lg-6 col-sm-6 col-xs-12" style="padding:10px 10px;"> <asp:Label ID="Label9" runat="server"></asp:Label>： <asp:TextBox ID="Phone1" runat="server"></asp:TextBox></div>
                                               <div class="col-lg-6 col-sm-6 col-xs-12" style="padding:10px 10px;"> <asp:Label ID="Label10" runat="server"></asp:Label> ：<asp:TextBox ID="Phone2" runat="server"></asp:TextBox></div>
                                             <div class="col-lg-6 col-sm-6 col-xs-12" style="padding:10px 10px;"> <asp:Label ID="Label11" runat="server"></asp:Label>： <asp:TextBox ID="EducationYears" runat="server" placeholder="0~20"></asp:TextBox>/年</div>
                                               <div class="col-lg-6 col-sm-6 col-xs-12" style="padding:10px 10px;"> <asp:Label ID="Label12" runat="server"></asp:Label>： 
                                                <asp:RadioButton ID="educationLevel1" runat="server" GroupName="educationLevel"  Checked="true"   Text="文盲" />   
                                                    <asp:RadioButton ID="educationLevel2" runat="server" GroupName="educationLevel" Text="小学" />
                                                   <asp:RadioButton ID="educationLevel3" runat="server" GroupName="educationLevel" Text="初中" />
                                                    <asp:RadioButton ID="educationLevel4" runat="server" GroupName="educationLevel" Text="高中" />
                                                <asp:RadioButton ID="educationLevel5" runat="server" GroupName="educationLevel" Text="大学及以上" />
                                            </div>

                                                 <div class="col-lg-6 col-sm-6 col-xs-12" style="padding:10px 10px;"> 病前角色： 
                                                    <asp:RadioButton ID="Role1" runat="server" GroupName="Roles" Checked="true"  Text="学生" />   
                                                    <asp:RadioButton ID="Role2" runat="server" GroupName="Roles" Text="工作人员" />
                                                   <asp:RadioButton ID="Role3" runat="server" GroupName="Roles" Text="家庭主妇" />
                                                     <asp:RadioButton ID="Role4" runat="server" GroupName="Roles" Text="无业" />
                                                   </div>
                                                <div class="col-lg-6 col-sm-6 col-xs-12" style="padding:10px 10px;"> 角色功能： 
                                                    <asp:RadioButton ID="RoleFunction1" runat="server" GroupName="RoleFunctions" Checked="true"  Text="很差" />   
                                                    <asp:RadioButton ID="RoleFunction2" runat="server" GroupName="RoleFunctions" Text="差" />
                                                   <asp:RadioButton ID="RoleFunction3" runat="server" GroupName="RoleFunctions" Text="一般" />
                                                     <asp:RadioButton ID="RoleFunction4" runat="server" GroupName="RoleFunctions" Text="好" />
                                                      <asp:RadioButton ID="RoleFunction5" runat="server" GroupName="RoleFunctions" Text="很好" />
                                                   </div>



                                                 <div class="col-lg-6 col-sm-6 col-xs-12" style="padding:10px 10px;"> <asp:Label ID="Label13" runat="server"></asp:Label>： 
                                                    <asp:RadioButton ID="left" runat="server" GroupName="Hands" Checked="true"  Text="左手" />   
                                                    <asp:RadioButton ID="right" runat="server" GroupName="Hands" Text="右手" />
                                                   <asp:RadioButton ID="both" runat="server" GroupName="Hands" Text="均可" />
                                                   </div>
                                            <div class="col-lg-6 col-sm-6 col-xs-12" style="padding:10px 10px;"> <asp:Label ID="Label14" runat="server"></asp:Label>： 
                                                <asp:RadioButton ID="marriage1" runat="server" GroupName="marriage" Checked="true"    Text="未婚" />   
                                                    <asp:RadioButton ID="marriage2" runat="server" GroupName="marriage" Text="现婚" />
                                                   <asp:RadioButton ID="marriage3" runat="server" GroupName="marriage" Text="分居" />
                                                    <asp:RadioButton ID="marriage4" runat="server" GroupName="marriage" Text="离婚" />
                                                <asp:RadioButton ID="marriage5" runat="server" GroupName="marriage"  Text="丧偶" />
                                                 <asp:RadioButton ID="marriage6" runat="server" GroupName="marriage"  Text="同居" />
                                            </div>
                                            <div class="col-lg-6 col-sm-6 col-xs-12" style="padding:0px 10px;"> <asp:Label ID="Label15" runat="server"></asp:Label>：
                                                <asp:RadioButton ID="fmh1" runat="server" GroupName="FMH1" Checked="true" Text="阳性" />   
                                                    <asp:RadioButton ID="fmh2" runat="server" GroupName="FMH1"  Text="阴性" />
                                                   <asp:RadioButton ID="fmh3" runat="server" GroupName="FMH1" Text="不详" />
                                                    
                                            </div>
                                                  <div class="col-lg-6 col-sm-6 col-xs-12" style="padding:10px 10px;"> <asp:Label ID="Label16" runat="server"></asp:Label>： 
                                                <asp:RadioButton ID="working1" runat="server" GroupName="working" Checked="true" Text="全职" />   
                                                    <asp:RadioButton ID="working2" runat="server" GroupName="working" Text="兼职" />
                                                   <asp:RadioButton ID="working3" runat="server" GroupName="working" Text="退休" />
                                                    <asp:RadioButton ID="working4" runat="server" GroupName="working" Text="无业" />
                                          
                                            </div>

                                            <div class="col-lg-6 col-sm-6 col-xs-12" style="padding:10px 10px;"> <asp:Label ID="Label17" runat="server"></asp:Label>：&nbsp;&nbsp; <asp:TextBox ID="Ethnicity" runat="server"></asp:TextBox></div>
                                            <div class="col-lg-6 col-sm-6 col-xs-12" style="padding:10px 10px;"> <asp:Label ID="Label18" runat="server"></asp:Label>：&nbsp;&nbsp; <asp:TextBox ID="Career" runat="server"></asp:TextBox></div>
                                            <div class="col-lg-6 col-sm-6 col-xs-12" style="padding:10px 10px;"> <asp:Label ID="Label19" runat="server"></asp:Label>： <asp:TextBox ID="AI" runat="server"></asp:TextBox> 元/年</div>
                                            <div class="col-lg-6 col-sm-6 col-xs-12" style="padding:10px 10px;"> <asp:Label ID="Label20" runat="server"></asp:Label>： <asp:TextBox ID="AHI" runat="server"></asp:TextBox>元/年</div>
                                            <div class="col-lg-6 col-sm-6 col-xs-12" style="padding:10px 10px;"> <asp:Label ID="Label21" runat="server"></asp:Label>：&nbsp;&nbsp;&nbsp;&nbsp;
                                                 <asp:DropDownList ID="GrowingPlace" runat="server" >
                                                         <asp:ListItem  Value="1" >农村/乡下</asp:ListItem>
                                                        <asp:ListItem Value="2">小城市（少于100万人）</asp:ListItem>
                                                      <asp:ListItem Value="3">中城市（100万到500万人）</asp:ListItem>
                                                      <asp:ListItem Value="4">大城市（500万人以上）</asp:ListItem>
                                                     </asp:DropDownList>
                                                </div>
                                            <div class="col-lg-6 col-sm-6 col-xs-12" style="padding:10px 10px;"> <asp:Label ID="Label22" runat="server"></asp:Label>：&nbsp;&nbsp;&nbsp;&nbsp; 
                                                <asp:DropDownList ID="Residence" runat="server" >
                                                         <asp:ListItem  Value="1" >农村/乡下</asp:ListItem>
                                                        <asp:ListItem Value="2">小城市（少于100万人）</asp:ListItem>
                                                      <asp:ListItem Value="3">中城市（100万到500万人）</asp:ListItem>
                                                      <asp:ListItem Value="4">大城市（500万人以上）</asp:ListItem>
                                                     </asp:DropDownList></div>
                                            <p style="clear:both">&nbsp;</p>
                                           <div style="text-align:center"> <asp:Button ID="Button1" runat="server" Text="保存"  class="btn btn-darkorange shiny" OnClick="Button1_Click"/></div> 
                                            <code>
                                                
                                            </code>

                                               </div>

                                        
                                         

                                        </div><!--Widget Body-->
                                    </div><!--Widget-->

                    </div>

                                <!---2 -->
                                    <div class="col-xs-12 col-md-12">
                                         <div class="widget">
                                        <div class="widget-header bg-lightred">
                                            <i class="widget-icon fa fa-arrow-down"></i>
                                                 <span class="widget-caption" style="font-size:larger;">患者疾病学指标 <asp:Label ID="DiseaseGUID" runat="server" Visible="false"></asp:Label></span>
                                            <div class="widget-buttons">
                                               
                                                <a href="#" data-toggle="collapse">
                                                    <i class="fa fa-minus"></i>
                                                </a>
                                               
                                            </div><!--Widget Buttons-->
                                        </div><!--Widget Header-->
                                        <div class="widget-body">

                                           <div style="width:100%;margin:auto;text-align:center">
                                             <table  class="table"> 
                                                <tr > 
                                                <th >疾病学诊断</th> 
                                                <th colspan="3"> <asp:TextBox ID="Diagnosis" runat="server"  class="form-control" TextMode="MultiLine" ></asp:TextBox></th> 
                                                </tr> 

                                                <tr >  
                                                      <th>起病日期</th>
                                                 <th><asp:TextBox ID="OnsetTime" runat="server" class="form-control"  onClick="WdatePicker()" ></asp:TextBox></th>
                                               
                                                <th>起病急缓</th> 
                                                <th >
                                                   
                                                     <asp:RadioButton ID="AcuteOnset1" runat="server" GroupName="acuteonset" Checked="true" Text="急性" />   
                                                    <asp:RadioButton ID="AcuteOnset2" runat="server" GroupName="acuteonset" Text="慢性" />
                                              
                                                  </th>
                                              </tr> 

                                              

                                                  <tr > 
                                                <th>发病到首次治疗时间</th> 
                                                <th ><asp:TextBox ID="UntreatedTime1" runat="server" Width="25%"></asp:TextBox>年<asp:TextBox ID="UntreatedTime2" runat="server" Width="25%"></asp:TextBox>月</th>
                                                <th>最近一次发作时间</th>
                                                 <th><asp:TextBox ID="LastTime" runat="server" class="form-control" onClick="WdatePicker()"></asp:TextBox></th>
                                                </tr> 
                                                
                                                  <tr > 
                                                <th>发作次数/次</th> 
                                                <th ><asp:TextBox ID="Attacks" runat="server" class="form-control" ></asp:TextBox> </th>
                                                <th>住院次数/次</th>
                                                 <th><asp:TextBox ID="Hospitalizations" runat="server" class="form-control" ></asp:TextBox></th>
                                                </tr> 

                                                  <tr > 
                                                <th>病程</th> 
                                                <th >
                                                    <asp:TextBox ID="DiseaseCourse1" runat="server"  Width="25%"></asp:TextBox>年<asp:TextBox ID="DiseaseCourse2" runat="server"  Width="25%"></asp:TextBox>月
                                                </th>
                                                <th></th>
                                                 <th></th>
                                                </tr> 

                                                <tr> 
                                                <th>用药情况</th> 
                                                <th colspan="3"><asp:TextBox ID="Medication" runat="server"  class="form-control" TextMode="MultiLine" ></asp:TextBox></th>

                                                </tr> 

                                                <tr class="alter"> 
                                                <th>身体疾病</th> 
                                                <th colspan="3"><asp:TextBox ID="BodyDisease" runat="server"  class="form-control" TextMode="MultiLine" ></asp:TextBox></th> 
                                               
                                                </tr> 

                                                  <tr class="alter"> 
                                                <th>药物反应</th> 
                                                <th colspan="3">
                                                        <asp:Label ID="Label4" class="btn btn-info login" runat="server" Text="添加药物"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
                                          
                                                      <asp:GridView ID="GridView1" runat="server" DataKeyNames="ID" AutoGenerateColumns="false" class="table table-striped table-bordered table-hover"
                                        GridLines="Horizontal" Style="text-align: center;" ForeColor="#333333" HeaderStyle-HorizontalAlign="Center" Width="99%"  OnRowCommand="GridView1_RowCommand">
                                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" Height="30px" HorizontalAlign="Center" />
                                        <HeaderStyle HorizontalAlign="Center" />
                                        <Columns>
                                         
                                            <asp:TemplateField HeaderText="序" HeaderStyle-HorizontalAlign="Center">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblNo" runat="server" Text='<%# Container.DataItemIndex+1 %>'></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle Width="30px" HorizontalAlign="center" />
                                                <HeaderStyle Width="30px" />
                                            </asp:TemplateField>
                                           
                                             <asp:BoundField DataField="MedicineName" HeaderText="药物名称"  />   
                                        
                                   
                                             <asp:TemplateField HeaderText="当前剂量(mg)" HeaderStyle-HorizontalAlign="Center">
                                        <ItemTemplate>
                                            <asp:TextBox ID="Dosage" runat="server" Text='<%# Eval("Dosage") %>' Width="100%" BorderWidth="1"></asp:TextBox>
                                        </ItemTemplate>
                                       
                                    </asp:TemplateField>
                                     <asp:TemplateField HeaderText="持续时间（月）" HeaderStyle-HorizontalAlign="Center">
                                        <ItemTemplate>
                                            <asp:TextBox ID="Duration" runat="server" Text='<%# Eval("Duration") %>' Width="100%" BorderWidth="1"></asp:TextBox>
                                        </ItemTemplate>
                                       
                                    </asp:TemplateField>
                                           
                                     <asp:TemplateField HeaderText="副作用" HeaderStyle-HorizontalAlign="Center">
                                        <ItemTemplate>
                                            <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>
                                                <asp:DropDownList ID="SideEffect" runat="server"  AutoPostBack="true">
                                                    <asp:ListItem Value="0">无</asp:ListItem> 
                                                    <asp:ListItem Value="1">有</asp:ListItem>                                      
                                                </asp:DropDownList>
                                               
                                                <asp:TextBox ID="SideEffect1" runat="server" Text='<%# Eval("SideEffect") %>' Width="100%" BorderWidth="1" Visible="false" ></asp:TextBox>
                                            </ContentTemplate></asp:UpdatePanel>
                                        </ItemTemplate>
                                       
                                    </asp:TemplateField>
                                     <asp:TemplateField HeaderText="副作用描述" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="35%">
                                        <ItemTemplate>
                                            <asp:UpdatePanel ID="UpdatePanel2" runat="server"><ContentTemplate>
                                            <asp:TextBox ID="Description" runat="server" Text='<%# Eval("Description") %>' Width="100%" BorderWidth="1"  class="form-control" TextMode="MultiLine"></asp:TextBox>
                                      </ContentTemplate></asp:UpdatePanel>
                                                  </ItemTemplate>
                                      
                                    </asp:TemplateField>
                                              

                                    <asp:ButtonField ButtonType="Button" CommandName="Del2" ShowHeader="True" Text="删除" ControlStyle-CssClass="btn btn-danger" ItemStyle-Width="100%"/>
                                            
                                        </Columns>
                                    </asp:GridView>
                                              

                                                </th> 
                                               
                                                </tr> 

                                                 </table>
                                                
                                              <p>&nbsp;</p>
                                               <asp:Button ID="Button2" runat="server" Text="保存" OnClick="Button2_Click" class="btn btn-darkorange shiny" />

                                            <code>
                                          
                                            </code>

                                           </div>

                                        </div>
                                    </div>


                                        </div>


                                 </div>

                     </div>
                            



 <style type="text/css"> 
 

.table th { 
height:40px;
text-align:center; 
} 
.table td,.table th{ 
border:1px solid #cad9ea; 
padding:0 1em 0; 
} 
.table tr:hover { 
  background:#ffffff;
} 


</style> 
        <script type="text/javascript">
        function InitiateWidgets()
        { $('.widget-buttons *[data-toggle="maximize"]').on("click", function (n) { n.preventDefault(); var t = $(this).parents(".widget").eq(0), i = $(this).find("i").eq(0), r = "fa-compress", u = "fa-expand"; t.hasClass("maximized") ? (i && i.addClass(u).removeClass(r), t.removeClass("maximized"), t.find(".widget-body").css("height", "auto")) : (i && i.addClass(r).removeClass(u), t.addClass("maximized"), maximize(t)) }); $('.widget-buttons *[data-toggle="collapse"]').on("click", function (n) { n.preventDefault(); var t = $(this).parents(".widget").eq(0), r = t.find(".widget-body"), i = $(this).find("i"), u = "fa-plus", f = "fa-minus", e = 300; t.hasClass("collapsed") ? (i && i.addClass(f).removeClass(u), t.removeClass("collapsed"), r.slideUp(0, function () { r.slideDown(e) })) : (i && i.addClass(u).removeClass(f), r.slideUp(200, function () { t.addClass("collapsed") })) }); $('.widget-buttons *[data-toggle="dispose"]').on("click", function (n) { n.preventDefault(); var i = $(this), t = i.parents(".widget").eq(0); t.hide(300, function () { t.remove() }) }) }
        function maximize(n) { if (n) { var t = $(window).height(), i = n.find(".widget-header").height(); n.find(".widget-body").height(t - i) } } function scrollTo(n, t) { var i = n && n.size() > 0 ? n.offset().top : 0; jQuery("html,body").animate({ scrollTop: i + (t ? t : 0) }, "slow") }
        function hasClass(n, t) { var i = " " + n.className + " ", r = " " + t + " "; return i.indexOf(r) != -1 } var themeprimary = getThemeColorFromCss("themeprimary"), themesecondary = getThemeColorFromCss("themesecondary"), themethirdcolor = getThemeColorFromCss("themethirdcolor"), themefourthcolor = getThemeColorFromCss("themefourthcolor"), themefifthcolor = getThemeColorFromCss("themefifthcolor"), rtlchanger, popovers, hoverpopovers; $("#skin-changer li a").click(function () { createCookie("current-skin", $(this).attr("rel"), 10); window.location.reload() }); rtlchanger = document.getElementById("rtl-changer"); location.pathname != "/index-rtl-fa.html" && location.pathname != "/index-rtl-ar.html" && (readCookie("rtl-support") ? (switchClasses("pull-right", "pull-left"), switchClasses("databox-right", "databox-left"), switchClasses("item-right", "item-left"), $(".navbar-brand small img").attr("src", "assets/img/logo-rtl.png"), rtlchanger != null && (document.getElementById("rtl-changer").checked = !0)) : rtlchanger != null && (rtlchanger.checked = !1), rtlchanger != null && (rtlchanger.onchange = function () { this.checked ? createCookie("rtl-support", "true", 10) : eraseCookie("rtl-support"); setTimeout(function () { window.location.reload() }, 600) })); $(window).load(function () { setTimeout(function () { $(".loading-container").addClass("loading-inactive") }, 0) }); $("#btn-setting").on("click", function () { $(".navbar-account").toggleClass("setting-open") }); $("#fullscreen-toggler").on("click", function () { var n = document.documentElement; $("body").hasClass("full-screen") ? ($("body").removeClass("full-screen"), $("#fullscreen-toggler").removeClass("active"), document.exitFullscreen ? document.exitFullscreen() : document.mozCancelFullScreen ? document.mozCancelFullScreen() : document.webkitExitFullscreen && document.webkitExitFullscreen()) : ($("body").addClass("full-screen"), $("#fullscreen-toggler").addClass("active"), n.requestFullscreen ? n.requestFullscreen() : n.mozRequestFullScreen ? n.mozRequestFullScreen() : n.webkitRequestFullscreen ? n.webkitRequestFullscreen() : n.msRequestFullscreen && n.msRequestFullscreen()) }); popovers = $("[data-toggle=popover]"); $.each(popovers, function () { $(this).popover({ html: !0, template: '<div class="popover ' + $(this).data("class") + '"><div class="arrow"><\/div><h3 class="popover-title ' + $(this).data("titleclass") + '">Popover right<\/h3><div class="popover-content"><\/div><\/div>' }) }); hoverpopovers = $("[data-toggle=popover-hover]"); $.each(hoverpopovers, function () { $(this).popover({ html: !0, template: '<div class="popover ' + $(this).data("class") + '"><div class="arrow"><\/div><h3 class="popover-title ' + $(this).data("titleclass") + '">Popover right<\/h3><div class="popover-content"><\/div><\/div>', trigger: "hover" }) }); $("[data-toggle=tooltip]").tooltip({ html: !0 });  InitiateSettings(); InitiateWidgets();
 
    </script>

</asp:Content>

