<%@ Page Title="" Language="C#" MasterPageFile="~/Report.master" AutoEventWireup="true" CodeFile="R21.aspx.cs" Inherits="R21" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="GUID" runat="server"  Visible="false"></asp:Label>
        <div class="row" style="margin: 4px 0px">
        <p style="font-weight: 600;">结果说明：</p>
        <p style="text-indent: 2em">每项按0-4五级评分，记录以上各项累加总分，为反映锥体外系反应严重程度指标，得分越高，提示锥体外系副反应越重。  </p>
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
                    <th style="background: #F0F7FF;">说明
                    </th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>步态
                    </td>
                    <td><asp:Label ID="D1" runat="server" Text="Label"></asp:Label></td>
                    <td>0-4分</td>
                    <td rowspan="11">得分越高症状越重</td>
                    
                  
                  
                </tr>
                <tr>
                    <td>落臂
                    </td>
                    <td><asp:Label ID="D2" runat="server" Text="Label"></asp:Label></td>
                    <td>0-4分</td>
                  
                </tr>
                <tr>
                    <td>摇肩 
                    </td> 
                    <td><asp:Label ID="D3" runat="server" Text="Label"></asp:Label></td>
                    <td>0-4分</td>
                </tr>
                  <tr>
                    <td>肘强直 
                    </td>
                    <td><asp:Label ID="D4" runat="server" Text="Label"></asp:Label></td>
                    <td>0-4分</td>
                  
                </tr>
                   <tr>
                    <td>固定姿势或腕强直 
                    </td>
                    <td><asp:Label ID="D5" runat="server" Text="Label"></asp:Label></td>
                    <td>0-4分</td>
                </tr>
                   <tr>
                    <td>腿的摆动 
                    </td>
                    <td><asp:Label ID="D6" runat="server" Text="Label"></asp:Label></td>
                    <td>0-4分</td>
                </tr>
                   <tr>
                    <td>头颈部运动 
                    </td>
                    <td><asp:Label ID="D7" runat="server" Text="Label"></asp:Label></td>
                    <td>0-4分</td>
                </tr>
                   <tr>
                    <td>眉间轻敲 
                    </td>
                    <td><asp:Label ID="D8" runat="server" Text="Label"></asp:Label></td>
                    <td>0-4分</td>
                </tr>
                 <tr>
                    <td>震颤 
                    </td>
                    <td><asp:Label ID="D9" runat="server" Text="Label"></asp:Label></td>
                    <td>0-4分</td>
                </tr>
                 <tr>
                    <td>流涎 
                    </td>
                    <td><asp:Label ID="D10" runat="server" Text="Label"></asp:Label></td>
                    <td>0-4分</td>
                </tr>
             
                  <tr>
                    <td>总分 
                    </td>
                    <td><asp:Label ID="RS" runat="server" Text="Label"></asp:Label></td>
                    <td>0-40分</td>
                </tr>
            </tbody>
        </table>
    </div>



</asp:Content>

