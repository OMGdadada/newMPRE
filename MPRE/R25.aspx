<%@ Page Title="" Language="C#" MasterPageFile="~/Report.master" AutoEventWireup="true" CodeFile="R25.aspx.cs" Inherits="R25" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="GUID" runat="server"  Visible="false"></asp:Label>
        <div class="row" style="margin: 4px 0px">
        <p style="font-weight: 600;">结果说明：</p>
        <p style="text-indent: 2em">总分为三个维度分总和，得分越高，说明被试的社会支持程度越好。</p>
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
                   
                    <th style="background: #F0F7FF; width: 179px;">得分范围
                    </th>
                    <th style="background: #F0F7FF;">临床意义
                    </th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>客观支持
                    </td>
                    <td><asp:Label ID="RS1" runat="server" Text="Label"></asp:Label></td>
                    <td>1-20分</td>
                  <td rowspan="4">得分越高，说明被试的社会支持程度越好。</td>
                </tr>
                <tr>
                    <td>主观支持
                    </td>
                    <td><asp:Label ID="RS2" runat="server" Text="Label"></asp:Label></td>
                    <td>8-32分</td>
                  
                </tr>
                <tr>
                    <td>对支持的利用度 
                    </td> 
                    <td><asp:Label ID="RS3" runat="server" Text="Label"></asp:Label></td>
                    <td>3-12分</td>
                  
                </tr>
                  <tr>
                    <td>总分 
                    </td>
                    <td><asp:Label ID="RS" runat="server" Text="Label"></asp:Label></td>
                    <td>12-64分</td>
                  
                </tr>
                
            </tbody>
        </table>
    </div>



</asp:Content>

