<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="ReportCustomize.aspx.cs" Inherits="NewPage_ReportCustomize" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

      <div class="page-body" style="margin-top: -30px;">
        <div class="row">
            <div class="col-xs-12 col-md-12">
                <div class="widget">
                    <div class="widget-header" style="width: 100%;">
                        <span class="widget-caption" style="width: 80%; text-align: center;">量表名：
                            <asp:Label ID="TextName" runat="server"></asp:Label>
                          
                        </span>

                        <span style=" margin-right:5px;">
                          <asp:Button ID="Question" runat="server" Text="试题"  OnClick="Question_Click"  class="btn btn-default" />
                            <asp:Button ID="Report" runat="server" Text="报告单" OnClick="Report_Click"  class="btn btn-default"/>

                        </span>
                        
                    </div>

                    <div class="widget-body" style="height:500px;" >
                       <div id="page1" style="width:80%; margin-left:10%; border:1px solid red">

                       <div class="row" style="margin:4px -15px">
                        <div class="col-lg-4 col-sm-4 col-xs-4">
                            <asp:DropDownList ID="RC1DDL" runat="server"></asp:DropDownList>
                        </div>
                        <div class="col-lg-4 col-sm-4 col-xs-4" style="padding:0px 15px 0px 60px;">
                            <asp:DropDownList ID="RC2DDL" runat="server" ></asp:DropDownList>
                        </div>
                        <div class="col-lg-4 col-sm-4 col-xs-4" style="padding:0px 15px 0px 90px;">
                            <asp:DropDownList ID="RC3DDL" runat="server" ></asp:DropDownList>
                        </div>
                    </div>

                           <div class="row" style="margin:4px -15px">
                        <div class="col-lg-4 col-sm-4 col-xs-4">
                            <asp:DropDownList ID="RC4DDL" runat="server"></asp:DropDownList>
                        </div>
                        <div class="col-lg-4 col-sm-4 col-xs-4" style="padding:0px 15px 0px 60px;">
                            <asp:DropDownList ID="RC5DDL" runat="server" ></asp:DropDownList>
                        </div>
                        <div class="col-lg-4 col-sm-4 col-xs-4" style="padding:0px 15px 0px 90px;">
                            <asp:DropDownList ID="RC6DDL" runat="server"></asp:DropDownList>
                        </div>
                    </div>
                           <span>+</span>
                       </div>

                        </div>
                    </div>
                </div>
            </div>
          </div>
</asp:Content>

