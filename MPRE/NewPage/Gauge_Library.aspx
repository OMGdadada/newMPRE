<%@ Page  Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Gauge_Library.aspx.cs" Inherits="NewPage_Gauge_Library" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
         
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
     <div id="CurrentPosition">当前位置：<a href="Gauge_Library.aspx">  量表管理 </a> >> 量表列表 </div>
         <div class="page-body">
                <div class="row">
                    <div class="col-xs-12 col-md-12">
                        <div class="widget">
                            <div class="widget-header ">
                                <span class="widget-caption">量表列表</span>
                            </div>
                            <div class="widget-body">
                                       <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
                                <div id="Man_Nav">
                                    <div class="form-group col-xs-3 col-md-3">
                                        <span class="input-icon">
                                            <asp:TextBox ID="SearchTB" runat="server" placeholder="查询量表" class="form-control input-sm"></asp:TextBox>
                                            <i class="glyphicon glyphicon-search danger circular"></i>
                                        </span>
                                    </div>
                                 <%-- <asp:DropDownList ID="SearchDDL" runat="server"
                                        OnSelectedIndexChanged="SearchDDL_SelectedIndexChanged" AutoPostBack="True">
                                        <asp:ListItem Value=" [PatientName]">搜索病人姓名</asp:ListItem>
                                        <asp:ListItem Value=" [Num1]">搜索门诊号</asp:ListItem>                         
                                    </asp:DropDownList>--%>
                                    &nbsp;&nbsp;
                                    <asp:Button ID="SearchBtn" runat="server" Text="搜索" class="btn btn-info"
                                     />&nbsp;&nbsp;
    
                          
                                                                    &nbsp;&nbsp;
                                   <asp:DropDownList ID="OrderDDL" runat="server"
                                        OnSelectedIndexChanged="OrderDDL_SelectedIndexChanged" AutoPostBack="True">
                                        <asp:ListItem Value=" Order by ID Desc">默认排序</asp:ListItem>
                                        <asp:ListItem Value=" Order by CDT Desc">最新记录</asp:ListItem>
                                        <asp:ListItem Value=" Order by Price Asc">价格从低到高</asp:ListItem> 
                                         <asp:ListItem Value=" Order by Price Desc">价格从高到低</asp:ListItem> 
                                                               
                                    </asp:DropDownList>
                                </div>
                                <br />
                                </ContentTemplate></asp:UpdatePanel>
                               <div class=" col-xs-10 col-md-10">
                                    <asp:Button ID="AddBtn" runat="server" Text="增加新量表" class="btn btn-info"
                                        OnClick="AddBtn_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="UpdateBtn" runat="server" Text="修改信息" class="btn btn-info"
                                        OnClick="UpdateBtn_Click" />&nbsp;&nbsp;&nbsp;&nbsp;                       
                                    <asp:Button ID="DelBtn" runat="server" Text="删除量表" class="btn btn-warning"
                                         OnClick="DelBtn_Click"  />&nbsp;&nbsp;&nbsp;&nbsp;
                                </div>

                                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                    <ContentTemplate>
                                <div style="margin-top: 60px;"></div>
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
                                    <asp:GridView ID="GridView1" runat="server" DataKeyNames="ID" AutoGenerateColumns="false" class="table table-striped table-bordered table-hover"
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
                
                                          <asp:HyperLinkField DataNavigateUrlFields="ID"
                                                DataNavigateUrlFormatString="Gauge_Add.aspx?ID={0}" DataTextField="TestName"
                                                HeaderText="量表名" ItemStyle-Width="200" HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left" Target="_blank"></asp:HyperLinkField>
                                           <asp:BoundField DataField="Price" HeaderText="价格" />
                                   
                                            <asp:BoundField DataField="Serial" HeaderText="序号"  />                                        
                                            <asp:BoundField DataField="Dimension1name" HeaderText="所属测试" ></asp:BoundField>
                                            <asp:BoundField DataField="Valid" HeaderText="有效性"  />
                                    
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

