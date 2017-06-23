<%@ Page Title="" Language="C#" MasterPageFile="~/Report.master" AutoEventWireup="true" CodeFile="R13.aspx.cs" Inherits="R13" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
          <asp:Label ID="GUID" runat="server"  Visible="false"></asp:Label>
        <div class="row" style="margin: 4px 0px">
        <p style="font-weight: 600;">结果说明：</p>
        <p style="text-indent: 2em"> 中文人生意义问卷（C-MLQ）采用Likert-7记分形式，1=完全不同意，2=基本不同，3=有点不同意，4=不确定，5=有点同意，6=基本同意，7=完全同意。</p><p>1，4，5，6，9题测量意义体验；</p><p>2，3，7，8，10题测量意义追寻。</p><p>得分越高，说明个体在该特质上的个体越有人生意义。</p>
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

                    <th style="background: #F0F7FF;">功能领域
                    </th>
                    <th style="background: #F0F7FF;">量表分
                    </th>
                    <th style="background: #F0F7FF;">分数范围
                    </th>
                    <th style="background: #F0F7FF; width:30%">说明
                    </th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td> 人生意义体验
                    </td>
                    <td>      <asp:Label ID="RS1" runat="server" ></asp:Label> </td>
                    <td>5-35分 </td>
                    <td rowspan="3" >得分越高，表示个体越有人生意义</td>
                  
                </tr>
                <tr>
                    <td>人生意义寻求
                    </td>
                    <td>      <asp:Label ID="RS2" runat="server"></asp:Label></td>
                     <td>5-35分 </td>
               
                  
                </tr>
              
                 
                  <tr>
                    <td>总分 
                    </td>
                    <td>      <asp:Label ID="RawScore" runat="server" ></asp:Label> </td>
                         <td>10-70分 </td>
                      
                 
                  
                </tr>
            </tbody>
        </table>
    </div>



</asp:Content>

