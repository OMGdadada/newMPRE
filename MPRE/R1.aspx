<%@ Page Title="" Language="C#" MasterPageFile="~/Report.master" AutoEventWireup="true" CodeFile="R1.aspx.cs" Inherits="R1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

<asp:Label ID="GUID" runat="server" Visible="false"></asp:Label>



    <div class="row" style="margin: 4px 0px">
        <p style="font-weight: 600;">结果说明：</p>
        <p style="text-indent: 2em">  按1-100评分，分数越低，功能越差；0=资料不足。</p>
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

                    <th style="background: #F0F7FF; width:20%"  >大体功能
                    </th>
                    <th style="background: #F0F7FF; width:20%">分数
                    </th>
                   <th style="background: #F0F7FF; width:20%">得分范围
                    </th>
                    <th style="background: #F0F7FF; width:40%" >说明
                    </th>
                </tr>
            </thead>
            <tbody>
                
                <tr>
                    <td>总分 
                    </td>
                   
                    <td> <asp:Label ID="Score" runat="server" ></asp:Label>
                    </td>
                    <td>1-100分
                    </td>
                    <td>
                        分数越低，功能越差
                    </td>
                  
                </tr>
            </tbody>
        </table>
    </div>






</asp:Content>

