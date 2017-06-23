<%@ Page Title="" Language="C#" MasterPageFile="~/Report.master" AutoEventWireup="true" CodeFile="R10.aspx.cs" Inherits="R10" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="GUID" runat="server" Visible="false"></asp:Label>
            <div class="row" style="margin: 4px 0px">
        <p style="font-weight: 600;">结果说明：</p>
        <p style="text-indent: 2em">每个条目从“完全不正确”到“完全正确”按1~4级评分。得分越高，自我效能水平越高。 根据得分指标( 得分指标=量表实际得分/该量表的可能最高得分×100% ) ， 将自我效能分为高、中、低3个水平，其中:</p>
                <p>> 80%为高等水平；60% ~ 80% 为中等水平；< 60% 为低等水平。 </p>
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
                    <td>总分 
                    </td>
                    <td>  <asp:Label ID="RawScore" runat="server"></asp:Label> </td>
                      <td>0-100%
                    </td>
                    <td> <asp:Label ID="Explain" runat="server" Text="Label"></asp:Label>
                        </td>
                  
                </tr>
            </tbody>
        </table>
    </div>



</asp:Content>

