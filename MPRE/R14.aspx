<%@ Page Language="C#" MasterPageFile="~/Report.master"  AutoEventWireup="true" CodeFile="R14.aspx.cs" Inherits="R14" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="GUID" runat="server"  Visible="false"></asp:Label>
        
    <div class="row" style="margin:4px 0px">
        <p style="font-weight:600;">结果说明：</p>
        <p style="text-indent:2em">均采用0~7级评分。疗效指数=疗效分/副作用分。疗效分和副作用分为1~4级评分。在药理学研究中，疗效指数1.0以上者所研究的药物方有价值。</p>
    </div>

    <div style="margin:4px -2px">
        <hr />
    </div>

    <div class="row" style="margin:4px 0px">
        <p style="font-weight:600;">测试结果：</p>
        <div style="margin:20px 0px"></div>
        <table class="table table-bordered table-hover">
            <thead>
                <tr>
                    <th style="background:#F0F7FF;">
                        功能领域
                    </th>
                    <th style="background:#F0F7FF;">
                        分数
                    </th>
                    <th style="background:#F0F7FF;">
                        分数范围
                    </th>
                    <th style="background:#F0F7FF; width:30%">
                       说明
                    </th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        严重程度评分（CGI-S）
                    </td>
                    <td>
                        <asp:Label ID="CGIS" runat="server" ></asp:Label>
                    </td>
                    <td>
                       1-7分
                    </td>
                    <td>
                        <asp:Label ID="CGIS2" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        总体进步评分（CGI-I）
                    </td>
                    <td>
                        <asp:Label ID="CGII" runat="server"></asp:Label>
                    </td>
                     <td>
                       1-7分
                    </td>
                    <td>
                        <asp:Label ID="CGII2" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        疗效指数 
                    </td>
                    <td>
                        <asp:Label ID="RawScore" runat="server" ></asp:Label>
                    </td>
                    <td>
                       0.25-4分
                    </td>
                    <td>
                        疗效指数1.0以上者所研究的药物方有价值
                    </td>
                </tr>
                   
            </tbody>
        </table>
    </div>
</asp:Content>