<%@ Page Title="" Language="C#" MasterPageFile="~/Report.master" AutoEventWireup="true" CodeFile="R27.aspx.cs" Inherits="R27" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="GUID" runat="server" Visible="false"></asp:Label>
        <div class="row" style="margin: 4px 0px">
        <p style="font-weight: 600;">结果说明：</p>
        <p style="text-indent: 2em">每项按0/2或0、1、2评分，粗分范围0-20，总分按粗分/20*100计算，分数越高，则婚姻状况越好。</p>
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

                    <th style="background: #F0F7FF; width: 178px;">评估领域	
                    </th>
                    <th style="background: #F0F7FF; width: 231px;">分数
                    </th> 
                    <th style="background: #F0F7FF; width: 179px;">分数范围
                    </th>                  
                    <th style="background: #F0F7FF;">评估水平
                    </th>
                </tr>
            </thead>
            <tbody>
               
                  <tr>
                    <td><asp:Label ID="D11" runat="server" Text="Label"></asp:Label> 
                    </td>
                    <td><asp:Label ID="RS" runat="server" Text="Label"></asp:Label></td>
                    <td>0-100分</td>
                    <td>分数越高，则婚姻状况越好</td>
                  
                </tr>
            </tbody>
        </table>
    </div>



</asp:Content>

