<%@ Page Language="C#" MasterPageFile="~/Test.master" AutoEventWireup="true" CodeFile="T15.aspx.cs" Inherits="T15" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <script type="text/javascript">
        document.onreadystatechange = function () {
            if (document.readyState == "complete") {
                $(".login").click(function (e) {
                    $('.blanks2').hide();
                    $(".module-area3").slideUp(400);
                });
                $(".module-close2").click(function (e) {
                    $('.blanks2').hide();
                    $(".module-area3").slideUp(400);//fadeOut()
                });


                $("#login1").click(function (e) {

                    $(".module-area").slideDown(400);//fadeIn()
                    $('#text1').show();
                    $('#text2').show();
                    $('#text3').hide(); $('#text4').hide(); $('#text5').hide(); $('#text6').hide();
                    $('#text7').hide(); $('#text8').hide(); $('#text9').hide(); $('#text10').hide(); $('#text11').hide(); $('#text12').hide();
                    $('#text13').hide(); $('#text14').hide(); $('#text15').hide(); $('#text16').hide(); $('#text17').hide(); $('#text18').hide();
                    $('#text19').hide(); $('#text20').hide(); $('#text21').hide(); $('#text22').hide(); $('#text23').hide(); $('#text24').hide();
                    $('#text25').hide(); $('#text26').hide(); $('#text27').hide(); $('#text28').hide(); $('#text29').hide(); $('#text30').hide();
                    $('#text31').hide(); $('#text32').hide(); $('#text33').hide(); $('#text34').hide(); $('#text35').hide(); $('#text36').hide();
                    $('#text37').hide(); $('#text38').hide(); $('#text39').hide(); $('#text40').hide(); $('#text41').hide(); $('#text42').hide();
                    $('#text43').hide(); $('#text44').hide(); $('#text45').hide(); $('#text46').hide(); $('#text47').hide(); $('#text48').hide();
                    $('#text49').hide(); $('#text50').hide(); $('#text51').hide(); $('#text52').hide(); $('#text53').hide(); $('#text54').hide();
                    $('#text55').hide(); $('#text56').hide(); $('#text57').hide(); $('#text58').hide(); $('#text59').hide(); $('#text60').hide();
                });


                $("#login2").click(function (e) {

                    $(".module-area").slideDown(400);//fadeIn()
                    $('#text3').show();
                    $('#text4').show();
                    $('#text1').hide(); $('#text2').hide(); $('#text5').hide(); $('#text6').hide();
                    $('#text7').hide(); $('#text8').hide(); $('#text9').hide(); $('#text10').hide(); $('#text11').hide(); $('#text12').hide();
                    $('#text13').hide(); $('#text14').hide(); $('#text15').hide(); $('#text16').hide(); $('#text17').hide(); $('#text18').hide();
                    $('#text19').hide(); $('#text20').hide(); $('#text21').hide(); $('#text22').hide(); $('#text23').hide(); $('#text24').hide();
                    $('#text25').hide(); $('#text26').hide(); $('#text27').hide(); $('#text28').hide(); $('#text29').hide(); $('#text30').hide();
                    $('#text31').hide(); $('#text32').hide(); $('#text33').hide(); $('#text34').hide(); $('#text35').hide(); $('#text36').hide();
                    $('#text37').hide(); $('#text38').hide(); $('#text39').hide(); $('#text40').hide(); $('#text41').hide(); $('#text42').hide();
                    $('#text43').hide(); $('#text44').hide(); $('#text45').hide(); $('#text46').hide(); $('#text47').hide(); $('#text48').hide();
                    $('#text49').hide(); $('#text50').hide(); $('#text51').hide(); $('#text52').hide(); $('#text53').hide(); $('#text54').hide();
                    $('#text55').hide(); $('#text56').hide(); $('#text57').hide(); $('#text58').hide(); $('#text59').hide(); $('#text60').hide();

                });
                $("#login3").click(function (e) {

                    $(".module-area").slideDown(400);//fadeIn()
                    $('#text5').show();
                    $('#text6').show();
                    $('#text1').hide(); $('#text2').hide(); $('#text3').hide(); $('#text4').hide(); 
                    $('#text7').hide(); $('#text8').hide(); $('#text9').hide(); $('#text10').hide(); $('#text11').hide(); $('#text12').hide();
                    $('#text13').hide(); $('#text14').hide(); $('#text15').hide(); $('#text16').hide(); $('#text17').hide(); $('#text18').hide();
                    $('#text19').hide(); $('#text20').hide(); $('#text21').hide(); $('#text22').hide(); $('#text23').hide(); $('#text24').hide();
                    $('#text25').hide(); $('#text26').hide(); $('#text27').hide(); $('#text28').hide(); $('#text29').hide(); $('#text30').hide();
                    $('#text31').hide(); $('#text32').hide(); $('#text33').hide(); $('#text34').hide(); $('#text35').hide(); $('#text36').hide();
                    $('#text37').hide(); $('#text38').hide(); $('#text39').hide(); $('#text40').hide(); $('#text41').hide(); $('#text42').hide();
                    $('#text43').hide(); $('#text44').hide(); $('#text45').hide(); $('#text46').hide(); $('#text47').hide(); $('#text48').hide();
                    $('#text49').hide(); $('#text50').hide(); $('#text51').hide(); $('#text52').hide(); $('#text53').hide(); $('#text54').hide();
                    $('#text55').hide(); $('#text56').hide(); $('#text57').hide(); $('#text58').hide(); $('#text59').hide(); $('#text60').hide();

                });
                $("#login4").click(function (e) {

                    $(".module-area").slideDown(400);//fadeIn()
                    $('#text7').show();
                    $('#text8').show();
                    $('#text1').hide(); $('#text2').hide(); $('#text3').hide(); $('#text4').hide(); $('#text5').hide(); $('#text6').hide();
                     $('#text9').hide(); $('#text10').hide(); $('#text11').hide(); $('#text12').hide();
                    $('#text13').hide(); $('#text14').hide(); $('#text15').hide(); $('#text16').hide(); $('#text17').hide(); $('#text18').hide();
                    $('#text19').hide(); $('#text20').hide(); $('#text21').hide(); $('#text22').hide(); $('#text23').hide(); $('#text24').hide();
                    $('#text25').hide(); $('#text26').hide(); $('#text27').hide(); $('#text28').hide(); $('#text29').hide(); $('#text30').hide();
                    $('#text31').hide(); $('#text32').hide(); $('#text33').hide(); $('#text34').hide(); $('#text35').hide(); $('#text36').hide();
                    $('#text37').hide(); $('#text38').hide(); $('#text39').hide(); $('#text40').hide(); $('#text41').hide(); $('#text42').hide();
                    $('#text43').hide(); $('#text44').hide(); $('#text45').hide(); $('#text46').hide(); $('#text47').hide(); $('#text48').hide();
                    $('#text49').hide(); $('#text50').hide(); $('#text51').hide(); $('#text52').hide(); $('#text53').hide(); $('#text54').hide();
                    $('#text55').hide(); $('#text56').hide(); $('#text57').hide(); $('#text58').hide(); $('#text59').hide(); $('#text60').hide();

                });
                $("#login5").click(function (e) {

                    $(".module-area").slideDown(400);//fadeIn()
                    $('#text9').show();
                    $('#text10').show();
                    $('#text1').hide(); $('#text2').hide(); $('#text3').hide(); $('#text4').hide(); $('#text5').hide(); $('#text6').hide();
                    $('#text7').hide(); $('#text8').hide();  $('#text11').hide(); $('#text12').hide();
                    $('#text13').hide(); $('#text14').hide(); $('#text15').hide(); $('#text16').hide(); $('#text17').hide(); $('#text18').hide();
                    $('#text19').hide(); $('#text20').hide(); $('#text21').hide(); $('#text22').hide(); $('#text23').hide(); $('#text24').hide();
                    $('#text25').hide(); $('#text26').hide(); $('#text27').hide(); $('#text28').hide(); $('#text29').hide(); $('#text30').hide();
                    $('#text31').hide(); $('#text32').hide(); $('#text33').hide(); $('#text34').hide(); $('#text35').hide(); $('#text36').hide();
                    $('#text37').hide(); $('#text38').hide(); $('#text39').hide(); $('#text40').hide(); $('#text41').hide(); $('#text42').hide();
                    $('#text43').hide(); $('#text44').hide(); $('#text45').hide(); $('#text46').hide(); $('#text47').hide(); $('#text48').hide();
                    $('#text49').hide(); $('#text50').hide(); $('#text51').hide(); $('#text52').hide(); $('#text53').hide(); $('#text54').hide();
                    $('#text55').hide(); $('#text56').hide(); $('#text57').hide(); $('#text58').hide(); $('#text59').hide(); $('#text60').hide();

                });
                $("#login6").click(function (e) {

                    $(".module-area").slideDown(400);//fadeIn()
                    $('#text11').show();
                    $('#text12').show();
                    $('#text1').hide(); $('#text2').hide(); $('#text3').hide(); $('#text4').hide(); $('#text5').hide(); $('#text6').hide();
                    $('#text7').hide(); $('#text8').hide(); $('#text9').hide(); $('#text10').hide();
                    $('#text13').hide(); $('#text14').hide(); $('#text15').hide(); $('#text16').hide(); $('#text17').hide(); $('#text18').hide();
                    $('#text19').hide(); $('#text20').hide(); $('#text21').hide(); $('#text22').hide(); $('#text23').hide(); $('#text24').hide();
                    $('#text25').hide(); $('#text26').hide(); $('#text27').hide(); $('#text28').hide(); $('#text29').hide(); $('#text30').hide();
                    $('#text31').hide(); $('#text32').hide(); $('#text33').hide(); $('#text34').hide(); $('#text35').hide(); $('#text36').hide();
                    $('#text37').hide(); $('#text38').hide(); $('#text39').hide(); $('#text40').hide(); $('#text41').hide(); $('#text42').hide();
                    $('#text43').hide(); $('#text44').hide(); $('#text45').hide(); $('#text46').hide(); $('#text47').hide(); $('#text48').hide();
                    $('#text49').hide(); $('#text50').hide(); $('#text51').hide(); $('#text52').hide(); $('#text53').hide(); $('#text54').hide();
                    $('#text55').hide(); $('#text56').hide(); $('#text57').hide(); $('#text58').hide(); $('#text59').hide(); $('#text60').hide();

                });
                $("#login7").click(function (e) {

                    $(".module-area").slideDown(400);//fadeIn()
                    $('#text13').show();
                    $('#text14').show();
                    $('#text1').hide(); $('#text2').hide(); $('#text3').hide(); $('#text4').hide(); $('#text5').hide(); $('#text6').hide();
                    $('#text7').hide(); $('#text8').hide(); $('#text9').hide(); $('#text10').hide(); $('#text11').hide(); $('#text12').hide();
                    $('#text15').hide(); $('#text16').hide(); $('#text17').hide(); $('#text18').hide();
                    $('#text19').hide(); $('#text20').hide(); $('#text21').hide(); $('#text22').hide(); $('#text23').hide(); $('#text24').hide();
                    $('#text25').hide(); $('#text26').hide(); $('#text27').hide(); $('#text28').hide(); $('#text29').hide(); $('#text30').hide();
                    $('#text31').hide(); $('#text32').hide(); $('#text33').hide(); $('#text34').hide(); $('#text35').hide(); $('#text36').hide();
                    $('#text37').hide(); $('#text38').hide(); $('#text39').hide(); $('#text40').hide(); $('#text41').hide(); $('#text42').hide();
                    $('#text43').hide(); $('#text44').hide(); $('#text45').hide(); $('#text46').hide(); $('#text47').hide(); $('#text48').hide();
                    $('#text49').hide(); $('#text50').hide(); $('#text51').hide(); $('#text52').hide(); $('#text53').hide(); $('#text54').hide();
                    $('#text55').hide(); $('#text56').hide(); $('#text57').hide(); $('#text58').hide(); $('#text59').hide(); $('#text60').hide();

                });

                $("#login8").click(function (e) {

                    $(".module-area").slideDown(400);//fadeIn()
                    $('#text15').show();
                    $('#text16').show();
                    $('#text1').hide(); $('#text2').hide(); $('#text3').hide(); $('#text4').hide(); $('#text5').hide(); $('#text6').hide();
                    $('#text7').hide(); $('#text8').hide(); $('#text9').hide(); $('#text10').hide(); $('#text11').hide(); $('#text12').hide();
                    $('#text13').hide(); $('#text14').hide(); $('#text17').hide(); $('#text18').hide();
                    $('#text19').hide(); $('#text20').hide(); $('#text21').hide(); $('#text22').hide(); $('#text23').hide(); $('#text24').hide();
                    $('#text25').hide(); $('#text26').hide(); $('#text27').hide(); $('#text28').hide(); $('#text29').hide(); $('#text30').hide();
                    $('#text31').hide(); $('#text32').hide(); $('#text33').hide(); $('#text34').hide(); $('#text35').hide(); $('#text36').hide();
                    $('#text37').hide(); $('#text38').hide(); $('#text39').hide(); $('#text40').hide(); $('#text41').hide(); $('#text42').hide();
                    $('#text43').hide(); $('#text44').hide(); $('#text45').hide(); $('#text46').hide(); $('#text47').hide(); $('#text48').hide();
                    $('#text49').hide(); $('#text50').hide(); $('#text51').hide(); $('#text52').hide(); $('#text53').hide(); $('#text54').hide();
                    $('#text55').hide(); $('#text56').hide(); $('#text57').hide(); $('#text58').hide(); $('#text59').hide(); $('#text60').hide();
                });


                $("#login9").click(function (e) {

                    $(".module-area").slideDown(400);//fadeIn()
                    $('#text17').show();
                    $('#text18').show();
                    $('#text1').hide(); $('#text2').hide(); $('#text3').hide(); $('#text4').hide(); $('#text5').hide(); $('#text6').hide();
                    $('#text7').hide(); $('#text8').hide(); $('#text9').hide(); $('#text10').hide(); $('#text11').hide(); $('#text12').hide();
                    $('#text13').hide(); $('#text14').hide(); $('#text15').hide(); $('#text16').hide();
                    $('#text19').hide(); $('#text20').hide(); $('#text21').hide(); $('#text22').hide(); $('#text23').hide(); $('#text24').hide();
                    $('#text25').hide(); $('#text26').hide(); $('#text27').hide(); $('#text28').hide(); $('#text29').hide(); $('#text30').hide();
                    $('#text31').hide(); $('#text32').hide(); $('#text33').hide(); $('#text34').hide(); $('#text35').hide(); $('#text36').hide();
                    $('#text37').hide(); $('#text38').hide(); $('#text39').hide(); $('#text40').hide(); $('#text41').hide(); $('#text42').hide();
                    $('#text43').hide(); $('#text44').hide(); $('#text45').hide(); $('#text46').hide(); $('#text47').hide(); $('#text48').hide();
                    $('#text49').hide(); $('#text50').hide(); $('#text51').hide(); $('#text52').hide(); $('#text53').hide(); $('#text54').hide();
                    $('#text55').hide(); $('#text56').hide(); $('#text57').hide(); $('#text58').hide(); $('#text59').hide(); $('#text60').hide();

                });
                $("#login10").click(function (e) {

                    $(".module-area").slideDown(400);//fadeIn()
                    $('#text19').show();
                    $('#text20').show();
                    $('#text1').hide(); $('#text2').hide(); $('#text3').hide(); $('#text4').hide(); $('#text5').hide(); $('#text6').hide();
                    $('#text7').hide(); $('#text8').hide(); $('#text9').hide(); $('#text10').hide(); $('#text11').hide(); $('#text12').hide();
                    $('#text13').hide(); $('#text14').hide(); $('#text15').hide(); $('#text16').hide(); $('#text17').hide(); $('#text18').hide();
                     $('#text21').hide(); $('#text22').hide(); $('#text23').hide(); $('#text24').hide();
                    $('#text25').hide(); $('#text26').hide(); $('#text27').hide(); $('#text28').hide(); $('#text29').hide(); $('#text30').hide();
                    $('#text31').hide(); $('#text32').hide(); $('#text33').hide(); $('#text34').hide(); $('#text35').hide(); $('#text36').hide();
                    $('#text37').hide(); $('#text38').hide(); $('#text39').hide(); $('#text40').hide(); $('#text41').hide(); $('#text42').hide();
                    $('#text43').hide(); $('#text44').hide(); $('#text45').hide(); $('#text46').hide(); $('#text47').hide(); $('#text48').hide();
                    $('#text49').hide(); $('#text50').hide(); $('#text51').hide(); $('#text52').hide(); $('#text53').hide(); $('#text54').hide();
                    $('#text55').hide(); $('#text56').hide(); $('#text57').hide(); $('#text58').hide(); $('#text59').hide(); $('#text60').hide();

                });
                $("#login11").click(function (e) {

                    $(".module-area").slideDown(400);//fadeIn()
                    $('#text21').show();
                    $('#text22').show();
                    $('#text1').hide(); $('#text2').hide(); $('#text3').hide(); $('#text4').hide(); $('#text5').hide(); $('#text6').hide();
                    $('#text7').hide(); $('#text8').hide(); $('#text9').hide(); $('#text10').hide(); $('#text11').hide(); $('#text12').hide();
                    $('#text13').hide(); $('#text14').hide(); $('#text15').hide(); $('#text16').hide(); $('#text17').hide(); $('#text18').hide();
                    $('#text19').hide(); $('#text20').hide();  $('#text23').hide(); $('#text24').hide();
                    $('#text25').hide(); $('#text26').hide(); $('#text27').hide(); $('#text28').hide(); $('#text29').hide(); $('#text30').hide();
                    $('#text31').hide(); $('#text32').hide(); $('#text33').hide(); $('#text34').hide(); $('#text35').hide(); $('#text36').hide();
                    $('#text37').hide(); $('#text38').hide(); $('#text39').hide(); $('#text40').hide(); $('#text41').hide(); $('#text42').hide();
                    $('#text43').hide(); $('#text44').hide(); $('#text45').hide(); $('#text46').hide(); $('#text47').hide(); $('#text48').hide();
                    $('#text49').hide(); $('#text50').hide(); $('#text51').hide(); $('#text52').hide(); $('#text53').hide(); $('#text54').hide();
                    $('#text55').hide(); $('#text56').hide(); $('#text57').hide(); $('#text58').hide(); $('#text59').hide(); $('#text60').hide();
                });
                $("#login12").click(function (e) {
                    $(".module-area").slideDown(400);//fadeIn()
                    $('#text23').show();
                    $('#text24').show();
                    $('#text1').hide(); $('#text2').hide(); $('#text3').hide(); $('#text4').hide(); $('#text5').hide(); $('#text6').hide();
                    $('#text7').hide(); $('#text8').hide(); $('#text9').hide(); $('#text10').hide(); $('#text11').hide(); $('#text12').hide();
                    $('#text13').hide(); $('#text14').hide(); $('#text15').hide(); $('#text16').hide(); $('#text17').hide(); $('#text18').hide();
                    $('#text19').hide(); $('#text20').hide(); $('#text21').hide(); $('#text22').hide();
                    $('#text25').hide(); $('#text26').hide(); $('#text27').hide(); $('#text28').hide(); $('#text29').hide(); $('#text30').hide();
                    $('#text31').hide(); $('#text32').hide(); $('#text33').hide(); $('#text34').hide(); $('#text35').hide(); $('#text36').hide();
                    $('#text37').hide(); $('#text38').hide(); $('#text39').hide(); $('#text40').hide(); $('#text41').hide(); $('#text42').hide();
                    $('#text43').hide(); $('#text44').hide(); $('#text45').hide(); $('#text46').hide(); $('#text47').hide(); $('#text48').hide();
                    $('#text49').hide(); $('#text50').hide(); $('#text51').hide(); $('#text52').hide(); $('#text53').hide(); $('#text54').hide();
                    $('#text55').hide(); $('#text56').hide(); $('#text57').hide(); $('#text58').hide(); $('#text59').hide(); $('#text60').hide();

                });
                $("#login13").click(function (e) {
                    $(".module-area").slideDown(400);//fadeIn()
                    $('#text25').show();
                    $('#text26').show();
                    $('#text1').hide(); $('#text2').hide(); $('#text3').hide(); $('#text4').hide(); $('#text5').hide(); $('#text6').hide();
                    $('#text7').hide(); $('#text8').hide(); $('#text9').hide(); $('#text10').hide(); $('#text11').hide(); $('#text12').hide();
                    $('#text13').hide(); $('#text14').hide(); $('#text15').hide(); $('#text16').hide(); $('#text17').hide(); $('#text18').hide();
                    $('#text19').hide(); $('#text20').hide(); $('#text21').hide(); $('#text22').hide(); $('#text23').hide(); $('#text24').hide();
                   $('#text27').hide(); $('#text28').hide(); $('#text29').hide(); $('#text30').hide();
                    $('#text31').hide(); $('#text32').hide(); $('#text33').hide(); $('#text34').hide(); $('#text35').hide(); $('#text36').hide();
                    $('#text37').hide(); $('#text38').hide(); $('#text39').hide(); $('#text40').hide(); $('#text41').hide(); $('#text42').hide();
                    $('#text43').hide(); $('#text44').hide(); $('#text45').hide(); $('#text46').hide(); $('#text47').hide(); $('#text48').hide();
                    $('#text49').hide(); $('#text50').hide(); $('#text51').hide(); $('#text52').hide(); $('#text53').hide(); $('#text54').hide();
                    $('#text55').hide(); $('#text56').hide(); $('#text57').hide(); $('#text58').hide(); $('#text59').hide(); $('#text60').hide();

                });
                $("#login14").click(function (e) {
                    $(".module-area").slideDown(400);//fadeIn()
                    $('#text27').show();
                    $('#text28').show();
                    $('#text1').hide(); $('#text2').hide(); $('#text3').hide(); $('#text4').hide(); $('#text5').hide(); $('#text6').hide();
                    $('#text7').hide(); $('#text8').hide(); $('#text9').hide(); $('#text10').hide(); $('#text11').hide(); $('#text12').hide();
                    $('#text13').hide(); $('#text14').hide(); $('#text15').hide(); $('#text16').hide(); $('#text17').hide(); $('#text18').hide();
                    $('#text19').hide(); $('#text20').hide(); $('#text21').hide(); $('#text22').hide(); $('#text23').hide(); $('#text24').hide();
                    $('#text25').hide(); $('#text26').hide(); $('#text29').hide(); $('#text30').hide();
                    $('#text31').hide(); $('#text32').hide(); $('#text33').hide(); $('#text34').hide(); $('#text35').hide(); $('#text36').hide();
                    $('#text37').hide(); $('#text38').hide(); $('#text39').hide(); $('#text40').hide(); $('#text41').hide(); $('#text42').hide();
                    $('#text43').hide(); $('#text44').hide(); $('#text45').hide(); $('#text46').hide(); $('#text47').hide(); $('#text48').hide();
                    $('#text49').hide(); $('#text50').hide(); $('#text51').hide(); $('#text52').hide(); $('#text53').hide(); $('#text54').hide();
                    $('#text55').hide(); $('#text56').hide(); $('#text57').hide(); $('#text58').hide(); $('#text59').hide(); $('#text60').hide();


                });
                $("#login15").click(function (e) {
                    $(".module-area").slideDown(400);//fadeIn()
                    $('#text29').show();
                    $('#text30').show();
                    $('#text1').hide(); $('#text2').hide(); $('#text3').hide(); $('#text4').hide(); $('#text5').hide(); $('#text6').hide();
                    $('#text7').hide(); $('#text8').hide(); $('#text9').hide(); $('#text10').hide(); $('#text11').hide(); $('#text12').hide();
                    $('#text13').hide(); $('#text14').hide(); $('#text15').hide(); $('#text16').hide(); $('#text17').hide(); $('#text18').hide();
                    $('#text19').hide(); $('#text20').hide(); $('#text21').hide(); $('#text22').hide(); $('#text23').hide(); $('#text24').hide();
                    $('#text25').hide(); $('#text26').hide(); $('#text27').hide(); $('#text28').hide();
                    $('#text31').hide(); $('#text32').hide(); $('#text33').hide(); $('#text34').hide(); $('#text35').hide(); $('#text36').hide();
                    $('#text37').hide(); $('#text38').hide(); $('#text39').hide(); $('#text40').hide(); $('#text41').hide(); $('#text42').hide();
                    $('#text43').hide(); $('#text44').hide(); $('#text45').hide(); $('#text46').hide(); $('#text47').hide(); $('#text48').hide();
                    $('#text49').hide(); $('#text50').hide(); $('#text51').hide(); $('#text52').hide(); $('#text53').hide(); $('#text54').hide();
                    $('#text55').hide(); $('#text56').hide(); $('#text57').hide(); $('#text58').hide(); $('#text59').hide(); $('#text60').hide();

                });
                $("#login16").click(function (e) {
                    $(".module-area").slideDown(400);//fadeIn()
                    $('#text31').show();
                    $('#text32').show();
                    $('#text1').hide(); $('#text2').hide(); $('#text3').hide(); $('#text4').hide(); $('#text5').hide(); $('#text6').hide();
                    $('#text7').hide(); $('#text8').hide(); $('#text9').hide(); $('#text10').hide(); $('#text11').hide(); $('#text12').hide();
                    $('#text13').hide(); $('#text14').hide(); $('#text15').hide(); $('#text16').hide(); $('#text17').hide(); $('#text18').hide();
                    $('#text19').hide(); $('#text20').hide(); $('#text21').hide(); $('#text22').hide(); $('#text23').hide(); $('#text24').hide();
                    $('#text25').hide(); $('#text26').hide(); $('#text27').hide(); $('#text28').hide(); $('#text29').hide(); $('#text30').hide();
                   $('#text33').hide(); $('#text34').hide(); $('#text35').hide(); $('#text36').hide();
                    $('#text37').hide(); $('#text38').hide(); $('#text39').hide(); $('#text40').hide(); $('#text41').hide(); $('#text42').hide();
                    $('#text43').hide(); $('#text44').hide(); $('#text45').hide(); $('#text46').hide(); $('#text47').hide(); $('#text48').hide();
                    $('#text49').hide(); $('#text50').hide(); $('#text51').hide(); $('#text52').hide(); $('#text53').hide(); $('#text54').hide();
                    $('#text55').hide(); $('#text56').hide(); $('#text57').hide(); $('#text58').hide(); $('#text59').hide(); $('#text60').hide();

                });
                $("#login17").click(function (e) {
                    $(".module-area").slideDown(400);//fadeIn()
                    $('#text33').show();
                    $('#text34').show();
                    $('#text1').hide(); $('#text2').hide(); $('#text3').hide(); $('#text4').hide(); $('#text5').hide(); $('#text6').hide();
                    $('#text7').hide(); $('#text8').hide(); $('#text9').hide(); $('#text10').hide(); $('#text11').hide(); $('#text12').hide();
                    $('#text13').hide(); $('#text14').hide(); $('#text15').hide(); $('#text16').hide(); $('#text17').hide(); $('#text18').hide();
                    $('#text19').hide(); $('#text20').hide(); $('#text21').hide(); $('#text22').hide(); $('#text23').hide(); $('#text24').hide();
                    $('#text25').hide(); $('#text26').hide(); $('#text27').hide(); $('#text28').hide(); $('#text29').hide(); $('#text30').hide();
                    $('#text31').hide(); $('#text32').hide(); $('#text35').hide(); $('#text36').hide();
                    $('#text37').hide(); $('#text38').hide(); $('#text39').hide(); $('#text40').hide(); $('#text41').hide(); $('#text42').hide();
                    $('#text43').hide(); $('#text44').hide(); $('#text45').hide(); $('#text46').hide(); $('#text47').hide(); $('#text48').hide();
                    $('#text49').hide(); $('#text50').hide(); $('#text51').hide(); $('#text52').hide(); $('#text53').hide(); $('#text54').hide();
                    $('#text55').hide(); $('#text56').hide(); $('#text57').hide(); $('#text58').hide(); $('#text59').hide(); $('#text60').hide();

                });
                $("#login18").click(function (e) {
                    $(".module-area").slideDown(400);//fadeIn()
                    $('#text35').show();
                    $('#text36').show();
                    $('#text1').hide(); $('#text2').hide(); $('#text3').hide(); $('#text4').hide(); $('#text5').hide(); $('#text6').hide();
                    $('#text7').hide(); $('#text8').hide(); $('#text9').hide(); $('#text10').hide(); $('#text11').hide(); $('#text12').hide();
                    $('#text13').hide(); $('#text14').hide(); $('#text15').hide(); $('#text16').hide(); $('#text17').hide(); $('#text18').hide();
                    $('#text19').hide(); $('#text20').hide(); $('#text21').hide(); $('#text22').hide(); $('#text23').hide(); $('#text24').hide();
                    $('#text25').hide(); $('#text26').hide(); $('#text27').hide(); $('#text28').hide(); $('#text29').hide(); $('#text30').hide();
                    $('#text31').hide(); $('#text32').hide(); $('#text33').hide(); $('#text34').hide(); 
                    $('#text37').hide(); $('#text38').hide(); $('#text39').hide(); $('#text40').hide(); $('#text41').hide(); $('#text42').hide();
                    $('#text43').hide(); $('#text44').hide(); $('#text45').hide(); $('#text46').hide(); $('#text47').hide(); $('#text48').hide();
                    $('#text49').hide(); $('#text50').hide(); $('#text51').hide(); $('#text52').hide(); $('#text53').hide(); $('#text54').hide();
                    $('#text55').hide(); $('#text56').hide(); $('#text57').hide(); $('#text58').hide(); $('#text59').hide(); $('#text60').hide();

                });
                $("#login19").click(function (e) {
                    $(".module-area").slideDown(400);//fadeIn()
                    $('#text37').show();
                    $('#text38').show();
                    $('#text1').hide(); $('#text2').hide(); $('#text3').hide(); $('#text4').hide(); $('#text5').hide(); $('#text6').hide();
                    $('#text7').hide(); $('#text8').hide(); $('#text9').hide(); $('#text10').hide(); $('#text11').hide(); $('#text12').hide();
                    $('#text13').hide(); $('#text14').hide(); $('#text15').hide(); $('#text16').hide(); $('#text17').hide(); $('#text18').hide();
                    $('#text19').hide(); $('#text20').hide(); $('#text21').hide(); $('#text22').hide(); $('#text23').hide(); $('#text24').hide();
                    $('#text25').hide(); $('#text26').hide(); $('#text27').hide(); $('#text28').hide(); $('#text29').hide(); $('#text30').hide();
                    $('#text31').hide(); $('#text32').hide(); $('#text33').hide(); $('#text34').hide(); $('#text35').hide(); $('#text36').hide();
                    $('#text39').hide(); $('#text40').hide(); $('#text41').hide(); $('#text42').hide();
                    $('#text43').hide(); $('#text44').hide(); $('#text45').hide(); $('#text46').hide(); $('#text47').hide(); $('#text48').hide();
                    $('#text49').hide(); $('#text50').hide(); $('#text51').hide(); $('#text52').hide(); $('#text53').hide(); $('#text54').hide();
                    $('#text55').hide(); $('#text56').hide(); $('#text57').hide(); $('#text58').hide(); $('#text59').hide(); $('#text60').hide();
                });
                $("#login20").click(function (e) {
                    $(".module-area").slideDown(400);//fadeIn()
                    $('#text39').show();
                    $('#text40').show();
                    $('#text1').hide(); $('#text2').hide(); $('#text3').hide(); $('#text4').hide(); $('#text5').hide(); $('#text6').hide();
                    $('#text7').hide(); $('#text8').hide(); $('#text9').hide(); $('#text10').hide(); $('#text11').hide(); $('#text12').hide();
                    $('#text13').hide(); $('#text14').hide(); $('#text15').hide(); $('#text16').hide(); $('#text17').hide(); $('#text18').hide();
                    $('#text19').hide(); $('#text20').hide(); $('#text21').hide(); $('#text22').hide(); $('#text23').hide(); $('#text24').hide();
                    $('#text25').hide(); $('#text26').hide(); $('#text27').hide(); $('#text28').hide(); $('#text29').hide(); $('#text30').hide();
                    $('#text31').hide(); $('#text32').hide(); $('#text33').hide(); $('#text34').hide(); $('#text35').hide(); $('#text36').hide();
                    $('#text37').hide(); $('#text38').hide();$('#text41').hide(); $('#text42').hide();
                    $('#text43').hide(); $('#text44').hide(); $('#text45').hide(); $('#text46').hide(); $('#text47').hide(); $('#text48').hide();
                    $('#text49').hide(); $('#text50').hide(); $('#text51').hide(); $('#text52').hide(); $('#text53').hide(); $('#text54').hide();
                    $('#text55').hide(); $('#text56').hide(); $('#text57').hide(); $('#text58').hide(); $('#text59').hide(); $('#text60').hide();

                });
                $("#login21").click(function (e) {
                    $(".module-area").slideDown(400);//fadeIn()
                    $('#text41').show();
                    $('#text42').show();
                    $('#text1').hide(); $('#text2').hide(); $('#text3').hide(); $('#text4').hide(); $('#text5').hide(); $('#text6').hide();
                    $('#text7').hide(); $('#text8').hide(); $('#text9').hide(); $('#text10').hide(); $('#text11').hide(); $('#text12').hide();
                    $('#text13').hide(); $('#text14').hide(); $('#text15').hide(); $('#text16').hide(); $('#text17').hide(); $('#text18').hide();
                    $('#text19').hide(); $('#text20').hide(); $('#text21').hide(); $('#text22').hide(); $('#text23').hide(); $('#text24').hide();
                    $('#text25').hide(); $('#text26').hide(); $('#text27').hide(); $('#text28').hide(); $('#text29').hide(); $('#text30').hide();
                    $('#text31').hide(); $('#text32').hide(); $('#text33').hide(); $('#text34').hide(); $('#text35').hide(); $('#text36').hide();
                    $('#text37').hide(); $('#text38').hide(); $('#text39').hide(); $('#text40').hide();
                    $('#text43').hide(); $('#text44').hide(); $('#text45').hide(); $('#text46').hide(); $('#text47').hide(); $('#text48').hide();
                    $('#text49').hide(); $('#text50').hide(); $('#text51').hide(); $('#text52').hide(); $('#text53').hide(); $('#text54').hide();
                    $('#text55').hide(); $('#text56').hide(); $('#text57').hide(); $('#text58').hide(); $('#text59').hide(); $('#text60').hide();

                });
                $("#login22").click(function (e) {
                    $(".module-area").slideDown(400);//fadeIn()
                    $('#text43').show();
                    $('#text44').show();
                    $('#text1').hide(); $('#text2').hide(); $('#text3').hide(); $('#text4').hide(); $('#text5').hide(); $('#text6').hide();
                    $('#text7').hide(); $('#text8').hide(); $('#text9').hide(); $('#text10').hide(); $('#text11').hide(); $('#text12').hide();
                    $('#text13').hide(); $('#text14').hide(); $('#text15').hide(); $('#text16').hide(); $('#text17').hide(); $('#text18').hide();
                    $('#text19').hide(); $('#text20').hide(); $('#text21').hide(); $('#text22').hide(); $('#text23').hide(); $('#text24').hide();
                    $('#text25').hide(); $('#text26').hide(); $('#text27').hide(); $('#text28').hide(); $('#text29').hide(); $('#text30').hide();
                    $('#text31').hide(); $('#text32').hide(); $('#text33').hide(); $('#text34').hide(); $('#text35').hide(); $('#text36').hide();
                    $('#text37').hide(); $('#text38').hide(); $('#text39').hide(); $('#text40').hide(); $('#text41').hide(); $('#text42').hide();
                    $('#text45').hide(); $('#text46').hide(); $('#text47').hide(); $('#text48').hide();
                    $('#text49').hide(); $('#text50').hide(); $('#text51').hide(); $('#text52').hide(); $('#text53').hide(); $('#text54').hide();
                    $('#text55').hide(); $('#text56').hide(); $('#text57').hide(); $('#text58').hide(); $('#text59').hide(); $('#text60').hide();

                });
                $("#login23").click(function (e) {
                    $(".module-area").slideDown(400);//fadeIn()
                    $('#text45').show();
                    $('#text46').show();
                    $('#text1').hide(); $('#text2').hide(); $('#text3').hide(); $('#text4').hide(); $('#text5').hide(); $('#text6').hide();
                    $('#text7').hide(); $('#text8').hide(); $('#text9').hide(); $('#text10').hide(); $('#text11').hide(); $('#text12').hide();
                    $('#text13').hide(); $('#text14').hide(); $('#text15').hide(); $('#text16').hide(); $('#text17').hide(); $('#text18').hide();
                    $('#text19').hide(); $('#text20').hide(); $('#text21').hide(); $('#text22').hide(); $('#text23').hide(); $('#text24').hide();
                    $('#text25').hide(); $('#text26').hide(); $('#text27').hide(); $('#text28').hide(); $('#text29').hide(); $('#text30').hide();
                    $('#text31').hide(); $('#text32').hide(); $('#text33').hide(); $('#text34').hide(); $('#text35').hide(); $('#text36').hide();
                    $('#text37').hide(); $('#text38').hide(); $('#text39').hide(); $('#text40').hide(); $('#text41').hide(); $('#text42').hide();
                    $('#text43').hide(); $('#text44').hide(); $('#text47').hide(); $('#text48').hide();
                    $('#text49').hide(); $('#text50').hide(); $('#text51').hide(); $('#text52').hide(); $('#text53').hide(); $('#text54').hide();
                    $('#text55').hide(); $('#text56').hide(); $('#text57').hide(); $('#text58').hide(); $('#text59').hide(); $('#text60').hide();

                });
                $("#login24").click(function (e) {
                    $(".module-area").slideDown(400);//fadeIn()
                    $('#text47').show();
                    $('#text48').show();
                    $('#text1').hide(); $('#text2').hide(); $('#text3').hide(); $('#text4').hide(); $('#text5').hide(); $('#text6').hide();
                    $('#text7').hide(); $('#text8').hide(); $('#text9').hide(); $('#text10').hide(); $('#text11').hide(); $('#text12').hide();
                    $('#text13').hide(); $('#text14').hide(); $('#text15').hide(); $('#text16').hide(); $('#text17').hide(); $('#text18').hide();
                    $('#text19').hide(); $('#text20').hide(); $('#text21').hide(); $('#text22').hide(); $('#text23').hide(); $('#text24').hide();
                    $('#text25').hide(); $('#text26').hide(); $('#text27').hide(); $('#text28').hide(); $('#text29').hide(); $('#text30').hide();
                    $('#text31').hide(); $('#text32').hide(); $('#text33').hide(); $('#text34').hide(); $('#text35').hide(); $('#text36').hide();
                    $('#text37').hide(); $('#text38').hide(); $('#text39').hide(); $('#text40').hide(); $('#text41').hide(); $('#text42').hide();
                    $('#text43').hide(); $('#text44').hide(); $('#text45').hide(); $('#text46').hide();
                    $('#text49').hide(); $('#text50').hide(); $('#text51').hide(); $('#text52').hide(); $('#text53').hide(); $('#text54').hide();
                    $('#text55').hide(); $('#text56').hide(); $('#text57').hide(); $('#text58').hide(); $('#text59').hide(); $('#text60').hide();

                });
                $("#login25").click(function (e) {
                    $(".module-area").slideDown(400);//fadeIn()
                    $('#text49').show();
                    $('#text50').show();
                    $('#text1').hide(); $('#text2').hide(); $('#text3').hide(); $('#text4').hide(); $('#text5').hide(); $('#text6').hide();
                    $('#text7').hide(); $('#text8').hide(); $('#text9').hide(); $('#text10').hide(); $('#text11').hide(); $('#text12').hide();
                    $('#text13').hide(); $('#text14').hide(); $('#text15').hide(); $('#text16').hide(); $('#text17').hide(); $('#text18').hide();
                    $('#text19').hide(); $('#text20').hide(); $('#text21').hide(); $('#text22').hide(); $('#text23').hide(); $('#text24').hide();
                    $('#text25').hide(); $('#text26').hide(); $('#text27').hide(); $('#text28').hide(); $('#text29').hide(); $('#text30').hide();
                    $('#text31').hide(); $('#text32').hide(); $('#text33').hide(); $('#text34').hide(); $('#text35').hide(); $('#text36').hide();
                    $('#text37').hide(); $('#text38').hide(); $('#text39').hide(); $('#text40').hide(); $('#text41').hide(); $('#text42').hide();
                    $('#text43').hide(); $('#text44').hide(); $('#text45').hide(); $('#text46').hide(); $('#text47').hide(); $('#text48').hide();
                   $('#text51').hide(); $('#text52').hide(); $('#text53').hide(); $('#text54').hide();
                    $('#text55').hide(); $('#text56').hide(); $('#text57').hide(); $('#text58').hide(); $('#text59').hide(); $('#text60').hide();

                });
                $("#login26").click(function (e) {
                    $(".module-area").slideDown(400);//fadeIn()
                    $('#text51').show();
                    $('#text52').show();
                    $('#text1').hide(); $('#text2').hide(); $('#text3').hide(); $('#text4').hide(); $('#text5').hide(); $('#text6').hide();
                    $('#text7').hide(); $('#text8').hide(); $('#text9').hide(); $('#text10').hide(); $('#text11').hide(); $('#text12').hide();
                    $('#text13').hide(); $('#text14').hide(); $('#text15').hide(); $('#text16').hide(); $('#text17').hide(); $('#text18').hide();
                    $('#text19').hide(); $('#text20').hide(); $('#text21').hide(); $('#text22').hide(); $('#text23').hide(); $('#text24').hide();
                    $('#text25').hide(); $('#text26').hide(); $('#text27').hide(); $('#text28').hide(); $('#text29').hide(); $('#text30').hide();
                    $('#text31').hide(); $('#text32').hide(); $('#text33').hide(); $('#text34').hide(); $('#text35').hide(); $('#text36').hide();
                    $('#text37').hide(); $('#text38').hide(); $('#text39').hide(); $('#text40').hide(); $('#text41').hide(); $('#text42').hide();
                    $('#text43').hide(); $('#text44').hide(); $('#text45').hide(); $('#text46').hide(); $('#text47').hide(); $('#text48').hide();
                    $('#text49').hide(); $('#text50').hide(); $('#text53').hide(); $('#text54').hide();
                    $('#text55').hide(); $('#text56').hide(); $('#text57').hide(); $('#text58').hide(); $('#text59').hide(); $('#text60').hide();

                });
                $("#login27").click(function (e) {
                    $(".module-area").slideDown(400);//fadeIn()
                    $('#text53').show();
                    $('#text54').show();
                    $('#text1').hide(); $('#text2').hide(); $('#text3').hide(); $('#text4').hide(); $('#text5').hide(); $('#text6').hide();
                    $('#text7').hide(); $('#text8').hide(); $('#text9').hide(); $('#text10').hide(); $('#text11').hide(); $('#text12').hide();
                    $('#text13').hide(); $('#text14').hide(); $('#text15').hide(); $('#text16').hide(); $('#text17').hide(); $('#text18').hide();
                    $('#text19').hide(); $('#text20').hide(); $('#text21').hide(); $('#text22').hide(); $('#text23').hide(); $('#text24').hide();
                    $('#text25').hide(); $('#text26').hide(); $('#text27').hide(); $('#text28').hide(); $('#text29').hide(); $('#text30').hide();
                    $('#text31').hide(); $('#text32').hide(); $('#text33').hide(); $('#text34').hide(); $('#text35').hide(); $('#text36').hide();
                    $('#text37').hide(); $('#text38').hide(); $('#text39').hide(); $('#text40').hide(); $('#text41').hide(); $('#text42').hide();
                    $('#text43').hide(); $('#text44').hide(); $('#text45').hide(); $('#text46').hide(); $('#text47').hide(); $('#text48').hide();
                    $('#text49').hide(); $('#text50').hide(); $('#text51').hide(); $('#text52').hide(); 
                    $('#text55').hide(); $('#text56').hide(); $('#text57').hide(); $('#text58').hide(); $('#text59').hide(); $('#text60').hide();

                });
                $("#login28").click(function (e) {
                    $(".module-area").slideDown(400);//fadeIn()
                    $('#text55').show();
                    $('#text56').show();
                    $('#text1').hide(); $('#text2').hide(); $('#text3').hide(); $('#text4').hide(); $('#text5').hide(); $('#text6').hide();
                    $('#text7').hide(); $('#text8').hide(); $('#text9').hide(); $('#text10').hide(); $('#text11').hide(); $('#text12').hide();
                    $('#text13').hide(); $('#text14').hide(); $('#text15').hide(); $('#text16').hide(); $('#text17').hide(); $('#text18').hide();
                    $('#text19').hide(); $('#text20').hide(); $('#text21').hide(); $('#text22').hide(); $('#text23').hide(); $('#text24').hide();
                    $('#text25').hide(); $('#text26').hide(); $('#text27').hide(); $('#text28').hide(); $('#text29').hide(); $('#text30').hide();
                    $('#text31').hide(); $('#text32').hide(); $('#text33').hide(); $('#text34').hide(); $('#text35').hide(); $('#text36').hide();
                    $('#text37').hide(); $('#text38').hide(); $('#text39').hide(); $('#text40').hide(); $('#text41').hide(); $('#text42').hide();
                    $('#text43').hide(); $('#text44').hide(); $('#text45').hide(); $('#text46').hide(); $('#text47').hide(); $('#text48').hide();
                    $('#text49').hide(); $('#text50').hide(); $('#text51').hide(); $('#text52').hide(); $('#text53').hide(); $('#text54').hide();
                   $('#text57').hide(); $('#text58').hide(); $('#text59').hide(); $('#text60').hide();

                });
                $("#login29").click(function (e) {
                    $(".module-area").slideDown(400);//fadeIn()
                    $('#text57').show();
                    $('#text58').show();
                    $('#text1').hide(); $('#text2').hide(); $('#text3').hide(); $('#text4').hide(); $('#text5').hide(); $('#text6').hide();
                    $('#text7').hide(); $('#text8').hide(); $('#text9').hide(); $('#text10').hide(); $('#text11').hide(); $('#text12').hide();
                    $('#text13').hide(); $('#text14').hide(); $('#text15').hide(); $('#text16').hide(); $('#text17').hide(); $('#text18').hide();
                    $('#text19').hide(); $('#text20').hide(); $('#text21').hide(); $('#text22').hide(); $('#text23').hide(); $('#text24').hide();
                    $('#text25').hide(); $('#text26').hide(); $('#text27').hide(); $('#text28').hide(); $('#text29').hide(); $('#text30').hide();
                    $('#text31').hide(); $('#text32').hide(); $('#text33').hide(); $('#text34').hide(); $('#text35').hide(); $('#text36').hide();
                    $('#text37').hide(); $('#text38').hide(); $('#text39').hide(); $('#text40').hide(); $('#text41').hide(); $('#text42').hide();
                    $('#text43').hide(); $('#text44').hide(); $('#text45').hide(); $('#text46').hide(); $('#text47').hide(); $('#text48').hide();
                    $('#text49').hide(); $('#text50').hide(); $('#text51').hide(); $('#text52').hide(); $('#text53').hide(); $('#text54').hide();
                    $('#text55').hide(); $('#text56').hide();$('#text59').hide(); $('#text60').hide();

                });

                $("#login30").click(function (e) {
                    $(".module-area").slideDown(400);//fadeIn()
                    $('#text59').show();
                    $('#text60').show();
                    $('#text1').hide(); $('#text2').hide(); $('#text3').hide(); $('#text4').hide(); $('#text5').hide(); $('#text6').hide();
                    $('#text7').hide(); $('#text8').hide(); $('#text9').hide(); $('#text10').hide(); $('#text11').hide(); $('#text12').hide();
                    $('#text13').hide(); $('#text14').hide(); $('#text15').hide(); $('#text16').hide(); $('#text17').hide(); $('#text18').hide();
                    $('#text19').hide(); $('#text20').hide(); $('#text21').hide(); $('#text22').hide(); $('#text23').hide(); $('#text24').hide();
                    $('#text25').hide(); $('#text26').hide(); $('#text27').hide(); $('#text28').hide(); $('#text29').hide(); $('#text30').hide();
                    $('#text31').hide(); $('#text32').hide(); $('#text33').hide(); $('#text34').hide(); $('#text35').hide(); $('#text36').hide();
                    $('#text37').hide(); $('#text38').hide(); $('#text39').hide(); $('#text40').hide(); $('#text41').hide(); $('#text42').hide();
                    $('#text43').hide(); $('#text44').hide(); $('#text45').hide(); $('#text46').hide(); $('#text47').hide(); $('#text48').hide();
                    $('#text49').hide(); $('#text50').hide(); $('#text51').hide(); $('#text52').hide(); $('#text53').hide(); $('#text54').hide();
                    $('#text55').hide(); $('#text56').hide(); $('#text57').hide(); $('#text58').hide();

                });




                $(".module-close").click(function (e) {
                    $('.blanks').hide();
                    $(".module-area").slideUp(400);//fadeOut()
                    $('#text1').hide();
                    $('#text2').hide();
                    $('#text3').hide();
                    $('#text4').hide();
                    $('#text5').hide();
                    $('#text6').hide();
                    $('#text7').hide();
                    $('#text8').hide();
                    $('#text9').hide();
                    $('#text10').hide();
                    $('#text11').hide();
                    $('#text12').hide();
                    $('#text13').hide();
                    $('#text14').hide();
                    $('#text15').hide();
                    $('#text16').hide();
                    $('#text17').hide();
                    $('#text18').hide();
                    $('#text19').hide();
                    $('#text20').hide();
                    $('#text21').hide();
                    $('#text22').hide();
                    $('#text23').hide();
                    $('#text24').hide();
                    $('#text25').hide();
                    $('#text26').hide();
                    $('#text27').hide();
                    $('#text28').hide();
                    $('#text29').hide();
                    $('#text30').hide();
                    $('#text31').hide();
                    $('#text32').hide();
                    $('#text33').hide();
                    $('#text34').hide();
                    $('#text35').hide();
                    $('#text36').hide();
                    $('#text37').hide();
                    $('#text38').hide();
                    $('#text39').hide();
                    $('#text40').hide();
                    $('#text41').hide();
                    $('#text42').hide();
                    $('#text43').hide();
                    $('#text44').hide();
                    $('#text45').hide();
                    $('#text46').hide();
                    $('#text47').hide();
                    $('#text48').hide();
                    $('#text49').hide();
                    $('#text50').hide();
                    $('#text51').hide();
                    $('#text52').hide();
                    $('#text53').hide();
                    $('#text54').hide();
                    $('#text55').hide();
                    $('#text56').hide();
                    $('#text57').hide();
                    $('#text58').hide();
                    $('#text59').hide();
                    $('#text60').hide();

                });

            }
        }
            </script>
   
     <!-- 模态框弹出部分  --->
    <div class="blanks2" id="Cover" runat="server" ></div>
                    <div  class="module-area3 modal-content" id="Cover1" runat="server" >
                        <div class="module-head">
                            <span><strong> 操作说明</strong></span>
                            <div class="module-close2"></div>

                        </div>
                       <p>请仔细阅读下面操作说明，并按要求完成测试题:</p>
                      
                      <p>该测试表为为他评量表，根据测试者的实际情况，在相应的选项打钩。</p>
                           
                               
                                <p style="margin-left:40%">  <asp:Label ID="Label4" class="btn btn-info login" runat="server" Text="开始测试"></asp:Label>
                                
                            </p>  
                          </div>



    <div class="dragContainer" style="position: fixed; left: 10px; top: 50px; width: 100%;">
        <div id="dragDiv" style="z-index: 1001;">

            <div class="module-area" >
                <div class="module-head">

                    <strong id="text1">妄想(Delusions)
                    </strong>


                    <strong id="text3">概念紊乱(联想散漫， Conceptual disorganization)
                    </strong>


                    <strong id="text5">幻觉行为
                    </strong>

                    <strong id="text7">兴奋(Excitement)
                    </strong>


                    <strong id="text9">夸大(Grandiosity)
                    </strong>

                    <strong id="text11">猜疑/被害(Suspiciousness／persecution)
                    </strong>


                    <strong id="text13">敌对性(Hostility)
                    </strong>



                    <strong id="text15">情感迟钝(Blunted affect)
                    </strong>


                    <strong id="text17">情绪退缩( Emotional Withdrawal)
                    </strong>


                    <strong id="text19">(情感)交流障碍(Poor rapport)
                    </strong>


                    <strong id="text21">被动/淡漠( Passive／apathetic social withdrawal)
                    </strong>


                    <strong id="text23">抽象思维困难(Difficulty in abstract thinking)
                    </strong>


                    <strong id="text25">交谈缺乏自发性和流畅性( Lack of spontaneity and flow  of conversation)
                    </strong>

                    <strong id="text27">刻板思维(Stereotyped thinking)
                    </strong>

                    <strong id="text29">关注身体健康(Somatic concern)
                    </strong>


                    <strong id="text31">焦虑(Anxiety)
                    </strong>


                    <strong id="text33">自罪感(Guilt feelings)
                    </strong>


                    <strong id="text35">紧张(Tension)
                    </strong>

                    <strong id="text37">装相和作态( Mannerisms and posturing)
                    </strong>


                    <strong id="text39">抑郁(Depression)
                    </strong>


                    <strong id="text41">动作迟缓(Motor retardation)
                    </strong>


                    <strong id="text43">不合作( Uncooperativeness)
                    </strong>


                    <strong id="text45">不寻常思维内容( Unusual thought content)
                    </strong>


                    <strong id="text47">定向障碍(Disorientation)
                    </strong>


                    <strong id="text49">注意障碍(Poor attention)
                    </strong>

                    <strong id="text51">判断和自知力缺乏(Lack of judgment and insight)
                    </strong>

                    <strong id="text53">意志障碍(Disturbance of volition)
                    </strong>

                    <strong id="text55">冲动控制障碍( Poor impulse contro1)
                    </strong>

                    <strong id="text57">先占观念(Preoccupation)
                    </strong>

                    <strong id="text59">动回避社交(Active social avoidance)
                    </strong>





                    <div class="module-close"></div>

                </div>
                <div id="substance" >
                <div id="text2">
                    <p  >
                        &nbsp; &nbsp;指无事实根据，与现实不符，特异的信念。依据会谈中思维自然的表达，及由基层保健工作者或家属提供的其思维对社会交往和行为造成的影响评定。3轻度，存在一或两个不明确、不具体、并非顽固坚持的妄想，妄想不妨碍思考，社会交往或行为。4中度，存在一个多变的，未完全成型的不稳定的妄想组合，或几个完全成型的妄想，偶而妨碍思考、社会交往或行为。5偏重，存在许多完全成型的且顽固坚持的妄想，偶而妨碍思考、社会交往或行为。6重度，存在一系列稳定的，具体的妄想，可能系统化，顽固坚持，且明显妨碍思考、社会交往和行为。7极重度，存在一系列高度系统化或数量众多的稳定的妄想，并支配病人生活的主要方面，以至常引起不恰当和不负责任的行动，甚至可能因此危及病人或他人的安全。

                    </p>
                </div>
                <div id="text4">
                    <p  >
                        &nbsp; &nbsp;指思维过程紊乱，其特征为思维的目的性、连贯性破坏，如赘述、离题、联想散漫、不连贯、显著的不合逻辑或思维阻隔。依据会谈中对认知语言表达过程的观察评定。3轻度，思维显赘述，离题或逻辑障碍。思维的目的性有些障碍，在压力下显得有些联想散漫。4中度，当交谈短暂和有序时尚可集中思维，当交谈较复杂或有轻微压力时就变得散漫或离题。5偏重，普遍存在构思困难，在无压力时也经常显得离题、不连贯或联想散漫。6重度，思维严重出轨及自相矛盾，导致明显的离题和思维中断，几乎是持续出现。7极重度，思维中断到支离破碎的程度，明显的联想散漫，导致完全无法交谈，如“语词杂拌”或缄默。
                    </p>
                </div>
                <div id="text6">
                    <p  >
                        &nbsp; &nbsp;指语言表达或行为表明其知觉并非通过客观刺激产生，可以听觉、视觉、嗅觉或躯体感觉的形式出现。依据会谈中语言表达和躯体表现评定，也可由基层保健工作者或家属提供。3轻度，一或两种清晰但不经常出现的幻觉，或若干模糊异常的知觉，不引起思维或行为的扭曲。4中度，幻觉频繁出现但并不持续，病人的思维和行为仅受轻微的影响。5偏重，幻觉频繁出现，可能涉及一种以上感觉系统，导致思维扭曲和/或妨碍行为，病人可能对这些体验给予妄想性的解释并出现情绪反应，偶尔也出现语言反应。6重度，幻觉几乎持续存在，以致严重妨碍思维和行为，病人对这些幻觉信以为真，频繁的情绪和语言反应导致功能障碍。7极重度，病人对幻觉几乎全神贯注，幻觉实质上支配病人的思维和行为，幻觉被赋予固定的妄想性解释，并引起语言和行为反应，包括对命令性幻听的服从

                    </p>
                </div>
                <div id="text8">
                    <p  >
                        &nbsp; &nbsp;指活动过度，表现在动作行为加速，对刺激的反应增强，高度警觉或过度的情绪不稳。依据会谈中动作行为的表现评定，也可由基层保健工作者或家属提供。3轻度，会谈中轻度的激越，警觉增高，或轻度的激动，但没有明显兴奋或情绪不稳的发作，讲话有轻微的紧迫感。4中度，会谈中表现出明显的激越或激动，影响语言和一般动作或偶有短暂爆发。5偏重，观察到明显的活动过度或频繁的动作行为爆发，造成病人在任何时候都难以保持坐姿超过数分钟。6重度，会谈中明显兴奋，注意力受限，在某种程度上影响个人功能，诸如饮食和睡眠。7极重度，明显的兴奋严重妨碍饮食和睡眠，无法进行人际交往，言语和动作行为的加速可能导致言语不连贯和衰竭。

                    </p>
                </div>
                <div id="text10">
                    <p  >
                        &nbsp; &nbsp;指夸张己见及不现实的优势信念，包括一些妄想，如非凡的能力、财富、知识、名望、权力和道德正义。依据会谈中思维的自然表达，及由基层保健工作者或家属提供的这些想法对其行为的影响评定。3轻度，显出有些自大或自夸，但没有明确的夸大妄想。4中度，明确地和不切实际地感到自己比他人优越，有一些尚未定型的关于特殊地位或能力的妄想，但并未照此行动。5偏重，表达出有明确的关于非凡能力、地位或权力的妄想，影响病人的态度，但不影响行为。6重度，表达出有明确的优势妄想，涉及到一个以上的项目(财富、知识、名望等)，显著影响人际交往，并可能付诸行动。7极重度，思维，人际交往和行为受多重妄想的支配，这些妄想包括惊人的能力、财富、知识、名望、权力和道德水平，可能具有古怪的性质。

                    </p>
                </div>
                <div id="text12">
                    <p  >
                        &nbsp; &nbsp;指不现实或夸大的被害观念，表现在防卫、不信任态度、多疑的高度戒备，或是认为他人对其有伤害的非常明显的妄想。依据会谈中思维的自然表达，及由基层保健工作者或家属提供的这些想法对病人行为的影响评定。3轻度，表现出防卫或甚至公开的不信任态度，但思维，交往和行为很少受到影响。4中度，明确地显示出不信任感，并妨碍会谈和/或行为，但没有被害妄想的证据，或者，可能存在结构松散的被害妄想，但这些似乎不影响病人的态度或人际关系。5偏重，病人表现出明显的不信任感，以致严重影响人际关系，或者还存在明确的被害妄想，对人际关系和行为造成一定程度的影响。6重度，明确的泛化的被害妄想，可能是系统化的，显著地妨碍人际关系。7极重度，一整套系统性被害妄想支配病人的思维，社会交往和行为。

                    </p>
                </div>
                <div id="text14">
                    <p  >
                        &nbsp; &nbsp;指语言或非语言表达出愤怒和怨恨，包括讥讽、被动攻击行为、辱骂和袭击。依据会谈中观察其人际行为，及由基层保健工作者或家属提供情况评定。3轻度，间接地或有限地表示愤怒，如讥讽，不尊敬，表达敌意及偶而易激怒。4中度，存在明显敌对态度，经常表现易激惹及直接表达愤怒和怨恨。5偏重，病人高度易激惹，偶而有辱骂或威胁。6重度，不合作和辱骂或威胁显著地影响会谈，且严重影响社会交住，病人可能具有暴力和破坏性，但没有对他人进行人身攻击。7极重度，明显的愤怒造成极度不合作，无法与他人交往或对他人进行人身攻击。

                    </p>
                </div>
                <div id="text16">
                    <p  >
                        &nbsp; &nbsp; 指情绪反应减弱，以面部表情、感觉调节及体态语言的减少为特征。依据会谈中观察情感基调和情绪反应的躯体表现评定。3轻度，面部表情和体态语言似乎显得呆板、勉强、做作，或缺少变化。4中度，面部表情和体态语言的减少使病人看上去迟钝。5偏重，情感总体上显得“平淡”，面部表情仅偶尔有所变化，缺乏体态语言。6重度，大部分时间表现明显的情感平谈和缺乏情绪表达，可能存在无法调控的极端情感发泄，如兴奋、愤怒或不恰当的无法控制的发笑。7极重度，完全缺乏面部的表情和体态语言，病人似乎持续地显示出木呐的表情或毫无表情。

                    </p>
                </div>
                <div id="text18">
                    <p  >
                        &nbsp; &nbsp; 指对生活事件缺乏兴趣、参与和情感投入。依据基层保健工作者或家属提供情况，及会谈中观察到的人际行为评定。3轻度，常缺乏主动性，偶尔显得对周围事件缺乏兴趣。4中度，病人总体上对环境和环境变化有情绪隔阂，但给予鼓励仍可参与。5偏重，病人对环境中的人和事件有明显的情绪疏远，抵抗任何参与的努力，病人显得疏远、温顺、和漫无目的，但至少可进行短暂的交谈，注意个人需求，有时需要帮助。6重度，明显的缺乏兴趣和情绪投入，导致与他人只能进行有限的交谈，常常忽略个人功能，因此病人需要协助和监督。7极重度，极度的兴趣和情绪投入的缺乏导致病人几乎完全退缩，无法交谈，并忽略个人需求。

                    </p>
                </div>
                <div id="text20">
                    <p  >
                        &nbsp; &nbsp; 指缺乏人际交往中的感情投入、交谈时的坦率及亲密感、兴趣或对会谈者的投入，表现在人际关系疏远及语言和非语言交流的减少。依据会谈中的人际行为评定。3轻度，交谈以呆板、紧张或音调不自然为特征，可能缺乏情绪深度或停留在非个人的、理智性的水平。4中度，病人显出典型的冷淡，人际关系相当疏远、病人可能机械地回答问题，表现不耐烦或表示无兴趣。5偏重，明显的不投人并妨碍到会谈的词汇表达量，病人可能避开眼神的接触或面部表情的交流。6重度，病人显得高度冷漠，有明显的人际疏远，回答问题敷衍，很少有投入会谈的非语言迹象，常常避开眼神的接触和面部表情的交流。7极重度，病人完全不投入会谈，显得完全冷漠，会谈中始终回避语言和非语言交流。

                    </p>
                </div>
                <div id="text22">
                    <p  >
                        &nbsp; &nbsp; 指因被动、淡漠、缺乏精力或意志力使社会交往的兴趣和主动性下降，这导致人际投入的减少及对日常活动的忽视。依据基层保健工作者或家属提供的病人社会行为的情况评定。3 轻度，显示对社会活动偶有兴趣，但主动性较差，通常只有在他人先主动表示时才会参与。4中度，被动地参与大部分的社会活动，但以无兴趣或机械的方式出现，倾向于退缩到不显眼的地方。5偏重，仅被动参与少数社会活动，且显得毫无兴趣或主动性，通常只花很少时间与他人相处。6重度，趋于淡漠和孤立，极少参与社会活动，偶尔忽视个人需求，很少有自发的社会接触。7极重度，极度的淡漠，与世隔绝，忽视个人需求。

                    </p>
                </div>
                <div id="text24">
                    <p  >
                        &nbsp; &nbsp;指抽象—象征性思维模式受损，表现在分类、概括及解决问题时超越具体自我中心的过程出现困难。依据会谈中回答相似性问题和谚语解释类问题，及使用具体抽象模式的情况。3轻度，对较难的谚语倾向于照字面或给予个人化的解释，对极抽象和关联偏远的概念有些困难。4中度，经常使用具体化的思维模式，对大多数谚语和某些分类有困难，倾向于被功能性方面和显著特征所迷惑。5偏重，以具体化的思维模式为主，对大多数谚语和许多分类有困难。6重度，无法领会任何谚语或比喻的抽象意义，仅能对最简单的相似事例作公式化的分类，思维空洞贫乏，或固定在功能性方面、显著特征和个人特质的解释。7极重度，只会使用具体化的思维模式，显示对谚语、一般隐喻或明喻及简单的分类无法理解，甚至不会用显著的和功能性的特征作为分类的依据。本分级可适用于因显著认知功能缺损而无法与主试者进行最低限度交流的情况。

                    </p>
                </div>
                <div id="text26">
                    <p  >
                        &nbsp; &nbsp;指交谈的正常流畅性下降，伴有淡漠，缺乏意志，防卫或认知缺损，表现在交流过程的流畅性和创造性下降。依据会谈中观察认知语言过程评定。3轻度，交谈显示很少有主动性，病人的回答简短且不加修饰。需要会谈者给予直接的和引导性的问题。4中度，交谈缺乏自然流畅，显得不顺畅或停顿，经常需要引导性的问题以诱导出充分的反应和交谈的进程。5偏重，病人表现明显的缺乏自发性及坦率，回答会谈者提问时仅用一或两个简短的句子。6重度，病人的反应仅局限于几个单字或短语，以回避或缩短交谈（如“我不知道”，“我没空说”），使交谈发生严重困难，且毫无效果。7极重度，语言的流出最多局限于偶然的呓语，使交谈无法进行。

                    </p>
                </div>
                <div id="text28">
                    <p  >
                        &nbsp; &nbsp;指思维的流畅性、自发性和灵活性下降，表现在刻板、重复、或思维内容空洞。依据会谈中观察认知语言过程评定。3轻度，态度或信念有些僵化，病人可能拒绝考虑另一种见解，或难以从一种观点改变成另一种观点。4中度，交谈围绕着一个重复的主题，导致改变话题困难。5偏重，思维刻板及重复，尽管会谈者努力，交谈仍仅局限于两三个受限的主题。6重度，无法控制地重复要求、声明、观点或问题，严重地妨碍交谈。7极重度，思维、行为和交谈被不断重复的牢固的观点或有限的短语所支配，导致病人的交流明显刻板、不恰当并受到限制。

                    </p>
                </div>
                <div id="text30">
                    <p  >
                        &nbsp; &nbsp;指诉说躯体不适或坚信有躯体疾病或机能失常，其范围从模糊的病感到身患重病的明确的妄想。依据会谈中表达的思维内容评定。3轻度，明显关心健康或身体问题，偶尔会提出问题并希望得到保证。4中度，主诉健康不佳或身体机能失常，但没有达到妄想的确信无疑，过度关心可通过保证而减轻。5偏重，病人大量或频繁地主诉患躯体疾病或身体机能失常，或显示一到两个关于这些主题的妄想，但尚未被其占据。6重度，病人被一个或几个明确的关于躯体疾病或器质性机能失常的妄想所占据，但情感尚未陷入其中，其思维经会谈者的努力能有所转移。7极重度，大量而频繁地诉说躯体妄想，或是一些灾难性的躯体妄想，完全支配病人的思维和情感。

                    </p>
                </div>
                <div id="text32">
                    <p  >
                        &nbsp; &nbsp;指主观体验到神经紧张，担忧，恐惧或坐立不安，其范围从对现在或将来的过分关心到惊恐的感觉。依据会谈中的语言表达和相应的躯体表现评定。3轻度，表示有些担忧、过度关心或主观的坐立不安，但没有诉说或表现出相应的躯体症状和行为。4中度，病人诉说有明显的神经紧张症状，并反映出轻微的躯体症状，如手的震颤和过度出汗。5偏重，病人诉说有严重的焦虑问题，具有显著的躯体症状和行为表现。如明显的肌肉紧张，注意力下降，心悸或睡眠障碍。6重度，几乎持续感受到害怕并伴有恐惧，明显的坐立不安，或有许多躯体症状。7极重度，病人的生活严重地被焦虑困扰，焦虑几乎持续存在，有时达到惊恐的程度或表现为惊恐发作。

                    </p>
                </div>
                <div id="text34">
                    <p  >
                        &nbsp; &nbsp;指为过去真实或想象的过失而后悔或自责的感觉。依据会谈中语言表达的罪恶观念及其对态度和思维的影响评定。3轻度，询问时引出病人对微小事件的模糊的内疚或自责，但病人显然并不过分在意。4中度，病人明确表示在意他对过去发生的一件真实事件的责任，但并未被其占据，态度和行为基本未受影响。5偏重，病人表示出强烈的罪恶感，伴有自我责难或认为自己应受惩罚，罪恶感可能有妄想基础，可能自发形成，可能来源于某种先占观念或抑郁心境。且不易被会谈者缓解。6重度，带有妄想性质的强烈的罪恶观念，导致出现绝望感或无价值感，病人认为应该为其过失受到严厉惩罚，甚至认为他现在的生活处境就是这种惩罚。7极重度，病人的生活被不可动摇的罪恶妄想所支配，感到自己应受严厉的惩罚，如终生监禁、酷刑、或处死，可能伴有自杀念头，或将他人的问题归咎于自己过去的过失。

                    </p>
                </div>
                <div id="text36">
                    <p  >
                        &nbsp; &nbsp;指因恐惧、焦虑和激越而表现出明显的躯体症状，如僵直、震颤、大量出汗和坐立不安。依据会谈中语言表达的焦虑及紧张的躯体表现的严重程度评定。3轻度，姿势和动作表现出轻微担忧，如轻度僵硬，偶尔坐立不安，变换姿势或手部轻微快速震颤。4中度，明显的紧张表现多种症状，如局促不安，明显的手部震颤，过度出汗或紧张性作态。5偏重，显著的紧张表现为许多症状，如紧张性颤抖，大量出汗和坐立不安，但会谈的进行并未受到明显的影响。6重度，显著的紧张妨碍人际交往，如持续的局促不安，无法静坐或过度换气。7极重度，明显的紧张表现为惊恐症状或显著的动作加速，如快速地来回走动和无法静坐超过1分钟，使会谈无法进行。

                    </p>
                </div>
                <div id="text38">
                    <p  >
                        &nbsp; &nbsp;指不自然的动作或姿势，以笨拙、夸张、紊乱或古怪表现为特征。依据会谈中观察躯体表现评定，也可由基层保健工作者或家属提供。3轻度，动作轻度不自然(awkward)或轻微的姿势僵硬。4中度,动作明显不自然(awkward)或不连贯，或短时间保持一种不自然的姿势。5偏重，观察到偶有古怪的仪式动作或扭曲的姿势，或长时间保持一种异常的姿势。6重度，经常重复出现古怪的仪式动作、作态或刻扳动作，或长时间保持一种扭曲的姿势。7极重度，持续不断的仪式动作、作态或刻扳动作导致功能严重受损，或几乎一直保持一种不自然的固定姿势。

                    </p>
                </div>
                <div id="text40">
                    <p  >
                        &nbsp; &nbsp;指悲伤、沮丧、无助和悲观厌世的感觉。依据会谈中抑郁心境的语言表达，及其对病人态度和行为的影响评定。也可由基层保健工作者或家属提供。3轻度，只在被问及时表示有些悲伤或失去信心，但总的态度或行为举止没有抑郁表现。4中度，明显的感到悲伤或无望，可能自发地流露，但抑郁心境未对行为或社会功能造成很大损害，病人通常还能高兴起来。5偏重，明显的抑郁心境伴有明显的悲伤、悲观厌世，丧失社会兴趣，精神运动迟滞和食欲、睡眠障碍，病人不易高兴起来。6重度，明显的抑郁心境伴有持续的痛苦感，偶尔哭泣，无望和无价值感。另外，对食欲和/或睡眠以及正常动作和社会功能有严重影响，可能有自我忽视的症状。7极重度，抑郁感觉严重妨碍大多数主要功能，症状包括经常哭泣，明显的躯体症状，注意力损害，精神运动迟滞，丧失社会兴趣，自我忽视，可能的抑郁或虚无妄想，和/或可能有自杀意念或行为。

                    </p>
                </div>
                <div id="text42">
                    <p  >
                        &nbsp; &nbsp;指动作的能动性减退，表现在动作和言语的减慢或减少，对刺激的反应减退及身体(肌肉)的张力降低。依据会谈中的表现评定，也可由基层保健工作者或家属提供。3轻度，轻微的但可观察到的动作或讲话速度减慢，病人的谈话内容和姿势有点不足。4中度，病人的动作明显减慢，讲话的特点是词汇量不足，包括反应期延长，停顿延长或语速缓慢。5偏重，动作的能动性明显减退，导致会谈内容非常不足，或影响社会和职业功能，常常发现病人呆坐或卧床。6重度，动作极其缓慢，导致极少活动和讲话，病人基本上整天呆坐或卧床。7极重度，病人几乎完全不动，对外界刺激毫无反应。

                    </p>
                </div>
                <div id="text44">
                    <p  >
                        &nbsp; &nbsp;指主动拒绝按照重要人物的意愿行事，包括会谈者、医院工作人员或家属，可能伴有不信任、防御、顽固、否定、抵制权威、敌对或好斗。依据会谈中观察到的人际行动评定，也可由基层保健工作者或家属提供。3轻度，以一种愤恨，不耐烦或讥讽的态度服从。会谈中可能婉转地反对敏感问题。4中度，偶尔直率地拒绝服从正常的社会要求，如整理自己的床铺，参加安排好的活动等。病人可能表现敌对、防御或否定的态度，但通常仍可共事。5偏重，病人经常不服从周围环境的要求，可能被他人认为是一个“流浪者”或有“严重的态度问题”，不合作表现为对会谈者明显的防御或易激惹，可能对许多问题不愿回答。6重度，病人高度不合作，否定，甚至可能好斗，拒绝服从大部分社会要求，可能不愿开始或完成整个会谈。7极重度，主动的抗拒严重影响日常功能的大多数方面，病人可能拒绝任何社交活动、个人卫生、与家属或工作人员谈话，甚至拒绝简短的会谈。

                    </p>
                </div>
                <div id="text46">
                    <p  >
                        &nbsp; &nbsp;指奇怪、幻想式或荒诞的念头，其范围从离谱或不典型到歪曲的、不合逻辑的和明显荒谬的想法。依据会谈中思维内容的表达评定。3轻度，思维内容有些奇怪或特异，或熟悉的观念，却用在古怪的上下文中。4 中度，观念经常被歪曲，偶尔显得非常古怪。5偏重，病人表达许多奇怪的幻想的思维内容(如：是国王的养子，是死亡名单的逃脱者)或一些明显荒谬的想法(如：有一百个子女，通过牙齿填充物收到来自外太空的无线电信息)。6重度，病人表达许多不合逻辑的或荒谬的观念，有些具有非常古怪的性质(如：有三个脑袋，是外星人)。7极重度，思维充满荒谬、古怪和怪诞的想法。

                    </p>
                </div>
                <div id="text48">
                    <p  >
                        &nbsp; &nbsp;指与环境联系的意识丧失，包括人物、地点和时间，可能由意识混乱或戒断引起。依据会谈中对定向问题的反应评定。3轻度，一般的定向尚可，但精确的定向有些困难，如病人知道他在何地，但不知道确切地址；知道医院工作人员的名字，但不知道他们的职能；知道月份，但星期几搞错一天，或日期相差二天以上，可能有兴趣范围狭窄，表现为熟悉身边的环境但不知道外围的环境，如认识工作人员，但不认识市长或总统。4中度，只能对时间、地点、人物部分定向，如病人知道他在医院里，但不知道医院的名称；知道他所在城市的名称，但不知道村镇或行政区的名称；知道他主治人员的名字，但不知道其他直接照料者的名字；知道年份和季节，但不知道确切的月份。5偏重，人物、时间、地点的定向力大部分受损，病人只有一些模糊的概念，如他在何处，似乎对环境中的大多数人都感觉陌生，可能会正确或接近地说出年份，但月份、星期几，或甚至季节都不知道。6重度，人物、地点、时间定向力明显丧失，如：病人不知道身在何处，对日期的误差超过一年；仅能说出当前生活中一、两个人名。7极重度，病人完全丧失人物、地点、时间定向力，严重混乱，完全忽视自己身在何处，现在的年份，甚至最熟悉的人，如父母、配偶、朋友和主治人员。

                    </p>
                </div>
                <div id="text50">
                    <p  >
                        &nbsp; &nbsp;指警觉集中障碍，表现为注意力不集中，受内外刺激而分散注意力，以及驾御、维持或转移注意力到新刺激时存在困难。依据会谈中的表现评定。3轻度，注意力集中受限，偶尔容易分心或在会谈将结束时显得注意力不集中。4 中度，会谈因注意力容易分散的倾向而受影响，难以长时间将注意力集中在一个主题上，或难以将注意力转向新的主题。5偏重，会谈因为注意力不集中，分散和难以适当地转换注意点而受到严重影响。6重度，病人的注意力由于受内在的或外部的刺激而明显分散，注意仅能维持片刻或需作很大努力。7极重度，注意力严重障碍，以致简短的交谈都无法进行。

                    </p>
                </div>
                <div id="text52">
                    <p  >
                        &nbsp; &nbsp;指对自身精神状况和生活处境的认识或理解力受损，表现在不能认识过去或现在的精神疾病或症状，否认需要在精神科住院治疗，所做决定的特点是对后果错误的预期，及不切实际的短期和长期计划。依据会谈中思维内容的表达评定。3轻度，认识到有某种精神障碍，但明显低估其严重性，治疗的意义或采取措施以避免复发的重要性，可能对未来计划的构想力差。4中度，病人表现为对疾病只有模糊或肤浅的认识，对于承认患病动摇不定，或对存在的主要症状很少认识，如妄想、思维混乱、猜疑和社会退缩，病人可能将需要治疗理解为减轻一些较轻的症状，如焦虑、紧张和睡眠困难。5偏重，认识到过去但不是现在有精神障碍，如提出质疑，病人可能勉强承认一些无关的或不重要的症状，并倾向于以完全错误的解释或妄想性思维来加以开脱，同样，认为不需要精神治疗。6重度，病人否认曾患精神障碍，病人否认过去或现在存在任何精神症状，尽管尚能顺从，但否认需要治疗和住院。7极重度，断然否认过去或现在存在精神疾病，对目前的住院和治疗给予妄想性的解释（如因过失而受惩罚，被人迫害等），病人因此拒绝配合治疗者、药物或其他治疗。

                    </p>
                </div>
                <div id="text54">
                    <p  >
                        &nbsp; &nbsp;指意志的产生，维持及对思维、行为、动作、语言的控制障碍。依据会谈中的思维内容和行为表现评定。3轻度，病人的谈话和思维有些犹豫不决，轻度妨碍言语和认知过程。4中度，病人经常出现矛盾症状，做决定有明显的困难，交谈可因思维的变化不定而受影响，言语和认知功能明显受损。5偏重，意志障碍妨碍思维及行为，病人表现严重的犹豫不决，妨碍社会和动作活动的产生和持续，也可能表现为言语停顿。6重度，意志障碍妨碍简单的、自主的动作功能，如穿衣和梳理，明显地影响言语功能。7极重度，意志几乎完全丧失，表现为严重的运动和语言抑制，导致不动和/或缄默。

                    </p>
                </div>
                <div id="text56">
                    <p  >
                        &nbsp; &nbsp;指对内在冲动反应的调节和控制障碍，导致不顾后果的、突然的、无法调节的、武断的或误导的紧张和情绪的宣泄。依据会谈中观察到的行为及由基层保健工作者或家属提供的信息评定。3轻度，当面对应激或不如意时，病人容易出现愤怒和挫折感，但很少有冲动行为。4中度，病人对轻微的挑衅就会愤怒和谩骂，可能偶尔出现威胁、破坏或一两次身次冲突或程度较轻的打架。5偏重，病人反复出现冲动，包括谩骂、毁物或身体威胁，可能有一两次严重的攻击，以致病人需要隔离、身体约束或必要时给予镇静。6重度，病人经常不计后果地出现攻击行为、威胁、强人所难和毁物，可能有性攻击，可能为对幻听命令的行为反应。7极重度，病人出现致命的攻击，性侵犯，反复的残暴行为或自残行为。需要不断地直接监护或约束以控制其危险性冲动.

                    </p>
                </div>
                <div id="text58">
                    <p  >
                        &nbsp; &nbsp;指专注于内在产生的思维和感觉。因内向体验而损害现实定向和适应性行为。依据会谈中对人际行为的观察评定。3轻度，过分关注个人需要和问题，使会谈转向自我中心的主题，对他人缺乏关心。4中度，病人偶尔表现自我专注，好象在做白日梦或关注内在体验，轻度妨碍交往。5偏重，病人常表现为专注于内向体验，明显影响社交和会谈功能，如出现目光呆滞、喃喃自语或自言自语，或出现刻板的动作模式。6重度，明显的内向性思维伴孤独性体验，使注意力、交谈能力及对环境的定向力严重受限，病人经常一个人微笑、大笑、喃喃自语、自言自语或大叫。7极重度，严重地专注于内向体验，极度影响所有重要的行为，病人不断地对幻觉做出语言和行为反应，很少注意他人或外部环境。

                    </p>
                </div>
                <div id="text60">
                    <p  >
                        &nbsp; &nbsp;指社交减少伴有不当的恐惧、敌对或不信任。依据基层保健工作者或家属提供的社交功能状况评定。3轻度，病人与他人相处时似乎显得不自在，喜欢独自消磨时光，虽然在要求下仍在参加社会活动。4中度，病人非常勉强地参加所有或大部分社交活动，但可能需要劝说，或可能因焦虑、猜疑或敌对而提早退出。5偏重，尽管他人努力邀请他，病人仍恐惧或愤怒地回避许多社会交往，倾向于独自消磨空闲时间。6重度，病人因恐惧、敌对或不信任而极少参加社交活动，当他人接近时，病人表现出强烈的中止交往的倾向。总的来说，他将自己与他人隔离。7极重度，病人因极恐惧、敌对或被害妄想而不参加社交活动，最严重时病人回避所有的交往而与世隔绝。 

                    </p>
                </div>
                   </div>
            </div>
        </div>
    </div>
  <asp:Label ID="GUID" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="PatientGUID" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="DoctorGUID" runat="server"  Visible="false"></asp:Label>
    <asp:Label ID="TestName" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="StartDT" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="EndDT" runat="server" Text="" Visible="false"></asp:Label>

    <div class="page-body" style="max-width: 960px; margin: 0 auto 0;">
        <div class="widget flat radius-bordered">
            <div id="banner">
                T15 阳性与阴性症状量表(PANSS)
           
            </div>
            <div class="widget-header bordered-bottom bordered-blue">
                <div style="text-align: left; padding-top: 10px;">
                    <p style="font-weight: bold">测试说明：</p>
                    <p>
                        该测试表为为他评量表，根据测试者的实际情况，在相应的选项打钩。
                    </p>
                </div>
            </div>
            <div class="widget-body bordered-bottom bordered-darkorange">
                <br />
                <table class="table" style="width: 90%">
                    <tr>
                        <th colspan="4">1) 阳性分项目 </th>
                        <th>来源</th>
                        <th>无</th>
                        <th>极轻</th>
                        <th>轻度</th>
                        <th>中度</th>
                        <th>偏重</th>
                        <th>重度</th>
                        <th>极重</th>


                    </tr>


                    <tr>
                        <th>P1</th>
                        <th colspan="3">妄想 <a id="login1">?</a></th>
                        <th>I / H</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="1" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="1" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="1" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="1" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="1" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="1" value="6" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="1" value="7" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>


                    <tr>
                        <th>P2</th>
                        <th colspan="3">*概念紊乱 <a id="login2">?</a></th>
                        <th>I </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="2" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="2" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="2" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="2" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="2" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="2" value="6" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="2" value="7" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>

                    </tr>


                    <tr>
                        <th>P3</th>
                        <th colspan="3">*幻觉行为 <a id="login3">?</a></th>
                        <th>I / H</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="3" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="3" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="3" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="3" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="3" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="3" value="6" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="3" value="7" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>
                    <tr>
                        <th>P4</th>
                        <th colspan="3">*兴奋 <a id="login4">?</a></th>
                        <th>I / H</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="4" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="4" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="4" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="4" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="4" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="4" value="6" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="4" value="7" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>
                    <tr>
                        <th>P5</th>
                        <th colspan="3">*夸大 <a id="login5">?</a></th>
                        <th>I / H</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="5" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="5" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="5" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="5" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="5" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="5" value="6" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="5" value="7" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>
                    <tr>
                        <th>P6</th>
                        <th colspan="3">*猜疑/被害 <a id="login6">?</a></th>
                        <th>I / H</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="6" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="6" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="6" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="6" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="6" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="6" value="6" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="6" value="7" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>
                    <tr>
                        <th>P7</th>
                        <th colspan="3">*敌对性 <a id="login7">?</a></th>
                        <th>I / H</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="7" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="7" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="7" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="7" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="7" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="7" value="6" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="7" value="7" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>

                    </tr>
                    <tr>
                        <th colspan="12"></th>
                    </tr>
                    <%--阴性分项目--%>
                    <tr>
                        <th colspan="4">2) 阴性分项目 </th>
                        <th>来源</th>
                        <th>无</th>
                        <th>极轻</th>
                        <th>轻度</th>
                        <th>中度</th>
                        <th>偏重</th>
                        <th>重度</th>
                        <th>极重</th>




                    </tr>


                    <tr>
                        <th>N1</th>
                        <th colspan="3">*情感迟钝 <a id="login8">?</a></th>
                        <th>I</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="8" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="8" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="8" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="8" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="8" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="8" value="6" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="8" value="7" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>


                    <tr>
                        <th>N2</th>
                        <th colspan="3">*情绪退缩 <a id="login9">?</a></th>
                        <th>I/H </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="9" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="9" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="9" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="9" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="9" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="9" value="6" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="9" value="7" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>

                    </tr>


                    <tr>
                        <th>N3</th>
                        <th colspan="3">情感交流障碍  <a id="login10">?</a></th>
                        <th>I </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="10" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="10" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="10" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="10" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="10" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="10" value="6" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="10" value="7" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>
                    <tr>
                        <th>N4</th>
                        <th colspan="3">被动/淡漠  <a id="login11">?</a></th>
                        <th>H</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="11" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="11" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="11" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="11" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="11" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="11" value="6" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="11" value="7" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>
                    <tr>
                        <th>N5</th>
                        <th colspan="3">抽象思维 <a id="login12">?</a></th>
                        <th>I </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="12" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="12" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="12" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="12" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="12" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="12" value="6" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="12" value="7" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>
                    <tr>
                        <th>N6</th>
                        <th colspan="3">交谈缺乏自发性和流畅性 <a id="login13">?</a></th>
                        <th>I </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="13" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="13" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="13" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="13" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="13" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="13" value="6" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="13" value="7" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>
                    <tr>
                        <th>N7</th>
                        <th colspan="3">刻板思维 <a id="login14">?</a></th>
                        <th>I </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="14" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="14" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="14" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="14" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="14" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="14" value="6" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="14" value="7" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>

                    <tr>
                        <th colspan="12"></th>
                    </tr>
                    <%-- 一般精神病理学分项目----%>
                    <tr>
                        <th colspan="4">3) 一般精神病理学分项目 </th>
                        <th>来源</th>
                        <th>无</th>
                        <th>极轻</th>
                        <th>轻度</th>
                        <th>中度</th>
                        <th>偏重</th>
                        <th>重度</th>
                        <th>极重</th>
                    </tr>
                    <tr>
                        <th>G1</th>
                        <th colspan="3">*担心身体健康 <a id="login15">?</a></th>
                        <th>I </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="15" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="15" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="15" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="15" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="15" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="15" value="6" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="15" value="7" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>
                    <tr>
                        <th>G2</th>
                        <th colspan="3">*焦虑 <a id="login16">?</a></th>
                        <th>I </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="16" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="16" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="16" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="16" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="16" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="16" value="6" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="16" value="7" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>
                    <tr>
                        <th>G3</th>
                        <th colspan="3">*罪恶观念 <a id="login17">?</a></th>
                        <th>I </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="17" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="17" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="17" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="17" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="17" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="17" value="6" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="17" value="7" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>
                    <tr>
                        <th>G4</th>
                        <th colspan="3">*紧张<a id="login18">?</a></th>
                        <th>I </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="18" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="18" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="18" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="18" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="18" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="18" value="6" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="18" value="7" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>
                    <tr>
                        <th>G5</th>
                        <th colspan="3">*装相和作态 <a id="login19">?</a></th>
                        <th>I / H </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="19" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="19" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="19" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="19" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="19" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="19" value="6" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="19" value="7" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>
                    <tr>
                        <th>G6</th>
                        <th colspan="3">*抑郁 <a id="login20">?</a></th>
                        <th>I /H </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="20" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="20" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="20" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="20" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="20" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="20" value="6" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="20" value="7" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>
                    <tr>
                        <th>G7</th>
                        <th colspan="3">*动作迟缓  <a id="login21">?</a></th>
                        <th>I /H </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="21" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="21" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="21" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="21" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="21" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="21" value="6" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="21" value="7" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>
                    <tr>
                        <th>G8</th>
                        <th colspan="3">*不合作  <a id="login22">?</a></th>
                        <th>I /H</th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="22" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="22" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="22" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="22" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="22" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="22" value="6" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="22" value="7" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>
                    <tr>
                        <th>G9</th>
                        <th colspan="3">*异常思维内容  <a id="login23">?</a></th>
                        <th>I </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="23" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="23" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="23" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="23" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="23" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="23" value="6" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="23" value="7" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>
                    <tr>
                        <th>G10</th>
                        <th colspan="3">*定向障碍  <a id="login24">?</a></th>
                        <th>I </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="24" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="24" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="24" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="24" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="24" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="24" value="6" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="24" value="7" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>
                    <tr>
                        <th>G11</th>
                        <th colspan="3">注意障碍  <a id="login25">?</a></th>
                        <th>I </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="25" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="25" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="25" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="25" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="25" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="25" value="6" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="25" value="7" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>
                    <tr>
                        <th>G12</th>
                        <th colspan="3">自知力缺乏  <a id="login26">?</a></th>
                        <th>I </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="26" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="26" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="26" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="26" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="26" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="26" value="6" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="26" value="7" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>
                    <tr>
                        <th>G13</th>
                        <th colspan="3">意志障碍  <a id="login27">?</a></th>
                        <th>I </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="27" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="27" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="27" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="27" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="27" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="27" value="6" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="27" value="7" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>
                    <tr>
                        <th>G14</th>
                        <th colspan="3">冲动控制障碍  <a id="login28">?</a></th>
                        <th>I </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="28" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="28" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="28" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="28" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="28" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="28" value="6" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="28" value="7" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>
                    <tr>
                        <th>G15</th>
                        <th colspan="3">先占观念  <a id="login29">?</a></th>
                        <th>I </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="29" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="29" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="29" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="29" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="29" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="29" value="6" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="29" value="7" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>
                    <tr>
                        <th>G16</th>
                        <th colspan="3">主动社交回避  <a id="login30">?</a></th>
                        <th>I </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="30" value="1" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="30" value="2" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="30" value="3" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="30" value="4" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="30" value="5" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="30" value="6" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="30" value="7" />
                                    <span class="text"></span>
                                </label>
                            </div>
                        </th>
                    </tr>
                </table>


<hr class="wide" />
                <%--提示信息--%>
                <p id="WarningLabel" style="font-weight:bold;color:green;text-align:center;"></p>
                <%--检查按钮--%>
                <a onclick="ck();" id="check" class="btn btn-warning"  style="width:100px;height:40px;margin:0 auto;display:block;font-weight:bold;line-height:28px;">检查完成情况</a>
                <%--提交按钮--%>
                <asp:Button ID="Button1" runat="server" Text="提  交" class=" btn btn-success" style="width:100px;height:40px;margin:0 auto;display:none;font-weight:bold;"  OnClick="Button1_Click"/>
            </div>
        </div>
    </div>
    <!-- /Page Body -->

    <%--把checkbox复选框转换成单选按钮radio效果--%>
    <script type="text/javascript">
        checkboxToRadio("1");//需要转换的就添加这句
        checkboxToRadio("2");
        checkboxToRadio("3");
        checkboxToRadio("4");
        checkboxToRadio("5");
        checkboxToRadio("6");
        checkboxToRadio("7");
        checkboxToRadio("8");
        checkboxToRadio("9");
        checkboxToRadio("10");
        checkboxToRadio("11");
        checkboxToRadio("12");
        checkboxToRadio("13");
        checkboxToRadio("14");
        checkboxToRadio("15");
        checkboxToRadio("16");
        checkboxToRadio("17");
        checkboxToRadio("18");
        checkboxToRadio("19");
        checkboxToRadio("20");
        checkboxToRadio("21");
        checkboxToRadio("22");
        checkboxToRadio("23");
        checkboxToRadio("24");
        checkboxToRadio("25");
        checkboxToRadio("26");
        checkboxToRadio("27");
        checkboxToRadio("28");
        checkboxToRadio("29");
        checkboxToRadio("30");
        function checkboxToRadio(checkboxName, form) {
            if (checkboxName == null) return;
            var f = form || document.forms[0];
            var checkboxs = document.getElementsByName(checkboxName);

            for (i = 0; i < checkboxs.length; i++) {
                checkboxs[i].onclick = function () {
                    for (j = 0; j < checkboxs.length; j++) {
                        if (this.value != checkboxs[j].value && checkboxs[j].checked == true) {
                            checkboxs[j].checked = false;
                        }
                    }
                }
            }
        }

          <%--jQuery方法检查必做题目是否完成--%>
        function ck() {
            var error = "";
            for (var i = 1; i <= 30; i++)//条件：i应小于等于必做题目的总数
            {
                if (!$("input:checked[name=" + i + "]").is(':checked')) {
                    error += "第" + i + "题" + "、";
                }
            }
            if (error != "") {
                error = error.substring(0, error.length - 1);//截取字符串，去掉末尾多余的一个“、”
                error += "未完成";
                alert(error);//弹框提示未完成题目
            }
            else {
                $("#WarningLabel").html("所有必做题目已完成，现在可以提交！");//改变提示信息的文字内容
                $("#check").css("display", "none");//检查按钮隐藏
                $("#ctl00_ContentPlaceHolder1_Button1").css("display", "block");//提交按钮显示
            }

        }

    </script>
    <style type="text/css">
        input[type="checkbox" i] {
            margin: 0px;
        }

        input[type=checkbox] + .text, input[type=radio] + .text {
            display: table-row;
        }

        .radio, .checkbox {
            margin: auto;
            /*min-height: 20px;*/
            height: 25px;
            /*margin: 9px;*/
            width: 22px;
            border: 2px solid #3DA0DB;
            /*color:#2489c5;*/
            padding: 0;
        }

        .table th a {
            border: 1px solid #ff6a00;
            color: #ff6a00;
            font-size: 13px;
            padding:1px 2px;
        }

            .table th a:hover {
                background-color: #ff6a00;
                color: #fff;
                border-bottom: none;
            }
    </style>
</asp:Content>
