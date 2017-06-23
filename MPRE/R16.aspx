<%@ Page Title="" Language="C#" MasterPageFile="~/Report.master" AutoEventWireup="true" CodeFile="R16.aspx.cs" Inherits="R16" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="GUID" runat="server"  Visible="false"></asp:Label>
    <div class="row" style="margin: 4px 0px">
        <p style="font-weight: 600;">结果说明：</p>
        <p style="text-indent: 2em">
           按评分手册对每个测验进行评分，获得粗分，然后使用评分软件将粗分转换为以50为均数，10为标准差的T分。T分越高，提示个体认知功能越好。
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

                    <th style="background: #F0F7FF;">认知领域
                    </th>
                    <th style="background: #F0F7FF;">T分
                    </th>
                    <th style="background: #F0F7FF;">子领域
                    </th>
                    <th style="background: #F0F7FF;">粗分
                    </th>
                    <th style="background: #F0F7FF;">T分
                    </th>
                    <th style="background: #F0F7FF;">评估水平
                    </th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td rowspan="3">信息处理速度</td>
                    <td rowspan="3">
                        <asp:Label ID="RS1" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td> 连线测试</td>
                    <td><asp:Label ID="C1" runat="server" Text="Label"></asp:Label></td>
                    <td><asp:Label ID="T1" runat="server" Text="Label"></asp:Label></td>
                    <td rowspan="3">分数越高，信息处理速度越好</td>
                  
                </tr>
                <tr>
                    
                    <td style="height: 37px" >符号编码</td>
                    <td style="height: 37px"><asp:Label ID="C2" runat="server" Text="Label"></asp:Label> </td>
                    <td style="height: 37px"><asp:Label ID="T2" runat="server" Text="Label"></asp:Label></td>
                   
                    
                  
                </tr>
                 <tr>
                    
                    <td>范畴流畅检测 </td>
                    <td><asp:Label ID="C7" runat="server" Text="Label"></asp:Label></td>
                    <td><asp:Label ID="T7" runat="server" Text="Label"></asp:Label></td>
                   
                  
                </tr>

                <tr>
                    <td style="height: 37px">注意/警觉性</td>
                    <td style="height: 37px">
                        <asp:Label ID="RS2" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td style="height: 37px">持续操作测验</td>
                    <td style="height: 37px"><asp:Label ID="C9" runat="server" Text="Label"></asp:Label></td>
                    <td style="height: 37px"><asp:Label ID="T9" runat="server" Text="Label"></asp:Label></td>
                    <td style="height: 37px">分数越高，注意/警觉性越好</td>
                  
                </tr>
                <tr>
                    <td>工作记忆</td>
                    <td>
                        <asp:Label ID="RS3" runat="server" Text="Label"></asp:Label>
                    </td> 
                    <td>空间广度</td>
                    <td><asp:Label ID="C4" runat="server" Text="Label"></asp:Label></td>
                    <td><asp:Label ID="T4" runat="server" Text="Label"></asp:Label></td>
                    <td>分数越高，工作记忆能力越好</td>
                  
                </tr>
                 
                    <tr>
                    <td>语言学习</td> 
                    <td>
                        <asp:Label ID="RS4" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>霍普金斯词语学习测验</td>
                    <td><asp:Label ID="C3" runat="server" Text="Label"></asp:Label></td>
                    <td><asp:Label ID="T3" runat="server" Text="Label"></asp:Label></td>
                    <td>分数越高，语言学习能力越好</td>
                  
                </tr>
                 <tr>
                    <td style="height: 37px">视觉学习</td> 
                    <td style="height: 37px">
                        <asp:Label ID="RS5" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td style="height: 37px">简易视觉空间记忆测验</td>
                    <td style="height: 37px"><asp:Label ID="C6" runat="server" Text="Label"></asp:Label></td>
                    <td style="height: 37px"><asp:Label ID="T6" runat="server" Text="Label"></asp:Label></td>
                    <td style="height: 37px">分数越高，视觉学习能力越好</td>                  
                </tr>
                    <tr>
                    <td>推理和问题解决</td>
                    <td>
                        <asp:Label ID="RS6" runat="server" Text="Label"></asp:Label>
                    </td> 
                    <td>神经心理评估成套测验：迷宫</td>
                    <td><asp:Label ID="C5" runat="server" Text="Label"></asp:Label></td>
                    <td><asp:Label ID="T5" runat="server" Text="Label"></asp:Label></td>
                    <td>分数越高，推理和问题解决能力越好</td>
                  
                </tr>
                 <tr>
                    <td>社会认知</td>
                    <td>
                        <asp:Label ID="RS7" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>情绪智商测验</td>
                    <td><asp:Label ID="C8" runat="server" Text="Label"></asp:Label></td>
                    <td><asp:Label ID="T8" runat="server" Text="Label"></asp:Label></td>
                    <td>分数越高，社会认知能力越好</td>
                  
                </tr>
                <tr>
                    <td>总分</td>
                    <td>
                        <asp:Label ID="RawScore" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td colspan="4">分数越高，个体认知功能越好</td>
                    
                  
                </tr>
            </tbody>
        </table>
    </div>



</asp:Content>

