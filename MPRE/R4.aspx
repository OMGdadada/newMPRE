<%@ Page Title="" Language="C#" MasterPageFile="~/Report.master" AutoEventWireup="true" CodeFile="R4.aspx.cs" Inherits="R4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <asp:Label ID="GUID" runat="server" Visible="false"></asp:Label>
            <div class="row" style="margin: 4px 0px">
        <p style="font-weight: 600;">结果说明：</p>
        <p style="text-indent: 2em"> 以百分比制评分，百分比越高提示影响程度越大。</p>
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

                    <th style="background: #F0F7FF;">类别
                    </th>
                    <th style="background: #F0F7FF;">分数
                    </th>
                    <th style="background: #F0F7FF;">分数范围
                    </th>
                    <th style="background: #F0F7FF; width:30%">说明
                    </th>
                </tr>
            </thead>
            
            <tbody>
                <tr>
                    <td>疾病对工作或学习效率的影响程度
                    </td>
                    <td><asp:Label ID="RS1" runat="server" ></asp:Label> </td>
                    <td>1-100%</td>
                    <td rowspan="3">百分比越高提示影响程度越大</td>
                  
                </tr>
                <tr>
                    <td>疾病对日常活动能力的影响程度
                    </td>
                    <td><asp:Label ID="RS2" runat="server" ></asp:Label></td>
                        <td>1-100%</td>
                    
                  
                </tr>
                <tr>
                    <td>因病误工时间
                    </td> 
                    <td><asp:Label ID="RawScore" runat="server" ></asp:Label></td>
                        <td>1-100%</td>
                    
                  
                </tr>
                 
              
            </tbody>
        </table>
    </div>



</asp:Content>

