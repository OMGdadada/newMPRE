<%@ Page Title="" Language="C#" MasterPageFile="~/Report.master" AutoEventWireup="true" CodeFile="R3.aspx.cs" Inherits="R3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <asp:Label ID="GUID" runat="server" Visible="false"></asp:Label>
 <div class="row" style="margin: 4px 0px">
        <p style="font-weight: 600;">结果说明：</p>
        <p style="text-indent: 2em">各领域分按按1~5级评分；总分得分越高提示功能越差。总分划分：</p>
<p style="text-indent: 2em">精神残疾一级 WHO-DAS大于等于116分；</p>
<p style="text-indent: 2em">精神残疾二级 WHO-DAS在106-115分之间；</p>
<p style="text-indent: 2em">精神残疾三级 WHO-DAS在96-105分之间；</p>
<p style="text-indent: 2em">精神残疾四级 WHO-DAS在52-95分之间。</p>
     <p style="text-indent: 2em">精神正常 WHO-DAS小于等于51分。</p>
    </div>

    <div style="margin: 4px -2px">
        <hr />
    </div>

    <div class="row" style="margin: 4px 0px">
        <p style="font-weight: 600;">测试结果：</p>
        <div style="margin: 20px 0px"></div>
        <table class="table table-bordered table-hover">
            <thead>
                <tr>

                    <th style="background: #F0F7FF; width:40%;">功能领域
                    </th>
                    <th style="background: #F0F7FF; width:20%;">分数
                    </th>
                    <th style="background: #F0F7FF; width:20%;">分数范围
                    </th>
                    <th style="background: #F0F7FF; width:20%;">评估水平
                    </th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>领域1、认知
                    </td>
                    <td>
                    <asp:Label ID="RS1" runat="server"></asp:Label> </td>
                     <td>6-30分
                    </td>
                    <td><asp:Label ID="RS1Add" runat="server"></asp:Label></td>
                  
                </tr>
                <tr>
                    <td>领域2、活动
                    </td>
                    <td><asp:Label ID="RS2" runat="server" ></asp:Label> </td>
                     <td>5-25分
                    </td>
                    <td><asp:Label ID="RS2Add" runat="server" ></asp:Label></td>
                  
                </tr>
                <tr>
                    <td>领域3、自我照料 
                    </td> 
                    <td><asp:Label ID="RS3" runat="server" ></asp:Label> </td>
                    <td>4-20分
                    </td>
                    <td><asp:Label ID="RS3Add" runat="server"></asp:Label></td>
                  
                </tr>
                  <tr>
                    <td>领域4、与人相处
                    </td>
                    <td><asp:Label ID="RS4" runat="server" ></asp:Label> </td>
                      <td>5-25分
                    </td>
                    <td><asp:Label ID="RS4Add" runat="server"></asp:Label></td>
                        </tr>
                  <tr>
                    <td>领域5、与生活相关的各项活动
                    </td>
                    <td><asp:Label ID="RS5" runat="server" ></asp:Label> </td>
                      <td>8-40分
                    </td>
                    <td><asp:Label ID="RS5Add" runat="server" ></asp:Label></td>
                  
                </tr>
                 
                  <tr>
                    <td>领域6、社会参与 
                    </td>
                    <td><asp:Label ID="RS6" runat="server" ></asp:Label> </td>
                      <td>8-40分
                    </td>
                    <td><asp:Label ID="RS6Add" runat="server"></asp:Label></td>
                  
                </tr>
                  
                
                  <tr>
                      <td>总分</td>
                    <td><asp:Label ID="RawScore" runat="server" Text="Label"></asp:Label> </td>
                      <td>36-180分
                    </td>
                    <td><asp:Label ID="RawScoreAdd" runat="server" Text="Label"></asp:Label></td>
                  
                </tr>
            </tbody>
        </table>
    </div>




</asp:Content>


