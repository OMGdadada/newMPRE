﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Report.master" AutoEventWireup="true" CodeFile="R18.aspx.cs" Inherits="R18" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="GUID" runat="server" Visible="false"></asp:Label>
        <div class="row" style="margin: 4px 0px">
        <p style="font-weight: 600;">结果说明：</p>
        <p style="text-indent: 2em">总分小于5分为低自杀风险、6~8分为中度自杀风险、9~11分为高度自杀风险、大于12分为极高自杀风险。</p>
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
                    <td style="width: 178px">总分 
                    </td>
                      
                    <td style="width: 231px"><asp:Label ID="RawScore" runat="server" Text="Label"></asp:Label></td>
                    <td style="width: 179px">0-25分</td>
                      <td><asp:Label ID="RS_S" runat="server" Text="Label"></asp:Label></td>
                  
                </tr>
            </tbody>
        </table>
    </div>



</asp:Content>

