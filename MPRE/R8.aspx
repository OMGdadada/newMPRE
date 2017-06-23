<%@ Page Title="" Language="C#" MasterPageFile="~/Report.master" AutoEventWireup="true" CodeFile="R8.aspx.cs" Inherits="R8" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <asp:Label ID="GUID" runat="server" Visible="false"></asp:Label>
        
            <div class="row" style="margin: 4px 0px">
        <p style="font-weight: 600;">结果说明：</p>
        <p style="text-indent: 2em">分别计算体重指数、腰围、糖代谢、脂代谢、心血管和物质滥用的粗分，得分越高显示躯体功能越差。总分转换为0-100分数，即躯体健康指数=100-（原始分数-最低可能分数/可能分数范围）×100。得分越高显示躯体健康状况越好。

        </p>
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
                    <th style="background: #F0F7FF; width:50%">评估水平
                    </th>
                  
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>体重指数
                    </td>
                    <td><asp:Label ID="RS1" runat="server" ></asp:Label></td>
                     <td>0-100分
                    </td>
                  <td><asp:Label ID="HW_ScoreExplain" runat="server" ></asp:Label></td>
                  
                </tr>
                <tr>
                    <td>腰围
                    </td>
                    <td><asp:Label ID="RS2" runat="server" ></asp:Label></td>
                    <td>0-100分
                    </td>
                    <td><asp:Label ID="Waist_ScoreExplain" runat="server" ></asp:Label></td>
                  
                  
                </tr>
                <tr>
                    <td>糖代谢 
                    </td> 
                    <td><asp:Label ID="RS3" runat="server" ></asp:Label></td>
                    <td>0-100分
                    </td>
                   <td><asp:Label ID="BS_ScoreExplain" runat="server" ></asp:Label></td>
                  
                </tr>
               
                  <tr>
                    <td>脂代谢 
                    </td>
                    <td> <asp:Label ID="RS4" runat="server" ></asp:Label></td>
                      <td>0-100分
                    </td>
                      <td><asp:Label ID="BF_ScoreExplain" runat="server" ></asp:Label></td>
                </tr>

                <tr>
                    <td>心血管 
                    </td>
                    <td> <asp:Label ID="RS5" runat="server" ></asp:Label></td>
                    <td>0-100分
                    </td>
                    <td>
                        <p>心电图：<asp:Label ID="QTC" runat="server" ></asp:Label></p>
                        血压：<asp:Label ID="BP_ScoreExplain" runat="server" ></asp:Label>
                    </td>
                </tr>

                
                <tr>
                    <td>物质滥用 
                    </td>
                    <td> <asp:Label ID="RS6" runat="server" ></asp:Label></td>
                    <td>0-100分
                    </td>
                    <td>  
                        <p>吸烟：<asp:Label ID="RS7Add1" runat="server" ></asp:Label></p>
                        喝酒：<asp:Label ID="RS7Add2" runat="server" ></asp:Label>
                    </td>
                </tr>
                
               

            </tbody>
        </table>

   
    </div>



</asp:Content>

