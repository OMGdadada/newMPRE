<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="User_Edit.aspx.cs" Inherits="User_Edit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .registerbox-textbox{
            margin:20px 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Label ID="DoctorGUID" runat="server" Visible="false" Text=""></asp:Label>
    <asp:Label ID="LabelRandomID" runat="server" Visible="false" Text=""></asp:Label>
    <asp:Label ID="LabelUserName" runat="server" Visible="false" Text=""></asp:Label>
    <asp:Label ID="LabelUserName2" runat="server" Visible="false" Text=""></asp:Label>
    <div id="CurrentPosition">当前位置：<a href="#">医生管理</a> >> <a href="#">完善个人信息</a></div>
    <p>&nbsp;</p>
    <div class="row">
        <div class="col-lg-6 col-sm-6 col-xs-12">
            <div class="well with-header  with-footer">
                <div class="header bordered-blue">完善个人信息：</div>
                 <asp:Label ID="ErrorLabel" runat="server" Text="" Font-Bold="true" ForeColor="Red" />
                <div class="form-group">
                    <span>姓名：</span>
                    <span></span>
                    <span class="input-icon icon-right">
                        <asp:Label ID="DoctorName" class=" form-control " runat="server"></asp:Label>
                        <i class="fa fa-user success circular"></i>
                    </span>
                </div>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                <div class="form-group">
                    <span>身份证号：
                        <asp:Button ID="UpdateBtn" runat="server" Text="（更改）" class="btn btn-link"  data-toggle="modal" data-target=".bs-example-modal-sm" />
                    </span>
                    <span class="input-icon icon-right">
                        <asp:Label ID="IDCard" class="form-control" runat="server" Visible="false"></asp:Label>
                        <asp:Label ID="IDC" class="form-control" runat="server"></asp:Label>
                        <i class="fa fa-credit-card darkpink circular"></i>
                    </span>
                </div>
                </ContentTemplate>
                </asp:UpdatePanel>
                <div class="form-group">
                    <span>联系电话：</span>
                    <span class="input-icon icon-right">
                        <asp:TextBox ID="Phone" class="form-control" runat="server"></asp:TextBox>
                        <i class="fa fa-phone darkpink circular"></i>
                    </span>
                </div>
                <div class="form-group">
                    <span>工号：</span>
                    <span class="input-icon icon-right">
                        <asp:TextBox ID="EmployeeNum" class="form-control" runat="server"></asp:TextBox>
                        <i class="fa fa-user-md darkpink circular"></i>
                    </span>
                </div>
                <div class="form-group">
                    <span>科室：</span>
                    <asp:DropDownList ID="DepartmentDDL" runat="server"></asp:DropDownList>
                </div>
                <asp:Panel ID="RolePanel" runat="server">
                    <span>角色：</span>
                    <asp:RadioButton ID="Role1" runat="server" GroupName="Roles" Checked="true"  Text="非管理员" />   
                    <asp:RadioButton ID="Role2" runat="server" GroupName="Roles" Text="管理员" />
                </asp:Panel>
                <p>&nbsp;</p>
                <p>
                    <asp:Button ID="Button2" class="btn btn-info" runat="server" Text="保存信息" OnClick="Button2_Click" />
                </p>
               
            </div>
        </div>
    </div>
    <!--Small Modal Templates-->
    <div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">

                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 class="modal-title" id="mySmallModalLabel">更改身份证号</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                        <ContentTemplate>
                        <div class="registerbox-textbox">
                             <asp:TextBox ID="IDCard1" class="form-control"  placeholder="输入旧身份证号"  runat="server" TextMode="Password"
                            MaxLength="30" ></asp:TextBox>     
                        </div>
                        <div class="registerbox-textbox">
                            <asp:TextBox ID="IDCard2" class="form-control"  placeholder="输入新身份证号" runat="server" TextMode="Password"
                            MaxLength="30" ></asp:TextBox>
                        </div>
                        <div class="registerbox-textbox">
                             <asp:TextBox ID="IDCard3" class="form-control" placeholder="确认新身份证号" runat="server" TextMode="Password"
                            MaxLength="30" ></asp:TextBox>
                       </div>
                        
                      <div class="registerbox-submit">          
                           <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="true"
                            oncheckedchanged="CheckBox1_CheckedChanged" Text="显示身份证号" Visible="true" />  
            
                        </div>
                            </ContentTemplate>
                </asp:UpdatePanel>
                    </div>
                    <div style="text-align:center;">
                    <asp:Button ID="UpdateButton" runat="server" class="btn btn-info" Text="确定" OnClick="UpdateButton_Click" />
                    </div>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div>
    <!--End Small Modal Templates-->
</asp:Content>

