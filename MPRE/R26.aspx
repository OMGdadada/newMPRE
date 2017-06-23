<%@ Page Title="" Language="C#" MasterPageFile="~/Report.master" AutoEventWireup="true" CodeFile="R26.aspx.cs" Inherits="R26" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="GUID" runat="server"  Visible="false"></asp:Label>
        <div class="row" style="margin: 4px 0px">
        <p style="font-weight: 600;">结果说明：</p>
        <p style="text-indent: 2em">每项按1-4级评分，记录以上各项累加总分，得分越低，功能越好。</p>
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

                    <th style="background: #F0F7FF; width: 178px;">类别	
                    </th>
                    <th style="background: #F0F7FF; width: 231px;">分数
                    </th> 
                    <th style="background: #F0F7FF; width: 179px;">分数范围
                    </th>                  
                    <th style="background: #F0F7FF;">临床意义
                    </th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td> 问题解决
                    </td>
                    <td><asp:Label ID="RS1" runat="server" Text="Label"></asp:Label></td>
                    <td>6-24分</td>
                    <td rowspan="8">得分越低，功能越好</td>
                  
                </tr>
                <tr>
                    <td>沟通
                    </td>
                    <td><asp:Label ID="RS2" runat="server" Text="Label"></asp:Label></td>
                    <td>9-36分</td>
                  
                </tr>
                <tr>
                    <td>角色 
                    </td> 
                    <td><asp:Label ID="RS3" runat="server" Text="Label"></asp:Label></td>
                    <td>11-44分</td>
                  
                </tr>
                  <tr>
                    <td>情感反应 
                    </td>
                    <td><asp:Label ID="RS4" runat="server" Text="Label"></asp:Label></td>
                    <td>6-24分</td>
                  
                </tr>
                  <tr>
                    <td>情感介入 
                    </td>
                    <td><asp:Label ID="RS5" runat="server" Text="Label"></asp:Label></td>
                    <td>7-28分</td>
                  
                </tr>
                 <tr>
                    <td style="height: 37px">行为控制 
                    </td>
                    <td style="height: 37px"><asp:Label ID="RS6" runat="server" Text="Label"></asp:Label></td>
                    <td style="height: 37px">9-36分</td>
                  
                </tr>
                 <tr>
                    <td>总的功能 
                    </td>
                    <td><asp:Label ID="RS7" runat="server" Text="Label"></asp:Label></td>
                    <td>12-48分</td>
                  
                </tr>
                <tr>
                    <td>总分
                    </td>
                    <td><asp:Label ID="RS" runat="server" Text="Label"></asp:Label></td>
                    <td>60-240分</td>
                  
                </tr>
            </tbody>
        </table>
    </div>



</asp:Content>

