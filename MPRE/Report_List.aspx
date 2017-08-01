<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Report_List.aspx.cs" Inherits="Report_List" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div id="CurrentPosition">当前位置：<a href="Dashboard.aspx">后台首页</a>>><a href="#">报告单列表</a>   </div>
         <div class="page-body">
                <div class="row">
                    <div class="col-xs-12 col-md-12">
                        <div class="widget">
                            <div class="widget-header ">
                                <span class="widget-caption">报告单列表</span>
                            </div>
                            <div class="widget-body">
                                       <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
                                <div id="Man_Nav">
                                    <div class="form-group col-xs-3 col-md-3">
                                        <span class="input-icon">
                                            <asp:TextBox ID="SearchTB" runat="server" placeholder="查询病人姓名" class="form-control input-sm"></asp:TextBox>
                                            <i class="glyphicon glyphicon-search danger circular"></i>
                                        </span>
                                    </div>
                                    <asp:Button ID="SearchBtn" runat="server" Text="搜索" class="btn btn-info"
                                        OnClick="SearchBtn_Click" />&nbsp;&nbsp;
    
                          
                                                                    &nbsp;&nbsp;
                                    <asp:DropDownList ID="OrderDDL" runat="server"
                                        OnSelectedIndexChanged="OrderDDL_SelectedIndexChanged" AutoPostBack="True">
                                        <asp:ListItem Value=" Order by EndDt Desc">日期降序</asp:ListItem>
                                        <asp:ListItem Value=" Order by EndDt">日期升序</asp:ListItem>                    
                                    </asp:DropDownList>
                                    &nbsp;&nbsp;
                                    <asp:DropDownList ID="DoctorDDL" runat="server"
                                        OnSelectedIndexChanged="DoctorDDL_SelectedIndexChanged"
                                        AutoPostBack="True">
                                    </asp:DropDownList>
                                    &nbsp;&nbsp;
                                    <asp:DropDownList ID="TestDDL" runat="server"
                                        OnSelectedIndexChanged="TestDDL_SelectedIndexChanged"
                                        AutoPostBack="True">
                                        <asp:ListItem Value="and 1=1 ">按报告单名称分类</asp:ListItem>
                                        <asp:ListItem Value="and TestName ='大体功能评定量表（GAF）' ">T1大体功能评定量表</asp:ListItem>
                                        <asp:ListItem Value="and TestName ='个人与社会表现量表(PSP)' ">T2个人与社会表现量表</asp:ListItem>
                                        <asp:ListItem Value="and TestName ='世界卫生组织残疾评估量表(WHO DAS)' ">T3世界卫生组织残疾评估量表</asp:ListItem>
                                        <asp:ListItem Value="and TestName ='工作与学习维度影响量表 （SIWS）' ">T4工作与学习维度影响量表</asp:ListItem>
                                        <asp:ListItem Value="and TestName ='生活技能量表（LSP)' ">T5生活技能量表</asp:ListItem>
                                        <asp:ListItem Value="and TestName ='社交技能操作评估（SSES）' ">T6社交技能操作评估</asp:ListItem>
                                        <asp:ListItem Value="and TestName ='北京精神分裂症操作性功能评估量表(BP)' ">T7北京精神分裂症操作性功能评估量表</asp:ListItem>
                                        <asp:ListItem Value="and TestName ='躯体健康维度 (PH)' ">T8躯体健康维度</asp:ListItem>
                                        <asp:ListItem Value="and TestName ='SF-36健康调查量表(SF-36)' ">T9 SF-36健康调查量表</asp:ListItem>
                                        <asp:ListItem Value="and TestName ='一般自我效能感量表 (GSES)' ">T10一般自我效能感量表</asp:ListItem>
                                        <asp:ListItem Value="and TestName ='精神疾病内化污名量表(ISMI)' ">T11精神疾病内化污名量表</asp:ListItem>
                                        <asp:ListItem Value="and TestName ='精神分裂症希望量表 (SHS-9)' ">T12精神分裂症希望量表</asp:ListItem>
                                        <asp:ListItem Value="and TestName ='中文人生意义问卷(C-MLQ)' ">T13中文人生意义问卷</asp:ListItem>
                                        <asp:ListItem Value="and TestName ='临床总体印象量表（CGI）' ">T14临床总体印象量表</asp:ListItem>
                                        <asp:ListItem Value="and TestName ='阳性与阴性症状量表(PANSS)' ">T15阳性与阴性症状量表</asp:ListItem>
                                        <asp:ListItem Value="and TestName ='MATRICS共识认知成套测验（MCCB）' ">T16 MATRICS共识认知成套测验</asp:ListItem>
                                        <asp:ListItem Value="and TestName ='修订版外显攻击行为量表（MOAS）' ">T17修订版外显攻击行为量表</asp:ListItem>
                                        <asp:ListItem Value="and TestName ='护士用自杀风险评估量表（NGASR）' ">T18护士用自杀风险评估量表</asp:ListItem>
                                        <asp:ListItem Value="and TestName ='卡尔加里精神分裂症抑郁量表（CDSS）' ">T19卡尔加里精神分裂症抑郁量表</asp:ListItem>
                                        <asp:ListItem Value="and TestName ='治疗副反应量表（TESS）' ">T20治疗副反应量表</asp:ListItem>
                                        <asp:ListItem Value="and TestName ='锥体外系副反应量表（RSESE）' ">T21锥体外系副反应量表</asp:ListItem>
                                        <asp:ListItem Value="and TestName ='服药依从性问卷（MAQ）' ">T22服药依从性问卷</asp:ListItem>
                                        <asp:ListItem Value="and TestName ='自知力与治疗态度问卷表（ITAQ）' ">T23自知力与治疗态度问卷表</asp:ListItem>
                                        <asp:ListItem Value="and TestName ='药物管理能力评估（MMAA）' ">T24药物管理能力评估</asp:ListItem>
                                        <asp:ListItem Value="and TestName ='社会支持评定量表（SSRS）' ">T25社会支持评定量表</asp:ListItem>
                                        <asp:ListItem Value="and TestName ='家庭功能评定（FAD）' ">T26家庭功能评定</asp:ListItem>
                                        <asp:ListItem Value="and TestName ='婚恋评估（MRQ）' ">T27婚恋评估</asp:ListItem>
                                        <asp:ListItem Value="and TestName ='医疗资源评估（MRS）' ">T28医疗资源评估</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <br />
                                </ContentTemplate></asp:UpdatePanel>
                                  <div class=" col-xs-10 col-md-10">
                                      <asp:Button ID="DelBtn" runat="server" Text="删除报告单" class="btn btn-danger"
                                         OnClick="DelBtn_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
                                    <%--<asp:Button ID="AddBtn" runat="server" Text="打印报告单" class="btn btn-info"
                                        OnClick="AddBtn_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="UpdateBtn" runat="server" Text="重做" class="btn btn-info"
                                        OnClick="UpdateBtn_Click" />&nbsp;&nbsp;&nbsp;&nbsp; --%>  
                                </div>

                                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                    <ContentTemplate>
                                <%--<div style="margin-top: 60px;"></div>--%>
                                <div class=" col-xs-12 col-md-12">            
                                    <div style="float: right;">
                                        总共：<asp:Label ID="Label1" runat="server" ForeColor="#5D7B9D" Font-Bold="true"></asp:Label>
                                        条记录，每页显示：<asp:DropDownList ID="PageSizeDDL" runat="server" AutoPostBack="true" Font-Bold="true"
                                            OnSelectedIndexChanged="PageSizeDDL_SelectedIndexChanged" ForeColor="#5D7B9D">
                                            <asp:ListItem Value="5">5</asp:ListItem>
                                            <asp:ListItem Value="10">10</asp:ListItem>
                                            <asp:ListItem Value="20">20</asp:ListItem>
                                            <asp:ListItem Value="50" Selected="True">50</asp:ListItem>
                                            <asp:ListItem Value="100">100</asp:ListItem>
                                            <asp:ListItem Value="200">200</asp:ListItem>
                                        </asp:DropDownList>
                                        条记录，共<asp:Label ID="Label2" runat="server" ForeColor="#5D7B9D" Font-Bold="true"></asp:Label>页
                                    </div>
                                </div>
                                <br />
                                <div id="RightContent">
                                    <asp:GridView ID="GridView1" runat="server" DataKeyNames="GUID" AutoGenerateColumns="false" class="table table-striped table-bordered table-hover"
                                        GridLines="Horizontal" Style="text-align: center;" ForeColor="#333333" HeaderStyle-HorizontalAlign="Center" Width="99%">
                                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" Height="30px" HorizontalAlign="Center" />
                                        <HeaderStyle HorizontalAlign="Center" />
                                        <Columns>
                                            <asp:BoundField DataField="Orders" HeaderText="排序" ItemStyle-Width="30" Visible="false" />
                                            <asp:TemplateField HeaderText="序" HeaderStyle-HorizontalAlign="Center">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblNo" runat="server" Text='<%# Container.DataItemIndex+1 %>'></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle Width="30px" HorizontalAlign="center" />
                                                <HeaderStyle Width="30px" />
                                            </asp:TemplateField>
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <asp:CheckBox ID="ChechBox1" runat="server" />
                                                </ItemTemplate>
                                                <ItemStyle Width="30px" HorizontalAlign="Left" />
                                            </asp:TemplateField>
                                            <asp:HyperLinkField DataNavigateUrlFields="GUID,TestName"
                                                DataNavigateUrlFormatString="RRedirect.aspx?TGUID={0}&TNum={1}" DataTextField="TestName"
                                                HeaderText="报告单名称" ItemStyle-Width="300" HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left" Target="_blank"></asp:HyperLinkField>
                                            <asp:HyperLinkField DataNavigateUrlFields="PatientGUID"
                                                DataNavigateUrlFormatString="Test_Start.aspx?GUID={0}" DataTextField="PatientName"
                                                HeaderText="病人姓名" ItemStyle-Width="300" HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left" Target="_blank"></asp:HyperLinkField>
                                            <%--<asp:BoundField DataField="ClientName" HeaderText="医院名称" />--%>
                                   
                                            <%--<asp:BoundField DataField="Num1" HeaderText="就诊卡号1"  />                                        
                                            <asp:BoundField DataField="Phone1" HeaderText="联系电话"  />
                                            <asp:BoundField DataField="Marriage" HeaderText="婚姻状况"  />--%>
                                            <asp:BoundField DataField="EndDT" HeaderText=" 日期 " DataFormatString="{0:yy年MM月dd日}"  />
                                            <asp:BoundField DataField="DoctorName" HeaderText="就诊医生"  />
                                            
                                        </Columns>
                                    </asp:GridView>
                                    <br />
                                    <asp:Label ID="TestLabel" runat="server" Text="" Visible="true"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <webdiyer:AspNetPager CssClass="pages" class="pagination" CurrentPageButtonClass="cpb" AlwaysShow="true" ID="AspNetPager1" runat="server" FirstPageText="首页" LastPageText="尾页" NextPageText="下一页" PrevPageText="上一页" OnPageChanged="AspNetPager1_PageChanged" LayoutType="Div">
                                    </webdiyer:AspNetPager>
                                </div>

                                         </ContentTemplate>
    </asp:UpdatePanel>








                                </div>
                        </div>
                    </div>
                </div>
            </div>

</asp:Content>

