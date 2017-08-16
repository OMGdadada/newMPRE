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
                                    <asp:Button ID="SearchBtn" runat="server" Text="搜索" class="btn btn-info" OnClick="SearchBtn_Click"  />&nbsp;&nbsp;

                                    
    
                          
                                                                    &nbsp;&nbsp;
                                   <asp:DropDownList ID="OrderDDL" runat="server"
                                        OnSelectedIndexChanged="OrderDDL_SelectedIndexChanged" AutoPostBack="True">
                                        <asp:ListItem Value=" Order by Orders asc">升序</asp:ListItem>
                                       <asp:ListItem Value=" Order by Orders Desc">降序</asp:ListItem>
                                        <asp:ListItem Value=" Order by Price Asc">价格从低到高</asp:ListItem> 
                                         <asp:ListItem Value=" Order by Price Desc">价格从高到低</asp:ListItem> 

                                                               
                                    </asp:DropDownList>
                                </div>
                                <br />
                                </ContentTemplate></asp:UpdatePanel>
                               <div class=" col-xs-10 col-md-10">
                                    <asp:Button ID="AddBtn" runat="server" Text="增加新量表" class="btn btn-info"
                                        OnClick="AddBtn_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
                                    <span class="btn  btn-danger btn-new" onclick="UpdataPatient()" > 修改信息</span>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <span  id="StartTest" class="btn btn-success btn-new" >删除量表</span>&nbsp;&nbsp;&nbsp;
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

                     

                                <table class="table">
                                            <asp:Repeater ID="Repeater1" runat="server">
                                               
                                                <HeaderTemplate>
                                                    <tr> 
                                                        <th >序</th>
                                                        <th ></th>
                                                        <th>量表名</th>
                                                        <th>价格</th>
                                                        <th>排序</th>
                                                        <th>所属测试</th>
                                                        <th>有效性</th>
                                                    </tr>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                      <tr data-guid='<%#Eval("GUID") %>' data-id='<%#Eval("ID") %>'  onclick="Radio(this)" style="cursor:pointer" > 
                                                          <th ><%# Container.ItemIndex + 1 %></th>
                                                          <th >
                                                            <input type="radio" id="<%#"rdb"+Eval("ID") %>"  name="aa " value='<%# Eval("GUID") %>' />
                                                          </th>
                                                          <th ><%# Eval("TestName") %></th>
                                                           <th><%# Eval("Price") %></th>
                                                          <th><%# Eval("Serial") %></th>
                                                          <th><%# Eval("Dimension1name") %></th>
                                                          <th><%# Eval("Valid") %></th>

                                                      </tr>
                                                </ItemTemplate>  

                                             
                                            </asp:Repeater>
                                            </table>


                                    <br />
                                    <asp:Label ID="TestLabel" runat="server" Text="" Visible="true"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <webdiyer:AspNetPager CssClass="pages" class="pagination" CurrentPageButtonClass="cpb" AlwaysShow="true" ID="AspNetPager1" runat="server" FirstPageText="首页" LastPageText="尾页" NextPageText="下一页" PrevPageText="上一页" OnPageChanged="AspNetPager1_PageChanged" LayoutType="Div">
                                    </webdiyer:AspNetPager>

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
        .table tr:nth-child(even){
        background: #F9F9F9;
                }  
            .table tr:nth-child(odd){
        background:  #F7F6F3;
                }
        .table tr:hover {
            background: #E8E8E8;
        } 
            
    </style>

    <script>
        var TestGUID = "";

        $(function () {
            $(":radio").click(function () {
                event.stopPropagation();
                TestGUID = $(this).val();
            });
        });
        function Radio(e) {
            var GUID = e.getAttribute("data-guid");
            var id = e.getAttribute("data-id");
            if (document.getElementById("rdb" + id).checked == false) {
                document.getElementById("rdb" + id).checked = true;
                TestGUID = document.getElementById("rdb" + id).value;
            }
            else {
                document.getElementById("rdb" + id).checked = false;
                TestGUID = "";
            }
        }

        function UpdataPatient() {
            if (TestGUID != "") {
                window.open("../NewPage/Gauge_Add.aspx?GUID=" + TestGUID)
            }
            else {
                alert("请选择测试卷");
            }

        }

    </script>
</asp:Content>

