<%@ Page Title="" Language="C#" MasterPageFile="~/Report.master" AutoEventWireup="true" CodeFile="R15.aspx.cs" Inherits="R15" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <asp:Label ID="GUID" runat="server" Visible="false"></asp:Label>
        <div class="row" style="margin: 4px 0px">
        <p style="font-weight: 600;">结果说明：</p>
        <p style="text-indent: 2em"> 按1-7级评分。总分越高，反映病情越严重。
                    </p>
    </div>

    <div style="margin: 4px -2px">
        <hr />
    </div>

    <div class="row" style="margin: 4px 0px">
         <p style="font-weight: 600;">测试结果一：</p>
        <div style="margin: 20px 0px"></div>
        <table class="table table-bordered table-hover">
            <thead>
                <tr>

                    <th style="background: #F0F7FF; width:30%">评估领域
                    </th>
                    <th style="background: #F0F7FF; width:20%">量表分
                    </th>
                   <th style="background: #F0F7FF; width:20%">分数范围
                    </th>
                    <th style="background: #F0F7FF;width:30%">说明
                    </th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>阳性分量表分
                    </td>
                    <td> 
                    <asp:Label ID="PScore" runat="server" ></asp:Label></td>
                    <td>7-49分</td>
                   <td rowspan="5">得分越高，反映病情越严重</td>
                  
                </tr>
                <tr>
                    <td>阴性分量表分
                    </td>
                    <td>    <asp:Label ID="NScore" runat="server"></asp:Label></td>
                    <td>7-49分</td>
                
                  
                </tr>
                <tr>
                    <td>一般精神病理学分量表分
                    </td> 
                    <td>    <asp:Label ID="GScore" runat="server"> </asp:Label></td>
                    <td>16-112分</td>
                   
                  
                </tr>
                  <tr>
                    <td>本次PANSS量表总分 
                    </td>
                    <td>    <asp:Label ID="RawScore1" runat="server" ></asp:Label></td>
                        <td>30-210分</td>
                    
                  
                </tr>
                  <tr>
                    <td> 减分率
                    </td>
                    <td>     <asp:Label ID="RRate" runat="server" ></asp:Label></td>
                       <td> 0-100%
                    </td>
               
                  
                </tr>
                
            </tbody>
        </table>
        <br />
        <p style="font-weight: 600;">测试结果二：</p>
        <div style="margin: 20px 0px"></div>
        <table class="table table-bordered table-hover">
            <thead>
                <tr>

                    <th style="background: #F0F7FF; width:30%">评估领域
                    </th>
                    <th style="background: #F0F7FF; width:20%">量表分
                    </th>
                   <th style="background: #F0F7FF; width:20%">分数范围
                    </th>
                    <th style="background: #F0F7FF; width:30%">说明
                    </th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>阳性症状
                    </td>
                    <td>     <asp:Label ID="RS1" runat="server"></asp:Label></td>
                    <td>4-28分</td>
                    <td rowspan="6">得分越高，反映病情越严重</td>
                  
                </tr>
                <tr>
                    <td>阴性症状
                    </td>
                    <td>    <asp:Label ID="RS2" runat="server"></asp:Label></td>
                     <td>6-42分</td>
                  
                  
                </tr>
                <tr>
                    <td>认知症状 
                    </td> 
                    <td>    <asp:Label ID="RS3" runat="server" ></asp:Label></td>
                     <td>3-21分</td>
                   
                  
                </tr>
                  <tr>
                    <td>情感症状 
                    </td>
                    <td>    <asp:Label ID="RS4" runat="server"></asp:Label></td>
                       <td>3-21分</td>
                 
                  
                </tr>
                  <tr>
                    <td>兴奋症状 
                    </td>
                    <td>    <asp:Label ID="RS5" runat="server" ></asp:Label> </td>
                       <td>4-28分</td>
                  
                  
                </tr>
                  <tr>
                    <td>总分 
                    </td>
                    <td>    <asp:Label ID="RawScore2" runat="server"></asp:Label> </td>
                       <td>20-140分</td>
                
                </tr>
            </tbody>
        </table>
    </div>



</asp:Content>

