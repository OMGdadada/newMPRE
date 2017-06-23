<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="User_Add.aspx.cs" Inherits="User_Add" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Label ID="LabelUserID" runat="server" Visible="false" Text=""></asp:Label>
    <asp:Label ID="RandomID" runat="server" Visible="false" Text=""></asp:Label>
    <asp:Label ID="GUIDLabel" runat="server"  Visible="false"></asp:Label>
    <div id="CurrentPosition">当前位置：<a href="User_Man.aspx">医生管理</a> >> <a href="#">添加新医生</a></div>
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    <p>&nbsp;</p>
    <div class="row">
        <div class="col-lg-6 col-sm-6 col-xs-12">
            <div class="well with-header  with-footer">
                <div class="header bordered-blue">添加个人信息：</div>
                <div class="form-group">
                    <span class="text-primary">医生名：<asp:Label ID="Label2" runat="server" Text="" ForeColor="Red"></asp:Label></span>
                    <span></span>
                    <span class="input-icon icon-right">
                        <asp:TextBox ID="UserName" class=" form-control " runat="server"></asp:TextBox>
                        <i class="fa fa-user success circular"></i>
                    </span>
                    <span>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="医生名必填" ControlToValidate="UserName"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                            ErrorMessage="不符合医生名规则" ControlToValidate="UserName"
                            ValidationExpression="^[a-zA-Z0-9\u4e00-\u9fa5]{1,20}$"></asp:RegularExpressionValidator>
                    </span>
                </div>
                <div class="form-group"  style="margin-bottom:-30px;">
                    <span class="text-primary">密码：</span>

                    <span class="input-icon icon-right">
                        <asp:TextBox ID="Password" class="form-control" placeholder="请输入密码" TextMode="Password" runat="server" ></asp:TextBox>
                        <i class="fa fa-unlock success circular"></i>
                    </span>
                    <span>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="密码必填" ControlToValidate="Password"></asp:RequiredFieldValidator>
     <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="<p>1.密码应由数字和字母或特殊字符组成&nbsp;&nbsp;&nbsp;&nbsp; 2.字母个数不能小于2大于6</p><p>3.数字个数不能小于4大于14 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    4.密码长度应大于6小于20</p>" ControlToValidate="Password" 
            ValidationExpression="^[A-Za-z]{2,6}[0-9]{4,14}$|^[0-9]{4,14}[A-Za-z]{2,6}$|^[0-9]{5,20}[%&'@,;=?$\x22]{1,5}$|^[a-zA-Z]{4,20}[%&'@,;=?$\x22]{0,5}$|^[%&'@,;=?$\x22]{0,5}[a-zA-Z]{4,20}$"   ></asp:RegularExpressionValidator>
                </span>
                </div>
                <div class="form-group"  style="margin-top:30px;">
                   <span class="text-primary">密码：</span>
                    <span class="input-icon icon-right">
                        <asp:TextBox ID="Password1" class="form-control" placeholder="再次确认密码" TextMode="Password" runat="server"></asp:TextBox>
                        <i class="fa fa-unlock darkorange"></i>
                    </span>
                     <span>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="密码必填" ControlToValidate="Password1"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server"
                            ErrorMessage="不符合密码规则" ControlToValidate="Password1"
                            ValidationExpression="^[0-9a-zA-Z]{2,20}$"></asp:RegularExpressionValidator>
                     </span>
                </div>
                <div class="form-group">
                    <span class="text-primary">身份证号：</span>
                    <span class="input-icon icon-right">
                        <asp:TextBox ID="IDCard" class="form-control" runat="server"></asp:TextBox>
                        <i class="fa fa-credit-card darkpink circular"></i>
                    </span>
                    <span>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="身份证号必填" ControlToValidate="IDCard"></asp:RequiredFieldValidator>
                    </span>
                </div>
                <div class="form-group">
                    <span class="text-primary">联系电话：</span>
                    <span class="input-icon icon-right">
                        <asp:TextBox ID="Phone" class="form-control" runat="server"></asp:TextBox>
                        <i class="fa fa-phone darkpink circular"></i>
                    </span>
                </div>
                <div class="form-group">
                    <span class="text-primary">工号：</span>
                    <span class="input-icon icon-right">
                        <asp:TextBox ID="EmployeeNum" class="form-control" runat="server"></asp:TextBox>
                        <i class="fa fa-user-md darkpink circular"></i>
                    </span>
                </div>
                <div class="form-group">
                    <span class="text-primary">科室：</span>
                    <asp:DropDownList ID="DepartmentDDL" runat="server"></asp:DropDownList>
                </div>
                <asp:Panel ID="RolePanel" runat="server">
                    <span class="text-primary">角色：</span>
                    <asp:RadioButton ID="Role1" runat="server" GroupName="Roles" Checked="true"  Text="非管理员" />   
                    <asp:RadioButton ID="Role2" runat="server" GroupName="Roles" Text="管理员" />
                </asp:Panel>
                <p style="margin-left: 170px; margin-top: 30px;">
                    <asp:Button ID="Button1" class="btn btn-azure" runat="server" Text="保存信息" OnClick="Button1_Click" />
                </p>
                <asp:Label ID="ErrorLabel" runat="server" Text="" Font-Bold="true" ForeColor="Red" />
            </div>
        </div>
    </div>
</asp:Content>

