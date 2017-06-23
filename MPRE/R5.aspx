<%@ Page Title="" Language="C#" MasterPageFile="~/Report.master" AutoEventWireup="true" CodeFile="R5.aspx.cs" Inherits="R5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <asp:Label ID="GUID" runat="server"  Visible="false"></asp:Label>
            <div class="row" style="margin: 4px 0px">
        <p style="font-weight: 600;">结果说明：</p>
        <p style="text-indent: 2em">总分得分范围为：39~156分，得分越高显示功能越好。</p>
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
                    <td>交流能力
                    </td>
                    <td>  <asp:Label ID="RS1" runat="server" ></asp:Label> </td>
                     <td> 6-24分</td>
                    <td rowspan="6">得分越高显示功能越好</td>
                  
                </tr>
                <tr>
                    <td>社会接触能力
                    </td>
                    <td>  <asp:Label ID="RS2" runat="server"></asp:Label></td>
                    <td> 6-24分 </td>
                  
                </tr>
                <tr>
                    <td>无扰乱行为
                    </td> 
                    <td>  <asp:Label ID="RS3" runat="server"></asp:Label></td>
                    <td> 12-48分</td>
                  
                </tr>
                  
                   <tr>
                    <td>自我照料
                    </td>
                    <td>  <asp:Label ID="RS4" runat="server"></asp:Label> </td>
                    <td> 10-40分</td>
                  
                </tr>
                   <tr>
                    <td>责任
                    </td>
                    <td>   <asp:Label ID="RS5" runat="server"></asp:Label></td>
                    <td> 5-20分</td>
                  
                </tr>
                  <tr>
                    <td>总分 
                    </td>
                    <td>   <asp:Label ID="RawScore" runat="server" ></asp:Label></td>
                    <td> 39-156分</td>
                  
                </tr>
            </tbody>
        </table>
    </div>



</asp:Content>

