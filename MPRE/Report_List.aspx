﻿<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Report_List.aspx.cs" Inherits="Report_List" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="../assets/js/vue.js"></script>
     <style type="text/css">
        body, table {
            font-size: 12px;
        }

        table {
            table-layout: fixed;
            empty-cells: show;
            border-collapse: collapse;
            margin: 0 auto;
        }

        td {
            height: 40px;
        }

        .table {
            border: 1px solid #cad9ea;
            color: #666;
        }

            .table th {
                height: 40px;
                text-align: center;
            }

            .table td, .table th {
                border: 1px solid #cad9ea;
                padding: 0 1em 0;
                text-align:center;
            }

                .table th p {
                    line-height: 18px;
                    margin: auto;
                }

        @media(max-width:1199px) {
            .profile-container .profile-body .nav-tabs.tabs-flat {
                margin-top: 210px;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div id="CurrentPosition">当前位置：<a href="Dashboard.aspx">后台首页</a>>><a href="#">报告单列表</a>   </div>
    <div class="page-body">
        <div class="row">
            <div class="col-xs-12 col-md-12">
                <div class="tabbable">
                    <ul class="nav nav-tabs tabs-flat  nav-justified" id="myTab11" style="box-shadow: 0px -1px 5px 0px rgba(0,0,0,0.2);">
                        <li class="active">
                            <a data-toggle="tab" href="#overview">多维度测试报告单
                                    </a>
                        </li>
                        <li class="tab-red">
                            <a data-toggle="tab" id="contacttab" href="#contacts">心理测评报告单
                                    </a>
                        </li>


                    </ul>
                    <div class="tab-content tabs-flat" style="margin-top: 5px; padding: 0px; box-shadow: 0px 0 0px 0px rgba(256,256,256,.3);">
                        <div id="overview" class="tab-pane active">
                            <div class="widget-body">
                                <br />
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
                                    </ContentTemplate>
                                </asp:UpdatePanel>
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
                                                    <asp:BoundField DataField="EndDT" HeaderText=" 日期 " DataFormatString="{0:yy年MM月dd日}" />
                                                    <asp:BoundField DataField="DoctorName" HeaderText="就诊医生" />

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

                        <div id="contacts" class="tab-pane">
                            <div class="widget-body">
                                <br />
                                       <div class="row" id="Report">
                                                        <div class="col-md-12">
                                                            <div class="row">
                                                                <div class="form-group col-xs-3 col-md-3">
                                                                    <span class="input-icon" style="float:right">
                                                                        <input type="text" placeholder="搜索..." class="form-control input-sm" v-model="Search" /> 
                                                                        <i class="glyphicon glyphicon-search danger circular"></i>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-12">
                                                                    <div class="pull-right">
                                                                        <span>总共：{{Reportt.length}}条记录，每页显示：
                                                                            <select v-model="Row">
                                                                                <option value="5">5</option>
                                                                                <option value="10">10</option>
                                                                                <option value="20">20</option>
                                                                                <option value="50">50</option>
                                                                            </select>
                                                                            条记录，共{{Math.ceil(Reportt.length/Row)}}页
                                                                        </span>
                                                                    </div>
                                                                    <br />
                                                                    <br />
                                                                    <br />
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-12">
                                                                    <table class="table table-striped table-bordered table-hover">
                                                                        <thead>
                                                                            <tr>
                                                                                <th style="width:80px;">序</th>
                                                                                <th style="width:120px;">购买时间</th>
                                                                                <th>测试名称</th>
                                                                                <th style="width:120px;">所属患者</th>
                                                                                <th style="width:80px;"></th>
                                                                            </tr>
                                                                        </thead>
                                                                        <tbody>
                                                                            <tr v-for="test in Report">
                                                                                <td>{{test.Serial}}</td>
                                                                                <td>{{test.CDT}}</td>
                                                                                <td>{{test.TestName}}</td>
                                                                                <td>{{test.PatientName}}</td>
                                                                                <td><i id="IntoReport_Btn" style="cursor:pointer;" class="glyphicon glyphicon-list-alt" v-on:click="IntoReport(test.TestGUID,test.PatientGUID,test.GUID)" ></i></td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                    <br />
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-12">
                                                                    <div class="pages">
                                                                        <a class="pages" v-on:click="JumpPage(first)" style="cursor:pointer">首页</a>
                                                                        <a class="pages" v-on:click="JumpPage(up)" style="cursor:pointer">上一页</a>
                                                                        <span v-for="pages in Page" >
                                                                            <a v-if="!pages.Isthis" class="pages" v-on:click="JumpPage(pages.val)" style="cursor:pointer">{{pages.page}}</a>
                                                                            <span v-if="pages.Isthis" class="cpb" style="margin-right:5px;">{{pages.page}}</span>
                                                                        </span>
                            
                                                                        <a class="pages" v-on:click="JumpPage(next)" style="cursor:pointer">下一页</a>
                                                                        <a class="pages" v-on:click="JumpPage(last)" style="cursor:pointer">尾页</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        var Rp = new Vue({
            el: "#Report",
            data: {

                Original: [
                ],//原始
                Reportt: [
                ],
                Report: [
                ],
                Search: "",
                Row: 10,//初始行数
                Page: [],
                first: 1,
                last: 0,
                next: 0,
                up: 0,
                current: 0,
                col: 10,
            },
            watch: {
                Search: function () {
                    if (this.Search.length > 0) {
                        i = this.Search.length;
                        var _this = this;
                        var tab = this['Original'];
                        if (this.Search) {
                            _this['Reportt'] = [];
                            _this['Report'] = [];

                            for (i in tab) {
                                if (tab[i].Serial == parseInt(_this.Search) || tab[i].PatientName.indexOf(_this.Search) >= 0 || tab[i].CDT.indexOf(_this.Search) >= 0 || tab[i].TestName.indexOf(_this.Search) >= 0) {
                                    _this['Reportt'].push(tab[i]);
                                };
                            }
                        }
                    }
                    if (i > 0 && this.Search.length == 0) {
                        this.Reportt = this.Original;
                    }
                    this.Page = [];
                    this.current = 0;
                },
                Row: function () {
                    this.current = 0;
                },
                current: function () {
                    if (this.current <= 0) {
                        this.current = 1;
                        return;
                    }

                    if (this.current > Math.ceil(this.Reportt.length / this.Row)) {
                        //  alert("数据超出引索范围！");
                        this.current = 1;
                        return;
                    }
                    this.Report = [];
                    this.Page = [];
                    for (x = Math.floor(this.current - 1 / this.col) * this.Row; x < (Math.ceil(this.current - 1 / this.col) * this.Row > this.Reportt.length ? this.Reportt.length : Math.ceil(this.current - 1 / this.col) * this.Row) ; x++) {
                        this.Report.push(this.Reportt[x]);
                    }
                    for (x = 0; x <= (Math.ceil(this.Reportt.length / this.Row) - (Math.floor((this.current - 1) / this.col) * this.col) > this.col ? this.col + 1 : (Math.ceil(this.Reportt.length / this.Row) - (Math.floor((this.current - 1) / this.col) * this.col))) ; x++) {

                        if (x == 0) {
                            if (this.current < (this.col + 1));
                            else {
                                this.Page.push({ "page": "...", "Isthis": false, "val": Math.floor((this.current - 1) / this.col) * this.col });
                            }
                        } else if (x == this.current % this.col || (x == this.col && (this.current % this.col) == 0 && this.current != 0)) {
                            this.Page.push({ "page": "" + this.current + "", "Isthis": true, "val": Math.floor((this.current - 1) / this.col) * this.col + x });
                        }
                        else if (x == (this.col + 1)) {
                            //alert(Math.ceil((vm.current) / 5) * vm.Row + 1);
                            this.Page.push({ "page": "...", "Isthis": false, "val": Math.ceil(this.current / this.col) * this.col + 1 });
                        } else {
                            this.Page.push({ "page": "" + (Math.floor((this.current - 1) / this.col) * this.col + x) + "", "Isthis": false, "val": Math.floor((this.current - 1) / this.col) * this.col + x });
                        }
                    }
                    this.last = Math.ceil(this.Reportt.length / this.Row);
                    this.next = this.current >= this.Reportt.length ? this.Reportt.length : this.current + 1;
                    this.up = this.current == 1 ? 1 : this.current - 1;
                }
            },
            methods: {
                JumpPage: function (val) {

                    if (val >= Math.ceil(this.Reportt.length / this.Row) && this.current == Math.ceil(this.Reportt.length / this.Row) && val != 1) {
                        alert("已经是最后一页了");
                        return;
                    } else if (val == 1 && this.current == 1) {
                        alert("已经是第一页了");
                        return;
                    }
                    this.current = 0;
                    this.current = val;

                },
                IntoReport: function (val1, val2, val3) {

                    var Url = "NewPage/Psychological_Report.aspx?TestGUID=" + val1 + "&PatientGUID=" + val2 + "&CatGUID=" + val3;
                    window.open(Url, '_blank');
                }
            }
        })
     

          var newsid = "NULL";
        (function ($) {
            $.ajax({
                type: "post",
                url: "/NewPage/Gtest.asmx/GetReport", //服务端处理程序   
                data: { "PGUID": newsid },
                dataType: 'xml', //返回的类型为XML ，和前面的Json，不一样了
                async: false,//设置为同步操作就可以给全局变量赋值成功 
                success: function (Nums) {
                    try {

                        list = $(Nums).find("string").text();
                       // alert(list);
                        Rp.Original = eval('(' + list + ')');
                        Rp.Reportt = eval('(' + list + ')');

                    }
                    catch (e) {
                        alert(e);
                        return;
                    }
                },
                error: function (Num) {
                    console.log('0');
                  
                },
            })

            for (x = 0; x < Rp.Reportt.length; x++) {
                Rp.Original[x].Serial = x + 1;
                Rp.Reportt[x].Serial = x + 1;
                var a = Rp.Reportt[x].CDT;
                var date = new Date(parseInt(a.slice(6)));
                var result = date.getFullYear() + '年' + date.getMonth() + '月' + date.getDate() + '日';
                Rp.Original[x].CDT = result;
                Rp.Reportt[x].CDT = result;
            }
            Rp.current = 1;

               })(jQuery)


    </script>
</asp:Content>
