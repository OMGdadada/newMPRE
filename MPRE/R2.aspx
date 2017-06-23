<%@ Page Title="" Language="C#" MasterPageFile="~/Report.master" AutoEventWireup="true" CodeFile="R2.aspx.cs" Inherits="R2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <asp:Label ID="GUID" runat="server"  Visible="false"></asp:Label>
        <div class="row" style="margin: 4px 0px">
        <p style="font-weight: 600;">结果说明：</p>
            <p style="text-indent: 2em">总分按1-100分十个等级，得分越低，功能越差。总严重程度分三级:</p>
            <p  style="text-indent: 2em">71-100分：表示仅有轻度困难；</p>
            <p  style="text-indent: 2em">31-70分：表示有不同程度的残疾；</p>
            <p  style="text-indent: 2em">0-30分：表示功能极差，病人需要加强支持或密切监护。</p>
          
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

                    <th style="background: #F0F7FF; width:20%">功能领域
                    </th>
                    <th style="background: #F0F7FF;width:20%">分数
                    </th>
                    <th style="background: #F0F7FF;width:20%">分数范围
                    </th>
                    <th style="background: #F0F7FF;">评估水平
                    </th>
                </tr>
                
            </thead>
            <tbody>
                <tr>
                    <td>对社会有益的活动
                    </td>
                    <td><asp:Label ID="RS2" runat="server" ></asp:Label> </td>
                       <td>1-6分 </td>
                    <td><asp:Label ID="RS2Add" runat="server" ></asp:Label></td>
                  
                </tr>
                <tr>
                    <td>个人与社会的关系
                    </td>
                    <td><asp:Label ID="RS3" runat="server"></asp:Label></td>
                      <td>1-6分 </td>
                    <td><asp:Label ID="RS3Add" runat="server" ></asp:Label></td>
                  
                </tr>
                <tr>
                    <td>自我照料 
                    </td> 
                    <td><asp:Label ID="RS1" runat="server" ></asp:Label></td>
                     <td>1-6分 </td>
                    <td> <asp:Label ID="RS1Add" runat="server"></asp:Label></td>
                  
                </tr>
                  <tr>
                    <td>扰乱及攻击行为 
                    </td>
                    <td><asp:Label ID="RS4" runat="server" ></asp:Label></td>
                       <td>1-6分 </td>
                    <td><asp:Label ID="RS4Add" runat="server" ></asp:Label></td>
                  
                </tr>
                  <tr>
                    <td>总分 
                    </td>
                    <td> <asp:Label ID="RawScore" runat="server"></asp:Label></td>
                       <td>0-100分 </td>
                    <td><asp:Label ID="RawScoreAdd" runat="server" ></asp:Label></td>
                  
                </tr>
            </tbody>
        </table>
    </div>




</asp:Content>

