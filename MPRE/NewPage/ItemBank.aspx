<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="ItemBank.aspx.cs" Inherits="NewPage_ItemBank" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div id="CurrentPosition">当前位置：<a href="#"> 试题列表</a>  </div>
    <div class="page-body">
        <div class="row">
            <div class="col-xs-12 col-md-12">
                <div class="widget">
                    <div class="widget-header ">
                        <span class="widget-caption">试题列表</span>
                    </div>
                    <div class="widget-body">
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <div id="Man_Nav">
                                    <div class="form-group col-xs-3 col-md-3">
                                        <span class="input-icon">
                                            <asp:TextBox ID="SearchTB" runat="server" placeholder="查询试题" class="form-control input-sm"></asp:TextBox>
                                            <i class="glyphicon glyphicon-search danger circular"></i>
                                        </span>
                                    </div>

                                    &nbsp;&nbsp;
                                   
                         <asp:Button ID="SearchBtn" runat="server" Text="搜索" class="btn btn-info" OnClick="SearchBtn_Click" />&nbsp;&nbsp;
    
                         

                         <asp:DropDownList ID="DDLTest" runat="server" OnSelectedIndexChanged="DDLTest_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                                    <asp:DropDownList ID="DDLQType" runat="server" OnSelectedIndexChanged="DDLQType_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                                </div>
                                <br />
                            </ContentTemplate>
                        </asp:UpdatePanel>
                        <div class=" col-xs-10 col-md-10">
                            <asp:Button ID="AddBtn" runat="server" Text="新增试题" class="btn btn-info"
                                OnClick="AddBtn_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
                                    
                            <%--   <asp:Button ID="UpdateBtn" runat="server" Text="修改信息" class="btn btn-info"
                                        OnClick="UpdateBtn_Click" />&nbsp;&nbsp;&nbsp;&nbsp;   
                                      <asp:Button ID="StartTest" runat="server" Text="开始测试" class="btn btn-warning" OnClick="StartTest_Click"
                                          />&nbsp;&nbsp;&nbsp;&nbsp;
                                      <asp:Button ID="TestPrint" runat="server" Text="总报告单打印" class="btn btn-warning" OnClick="TestPrint_Click"
                                          />&nbsp;&nbsp;&nbsp;&nbsp;--%>
                                    <asp:Button ID="DelBtn" runat="server" Text="删除试题" class="btn btn-warning" OnClick="DelBtn_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
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
                                                DataNavigateUrlFormatString="Test_Start.aspx?GUID={0}" DataTextField="QuestionText"
                                                HeaderText="题目" ItemStyle-Width="400" HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left" Target="_blank"></asp:HyperLinkField>

                                            <asp:BoundField DataField="TestName" HeaderText="隶属量表" ItemStyle-Width="100" />
                                            <asp:BoundField DataField="Type" HeaderText="题型" ItemStyle-Width="30" />


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

