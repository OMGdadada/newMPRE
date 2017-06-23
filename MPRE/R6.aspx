<%@ Page Title="" Language="C#" MasterPageFile="~/Report.master" AutoEventWireup="true" CodeFile="R6.aspx.cs" Inherits="R6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <asp:Label ID="GUID" runat="server" Visible="false"></asp:Label>
        <div class="row" style="margin: 4px 0px">
        <p style="font-weight: 600;">结果说明：</p>
        <p style="text-indent: 2em">总分得分范围为0~129分， 得分越高显示功能越好。</p>
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
                    <th style="background: #F0F7FF; width:40%">说明
                    </th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>人际活动
                    </td>
                    <td><asp:Label ID="RS1" runat="server" Text="Label"></asp:Label></td>
                    <td> 0-63分</td>
                    <td rowspan="3">得分越高显示功能越好</td>
                  
                </tr>
                
                <tr>
                    <td>社会认知
                    </td>
                    <td><asp:Label ID="RS2" runat="server" Text="Label"></asp:Label></td>
                    <td> 0-66分</td>
                  
                </tr>
               
                  <tr>
                    <td>总分 
                    </td>
                    <td><asp:Label ID="RawScore" runat="server" Text="Label"></asp:Label> </td>
                    <td> 0-129分</td>
                  
                </tr>
            </tbody>
        </table>
    </div>



</asp:Content>

