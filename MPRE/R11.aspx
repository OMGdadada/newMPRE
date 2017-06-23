<%@ Page Title="" Language="C#" MasterPageFile="~/Report.master" AutoEventWireup="true" CodeFile="R11.aspx.cs" Inherits="R11" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:Label ID="GUID" runat="server"  Visible="false"></asp:Label>
            <div class="row" style="margin: 4px 0px">
        <p style="font-weight: 600;">结果说明：</p>
        <p style="text-indent: 2em"> 每个条目从“非常不同意”到“非常同意”按1~4级评分。得分越高，表示耻感越重。</p>
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

                    <th style="background: #F0F7FF;">功能领域
                    </th>
                    <th style="background: #F0F7FF;">分数
                    </th>
                     <th style="background: #F0F7FF;">分数范围
                    </th>
                    <th style="background: #F0F7FF; width:30%">说明
                    </th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>价值否定/疏离感
                    </td>
                    <td> <asp:Label ID="RS1" runat="server" ></asp:Label> </td>
                    <td>6-24分</td>
                  <td rowspan="5">得分越高，表示耻感越重。</td>
                </tr>
                <tr>
                    <td>社交退缩
                    </td>
                    <td> <asp:Label ID="RS2" runat="server"></asp:Label></td>
                    <td>7-28分 </td>
                  
                </tr>
                <tr>
                    <td>刻板印象认同 
                    </td> 
                    <td> <asp:Label ID="RS3" runat="server"> </asp:Label></td>
                    <td> 5-20分</td>
                  
                </tr>
                  <tr>
                    <td>歧视体验 
                    </td>
                    <td> <asp:Label ID="RS4" runat="server"></asp:Label></td>
                    <td>6-24分</td>
                  
                </tr>
                  <tr>
                    <td>总分 
                    </td>
                    <td> <asp:Label ID="RawScore" runat="server"></asp:Label> </td>
                    <td>24-96分</td>
                  
                </tr>
            </tbody>
        </table>
    </div>



</asp:Content>

