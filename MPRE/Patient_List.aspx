<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Patient_List.aspx.cs" Inherits="Patient_List" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
          <div class="page-body">
                <div class="row">
                    <div class="col-xs-12 col-md-12">
                        <div class="widget">
                            <div class="widget-header ">
                                <span class="widget-caption">病人列表</span>
                            </div>
                            <div class="widget-body">

                                <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                    <ContentTemplate>
                                        <div id="Man_Nav">
                                            <div id="test1" class="form-group col-xs-3 col-md-3">
                                                <span class="input-icon">
                                         
                                                    <asp:TextBox ID="SearchTB" runat="server" placeholder="搜索..." class="form-control input-sm"></asp:TextBox>
                                                    <i class="glyphicon glyphicon-search danger circular"></i>
                                                </span>
                                            </div>
                                        
                                            <asp:Button ID="SearchBtn" runat="server" Text="搜索" class="btn btn-info"  OnClick="SearchBtn_Click" />&nbsp;&nbsp;  &nbsp;&nbsp;
                             

                                            <asp:DropDownList ID="OrderDDL" runat="server"
                                                OnSelectedIndexChanged="OrderDDL_SelectedIndexChanged" AutoPostBack="True">
                                                <asp:ListItem Value=" Order by ID Desc">默认排序</asp:ListItem>
                                                <asp:ListItem Value=" Order by CDT Desc">最新记录</asp:ListItem>
                                                <asp:ListItem Value=" Order by ID Asc">ID从小到大</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                        <br />
                                    </ContentTemplate>
                                </asp:UpdatePanel>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="AddBtn" runat="server" Text="增加新病人" class="btn btn-info" OnClick="AddBtn_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
                                   <span class="btn btn-info" onclick="UpdataPatient()" > 修改信息</span>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <span  id="StartTest" class="btn btn-success btn-new" onclick="StartTest()">多维度康复系统</span>&nbsp;&nbsp;&nbsp;
                                      <span  id="StartTest2" class="btn btn-danger btn-new" onclick="StartTest2()">心理测评系统</span>
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                    <ContentTemplate>
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
                                        </asp:DropDownList>共<asp:Label ID="Label2" runat="server" ForeColor="#5D7B9D" Font-Bold="true"></asp:Label>页
                                   
                                            </div>
                                        </div>
                                        <br />

                                        <div >
                                     
                                            <table class="table">
                                            <asp:Repeater ID="Repeater2" runat="server">
                                               
                                                <HeaderTemplate>
                                                    <tr> 
                                                        <th>序</th>
                                                        <th></th>
                                                        <th>患者姓名</th>
                                                        <th>性别</th>
                                                        <th>门诊号</th>
                                                        <th>联系电话</th>
                                                        <th>出生日期</th>
                                                    </tr>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                      <tr data-guid='<%#Eval("GUID") %>' data-id='<%#Eval("ID") %>'  onclick="Radio(this)" style="cursor:pointer" > 
                                                          <th><%# Container.ItemIndex + 1 %></th>
                                                          <th>
                                                            <input type="radio" id="<%#"rdb"+Eval("ID") %>"  name="aa " value='<%# Eval("GUID") %>' />
                                                          </th>
                                                          <th><%# Eval("PatientName") %></th>
                                                           <th><%# Eval("Sex") %></th>
                                                          <th><%# Eval("Num1") %></th>
                                                          <th><%# Eval("Phone1") %></th>
                                                          <th><%# Eval("Birthday","{0:yyyy年MM月dd日}") %></th>

                                                      </tr>
                                                </ItemTemplate>  

                                             
                                            </asp:Repeater>
                                            </table>
                                            

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

        <style>
        .table th {
            height:30px;
            text-align: center;
        }

        .table td, .table th {
            border:1px solid #cad9ea;
            padding: 0 1em 0;
            border-top:none;
        }

        .table tr:hover {
            background: #F7F6F3;
        } 
    </style>

    <script>
        var PatientGUID = "";

        function Radio(e) {
            var GUID = e.getAttribute("data-guid");
            var id = e.getAttribute("data-id");
            if (document.getElementById("rdb" + id).checked == false) {
                document.getElementById("rdb" + id).checked = true;
                PatientGUID = document.getElementById("rdb" + id).value;
            }
            else {
                document.getElementById("rdb" + id).checked = false;
                PatientGUID = "";
            }
        }

        function UpdataPatient() {
            if (PatientGUID != "") {
                window.open("../Patient_Info.aspx?GUID=" + PatientGUID)
            }
            else {
                alert("请选择病人");
            }

        }
        function StartTest() {
            if (PatientGUID != "") {
                window.open("../Test_Start.aspx?GUID=" + PatientGUID)
            }
            else {
                alert("请选择病人");
            }
        }
        function StartTest2(){
            if (PatientGUID != "") {
                window.open("../NewPage/Psychological_Test.aspx?GUID=" + PatientGUID)
            }
            else {
                alert("请选择病人");
            }
        }

    </script>
</asp:Content>

