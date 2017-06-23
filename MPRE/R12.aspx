<%@ Page Title="" Language="C#" MasterPageFile="~/Report.master" AutoEventWireup="true" CodeFile="R12.aspx.cs" Inherits="R12" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <asp:Label ID="GUID" runat="server" Visible="false"></asp:Label>
        <div class="row" style="margin: 4px 0px">
        <p style="font-weight: 600;">结果说明：</p>
        <p style="text-indent: 2em"> 共9个条目，按0-2三级评分。0代表不同意；1代表同意；2代表非常同意。得分范围0-18分，得分越高，表示对自身康复和未来的希望越大”。 </p>
         
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
                    <th style="background: #F0F7FF;">分数
                    </th>
                     <th style="background: #F0F7FF;">分数范围
                    </th>
                   
                    <th style="background: #F0F7FF; width:40%">说明
                    </th>
                </tr>
            </thead>
            <tbody>
                
               
                 
                  <tr>
                    <td>总分 
                    </td>
                    <td>   <asp:Label ID="RawScore" runat="server" ></asp:Label></td>
                       <td>0-18分 
                    </td>
                    <td>得分越高，表示对自身康复和未来的希望越大</td>
                  
                </tr>
            </tbody>
        </table>
    </div>



</asp:Content>

