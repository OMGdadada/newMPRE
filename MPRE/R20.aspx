<%@ Page Title="" Language="C#" MasterPageFile="~/Report.master" AutoEventWireup="true" CodeFile="R20.aspx.cs" Inherits="R20" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="GUID" runat="server" Visible="false"></asp:Label>
            <div class="row" style="margin: 4px 0px">
        <p style="font-weight: 600;">结果说明：</p>
        <p style="text-indent: 2em">对于严重度，按0-4级评分，得分越高，提示药物所致不良反应越严重；对于处理，按0-6级评分。各级评分代表的意义如下：0无，1加强观察，2给拮抗药，3减量，4减量加拮抗药，5暂停治疗，6终止治疗；对于与用药的关系，按0-4级评分。各级评分代表的意义如下：0无关，1 基本无关，2 可能有关，3 很可能有关，4肯定有关。</p>
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

                    <th style="background: #F0F7FF;">分类</th>
                    <th colspan="3" style="background: #F0F7FF;">项目</th>
                    <th style="background: #F0F7FF;">严重度</th>                   
                    <th style="background: #F0F7FF;">处理</th>
                    <th style="background: #F0F7FF;">用药关系</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                <th rowspan="7">
                            <br />
                            行<br />
                            为<br />
                            毒<br />
                            性</th>
                        <th colspan="3"><span>中毒性意识模糊</span></th>
                        <th>
                            <asp:Label ID="severity1" runat="server" Text="Label"></asp:Label>                            
                        </th>
                        <th>
                            <asp:Label ID="manage1" runat="server" Text="Label"></asp:Label>                            
                        </th>
                        <th>
                            <asp:Label ID="relation1" runat="server" Text="Label"></asp:Label>                              
                        </th>
                        
                        
                    </tr>


                    <tr>                        
                        <th colspan="3"><span>兴奋或激越</span></th>                      
                       <th>
                            <asp:Label ID="severity2" runat="server" Text="Label"></asp:Label>                            
                        </th>
                        <th>
                            <asp:Label ID="manage2" runat="server" Text="Label"></asp:Label>                            
                        </th>
                        <th>
                            <asp:Label ID="relation2" runat="server" Text="Label"></asp:Label>                              
                        </th>
                        

                    </tr>


                    <tr>
                        
                        <th colspan="3"><span>情感忧郁</span></th>
                        <th>
                            <asp:Label ID="severity3" runat="server" Text="Label"></asp:Label>                            
                        </th>
                        <th>
                            <asp:Label ID="manage3" runat="server" Text="Label"></asp:Label>                            
                        </th>
                        <th>
                            <asp:Label ID="relation3" runat="server" Text="Label"></asp:Label>                              
                        </th>
                        
                    </tr>
                    <tr>                        
                        <th colspan="3"><span>活动增加</span></th>
                        <th>
                            <asp:Label ID="severity4" runat="server" Text="Label"></asp:Label>                            
                        </th>
                        <th>
                            <asp:Label ID="manage4" runat="server" Text="Label"></asp:Label>                            
                        </th>
                        <th>
                            <asp:Label ID="relation4" runat="server" Text="Label"></asp:Label>                              
                        </th>
                        
                        
                    </tr>
                    <tr>                        
                        <th colspan="3"><span>活动减退</span></th>
                        <th>
                            <asp:Label ID="severity5" runat="server" Text="Label"></asp:Label>                            
                        </th>
                        <th>
                            <asp:Label ID="manage5" runat="server" Text="Label"></asp:Label>                            
                        </th>
                        <th>
                            <asp:Label ID="relation5" runat="server" Text="Label"></asp:Label>                              
                        </th>
                    </tr>
                    <tr>
                        
                        <th colspan="3"><span>失眠</span></th>
                        <th>
                            <asp:Label ID="severity6" runat="server" Text="Label"></asp:Label>                            
                        </th>
                        <th>
                            <asp:Label ID="manage6" runat="server" Text="Label"></asp:Label>                            
                        </th>
                        <th>
                            <asp:Label ID="relation6" runat="server" Text="Label"></asp:Label>                              
                        </th>
                        
                        
                    </tr>
                    <tr>
                        
                        <th colspan="3"><span>嗜睡</span></th>
                        <th>
                            <asp:Label ID="severity7" runat="server" Text="Label"></asp:Label>                            
                        </th>
                        <th>
                            <asp:Label ID="manage7" runat="server" Text="Label"></asp:Label>                            
                        </th>
                        <th>
                            <asp:Label ID="relation7" runat="server" Text="Label"></asp:Label>                              
                        </th>
                        
                    </tr>

                    <tr>
                        <th rowspan="3"><span>
                            实<br />
                            验<br />
                            室<br />
                            异<br />
                            常</span></th>
                        <th colspan="3"><span>血象异常</span></th>
                        
                        <th>
                            <asp:Label ID="severity8" runat="server" Text="Label"></asp:Label>                            
                        </th>
                        <th>
                            <asp:Label ID="manage8" runat="server" Text="Label"></asp:Label>                            
                        </th>
                        <th>
                            <asp:Label ID="relation8" runat="server" Text="Label"></asp:Label>                              
                        </th>
                        
                    </tr>

                    <tr>
                        
                        <th colspan="3"><span>肝功能</span></th>
                        
                        <th>
                            <asp:Label ID="severity9" runat="server" Text="Label"></asp:Label>                            
                        </th>
                        <th>
                            <asp:Label ID="manage9" runat="server" Text="Label"></asp:Label>                            
                        </th>
                        <th>
                            <asp:Label ID="relation9" runat="server" Text="Label"></asp:Label>                              
                        </th>
                    </tr>

                    <tr>
                        
                        <th colspan="3"><span>尿化验异常</span></th>
                        <th>
                            <asp:Label ID="severity10" runat="server" Text="Label"></asp:Label>                            
                        </th>
                        <th>
                            <asp:Label ID="manage10" runat="server" Text="Label"></asp:Label>                            
                        </th>
                        <th>
                            <asp:Label ID="relation10" runat="server" Text="Label"></asp:Label>                              
                        </th>
                        
                    </tr>

                    <tr>
                       <th rowspan="4"><span>
                            <br />
                            神<br />
                            经<br />
                            系<br />
                            统</span></th>
                        <th colspan="3"><span>肌强直</span></th>
                        <th>
                            <asp:Label ID="severity11" runat="server" Text="Label"></asp:Label>                            
                        </th>
                        <th>
                            <asp:Label ID="manage11" runat="server" Text="Label"></asp:Label>                            
                        </th>
                        <th>
                            <asp:Label ID="relation11" runat="server" Text="Label"></asp:Label>                              
                        </th>
                        
                        
                    </tr>

                    <tr>
                        
                        <th colspan="3"><span>震颤</span></th>
                        <th>
                            <asp:Label ID="severity12" runat="server" Text="Label"></asp:Label>                            
                        </th>
                        <th>
                            <asp:Label ID="manage12" runat="server" Text="Label"></asp:Label>                            
                        </th>
                        <th>
                            <asp:Label ID="relation12" runat="server" Text="Label"></asp:Label>                              
                        </th>
                        
                    </tr>

                    <tr>
                        
                        <th colspan="3"><span>扭转性痉挛</span></th>
                        <th>
                            <asp:Label ID="severity13" runat="server" Text="Label"></asp:Label>                            
                        </th>
                        <th>
                            <asp:Label ID="manage13" runat="server" Text="Label"></asp:Label>                            
                        </th>
                        <th>
                            <asp:Label ID="relation13" runat="server" Text="Label"></asp:Label>                              
                        </th>
                        
                    </tr>

                    <tr>
                        
                        <th colspan="3"><span>静坐不能</span></th>
                        <th>
                            <asp:Label ID="severity14" runat="server" Text="Label"></asp:Label>                            
                        </th>
                        <th>
                            <asp:Label ID="manage14" runat="server" Text="Label"></asp:Label>                            
                        </th>
                        <th>
                            <asp:Label ID="relation14" runat="server" Text="Label"></asp:Label>                              
                        </th>
                        
                    </tr>

                    <tr>
                        <th rowspan="8"><span>
                            <br />
                            <br />
                            植<br />
                            物<br />
                            神<br />
                            经<br />
                            系<br />
                            统</span></th>
                        <th colspan="3"><span>口干</span></th>
                        <th>
                            <asp:Label ID="severity15" runat="server" Text="Label"></asp:Label>                            
                        </th>
                        <th>
                            <asp:Label ID="manage15" runat="server" Text="Label"></asp:Label>                            
                        </th>
                        <th>
                            <asp:Label ID="relation15" runat="server" Text="Label"></asp:Label>                              
                        </th>
                        
                        
                    </tr>

                    <tr>
                        
                        <th colspan="3"><span>鼻塞</span></th>
                        <th>
                            <asp:Label ID="severity16" runat="server" Text="Label"></asp:Label>                            
                        </th>
                        <th>
                            <asp:Label ID="manage16" runat="server" Text="Label"></asp:Label>                            
                        </th>
                        <th>
                            <asp:Label ID="relation16" runat="server" Text="Label"></asp:Label>                              
                        </th>
                        
                    </tr>

                    <tr>
                        
                        <th colspan="3"><span>视力模糊</span></th>
                        <th>
                            <asp:Label ID="severity17" runat="server" Text="Label"></asp:Label>                            
                        </th>
                        <th>
                            <asp:Label ID="manage17" runat="server" Text="Label"></asp:Label>                            
                        </th>
                        <th>
                            <asp:Label ID="relation17" runat="server" Text="Label"></asp:Label>                              
                        </th>
                        
                    </tr>

                    <tr>
                        
                        <th colspan="3"><span>便秘</span></th>
                        <th>
                            <asp:Label ID="severity18" runat="server" Text="Label"></asp:Label>                            
                        </th>
                        <th>
                            <asp:Label ID="manage18" runat="server" Text="Label"></asp:Label>                            
                        </th>
                        <th>
                            <asp:Label ID="relation18" runat="server" Text="Label"></asp:Label>                              
                        </th>
                        
                    </tr>

                    <tr>
                        
                        <th colspan="3"><span>唾液增加</span></th>
                        <th>
                            <asp:Label ID="severity19" runat="server" Text="Label"></asp:Label>                            
                        </th>
                        <th>
                            <asp:Label ID="manage19" runat="server" Text="Label"></asp:Label>                            
                        </th>
                        <th>
                            <asp:Label ID="relation19" runat="server" Text="Label"></asp:Label>                              
                        </th>
                        
                    </tr>

                    <tr>
                        
                        <th colspan="3"><span>出汗</span></th>
                        <th>
                            <asp:Label ID="severity20" runat="server" Text="Label"></asp:Label>                            
                        </th>
                        <th>
                            <asp:Label ID="manage20" runat="server" Text="Label"></asp:Label>                            
                        </th>
                        <th>
                            <asp:Label ID="relation20" runat="server" Text="Label"></asp:Label>                              
                        </th>
                        
                    </tr>

                    <tr>
                        
                        <th colspan="3"><span>恶心呕吐</span></th>
                        <th>
                            <asp:Label ID="severity21" runat="server" Text="Label"></asp:Label>                            
                        </th>
                        <th>
                            <asp:Label ID="manage21" runat="server" Text="Label"></asp:Label>                            
                        </th>
                        <th>
                            <asp:Label ID="relation21" runat="server" Text="Label"></asp:Label>                              
                        </th>
                        
                    </tr>

                    <tr>
                        
                        <th colspan="3"><span>腹泻</span></th>
                        <th>
                            <asp:Label ID="severity22" runat="server" Text="Label"></asp:Label>                            
                        </th>
                        <th>
                            <asp:Label ID="manage22" runat="server" Text="Label"></asp:Label>                            
                        </th>
                        <th>
                            <asp:Label ID="relation22" runat="server" Text="Label"></asp:Label>                              
                        </th>
                    </tr>

                    <tr>
                        <th rowspan="5"><span>
                            <br />
                            心<br />
                            血<br />
                            管<br />
                            系<br />
                            统</span></th>
                        <th colspan="3"><span>血压降低</span></th>
                        <th>
                            <asp:Label ID="severity23" runat="server" Text="Label"></asp:Label>                            
                        </th>
                        <th>
                            <asp:Label ID="manage23" runat="server" Text="Label"></asp:Label>                            
                        </th>
                        <th>
                            <asp:Label ID="relation23" runat="server" Text="Label"></asp:Label>                              
                        </th>
                       
                        
                    </tr>

                    <tr>
                        
                        <th colspan="3"><span>头昏和昏厥</span></th>
                        <th>
                            <asp:Label ID="severity24" runat="server" Text="Label"></asp:Label>                            
                        </th>
                        <th>
                            <asp:Label ID="manage24" runat="server" Text="Label"></asp:Label>                            
                        </th>
                        <th>
                            <asp:Label ID="relation24" runat="server" Text="Label"></asp:Label>                              
                        </th>
                        
                    </tr>

                    <tr>
                        

                        <th colspan="3"><span>心动过速</span></th>
                        <th>
                            <asp:Label ID="severity25" runat="server" Text="Label"></asp:Label>                            
                        </th>
                        <th>
                            <asp:Label ID="manage25" runat="server" Text="Label"></asp:Label>                            
                        </th>
                        <th>
                            <asp:Label ID="relation25" runat="server" Text="Label"></asp:Label>                              
                        </th>
                        
                    </tr>

                    <tr>
                       
                        <th colspan="3"><span>血压升高</span></th>
                        <th>
                            <asp:Label ID="severity26" runat="server" Text="Label"></asp:Label>                            
                        </th>
                        <th>
                            <asp:Label ID="manage26" runat="server" Text="Label"></asp:Label>                            
                        </th>
                        <th>
                            <asp:Label ID="relation26" runat="server" Text="Label"></asp:Label>                              
                        </th>
                        
                    </tr>

                    <tr>
                       
                        <th colspan="3"><span>心电图异常</span></th>
                        <th>
                            <asp:Label ID="severity27" runat="server" Text="Label"></asp:Label>                            
                        </th>
                        <th>
                            <asp:Label ID="manage27" runat="server" Text="Label"></asp:Label>                            
                        </th>
                        <th>
                            <asp:Label ID="relation27" runat="server" Text="Label"></asp:Label>                              
                        </th>
                        
                    </tr>

                    <tr>
                        <th rowspan="7">
                            <br />
                            其<br />
                            他</th>
                        <th colspan="3"><span>皮肤症状</span></th>
                        <th>
                            <asp:Label ID="severity28" runat="server" Text="Label"></asp:Label>                            
                        </th>
                        <th>
                            <asp:Label ID="manage28" runat="server" Text="Label"></asp:Label>                            
                        </th>
                        <th>
                            <asp:Label ID="relation28" runat="server" Text="Label"></asp:Label>                              
                        </th>
                        
                       
                    </tr>

                    <tr>
                        
                        <th colspan="3"><span>体重增加</span></th>
                        <th>
                            <asp:Label ID="severity29" runat="server" Text="Label"></asp:Label>                            
                        </th>
                        <th>
                            <asp:Label ID="manage29" runat="server" Text="Label"></asp:Label>                            
                        </th>
                        <th>
                            <asp:Label ID="relation29" runat="server" Text="Label"></asp:Label>                              
                        </th>
                        
                    </tr>


                    <tr>
                        
                        <th colspan="3"><span>体重减轻</span></th>
                        <th>
                            <asp:Label ID="severity30" runat="server" Text="Label"></asp:Label>                            
                        </th>
                        <th>
                            <asp:Label ID="manage30" runat="server" Text="Label"></asp:Label>                            
                        </th>
                        <th>
                            <asp:Label ID="relation30" runat="server" Text="Label"></asp:Label>                              
                        </th>
                        
                    </tr>

                    <tr>
                        
                        <th colspan="3"><span>食欲减退和厌食</span></th>
                        <th>
                            <asp:Label ID="severity31" runat="server" Text="Label"></asp:Label>                            
                        </th>
                        <th>
                            <asp:Label ID="manage31" runat="server" Text="Label"></asp:Label>                            
                        </th>
                        <th>
                            <asp:Label ID="relation31" runat="server" Text="Label"></asp:Label>                              
                        </th>
                       
                    </tr>

                    <tr>
                       
                        <th colspan="3"><span>头痛</span></th>
                        <th>
                            <asp:Label ID="severity32" runat="server" Text="Label"></asp:Label>                            
                        </th>
                        <th>
                            <asp:Label ID="manage32" runat="server" Text="Label"></asp:Label>                            
                        </th>
                        <th>
                            <asp:Label ID="relation32" runat="server" Text="Label"></asp:Label>                              
                        </th>
                       
                    </tr>

                    <tr id="Other1">
                        
                        <th colspan="3"><span>迟发性运动障碍（</span><span lang="EN-GB">TD</span><span>）</span></th>
                        <th>
                            <asp:Label ID="severity33" runat="server" Text="Label"></asp:Label>                            
                        </th>
                        <th>
                            <asp:Label ID="manage33" runat="server" Text="Label"></asp:Label>                            
                        </th>
                        <th>
                            <asp:Label ID="relation33" runat="server" Text="Label"></asp:Label>                              
                        </th>
                        
                    </tr>

                    <tr id="Other" runat ="server">
                        
                        <th colspan="3"><asp:Label ID="Name34" runat="server" Text="Label"></asp:Label></th>
                        <th>
                            <asp:Label ID="severity34" runat="server" Text="Label"></asp:Label>                            
                        </th>
                        <th>
                            <asp:Label ID="manage34" runat="server" Text="Label"></asp:Label>                            
                        </th>
                        <th>
                            <asp:Label ID="relation34" runat="server" Text="Label"></asp:Label>                              
                        </th>
                       
                    </tr>
            </tbody>
        </table>
    </div>



</asp:Content>

