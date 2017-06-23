<%@ Page Title="" Language="C#" MasterPageFile="~/Report.master" AutoEventWireup="true" CodeFile="R17.aspx.cs" Inherits="R17" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="GUID" runat="server"  Visible="false"></asp:Label>
        <div class="row" style="margin: 4px 0px">
        <p style="font-weight: 600;">结果说明：</p>
        <p style="text-indent: 2em">量表按照不同严重程度分为0~4 级评分，总分为全部加权分之和。 各类攻击行为得分越高表明该类攻击性越强，总分越高表明总体攻击性越强。
</p>
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

                    <th style="background: #F0F7FF; width: 141px;"> 量表</th>
                    <th style="background: #F0F7FF; width: 63px;" class="modal-sm">量表分</th>                   
                    <th style="background: #F0F7FF; width: 78px;" class="modal-sm">加权分</th>
                    <th style="background: #F0F7FF; width: 86px;" class="modal-sm">加权分数范围</th>
                    <th style="background: #F0F7FF;">说明</th> 
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td style="width: 141px">言语攻击</td>
                    <td class="modal-sm" style="width: 63px"><asp:Label ID="C1" runat="server" Text="Label"></asp:Label></td>
                    <td class="modal-sm" style="width: 78px"><asp:Label ID="T1" runat="server" Text="Label"></asp:Label></td>
                    <td style="width: 86px">0-4</td>
                    <td rowspan="5">各类攻击行为得分越高表明该类攻击性越强，总分越高表明总体攻击性越强</td>
                  
                </tr>
                <tr>
                    <td style="width: 141px">对财产的攻击</td>
                    <td class="modal-sm" style="width: 63px"><asp:Label ID="C2" runat="server" Text="Label"></asp:Label></td>
                    <td class="modal-sm" style="width: 78px"><asp:Label ID="T2" runat="server" Text="Label"></asp:Label></td>
                    <td style="width: 86px">0-8</td>
                    
                </tr>
                <tr>
                    <td style="width: 141px">自身攻击</td> 
                    <td class="modal-sm" style="width: 63px"><asp:Label ID="C3" runat="server" Text="Label"></asp:Label></td>
                    <td class="modal-sm" style="width: 78px"><asp:Label ID="T3" runat="server" Text="Label"></asp:Label></td>
                    <td style="width: 86px">0-12</td>
                   
                </tr>
                  <tr>
                    <td style="width: 141px">身体攻击</td>
                    <td class="modal-sm" style="width: 63px"><asp:Label ID="C4" runat="server" Text="Label"></asp:Label></td>
                    <td class="modal-sm" style="width: 78px"><asp:Label ID="T4" runat="server" Text="Label"></asp:Label></td>
                    <td style="width: 86px">0-16</td>
                    
                </tr>
                  <tr>
                    <td style="width: 141px">总加权分</td>
                    <td class="modal-sm" colspan="2"><asp:Label ID="RS" runat="server" Text="Label"></asp:Label></td>
                    
                    <td style="width: 86px">0-40</td>
                    
                </tr>
            </tbody>
        </table>
    </div>



</asp:Content>

