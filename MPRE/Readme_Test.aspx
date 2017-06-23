<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Readme_Test.aspx.cs" Inherits="Readme_Test" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div id="CurrentPosition">当前位置：<a href="#">帮助说明</a>>><a href="#">量表测试说明</a> </div>
        <div class="page-body">
            <div class="row">
                <div class="widget">
<div class="col-lg-12 col-sm-12 col-xs-12">
                            <div class="well with-header with-footer">
                                <div class="header bordered-purple">【<asp:Label ID="Label0" runat="server" Text="T1覅的 好哦是"></asp:Label>】测试说明</div>
                                <div class="row" style="padding:5px">
                                  <%-- 11111 --%>
                                    
                               <h5>1.介绍说明:</h5>
                                    
                                      <p><asp:Label ID="Label1" runat="server"></asp:Label></p>
                                <hr />

                                        <h5>2.操作性说明：</h5>
                                    
                                      <p><asp:Label ID="Label2" runat="server"></asp:Label></p>

                                <hr />
                                    <h5>3.分数说明：</h5>
                                    
                                      <p><asp:Label ID="Label3" runat="server"></asp:Label></p>

                                <hr />
                               <%-- 111 --%>
                                </div>
                            
                            </div>
                        </div>
                            </div>
                </div>
            </div>
        
</asp:Content>

