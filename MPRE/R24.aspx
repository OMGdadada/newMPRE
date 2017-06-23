<%@ Page Title="" Language="C#" MasterPageFile="~/Report.master" AutoEventWireup="true" CodeFile="R24.aspx.cs" Inherits="R24" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="GUID" runat="server"  Visible="false"></asp:Label>
        <div class="row" style="margin: 4px 0px">
        <p style="font-weight: 600;">结果说明：</p>
        <p style="text-indent: 2em">前三题每题10分，后14题每题5分，得分范围0-100分，得分越高，提示药物自我管理能力越强。</p>
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

                    <th style="background: #F0F7FF; width: 178px;">测试名称	
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
                    <td>问答题
                    </td>
                    <td><asp:Label ID="RS1" runat="server" Text="Label"></asp:Label></td>
                    <td>0-30分</td>
                    <td rowspan="3">得分越高，药物自我管理能力越强</td>
                  
                </tr>
                <tr>
                    <td>角色扮演
                    </td>
                    <td><asp:Label ID="RS2" runat="server" Text="Label"></asp:Label></td>
                    <td>0-70分</td>
                  
                </tr>
             
                  <tr>
                    <td>总分 
                    </td>
                    <td><asp:Label ID="RS" runat="server" Text="Label"></asp:Label></td>
                    <td>0-100分</td>
                  
                </tr>
            </tbody>
        </table>
    </div>



</asp:Content>

