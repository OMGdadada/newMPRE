<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Report_Del.aspx.cs" Inherits="Report_Del" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="IDSLabel" runat="server" Text="" Visible="false"></asp:Label>
    <div id="CurrentPosition">
        当前位置：<a href="ReportS_List.aspx">报告单管理</a> >> <a href="#">彻底删除报告单</a>
    </div>
    <p>&nbsp;</p>
    <h3 style="color: red">您确定要删除以下报告单吗？一旦删除，将不可恢复！</h3>
    <p>&nbsp;</p>
    <div>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Button ID="Button3" runat="server" Text="确定删除"
                class="btn btn-danger" data-toggle="modal" data-target=".bs-example-modal-sm" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
               
            <asp:Button ID="Button4" runat="server" Text="返 回" class="btn btn-default" OnClick="Button2_Click" />

        </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    <p>
        &nbsp;
    </p>
    <p>
        <asp:Label ID="ResultLabel" runat="server" Font-Bold="True" ForeColor="#00CC00" Text=""></asp:Label>
        <asp:Label ID="TNum" runat="server" Visible="false"></asp:Label>
    </p>
    <div class="col-lg-11 col-sm-15 col-xs-15">
        <div class="row">
            <div class="col-lg-15">
                <div class="widget">
                    <div class="widget-header ">
                        <span class="widget-caption">删除报告单</span>
                    </div>
                    <!--Widget Header-->
                    <div class="widget-body">
                        <div class="widget-main no-padding">
                            <div id="GridViewDiv">
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
                                            <%--<asp:TemplateField>
                                                <ItemTemplate>
                                                    <asp:CheckBox ID="ChechBox1" runat="server" />
                                                </ItemTemplate>
                                                <ItemStyle Width="30px" HorizontalAlign="Left" />
                                            </asp:TemplateField>--%>
                                            <asp:HyperLinkField DataNavigateUrlFields="GUID,TestName"
                                                DataNavigateUrlFormatString="RRedirect.aspx?TGUID={0}&TNum={1}" DataTextField="TestName"
                                                HeaderText="报告单名称" ItemStyle-Width="300" HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left" Target="_blank"></asp:HyperLinkField>
                                            <asp:HyperLinkField DataNavigateUrlFields="PatientGUID"
                                                DataNavigateUrlFormatString="Test_Start.aspx?GUID={0}" DataTextField="PatientName"
                                                HeaderText="病人姓名" ItemStyle-Width="300" HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left" Target="_blank"></asp:HyperLinkField>
                                            <asp:BoundField DataField="EndDT" HeaderText=" 日期 " DataFormatString="{0:yy年MM月dd日}"  />
                                            <asp:BoundField DataField="DoctorName" HeaderText="就诊医生"  />
                                            
                                        </Columns>
                                    </asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--Small Modal Templates-->
    <div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">

                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 class="modal-title" id="mySmallModalLabel">安全验证</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <span class="text-primary">请输入身份证号：</span>
                        <span class="input-icon icon-right">
                            <asp:TextBox ID="IDCard" class="form-control" runat="server"></asp:TextBox>
                            <i class="fa fa-credit-card darkpink circular"></i>
                        </span>
                    </div>
                    <div style="text-align:center;">
                    <asp:Button ID="DelButton" runat="server" class="btn btn-info" Text="确定" OnClick="DelButton_Click" />
                    </div>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div>
    <!--End Small Modal Templates-->
</asp:Content>

