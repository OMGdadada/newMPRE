<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Multidimensional_Test.aspx.cs" Inherits="NewPage_Multidimensional_Test" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    
    <script type="text/javascript">
        
            function trigger(e) {
                $('.panel2').show();
                $('.trigger2').show();
                $('.panel1').hide();
                $('.trigger').hide();
            }

            function trigger2(e) {
                $('.panel1').show();
                $('.trigger').show();
                $('.panel2').hide();
                $('.trigger2').hide();;
            }
        
            
        </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script src="../assets/js/vue.js"></script>
    <span id="labeltextnum"> </span>

    <div class="tab-pane active">
                                    <div class="row">
                                        <div class="col-xs-12 col-md-12">
                                            <div class="widget" style="margin: 0px;">
                                                <div class="widget-header bg-blue">
                                                    <i class="widget-icon fa fa-arrow-right"></i>
                                                    <span class="widget-caption" style="font-size: 15px;"><strong>多维度测试</strong></span>
                                                    <span style="margin-right:15px;font-size: 20px;">
                                                     <span class="trigger" onclick="trigger(this)" style="cursor:pointer;"><i class="glyphicon glyphicon-th-large"></i></span>
                                                    <span class="trigger2"  onclick="trigger2(this)" style="display:none; cursor:pointer;"><i class="glyphicon glyphicon-th-list"></i></span>
                                                    </span>
                                                </div>
                                      
                                                <div class="widget-body">
                                                   
                                                     <!--Panel1-->
                                                    <div class="panel1">
                                                         <strong>带<strong style="color: red"> * </strong>号表示该量表为自评量表</strong>
                                                    <h3><strong>功能康复维度</strong> </h3>
                                                    <hr />
                                                    <div class="row"  >
                                                        <a  href="../T1.aspx" target="_blank">
                                                            <div class="col-lg-3 col-sm-6 col-xs-12">

                                                                <div class="databox">
                                                                    <div class="databox-left bg-yellow">
                                                                        <div class="databox-piechart">
                                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" data-trackcolor="#fa8872" style="width: 47px; height: 47px; line-height: 47px;"><span style="color: black; font-size: 18px"><strong>T1</strong></span></div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                        <span class="databox-number darkgray">GAF</span>
                                                                        <div class="databox-text darkgray">大体功能评定量表</div>
                                                                        <div class="databox-stat bg-yellow radius-bordered">
                                                                            <div class="stat-text">必做</div>
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                            </div>
                                                        </a>
                                                    </div>
                                                    <div class="row"  >

                                                        <div class="col-lg-3 col-sm-6 col-xs-12">
                                                            <a  >
                                                                <div class="databox">
                                                                    <div class="databox-left bg-palegreen">
                                                                        <div class="databox-piechart">
                                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" data-trackcolor="#fa8872" style="width: 47px; height: 47px; line-height: 47px;">
                                                                                <span style="color: black; font-size: 18px"><strong>T2</strong></span><canvas width="47" height="47"></canvas>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                        <span class="databox-number darkgray">PSP</span>
                                                                        <div class="databox-text darkgray">个人与社会表现量表</div>
                                                                        <div class="databox-stat bg-palegreen radius-bordered">
                                                                            <div class="stat-text">核心</div>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </div>
                                                        <div class="col-lg-3 col-sm-6 col-xs-12">
                                                            <a  >
                                                                <div class="databox">
                                                                    <div class="databox-left bg-palegreen">
                                                                        <div class="databox-piechart">
                                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" data-trackcolor="#fa8872" style="width: 47px; height: 47px; line-height: 47px;">
                                                                                <span style="color: black; font-size: 18px"><strong style="color: red">* </strong><strong>T3</strong></span><canvas width="47" height="47"></canvas>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                        <span class="databox-number darkgray">WHO DAS</span>
                                                                        <div class="databox-text darkgray">世界卫生组织残疾评定量表</div>
                                                                        <div class="databox-stat bg-palegreen radius-bordered">
                                                                            <div class="stat-text">核心</div>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="row"  >
                                                        <div class="col-lg-3 col-sm-6 col-xs-12">
                                                            <a>
                                                                <div class="databox">
                                                                    <div class="databox-left bg-azure">
                                                                        <div class="databox-piechart">
                                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" data-trackcolor="#fa8872" style="width: 47px; height: 47px; line-height: 47px;">
                                                                                <span style="color: black; font-size: 18px"><strong style="color: red">* </strong><strong>T4</strong></span><canvas width="47" height="47"></canvas>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                        <span class="databox-number darkgray">SIWS</span>
                                                                        <div class="databox-text darkgray">工作与学习维度影响量表 </div>
                                                                        <div class="databox-stat bg-azure radius-bordered">
                                                                            <div class="stat-text">补充</div>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </div>

                                                        <div class="col-lg-3 col-sm-6 col-xs-12">
                                                            <a >
                                                                <div class="databox">
                                                                    <div class="databox-left bg-azure">
                                                                        <div class="databox-piechart">
                                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" data-trackcolor="#fa8872" style="width: 47px; height: 47px; line-height: 47px;">
                                                                                <span style="color: black; font-size: 18px"><strong>T5</strong></span><canvas width="47" height="47"></canvas>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                        <span class="databox-number darkgray">LSP</span>
                                                                        <div class="databox-text darkgray">生活技能量表</div>
                                                                        <div class="databox-stat bg-azure radius-bordered">
                                                                            <div class="stat-text">补充</div>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </div>

                                                        <div class="col-lg-3 col-sm-6 col-xs-12">
                                                            <a >
                                                                <div class="databox">
                                                                    <div class="databox-left bg-azure">
                                                                        <div class="databox-piechart">
                                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" data-trackcolor="#fa8872" style="width: 47px; height: 47px; line-height: 47px;">
                                                                                <span style="color: black; font-size: 18px"><strong>T6</strong></span><canvas width="47" height="47"></canvas>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                        <span class="databox-number darkgray">SSES</span>
                                                                        <div class="databox-text darkgray">社交技能评估量表</div>
                                                                        <div class="databox-stat bg-azure radius-bordered">
                                                                            <div class="stat-text">补充</div>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </div>

                                                        <div class="col-lg-3 col-sm-6 col-xs-12">
                                                            <a >
                                                                <div class="databox">
                                                                    <div class="databox-left bg-azure">
                                                                        <div class="databox-piechart">
                                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" data-trackcolor="#fa8872" style="width: 47px; height: 47px; line-height: 47px;">
                                                                                <span style="color: black; font-size: 18px"><strong>T7</strong></span><canvas width="47" height="47"></canvas>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                        <span class="databox-number darkgray">BJ-PERFECT</span>
                                                                        <div class="databox-text darkgray">北京精神分裂症操作性功能评估量表</div>
                                                                        <div class="databox-stat bg-azure radius-bordered">
                                                                            <div class="stat-text">补充</div>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </div>

                                                    </div>


                                                    <h3><strong>躯体维度</strong> </h3>
                                                    <hr />
                                                    <div class="row"  >
                                                        <div class="col-lg-3 col-sm-6 col-xs-12">
                                                            <a >
                                                                <div class="databox">
                                                                    <div class="databox-left bg-yellow">
                                                                        <div class="databox-piechart">
                                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" style="width: 47px; height: 47px; line-height: 47px;">
                                                                                <span style="color: black; font-size: 18px"><strong>T8</strong></span><canvas width="47" height="47"></canvas>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                        <span class="databox-number darkgray">PH</span>
                                                                        <div class="databox-text darkgray">躯体健康维度</div>
                                                                        <div class="databox-stat bg-yellow radius-bordered">
                                                                            <div class="stat-text">必做</div>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </div>

                                                    </div>


                                                    <h3><strong>生命价值和质量维度</strong> </h3>
                                                    <hr />
                                                    <div class="row"  >
                                                        <div class="col-lg-3 col-sm-6 col-xs-12">
                                                            <a >
                                                                <div class="databox">
                                                                    <div class="databox-left bg-yellow">
                                                                        <div class="databox-piechart">
                                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" style="width: 47px; height: 47px; line-height: 47px;">
                                                                                <span style="color: black; font-size: 18px"><strong style="color: red">* </strong><strong>T9</strong></span><canvas width="47" height="47"></canvas>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                        <span class="databox-number darkgray">SF-36</span>
                                                                        <div class="databox-text darkgray">健康调查量表 </div>
                                                                        <div class="databox-stat bg-yellow radius-bordered">
                                                                            <div class="stat-text">必做</div>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </div>
                                                    </div>

                                                    <div class="row"  >
                                                        <div class="col-lg-3 col-sm-6 col-xs-12">
                                                            <a >
                                                                <div class="databox">
                                                                    <div class="databox-left bg-palegreen">
                                                                        <div class="databox-piechart">
                                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" style="width: 47px; height: 47px; line-height: 47px;">
                                                                                <span style="color: black; font-size: 18px"><strong style="color: red">* </strong><strong>T10</strong></span><canvas width="47" height="47"></canvas>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                        <span class="databox-number darkgray">GSES</span>
                                                                        <div class="databox-text darkgray">一般自我效能感量表</div>
                                                                        <div class="databox-stat bg-palegreen radius-bordered">
                                                                            <div class="stat-text">核心</div>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="row"  >
                                                        <div class="col-lg-3 col-sm-6 col-xs-12">
                                                            <a >
                                                                <div class="databox">
                                                                    <div class="databox-left bg-azure">
                                                                        <div class="databox-piechart">
                                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" style="width: 47px; height: 47px; line-height: 47px;">
                                                                                <span style="color: black; font-size: 18px"><strong style="color: red">* </strong><strong>T11</strong></span><canvas width="47" height="47"></canvas>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                        <span class="databox-number darkgray">ISMI</span>
                                                                        <div class="databox-text darkgray">精神疾病内化污名量表</div>
                                                                        <div class="databox-stat bg-azure radius-bordered">
                                                                            <div class="stat-text">补充</div>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </div>
                                                        <div class="col-lg-3 col-sm-6 col-xs-12">
                                                            <a >
                                                                <div class="databox">
                                                                    <div class="databox-left bg-azure">
                                                                        <div class="databox-piechart">
                                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" style="width: 47px; height: 47px; line-height: 47px;">
                                                                                <span style="color: black; font-size: 18px"><strong style="color: red">* </strong><strong>T12</strong></span><canvas width="47" height="47"></canvas>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                        <span class="databox-number darkgray">SHS-9</span>
                                                                        <div class="databox-text darkgray">精神分裂症希望量表</div>
                                                                        <div class="databox-stat bg-azure radius-bordered">
                                                                            <div class="stat-text">补充</div>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </div>
                                                        <div class="col-lg-3 col-sm-6 col-xs-12">
                                                            <a >
                                                                <div class="databox">
                                                                    <div class="databox-left bg-azure">
                                                                        <div class="databox-piechart">
                                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" data-trackcolor="#fa8872" style="width: 47px; height: 47px; line-height: 47px;">
                                                                                <span style="color: black; font-size: 18px"><strong style="color: red">* </strong><strong>T13</strong></span><canvas width="47" height="47"></canvas>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                        <span class="databox-number darkgray">C-MLQ</span>
                                                                        <div class="databox-text darkgray">中文人生意义问卷</div>
                                                                        <div class="databox-stat bg-azure radius-bordered">
                                                                            <div class="stat-text">补充</div>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </div>


                                                    </div>


                                                    <h3><strong>症状维度</strong> </h3>
                                                    <hr />
                                                    <div class="row"  >
                                                        <div class="col-lg-3 col-sm-6 col-xs-12">
                                                            <a >
                                                                <div class="databox">
                                                                    <div class="databox-left bg-yellow">
                                                                        <div class="databox-piechart">
                                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" style="width: 47px; height: 47px; line-height: 47px;">
                                                                                <span style="color: black; font-size: 18px"><strong>T14</strong></span><canvas width="47" height="47"></canvas>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                        <span class="databox-number darkgray">CGI</span>
                                                                        <div class="databox-text darkgray">临床总体印象量表</div>
                                                                        <div class="databox-stat bg-yellow radius-bordered">
                                                                            <div class="stat-text">必做</div>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="row"  >

                                                        <div class="col-lg-3 col-sm-6 col-xs-12">
                                                            <a >
                                                                <div class="databox">
                                                                    <div class="databox-left bg-palegreen">
                                                                        <div class="databox-piechart">
                                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" style="width: 47px; height: 47px; line-height: 47px;">
                                                                                <span style="color: black; font-size: 18px"><strong>T15</strong></span><canvas width="47" height="47"></canvas>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                        <span class="databox-number darkgray">PANSS</span>
                                                                        <div class="databox-text darkgray">阳性和阴性精神症状评定量表</div>
                                                                        <div class="databox-stat bg-palegreen radius-bordered">
                                                                            <div class="stat-text">核心</div>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </div>

                                                        <div class="col-lg-3 col-sm-6 col-xs-12">
                                                            <a > 
                                                                <div class="databox">
                                                                    <div class="databox-left bg-palegreen">
                                                                        <div class="databox-piechart">
                                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" style="width: 47px; height: 47px; line-height: 47px;">
                                                                                <span style="color: black; font-size: 18px"><strong>T16</strong></span><canvas width="47" height="47"></canvas>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                        <span class="databox-number darkgray">MCCB</span>
                                                                        <div class="databox-text darkgray">MATRICS共识认知成套测验</div>
                                                                        <div class="databox-stat bg-palegreen radius-bordered">
                                                                            <div class="stat-text">核心</div>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="row"  >
                                                        <div class="col-lg-3 col-sm-6 col-xs-12">
                                                            <a >
                                                                <div class="databox">
                                                                    <div class="databox-left bg-azure">
                                                                        <div class="databox-piechart">
                                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" style="width: 47px; height: 47px; line-height: 47px;">
                                                                                <span style="color: black; font-size: 18px"><strong>T17</strong></span><canvas width="47" height="47"></canvas>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                        <span class="databox-number darkgray">MOAS</span>
                                                                        <div class="databox-text darkgray">修订版外显攻击行为量表</div>
                                                                        <div class="databox-stat bg-azure radius-bordered">
                                                                            <div class="stat-text">补充</div>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </div>

                                                        <div class="col-lg-3 col-sm-6 col-xs-12">
                                                            <a>
                                                                <div class="databox">
                                                                    <div class="databox-left bg-azure">
                                                                        <div class="databox-piechart">
                                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" style="width: 47px; height: 47px; line-height: 47px;">
                                                                                <span style="color: black; font-size: 18px"><strong>T18</strong></span><canvas width="47" height="47"></canvas>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                        <span class="databox-number darkgray">NGASR</span>
                                                                        <div class="databox-text darkgray">护士用自杀风险评估量表</div>
                                                                        <div class="databox-stat bg-azure radius-bordered">
                                                                            <div class="stat-text">补充</div>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </div>
                                                        <div class="col-lg-3 col-sm-6 col-xs-12">
                                                            <a >
                                                                <div class="databox">
                                                                    <div class="databox-left bg-azure">
                                                                        <div class="databox-piechart">
                                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" style="width: 47px; height: 47px; line-height: 47px;">
                                                                                <span style="color: black; font-size: 18px"><strong>T19</strong></span><canvas width="47" height="47"></canvas>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                        <span class="databox-number darkgray">CDSS</span>
                                                                        <div class="databox-text darkgray">卡尔加里精神分裂症抑郁量表</div>
                                                                        <div class="databox-stat bg-azure radius-bordered">
                                                                            <div class="stat-text">补充</div>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </div>
                                                        <div class="col-lg-3 col-sm-6 col-xs-12">
                                                            <a >
                                                                <div class="databox">
                                                                    <div class="databox-left bg-azure">
                                                                        <div class="databox-piechart">
                                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" style="width: 47px; height: 47px; line-height: 47px;">
                                                                                <span style="color: black; font-size: 18px"><strong>T20</strong></span><canvas width="47" height="47"></canvas>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                        <span class="databox-number darkgray">TESS</span>
                                                                        <div class="databox-text darkgray">治疗副反应量表</div>
                                                                        <div class="databox-stat bg-azure radius-bordered">
                                                                            <div class="stat-text">补充</div>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </div>
                                                        <div class="col-lg-3 col-sm-6 col-xs-12">
                                                            <a >
                                                                <div class="databox">
                                                                    <div class="databox-left bg-azure">
                                                                        <div class="databox-piechart">
                                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" style="width: 47px; height: 47px; line-height: 47px;">
                                                                                <span style="color: black; font-size: 18px"><strong>T21</strong></span><canvas width="47" height="47"></canvas>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                        <span class="databox-number darkgray">RSESE</span>
                                                                        <div class="databox-text darkgray">锥体外系副反应量表</div>
                                                                        <div class="databox-stat bg-azure radius-bordered">
                                                                            <div class="stat-text">补充</div>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </div>
                                                    </div>



                                                    <h3><strong>治疗意愿及能力维度</strong> </h3>
                                                    <hr />
                                                    <div class="row"  >
                                                        <div class="col-lg-3 col-sm-6 col-xs-12" >
                                                            <a >
                                                                <div class="databox">
                                                                    <div class="databox-left bg-yellow">
                                                                        <div class="databox-piechart">
                                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" style="width: 47px; height: 47px; line-height: 47px;">
                                                                                <span style="color: black; font-size: 18px"><strong style="color: red">* </strong><strong>T22</strong></span><canvas width="47" height="47"></canvas>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                        <span class="databox-number darkgray">MAQ</span>
                                                                        <div class="databox-text darkgray">服药依从性问卷</div>
                                                                        <div class="databox-stat bg-yellow radius-bordered">
                                                                            <div class="stat-text">必做</div>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </div>

                                                        <div class="col-lg-3 col-sm-6 col-xs-12">
                                                            <a >
                                                                <div class="databox">
                                                                    <div class="databox-left bg-yellow">
                                                                        <div class="databox-piechart">
                                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" style="width: 47px; height: 47px; line-height: 47px;">
                                                                                <span style="color: black; font-size: 18px"><strong>T23</strong></span><canvas width="47" height="47"></canvas>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                        <span class="databox-number darkgray">ITAQ</span>
                                                                        <div class="databox-text darkgray">自知力与治疗态度问卷表</div>
                                                                        <div class="databox-stat bg-yellow radius-bordered">
                                                                            <div class="stat-text">必做</div>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="row"  >
                                                        <div class="col-lg-3 col-sm-6 col-xs-12">
                                                            <a >
                                                                <div class="databox">
                                                                    <div class="databox-left bg-palegreen">
                                                                        <div class="databox-piechart">
                                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" style="width: 47px; height: 47px; line-height: 47px;">
                                                                                <span style="color: black; font-size: 18px"><strong>T24</strong></span><canvas width="47" height="47"></canvas>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                        <span class="databox-number darkgray">MMAA</span>
                                                                        <div class="databox-text darkgray">药物管理能力评估</div>
                                                                        <div class="databox-stat bg-palegreen radius-bordered">
                                                                            <div class="stat-text">核心</div>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </div>



                                                    </div>


                                                    <!------>


                                                    <h3><strong>资源维度</strong> </h3>
                                                    <hr />
                                                    <div class="row"  >
                                                        <div class="col-lg-3 col-sm-6 col-xs-12">
                                                            <a >
                                                                <div class="databox">
                                                                    <div class="databox-left bg-yellow">
                                                                        <div class="databox-piechart">
                                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" style="width: 47px; height: 47px; line-height: 47px;">
                                                                                <span style="color: black; font-size: 18px"><strong style="color: red">* </strong><strong>T25</strong></span><canvas width="47" height="47"></canvas>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                        <span class="databox-number darkgray">SSRS</span>
                                                                        <div class="databox-text darkgray">社会支持评定量表</div>
                                                                        <div class="databox-stat bg-yellow radius-bordered">
                                                                            <div class="stat-text">必做</div>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </div>

                                                    </div>
                                                    <div class="row"  >
                                                        <div class="col-lg-3 col-sm-6 col-xs-12">
                                                            <a >
                                                                <div class="databox">
                                                                    <div class="databox-left bg-palegreen">
                                                                        <div class="databox-piechart">
                                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" style="width: 47px; height: 47px; line-height: 47px;">
                                                                                <span style="color: black; font-size: 18px"><strong style="color: red">* </strong><strong>T26</strong></span><canvas width="47" height="47"></canvas>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                        <span class="databox-number darkgray">FAD</span>
                                                                        <div class="databox-text darkgray">家庭功能评定</div>
                                                                        <div class="databox-stat bg-palegreen radius-bordered">
                                                                            <div class="stat-text">核心</div>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </div>
                                                        <div class="col-lg-3 col-sm-6 col-xs-12">
                                                            <a >
                                                                <div class="databox">
                                                                    <div class="databox-left bg-palegreen">
                                                                        <div class="databox-piechart">
                                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" style="width: 47px; height: 47px; line-height: 47px;">
                                                                                <span style="color: black; font-size: 18px"><strong style="color: red">* </strong><strong>T27</strong></span><canvas width="47" height="47"></canvas>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                        <span class="databox-number darkgray">MRQ</span>
                                                                        <div class="databox-text darkgray">婚恋评估</div>
                                                                        <div class="databox-stat bg-palegreen radius-bordered">
                                                                            <div class="stat-text">核心</div>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </div>
                                                        <div class="col-lg-3 col-sm-6 col-xs-12">
                                                            <a > 
                                                                <div class="databox">
                                                                    <div class="databox-left bg-palegreen">
                                                                        <div class="databox-piechart">
                                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" style="width: 47px; height: 47px; line-height: 47px;">
                                                                                <span style="color: black; font-size: 18px"><strong style="color: red">* </strong><strong>T28</strong></span><canvas width="47" height="47"></canvas>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                        <span class="databox-number darkgray">MRS</span>
                                                                        <div class="databox-text darkgray">医疗资源评估</div>
                                                                        <div class="databox-stat bg-palegreen radius-bordered">
                                                                            <div class="stat-text">核心</div>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </div>


                                                    </div>



                                                    </div>

                                                 <!--Panel2-->
                                                    <div class="panel2" style="display:none">
                                                      <div id="timeline" class="tab-pane active">
                                                    <div class="row">
                                                        <div class="widget-body" style="margin:12px;padding:0px;box-shadow:0px 0 0px 0px rgba(256,256,256,.3);">
                                                            <asp:UpdatePanel ID="UpdatePanel" runat="server">
                                                                <ContentTemplate>
                                                                    
                                                                        <asp:UpdatePanel ID="UpdatePanel2" runat="server">  
                                                                         <ContentTemplate>
                                                                        <div class="form-group col-xs-3 col-md-3">
                                                                            <span class="input-icon">
                                                                                <asp:TextBox ID="SearchText" runat="server" placeholder="查询量表..." class="form-control input-sm"></asp:TextBox>
                                                                                <i class="glyphicon glyphicon-search danger circular"></i>
                                                                            </span>
                                                                        </div>
                                                                        
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                                                             <span   class="btn btn-info" id="SearchTextBtn"  onclick="SearchTextBtn()" >搜索</span>
                                                                        <asp:Button ID="SearchBtnText" runat="server" style="display:none" OnClick="SearchBtnText_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
                                                                        <span class="btn btn-warning" data-dismiss="modal" data-toggle="modal" data-target="#myModal4">选择病人</span>
                                                                      <span onclick="test()">测试</span>
                                                                   
                                                                           </ContentTemplate></asp:UpdatePanel>
                                                                    <br />
                                                                    <br />
                                                                    <br />
                                                                    <div id="RightContent">
                                                                      
                                                                        <asp:Repeater ID="Repeater1" runat="server">
                                                                            <HeaderTemplate>
                                                                                <div style="background-color:#F7F6F3; color:#333333;height:30px; width:98%;padding:5px" >
                                                                                    <div style="width:5%;float:left; text-align:center;"> 序</div>
                                                                                    <div style="width:5%;float:left; text-align:center;"> </div>
                                                                                     <div style="width:50%;float:left; text-align:center; "> 量表名称</div>
                                                                                     <div style="width:25%; float:left; text-align:center;"> 所属测试</div>
                                                                                     <div style="width:15%; float:left; text-align:center;"> 价格</div>
                                                                                </div>
                                                                            </HeaderTemplate>
                                                                            <ItemTemplate>
                                                                                <table class="table" style="clear:both;width:98%">
                                                                                   
                                                                                    <tr data-guid='<%#Eval("GUID") %>' data-id='<%#Eval("ID") %>'  onclick="check(this)" style="cursor:pointer">
                                                                                        <th style="width:5%"> <%# Container.ItemIndex + 1 %></th>
                                                                                        <th style="width:5%"> <input id="<%#"checkbox"+Eval("ID") %>" type="checkbox" name="CheckOn" value='<%#Eval("GUID") %>' /></th>
                                                                                         <th style="width:50%;text-align:left;margin-left:5px;"> <a style="cursor:pointer;"  ><%# Eval("TestName") %></a></th>
                                                                                         <th style="width:25%"><%# Eval("Dimension1name") %></th>
                                                                                         <th  style="width:15%"> <%# Eval("Price") %></th>
                                                                                    </tr>
                                                                                
                                                                                </table>
                                                               
                                                                            </ItemTemplate>

                                                                        </asp:Repeater>
                                                                          
                                                                        <br />
                                                                        <asp:Label ID="Label8" runat="server" Text="" Visible="true"></asp:Label>
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                       <webdiyer:AspNetPager CssClass="pages" class="pagination" CurrentPageButtonClass="cpb" AlwaysShow="true" ID="AspNetPager3" runat="server" FirstPageText="首页" LastPageText="尾页" NextPageText="下一页" PrevPageText="上一页" OnPageChanged="AspNetPager3_PageChanged" LayoutType="Div">
                                                                        </webdiyer:AspNetPager>
                                                                    </div>
                                                                        </ContentTemplate>
                                                            </asp:UpdatePanel>
                                                            <code></code>
                                                        </div>
                                                    </div>
                                                </div>
                                                    </div>

                                                    <code></code>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>


       <%--批量添加选项--%>
    <div class="modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document"style="width: 80%;" >
            <div class="modal-content" style="margin-top: 10%;">
                <div class="modal-header" style="padding: 6px 16px 0px 20px;" >
                    <button type="button" class="close" data-dismiss="modal" data-toggle="modal" data-target="#myModal"><span aria-hidden="true">&times;</span></button>
                    <p><strong>选择病人</strong></p>
                </div>
                <div class="modal-body " style="padding-top: 0px;">
                    <div id="overview" class="tab-pane">
                        <div class="row">
                            <div class="widget-body" style="margin: 12px; padding: 0px; box-shadow: 0px 0 0px 0px rgba(256,256,256,.3);">
                                <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                    <ContentTemplate>
                                        <div id="Man_Nav">
                                            <div id="test1" class="form-group col-xs-3 col-md-3">
                                                <span class="input-icon">
                                         
                                                    <asp:TextBox ID="SearchTB" runat="server" placeholder="搜索..." class="form-control input-sm"></asp:TextBox>
                                                    <i class="glyphicon glyphicon-search danger circular"></i>
                                                </span>
                                            </div>
                                        
                                            <asp:Button ID="SearchBtn" runat="server" Text="搜索" class="btn btn-info"  OnClick="SearchBtn_Click" />&nbsp;&nbsp;  &nbsp;&nbsp;
                                     <span onclick="test()">测试</span>

                                            <asp:DropDownList ID="OrderDDL" runat="server"
                                                OnSelectedIndexChanged="OrderDDL_SelectedIndexChanged" AutoPostBack="True">
                                                <asp:ListItem Value=" Order by ID Desc">默认排序</asp:ListItem>
                                                <asp:ListItem Value=" Order by CDT Desc">最新记录</asp:ListItem>
                                                <asp:ListItem Value=" Order by ID Asc">ID从小到大</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                        <br />
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                                    <asp:Button ID="AddBtn" runat="server" Text="增加新病人" class="btn btn-info" OnClick="AddBtn_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
                                  <span class="btn btn-info" onclick="UpdataPatient()" > 修改信息</span>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <span  id="StartTest" class="btn btn-warning" onclick="StartTest()">开始测试</span>
                                     
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                    <ContentTemplate>
                                        <div class=" col-xs-12 col-md-12">
                                            <div style="float: right;">
                                                总共：<asp:Label ID="Label1" runat="server" ForeColor="#5D7B9D" Font-Bold="true"></asp:Label>
                                                条记录，每页显示：<asp:DropDownList ID="PageSizeDDL" runat="server" AutoPostBack="true" Font-Bold="true"
                                                    OnSelectedIndexChanged="PageSizeDDL_SelectedIndexChanged" ForeColor="#5D7B9D">
                                                    <asp:ListItem Value="5">5</asp:ListItem>
                                                    <asp:ListItem Value="10">10</asp:ListItem>
                                                    <asp:ListItem Value="20">20</asp:ListItem>
                                                    <asp:ListItem Value="50" Selected="True">50</asp:ListItem>
                                                    <asp:ListItem Value="100">100</asp:ListItem>
                                                    <asp:ListItem Value="200">200</asp:ListItem>
                                                </asp:DropDownList>
                                                条记录，共<asp:Label ID="Label2" runat="server" ForeColor="#5D7B9D" Font-Bold="true"></asp:Label>页
                                   
                                            </div>
                                        </div>
                                        <br />

                                        <div >
                                     
                                            <table class="table">
                                            <asp:Repeater ID="Repeater2" runat="server">
                                               
                                                <HeaderTemplate>
                                                    <tr> 
                                                        <th>序</th>
                                                        <th></th>
                                                        <th>患者姓名</th>
                                                        <th>性别</th>
                                                        <th>门诊号</th>
                                                        <th>联系电话</th>
                                                        <th>日期</th>
                                                    </tr>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                      <tr data-guid='<%#Eval("GUID") %>' data-id='<%#Eval("ID") %>'  onclick="Radio(this)" style="cursor:pointer" > 
                                                          <th><%# Container.ItemIndex + 1 %></th>
                                                          <th>
                                                            <input type="radio" id="<%#"rdb"+Eval("ID") %>"  name="aa " value='<%# Eval("GUID") %>' />
                                                          </th>
                                                          <th><%# Eval("PatientName") %></th>
                                                          <th><%# Eval("Num1") %></th>
                                                          <th><%# Eval("Phone1") %></th>
                                                          <th><%# Eval("Marriage") %></th>
                                                          <th><%# Eval("CDT","{0:yyyy年MM月dd日}") %></th>

                                                      </tr>
                                                </ItemTemplate>  

                                             
                                            </asp:Repeater>
                                            </table>
                                            

                                            <br />
                                            <asp:Label ID="TestLabel" runat="server" Text="" Visible="true"></asp:Label>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                   
                                            <webdiyer:AspNetPager CssClass="pages" class="pagination" CurrentPageButtonClass="cpb" AlwaysShow="true" ID="AspNetPager1" runat="server" FirstPageText="首页" LastPageText="尾页" NextPageText="下一页" PrevPageText="上一页" OnPageChanged="AspNetPager1_PageChanged" LayoutType="Div">
                                            </webdiyer:AspNetPager>
                                        </div>


                                    </ContentTemplate>
                                </asp:UpdatePanel>

                            </div>


                        </div>
                    </div>
                </div>

                <div class="modal-footer">
                     <button onclick="ItemList()" class="btn btn-info" data-dismiss="modal" data-toggle="modal" data-target="#myModal">确认添加</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal" data-toggle="modal" data-target="#myModal">取消</button>
                </div>
            </div>
        </div>
    </div>
    <style>
        .table th {
            height:30px;
            text-align: center;
        }

        .table td, .table th {
            border:1px solid #cad9ea;
            padding: 0 1em 0;
            border-top:none;
        }

        .table th:hover {
            background: #ffffff;
        } 
    </style>
    <script type="text/javascript">
        var PatientGUID = "";
        var TestGUID = "";
     

        function SearchTextBtn(){
            document.getElementById('<%=SearchBtnText.ClientID %>').click();
            TestGUID = "";

        }

  

        function check(e) {
            var New_TextGUID = [];
            var GUID = e.getAttribute("data-guid");
            var id = e.getAttribute("data-id");
            if (document.getElementById("checkbox" + id).checked == false) {
                document.getElementById("checkbox" + id).checked = true;
                TestGUID += document.getElementById("checkbox" + id).value + "&";

            }
            else {
                New_TextGUID = TestGUID.split("&");
                TestGUID = "";
                for (i = 0; i < New_TextGUID.length-1; i++) {
                    if (New_TextGUID[i] != document.getElementById("checkbox" + id).value) {
                        TestGUID += New_TextGUID[i] + "&";
                    }
                }

                document.getElementById("checkbox" + id).checked = false;

            }
        }

        function Radio(e)
        {
            var GUID = e.getAttribute("data-guid");
            var id = e.getAttribute("data-id");
            if (document.getElementById("rdb" + id).checked == false) {
                document.getElementById("rdb" + id).checked = true;
                PatientGUID = document.getElementById("rdb" + id).value;
            }
            else {
                document.getElementById("rdb" + id).checked = false;
                PatientGUID = "";
            }
        }

        function UpdataPatient() {
            if (PatientGUID != "") {
                window.open("../Patient_Info.aspx?GUID=" + PatientGUID)
            }
            else {
                alert("请选择病人");
            }
           
        }
        function StartTest() {
            if (PatientGUID != "" && TestGUID != "") {

                var Tdata = TestGUID;
                var Pguid = PatientGUID;
                var Url = "";
                $.ajax({
                    type: "post",
                    url: "Gtest.asmx/Insert", //服务端处理程序   
                    data: { "Pguid": Pguid, "Tdata": Tdata },
                    success: function (Nums) {
                        try {
                            Url = $(Nums).find("string").text();
                            //Window.oper.href = Url;
                            window.open(Url);
                        }
                        catch (e) {
                            alert(e);
                            return;
                        }
                    },
                    error: function (Num) {
                        console.log('0');
                    },
                })

            }

            else {
                if (PatientGUID == "") {
                    alert("请选择一个病人");
                }
                else {
                    alert("至少选择一个量表");
                }

            }

        }
        function test() {
            alert("病人："+ PatientGUID + "量表："+ TestGUID);
        }
    </script>

   
</asp:Content>

