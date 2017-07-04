<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Question_Add.aspx.cs" Inherits="NewPage_Question_Add" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="page-body">
                <div class="row">
                    <div class="col-xs-12 col-md-12">
                        <div class="widget">
                            <div class="widget-header" style="width:100%;" >
                                <span class="widget-caption" style="width:100%;text-align:center" >
                                    <asp:Label ID="Label1" runat="server" ></asp:Label>
                                </span>
                            </div>

                            <div class="widget-body">
                                <div id="Man_Nav" style="margin-left:2%;">
                                     <div class="row">
                                      <asp:Repeater ID="Repeater1" runat="server">
                                          <HeaderTemplate>
                                              <div  style=" width:100%;">
                                              <div class="Div1" style=" width: 5%;">
                                                      <p>序号</p>
                                                  </div>
                                                  <div class="Div1" style=" width: 60%;">
                                                      <p>题目</p>

                                                  </div>
                                                  <div  class="Div1"  style="width: 10%; " >
                                                      <p>题型</p>
                                                  </div>
                                                  <div   class="Div1"  style=" width: 10%; " >
                                                      <p>权重</p>
                                                  </div>
                                                   <div   class="Div1"  style=" width: 10%; " >
                                                      <p>高级设置</p>
                                                  </div>

                                              </div>
                                          </HeaderTemplate>

                                          <ItemTemplate>
                                                  <div class="Div2" style="clear:both; width: 5%;">
                                                      <p><%# Container.ItemIndex + 1%> </p>
                                                  </div>
                                                  <div class="Div2"  style=" width: 60%;">
                                                      <p style="overflow:hidden;text-overflow:ellipsis;display:-webkit-box;-webkit-line-clamp:1;-webkit-box-orient:vertical; text-align:left; color:#22aff7;"><%# Eval("QuestionText") %></p>

                                                  </div>
                                                  <div class="Div2"  style=" width: 10%;" >
                                                      <p><%# Eval("Type") %></p>
                                                  </div>
                                                  <div class="Div2"  style=" width: 10%;" >
                                                      <p><%# Eval("Weight") %></p>
                                                  </div>
                                                <div class="Div2"  style=" width: 10%;" >
                                                      <p> <asp:Button ID="Button1" runat="server" Text=">>" ControlStyle-CssClass="btn btn-danger" style="height:25px;line-height:0px;" /></p>
                                                    
                                                  </div>
                                                   
                                              <!-- /Event -->
                                          </ItemTemplate>
                                      </asp:Repeater>
                          
                                         </div>
                                   </div>
                                </div>



                            </div>
                        </div>
                    </div>
         </div>
    <style type="text/css">
        .Div1 {
            float: left;
            height:30px;
            background-color:#2dc3e8;
        }
        .Div1 p {
            height:30px;
            line-height:30px;
            color:white;
            font-weight:bolder;
            text-align:center;
            }

         .Div2 {
            float: left;
            height:30px;
       
        }
         .Div2 p {
            height:30px;
            line-height:30px;   
            text-align:center;
            }
    </style>
</asp:Content>

