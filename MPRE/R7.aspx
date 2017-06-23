<%@ Page Title="" Language="C#" MasterPageFile="~/Report.master" AutoEventWireup="true" CodeFile="R7.aspx.cs" Inherits="R7" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="GUID" runat="server" Visible="false"></asp:Label>
        <div class="row" style="margin: 4px 0px">
        <p style="font-weight: 600;">结果说明：</p>
        <p style="text-indent: 2em">借鉴TABS的计分方式，即各领域分为：（原始分÷该领域满分）×100，分值范围为0-100分；工具总分为三个亚领域分的均值，分值范围为0-100分。得分越高越好。</p>
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

                    <th style="background: #F0F7FF;"> 功能领域
                    </th>
                    <th style="background: #F0F7FF;">分数
                    </th>
                      <th style="background: #F0F7FF;">分数范围
                    </th>
                    <th style="background: #F0F7FF; width:30%" >说明
                    </th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>交通
                    </td>
                    <td><asp:Label ID="RS1" runat="server" ></asp:Label></td>
                    <td>0-100分</td>
                    <td rowspan="4">得分越高越好</td>
                  
                </tr>
                <tr>
                    <td>理财
                    </td>
                    <td><asp:Label ID="RS2" runat="server" ></asp:Label></td>
                     <td>0-100分</td>
                  
                  
                </tr>
                <tr>
                    <td>工作 
                    </td> 
                    <td><asp:Label ID="RS3" runat="server" ></asp:Label></td>
                     <td>0-100分</td>
                   
                  
                </tr>
               
                  <tr>
                    <td>总分 
                    </td>
                    <td> <asp:Label ID="RawScore" runat="server" ></asp:Label></td>
                       <td>0-100分</td>
                   
                  
                </tr>
            </tbody>
        </table>
    </div>



</asp:Content>

