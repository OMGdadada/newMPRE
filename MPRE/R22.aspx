<%@ Page Title="" Language="C#" MasterPageFile="~/Report.master" AutoEventWireup="true" CodeFile="R22.aspx.cs" Inherits="R22" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="GUID" runat="server"  Visible="false"></asp:Label>
    <div class="row" style="margin: 4px 0px">
        <p style="font-weight: 600;">结果说明：</p>
        <p style="text-indent: 2em">得分范围0-4分。根据得分将依从性分为三个等级：“差”（3-4分）；“中等”（1-2分）；或“良好”（0分）。得分越高依从性越差。</p>
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
                    <td>总分 
                    </td>
                    <td><asp:Label ID="RS" runat="server" Text="Label"></asp:Label></td>
                      <td>0-4分</td>
                    <td><asp:Label ID="RSS" runat="server" Text="Label"></asp:Label></td>
            
                  
                </tr>
            </tbody>
        </table>
    </div>



</asp:Content>

