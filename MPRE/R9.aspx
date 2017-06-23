<%@ Page Title="" Language="C#" MasterPageFile="~/Report.master" AutoEventWireup="true" CodeFile="R9.aspx.cs" Inherits="R9" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="GUID" runat="server" Visible="false"></asp:Label>
        <div class="row" style="margin: 4px 0px">
        <p style="font-weight: 600;">结果说明：</p>
        <p style="text-indent: 2em">不同条目分别按1~2级、1~3级、1~5级和1~6级评分。八个维度分别计算维度分，维度分=100-（原始分数-最低可能分数/可能分数范围）×100，并综合为生理健康和心理健康两个领域分，得分越高，表示生活质量越高。</p>
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
                     <th style="background: #F0F7FF; width:20%" >功能领域
                    </th>
                    <th style="background: #F0F7FF;">分数
                    </th>
                    <th style="background: #F0F7FF;">维度
                    </th>
                    <th style="background: #F0F7FF;">分数
                    </th>
                   <th style="background: #F0F7FF;">分数范围
                    </th>
                    <th style="background: #F0F7FF;width:30%">说明
                    </th>
                </tr>
            </thead>
            <tbody>
                <tr>
                     <td rowspan="4">生理健康 </td>
                     <td rowspan="4"><asp:Label ID="RS1" runat="server"></asp:Label></td>
                    <td>健康知觉
                    </td>
                    
                    <td><asp:Label ID="PF" runat="server"></asp:Label></td>
                    <td>0-100分</td>
                   <td rowspan="4">得分越高，表示生理健康越好 </td>
                </tr>
                <tr>
                    <td>角色限制
                    </td>
                    <td><asp:Label ID="RP" runat="server"></asp:Label></td>
                    <td> 0-100分</td>
                  
                </tr>
                <tr>
                    <td>机体疼痛 
                    </td> 
                    <td><asp:Label ID="BP" runat="server"></asp:Label></td>
                    <td> 0-100分</td>
                  
                </tr>
                  <tr>
                    <td>总体健康
                    </td>
                    <td><asp:Label ID="GH" runat="server"></asp:Label></td>
                     <td> 0-100分</td>
                  
                </tr>
                  <tr>
                      <td  rowspan="4"> 心理健康</td>
                      <td  rowspan="4"> <asp:Label ID="RS2" runat="server" ></asp:Label></td>
                    <td>活力 
                    </td>
                    <td><asp:Label ID="VT" runat="server"></asp:Label></td>
                     <td> 0-100分</td>
                       <td rowspan="4">得分越高，表示心理健康越好 </td>
                  
                </tr>
                  <tr>
                    <td>社会功能 
                    </td>
                    <td><asp:Label ID="SF" runat="server" ></asp:Label></td>
                     <td> 0-100分</td>
                  
                </tr>
                  <tr>
                    <td>角色限制
                    </td>
                    <td><asp:Label ID="RE" runat="server"></asp:Label></td>
               <td> 0-100分</td>
                  
                </tr>
                  <tr>
                    <td>心理健康 
                    </td>
                    <td><asp:Label ID="MH" runat="server"></asp:Label></td>
                     <td> 0-100分</td>
                  
                </tr>
                  <tr>
                       <td>总分</td>
                    <td colspan="3" > <asp:Label ID="RawScore" runat="server"></asp:Label> </td>
                           <td  > 0-800分</td>
                    <td > 得分越高，表示生活质量越高。</td>
                    
                </tr>
            </tbody>
        </table>
    </div>



</asp:Content>

