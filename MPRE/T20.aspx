<%@ Page Title="" Language="C#" MasterPageFile="~/Test.master" AutoEventWireup="true" CodeFile="T20.aspx.cs" Inherits="T20" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
                     $('#text61').hide(); $('#text62').hide(); $('#text63').hide(); $('#text64').hide(); $('#text65').hide(); $('#text66').hide();
                     $('#text67').hide(); $('#text68').hide();
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
                     $('#text61').hide(); $('#text62').hide(); $('#text63').hide(); $('#text64').hide(); $('#text65').hide(); $('#text66').hide();
                     $('#text67').hide(); $('#text68').hide();
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
                     $('#text61').hide(); $('#text62').hide(); $('#text63').hide(); $('#text64').hide(); $('#text65').hide(); $('#text66').hide();
                     $('#text67').hide(); $('#text68').hide();
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
                     $('#text61').hide(); $('#text62').hide(); $('#text63').hide(); $('#text64').hide(); $('#text65').hide(); $('#text66').hide();
                     $('#text67').hide(); $('#text68').hide();
                 });
                 $("#login5").click(function (e) {
                  
                     $(".module-area").slideDown(400);//fadeIn()
                     $('#text9').show();
                     $('#text10').show();
                     $('#text1').hide(); $('#text2').hide(); $('#text3').hide(); $('#text4').hide(); $('#text5').hide(); $('#text6').hide();
                     $('#text7').hide(); $('#text8').hide(); $('#text11').hide(); $('#text12').hide();
                     $('#text13').hide(); $('#text14').hide(); $('#text15').hide(); $('#text16').hide(); $('#text17').hide(); $('#text18').hide();
                     $('#text19').hide(); $('#text20').hide(); $('#text21').hide(); $('#text22').hide(); $('#text23').hide(); $('#text24').hide();
                     $('#text25').hide(); $('#text26').hide(); $('#text27').hide(); $('#text28').hide(); $('#text29').hide(); $('#text30').hide();
                     $('#text31').hide(); $('#text32').hide(); $('#text33').hide(); $('#text34').hide(); $('#text35').hide(); $('#text36').hide();
                     $('#text37').hide(); $('#text38').hide(); $('#text39').hide(); $('#text40').hide(); $('#text41').hide(); $('#text42').hide();
                     $('#text43').hide(); $('#text44').hide(); $('#text45').hide(); $('#text46').hide(); $('#text47').hide(); $('#text48').hide();
                     $('#text49').hide(); $('#text50').hide(); $('#text51').hide(); $('#text52').hide(); $('#text53').hide(); $('#text54').hide();
                     $('#text55').hide(); $('#text56').hide(); $('#text57').hide(); $('#text58').hide(); $('#text59').hide(); $('#text60').hide();
                     $('#text61').hide(); $('#text62').hide(); $('#text63').hide(); $('#text64').hide(); $('#text65').hide(); $('#text66').hide();
                     $('#text67').hide(); $('#text68').hide();
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
                     $('#text61').hide(); $('#text62').hide(); $('#text63').hide(); $('#text64').hide(); $('#text65').hide(); $('#text66').hide();
                     $('#text67').hide(); $('#text68').hide();
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
                     $('#text61').hide(); $('#text62').hide(); $('#text63').hide(); $('#text64').hide(); $('#text65').hide(); $('#text66').hide();
                     $('#text67').hide(); $('#text68').hide();
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
                     $('#text61').hide(); $('#text62').hide(); $('#text63').hide(); $('#text64').hide(); $('#text65').hide(); $('#text66').hide();
                     $('#text67').hide(); $('#text68').hide();
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
                     $('#text61').hide(); $('#text62').hide(); $('#text63').hide(); $('#text64').hide(); $('#text65').hide(); $('#text66').hide();
                     $('#text67').hide(); $('#text68').hide();
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
                     $('#text61').hide(); $('#text62').hide(); $('#text63').hide(); $('#text64').hide(); $('#text65').hide(); $('#text66').hide();
                     $('#text67').hide(); $('#text68').hide();


                 });
                 $("#login11").click(function (e) {
                     $(".module-area").slideDown(400);//fadeIn()
                     $('#text21').show();
                     $('#text22').show();
                     $('#text1').hide(); $('#text2').hide(); $('#text3').hide(); $('#text4').hide(); $('#text5').hide(); $('#text6').hide();
                     $('#text7').hide(); $('#text8').hide(); $('#text9').hide(); $('#text10').hide(); $('#text11').hide(); $('#text12').hide();
                     $('#text13').hide(); $('#text14').hide(); $('#text15').hide(); $('#text16').hide(); $('#text17').hide(); $('#text18').hide();
                     $('#text19').hide(); $('#text20').hide(); $('#text23').hide(); $('#text24').hide();
                     $('#text25').hide(); $('#text26').hide(); $('#text27').hide(); $('#text28').hide(); $('#text29').hide(); $('#text30').hide();
                     $('#text31').hide(); $('#text32').hide(); $('#text33').hide(); $('#text34').hide(); $('#text35').hide(); $('#text36').hide();
                     $('#text37').hide(); $('#text38').hide(); $('#text39').hide(); $('#text40').hide(); $('#text41').hide(); $('#text42').hide();
                     $('#text43').hide(); $('#text44').hide(); $('#text45').hide(); $('#text46').hide(); $('#text47').hide(); $('#text48').hide();
                     $('#text49').hide(); $('#text50').hide(); $('#text51').hide(); $('#text52').hide(); $('#text53').hide(); $('#text54').hide();
                     $('#text55').hide(); $('#text56').hide(); $('#text57').hide(); $('#text58').hide(); $('#text59').hide(); $('#text60').hide();
                     $('#text61').hide(); $('#text62').hide(); $('#text63').hide(); $('#text64').hide(); $('#text65').hide(); $('#text66').hide();
                     $('#text67').hide(); $('#text68').hide();

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
                     $('#text61').hide(); $('#text62').hide(); $('#text63').hide(); $('#text64').hide(); $('#text65').hide(); $('#text66').hide();
                     $('#text67').hide(); $('#text68').hide();
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
                     $('#text61').hide(); $('#text62').hide(); $('#text63').hide(); $('#text64').hide(); $('#text65').hide(); $('#text66').hide();
                     $('#text67').hide(); $('#text68').hide();

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
                     $('#text61').hide(); $('#text62').hide(); $('#text63').hide(); $('#text64').hide(); $('#text65').hide(); $('#text66').hide();
                     $('#text67').hide(); $('#text68').hide();

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
                     $('#text61').hide(); $('#text62').hide(); $('#text63').hide(); $('#text64').hide(); $('#text65').hide(); $('#text66').hide();
                     $('#text67').hide(); $('#text68').hide();

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
                     $('#text61').hide(); $('#text62').hide(); $('#text63').hide(); $('#text64').hide(); $('#text65').hide(); $('#text66').hide();
                     $('#text67').hide(); $('#text68').hide();
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
                     $('#text61').hide(); $('#text62').hide(); $('#text63').hide(); $('#text64').hide(); $('#text65').hide(); $('#text66').hide();
                     $('#text67').hide(); $('#text68').hide();

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
                     $('#text61').hide(); $('#text62').hide(); $('#text63').hide(); $('#text64').hide(); $('#text65').hide(); $('#text66').hide();
                     $('#text67').hide(); $('#text68').hide();

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
                     $('#text61').hide(); $('#text62').hide(); $('#text63').hide(); $('#text64').hide(); $('#text65').hide(); $('#text66').hide();
                     $('#text67').hide(); $('#text68').hide();

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
                     $('#text37').hide(); $('#text38').hide(); $('#text41').hide(); $('#text42').hide();
                     $('#text43').hide(); $('#text44').hide(); $('#text45').hide(); $('#text46').hide(); $('#text47').hide(); $('#text48').hide();
                     $('#text49').hide(); $('#text50').hide(); $('#text51').hide(); $('#text52').hide(); $('#text53').hide(); $('#text54').hide();
                     $('#text55').hide(); $('#text56').hide(); $('#text57').hide(); $('#text58').hide(); $('#text59').hide(); $('#text60').hide();
                     $('#text61').hide(); $('#text62').hide(); $('#text63').hide(); $('#text64').hide(); $('#text65').hide(); $('#text66').hide();
                     $('#text67').hide(); $('#text68').hide();

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
                     $('#text61').hide(); $('#text62').hide(); $('#text63').hide(); $('#text64').hide(); $('#text65').hide(); $('#text66').hide();
                     $('#text67').hide(); $('#text68').hide();

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
                     $('#text61').hide(); $('#text62').hide(); $('#text63').hide(); $('#text64').hide(); $('#text65').hide(); $('#text66').hide();
                     $('#text67').hide(); $('#text68').hide();

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
                     $('#text61').hide(); $('#text62').hide(); $('#text63').hide(); $('#text64').hide(); $('#text65').hide(); $('#text66').hide();
                     $('#text67').hide(); $('#text68').hide();

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
                     $('#text61').hide(); $('#text62').hide(); $('#text63').hide(); $('#text64').hide(); $('#text65').hide(); $('#text66').hide();
                     $('#text67').hide(); $('#text68').hide();

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
                     $('#text61').hide(); $('#text62').hide(); $('#text63').hide(); $('#text64').hide(); $('#text65').hide(); $('#text66').hide();
                     $('#text67').hide(); $('#text68').hide();

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
                     $('#text61').hide(); $('#text62').hide(); $('#text63').hide(); $('#text64').hide(); $('#text65').hide(); $('#text66').hide();
                     $('#text67').hide(); $('#text68').hide();

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
                     $('#text61').hide(); $('#text62').hide(); $('#text63').hide(); $('#text64').hide(); $('#text65').hide(); $('#text66').hide();
                     $('#text67').hide(); $('#text68').hide();

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
                     $('#text61').hide(); $('#text62').hide(); $('#text63').hide(); $('#text64').hide(); $('#text65').hide(); $('#text66').hide();
                     $('#text67').hide(); $('#text68').hide();

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
                     $('#text55').hide(); $('#text56').hide(); $('#text59').hide(); $('#text60').hide();
                     $('#text61').hide(); $('#text62').hide(); $('#text63').hide(); $('#text64').hide(); $('#text65').hide(); $('#text66').hide();
                     $('#text67').hide(); $('#text68').hide();

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
                     $('#text61').hide(); $('#text62').hide(); $('#text63').hide(); $('#text64').hide(); $('#text65').hide(); $('#text66').hide();
                     $('#text67').hide(); $('#text68').hide();

                 });
                 $("#login31").click(function (e) {
                     $(".module-area").slideDown(400);//fadeIn()
                     $('#text61').show();
                     $('#text62').show();
                     $('#text1').hide(); $('#text2').hide(); $('#text3').hide(); $('#text4').hide(); $('#text5').hide(); $('#text6').hide();
                     $('#text7').hide(); $('#text8').hide(); $('#text9').hide(); $('#text10').hide(); $('#text11').hide(); $('#text12').hide();
                     $('#text13').hide(); $('#text14').hide(); $('#text15').hide(); $('#text16').hide(); $('#text17').hide(); $('#text18').hide();
                     $('#text19').hide(); $('#text20').hide(); $('#text21').hide(); $('#text22').hide(); $('#text23').hide(); $('#text24').hide();
                     $('#text25').hide(); $('#text26').hide(); $('#text27').hide(); $('#text28').hide(); $('#text29').hide(); $('#text30').hide();
                     $('#text31').hide(); $('#text32').hide(); $('#text33').hide(); $('#text34').hide(); $('#text35').hide(); $('#text36').hide();
                     $('#text37').hide(); $('#text38').hide(); $('#text39').hide(); $('#text40').hide(); $('#text41').hide(); $('#text42').hide();
                     $('#text43').hide(); $('#text44').hide(); $('#text45').hide(); $('#text46').hide(); $('#text47').hide(); $('#text48').hide();
                     $('#text49').hide(); $('#text50').hide(); $('#text51').hide(); $('#text52').hide(); $('#text53').hide(); $('#text54').hide();
                     $('#text55').hide(); $('#text56').hide(); $('#text57').hide(); $('#text58').hide(); $('#text59').hide(); $('#text60').hide();
                     $('#text63').hide(); $('#text64').hide(); $('#text65').hide(); $('#text66').hide(); $('#text67').hide(); $('#text68').hide();


                 });
                 $("#login32").click(function (e) {
                     $(".module-area").slideDown(400);//fadeIn()
                     $('#text63').show();
                     $('#text64').show();
                     $('#text1').hide(); $('#text2').hide(); $('#text3').hide(); $('#text4').hide(); $('#text5').hide(); $('#text6').hide();
                     $('#text7').hide(); $('#text8').hide(); $('#text9').hide(); $('#text10').hide(); $('#text11').hide(); $('#text12').hide();
                     $('#text13').hide(); $('#text14').hide(); $('#text15').hide(); $('#text16').hide(); $('#text17').hide(); $('#text18').hide();
                     $('#text19').hide(); $('#text20').hide(); $('#text21').hide(); $('#text22').hide(); $('#text23').hide(); $('#text24').hide();
                     $('#text25').hide(); $('#text26').hide(); $('#text27').hide(); $('#text28').hide(); $('#text29').hide(); $('#text30').hide();
                     $('#text31').hide(); $('#text32').hide(); $('#text33').hide(); $('#text34').hide(); $('#text35').hide(); $('#text36').hide();
                     $('#text37').hide(); $('#text38').hide(); $('#text39').hide(); $('#text40').hide(); $('#text41').hide(); $('#text42').hide();
                     $('#text43').hide(); $('#text44').hide(); $('#text45').hide(); $('#text46').hide(); $('#text47').hide(); $('#text48').hide();
                     $('#text49').hide(); $('#text50').hide(); $('#text51').hide(); $('#text52').hide(); $('#text53').hide(); $('#text54').hide();
                     $('#text55').hide(); $('#text56').hide(); $('#text57').hide(); $('#text58').hide(); $('#text59').hide(); $('#text60').hide();
                     $('#text61').hide(); $('#text62').hide(); $('#text65').hide(); $('#text66').hide(); $('#text67').hide(); $('#text68').hide();


                 });
                 $("#login33").click(function (e) {
                     $(".module-area").slideDown(400);//fadeIn()
                     $('#text65').show();
                     $('#text66').show();
                     $('#text1').hide(); $('#text2').hide(); $('#text3').hide(); $('#text4').hide(); $('#text5').hide(); $('#text6').hide();
                     $('#text7').hide(); $('#text8').hide(); $('#text9').hide(); $('#text10').hide(); $('#text11').hide(); $('#text12').hide();
                     $('#text13').hide(); $('#text14').hide(); $('#text15').hide(); $('#text16').hide(); $('#text17').hide(); $('#text18').hide();
                     $('#text19').hide(); $('#text20').hide(); $('#text21').hide(); $('#text22').hide(); $('#text23').hide(); $('#text24').hide();
                     $('#text25').hide(); $('#text26').hide(); $('#text27').hide(); $('#text28').hide(); $('#text29').hide(); $('#text30').hide();
                     $('#text31').hide(); $('#text32').hide(); $('#text33').hide(); $('#text34').hide(); $('#text35').hide(); $('#text36').hide();
                     $('#text37').hide(); $('#text38').hide(); $('#text39').hide(); $('#text40').hide(); $('#text41').hide(); $('#text42').hide();
                     $('#text43').hide(); $('#text44').hide(); $('#text45').hide(); $('#text46').hide(); $('#text47').hide(); $('#text48').hide();
                     $('#text49').hide(); $('#text50').hide(); $('#text51').hide(); $('#text52').hide(); $('#text53').hide(); $('#text54').hide();
                     $('#text55').hide(); $('#text56').hide(); $('#text57').hide(); $('#text58').hide(); $('#text59').hide(); $('#text60').hide();
                     $('#text61').hide(); $('#text62').hide(); $('#text63').hide(); $('#text64').hide(); $('#text67').hide(); $('#text68').hide();


                 });
                 
                 $("#login34").click(function (e) {
                     $(".module-area").slideDown(400);//fadeIn()
                     $('#text67').show();
                     $('#text68').show();
                     $('#text1').hide(); $('#text2').hide(); $('#text3').hide(); $('#text4').hide(); $('#text5').hide(); $('#text6').hide();
                     $('#text7').hide(); $('#text8').hide(); $('#text9').hide(); $('#text10').hide(); $('#text11').hide(); $('#text12').hide();
                     $('#text13').hide(); $('#text14').hide(); $('#text15').hide(); $('#text16').hide(); $('#text17').hide(); $('#text18').hide();
                     $('#text19').hide(); $('#text20').hide(); $('#text21').hide(); $('#text22').hide(); $('#text23').hide(); $('#text24').hide();
                     $('#text25').hide(); $('#text26').hide(); $('#text27').hide(); $('#text28').hide(); $('#text29').hide(); $('#text30').hide();
                     $('#text31').hide(); $('#text32').hide(); $('#text33').hide(); $('#text34').hide(); $('#text35').hide(); $('#text36').hide();
                     $('#text37').hide(); $('#text38').hide(); $('#text39').hide(); $('#text40').hide(); $('#text41').hide(); $('#text42').hide();
                     $('#text43').hide(); $('#text44').hide(); $('#text45').hide(); $('#text46').hide(); $('#text47').hide(); $('#text48').hide();
                     $('#text49').hide(); $('#text50').hide(); $('#text51').hide(); $('#text52').hide(); $('#text53').hide(); $('#text54').hide();
                     $('#text55').hide(); $('#text56').hide(); $('#text57').hide(); $('#text58').hide(); $('#text59').hide(); $('#text60').hide();
                     $('#text61').hide(); $('#text62').hide(); $('#text63').hide(); $('#text64').hide(); $('#text65').hide(); $('#text66').hide();


                 });




                 $(".module-close").click(function (e) {
                    
                     $(".module-area").slideUp(400);//fadeOut()
                   

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
                      
                      <p>该测试表为为他评量表，根据测试者的实际情况，在每项症状的三方面做出相应的选项。</p><p>【评定注意事项】这份问卷适用于精神科医师评定各种精神药物引起副作用的成年病人。请根据病人报告，体格检查结果以及实验室报告作出相应评定，有些项目，还应向病人家属或病房工作人员询问。</p>
                           
                               
                                <p style="margin-left:40%">  <asp:Label ID="Label4" class="btn btn-info login" runat="server" Text="开始测试"></asp:Label>
                                
                            </p>  
                       
                    </div>

                    <!-- 模态框弹出部分  --->
    <div class="dragContainer" style="position: fixed; left: 10px; top: 50px; width: 100%;">
        <div id="dragDiv" style="z-index: 1001;">
            <div class="module-area">
                <div class="module-head">

                    <strong id="text1">中毒性意识模糊
                        </strong>

                    <strong id="text3">兴奋激越
                        </strong>

                    <strong id="text5">情绪抑郁
                        </strong>

                    <strong id="text7">活动增加"
                        </strong>

                    <strong id="text9">活动减退
                        </strong>

                    <strong id="text11">失眠
                        </strong>

                    <strong id="text13">嗜睡
                        </strong>

                    <strong id="text15">血象异常
                        </strong>

                    <strong id="text17">肝功能
                        </strong>

                    <strong id="text19">尿化验异常
                        </strong>

                    <strong id="text21">肌强直
                        </strong>

                    <strong id="text23">震颤
                        </strong>

                    <strong id="text25">扭转性痉挛
                        </strong>

                    <strong id="text27">静坐不能
                        </strong>

                    <strong id="text29">口干
                        </strong>

                    <strong id="text31">鼻塞
                        </strong>

                    <strong id="text33">视力模糊
                        </strong>

                    <strong id="text35">便秘
                        </strong>

                    <strong id="text37">唾液增加
                        </strong>

                    <strong id="text39">出汗
                        </strong>

                    <strong id="text41">恶心呕吐
                        </strong>

                    <strong id="text43">腹泻
                        </strong>

                    <strong id="text45">血压降低
                        </strong>

                    <strong id="text47">头昏和昏厥
                        </strong>

                    <strong id="text49">心动过速
                        </strong>

                    <strong id="text51">血压升高
                        </strong>

                    <strong id="text53">心电图异常
                        </strong>

                    <strong id="text55">皮肤症状
                        </strong>

                    <strong id="text57">体重增加
                        </strong>

                    <strong id="text59">体重减轻
                        </strong>

                    <strong id="text61">食欲减退和厌食
                        </strong>

                    <strong id="text63">头痛
                        </strong>

                    <strong id="text65">迟发性运动障碍（TD）
                        </strong>

                    <strong id="text67">其他
                        </strong>

                    <div class="module-close"></div>

                </div>

                   <div id="substance" >
                <div id="text2">
                    <p  >
                        &nbsp; &nbsp;（0）无该项症状  （1）极轻或可疑  （2）轻度，指不影响功能活动  （3）中度，仅见于晚上，短暂  （4）重度，持续至白天。

                               
                    </p>
                </div>
                <div id="text4">
                    <p  >
                        &nbsp; &nbsp;（0）无该项症状  （1）极轻或可疑  （2）轻度，有焦虑或恐惧  （3）中度，有非持续性的激越性运动行为  （4）重度，持续激越，如捶首，顿足和搓手等。
                               
                    </p>
                </div>
                <div id="text6">
                    <p  >
                        &nbsp; &nbsp;（0）无该项症状  （1）极轻或可疑  （2）轻度，问出来的心境抑郁  （3）中度，主动诉述抑郁绝望，易哭  （4）重度，伴阻滞的符合诊断标准的重症抑郁发作。

                               
                    </p>
                </div>
                <div id="text8">
                    <p  >
                        &nbsp; &nbsp;（0）无该项症状  （1）极轻或可疑  （2）轻度，非持续性，能自行控制  （3）中度，持续性，不需外力控制  （4）重度，持续，需他人干涉。

                               
                    </p>
                </div>
                <div id="text10">
                    <p  >
                        &nbsp; &nbsp;（0）无该项症状  （1）极轻或可疑  （2）轻度，主动活动减少  （3）中度，需外力推动才活动  （4）重度，木僵或亚木僵。

                               
                    </p>
                </div>
                <div id="text12">
                    <p  >
                        &nbsp; &nbsp;（0）无该项症状  （1）极轻或可疑  （2）轻度，比平时睡眠减少2小时  （3）中度，减少3～6小时  （4）重度，减少6小时以上。

                               
                    </p>
                </div>
                <div id="text14">
                    <p  >
                        &nbsp; &nbsp;（0）无该项症状  （1）极轻或可疑  （2）轻度，白天嗜睡或睡觉2小时  （3）中度，白天睡眠3～8小时  （4）重度，白天睡8小时以上。

                               
                    </p>
                </div>
                <div id="text16">
                    <p  >
                        &nbsp; &nbsp; （0）无该项症状  （1）极轻或可疑  （2）轻度  （3）中度，血象化验异常，如白细胞减少  （4）重度，严重异常，如白细胞缺乏。

                               
                    </p>
                </div>
                <div id="text18">
                    <p  >
                        &nbsp; &nbsp; （0）无该项症状  （1）极轻或可疑  （2）轻度  （3）中度，化验异常  （4）重度，黄疸。

                               
                    </p>
                </div>
                <div id="text20">
                    <p  >
                        &nbsp; &nbsp; （0）无该项症状  （1）极轻或可疑  （2）轻度  （3）中度，化验结果为肯定异常  （4）重度，严重异常。

                               
                    </p>
                </div>
                <div id="text22">
                    <p  >
                        &nbsp; &nbsp; （0）无该项症状  （1）极轻或可疑  （2）轻度，肌张力轻度增高，不影响活动  （3）中度，肌张力明显增高，未用拮抗药  （4）重度，肌张力极高，即使使用拮抗药亦不能逆转。

                               
                    </p>
                </div>
                <div id="text24">
                    <p  >
                        &nbsp; &nbsp;（0）无该项症状  （1）极轻或可疑  （2）轻度，自觉有震颤感，或闭目平伸双手有轻度震颤  （3）中度，明显可见的震颤，影响精细活动  （4）重度，震颤严重，影响生活，如无法进食。

                               
                    </p>
                </div>
                <div id="text26">
                    <p  >
                        &nbsp; &nbsp;（0）无该项症状  （1）极轻或可疑  （2）轻度，有，但不影响活动  （3）中度，影响活动，但不影响生活  （4）重度，影响生活。

                               
                    </p>
                </div>
                <div id="text28">
                    <p  >
                        &nbsp; &nbsp;（0）无该项症状  （1）极轻或可疑  （2）轻度，自觉心烦，缺乏耐心，能自控  （3）中度，因缺乏耐心，会谈时或工作中起立行走  （4）重度，无法静坐，无法完成任务，不能自控。

                               
                    </p>
                </div>
                <div id="text30">
                    <p  >
                        &nbsp; &nbsp;（0）无该项症状  （1）极轻或可疑  （2）轻度，无法静坐，无法完成任务，不能自控  （3）中度，可查出的口腔粘膜干燥（对生活无严重影响）  （4）重度，可明显查出的口腔粘膜干燥（严重影响病人的活动和生活）。

                               
                    </p>
                </div>
                <div id="text32">
                    <p  >
                        &nbsp; &nbsp;（0）无该项症状  （1）极轻或可疑  （2）轻度，自感鼻塞  （3）中度，可见或可证实的算塞（如说话的声音）（对生活无严重影响）  （4）重度，可见或可证实的算塞（严重影响病人的活动和生活）。

                               
                    </p>
                </div>
                <div id="text34">
                    <p  >
                        &nbsp; &nbsp;（0）无该项症状  （1）极轻或可疑  （2）轻度，只是主诉  （3）中度，影响视力的清晰度  （4）重度，累及日常活动，如绊倒东西等。

                               
                    </p>
                </div>
                <div id="text36">
                    <p  >
                        &nbsp; &nbsp;（0）无该项症状  （1）极轻或可疑  （2）轻度，便秘36小时以上  （3）中度，4天以上的便秘  （4）重度，需手通大便。

                               
                    </p>
                </div>
                <div id="text38">
                    <p  >
                        &nbsp; &nbsp;（0）无该项症状  （1）极轻或可疑  （2）轻度  （3）中度，唾液增多  （4）重度，淌口水。

                               
                    </p>
                </div>
                <div id="text40">
                    <p  >
                        &nbsp; &nbsp;（0）无该项症状  （1）极轻或可疑  （2）轻度，汗比平时多  （3）中度，汗比平时多，或阵阵出汗（对生活有些影响）  （4）重度，面部大汗淋漓。

                               
                    </p>
                </div>
                <div id="text42">
                    <p  >
                        &nbsp; &nbsp;（0）无该项症状  （1）极轻或可疑  （2）轻度  （3）中度，恶心  （4）重度，呕吐。

                               
                    </p>
                </div>
                <div id="text44">
                    <p  >
                        &nbsp; &nbsp;（0）无该项症状  （1）极轻或可疑  （2）轻度，一天2次  （3）中度，一天3～5次  （4）重度，一天5次以上。

                               
                    </p>
                </div>
                <div id="text46">
                    <p  >
                        &nbsp; &nbsp;（0）无该项症状  （1）极轻或可疑  （2）轻度，比平时低10%以上  （3）中度，降低20%以上  （4）重度，低至难以测出。

                               
                    </p>
                </div>
                <div id="text48">
                    <p  >
                        &nbsp; &nbsp;（0）无该项症状  （1）极轻或可疑  （2）轻度，有头昏头晕感  （3）中度，伴失平衡感的头昏和头晕  （4）重度，晕劂，失去知觉。

                               
                    </p>
                </div>
                <div id="text50">
                    <p  >
                        &nbsp; &nbsp;（0）无该项症状  （1）极轻或可疑  （2）轻度，心率90至100次/分  （3）中度，100至120次/分  （4）重度，120次/分以上。

                               
                    </p>
                </div>
                <div id="text52">
                    <p  >
                        &nbsp; &nbsp;（0）无该项症状  （1）极轻或可疑  （2）轻度，140/90以上  （3）中度，160/100以上  （4）重度，200/120以上。

                               
                    </p>
                </div>
                <div id="text54">
                    <p  >
                        &nbsp; &nbsp;（0）无该项症状  （1）极轻或可疑  （2）轻度，有异常，但无临床意义  （3）中度，具临床意义的异常  （4）重度，伴严惩后果的异常。

                               
                    </p>
                </div>
                <div id="text56">
                    <p  >
                        &nbsp; &nbsp;（0）无该项症状  （1）极轻或可疑  （2）轻度，日光过敏  （3）中度，暂时性的发痒或红斑  （4）重度，过敏性皮炎。

                               
                    </p>
                </div>
                <div id="text58">
                    <p  >
                        &nbsp; &nbsp;（0）无该项症状  （1）极轻或可疑  （2）轻度，一月内增加5磅  （3）中度，增加6至10磅  （4）重度，增加10磅以上。

                               
                    </p>
                </div>
                <div id="text60">
                    <p  >
                        &nbsp; &nbsp;（0）无该项症状  （1）极轻或可疑  （2）轻度，一月内减轻5磅  （3）中度，减轻6至10磅  （4）重度，减轻10磅以上。

                               
                    </p>
                </div>
                <div id="text62">
                    <p  >
                        &nbsp; &nbsp;（0）无该项症状  （1）极轻或可疑  （2）轻度，每天食量仅相当于两餐的数量  （3）中度，相当于一餐的数量  （4）重度，不进食。

                               
                    </p>
                </div>
                <div id="text64">
                    <p  >
                        &nbsp; &nbsp;（0）无该项症状  （1）极轻或可疑  （2）轻度，仅为主诉  （3）中度，有痛苦感  （4）重度，因而丧失功能或无法活动。

                               
                    </p>
                </div>
                <div id="text66">
                    <p  >
                        &nbsp; &nbsp;（0）无该项症状  （1）极轻或可疑  （2）轻度，检查出TD症状  （3）中度，自发的TD症状  （4）重度，明显影响功能或活动。

                               
                    </p>
                </div>
                <div id="text68">
                    <p  >
                        &nbsp; &nbsp;（由评定者填写）（0）无该项症状  （1）极轻或可疑  （2）轻度  （3）中度  （4）重度"

                               
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
    <div class="page-body" style="max-width:960px;margin:0 auto 0;">
        <div class="widget flat radius-bordered">
            <div id="banner">
                T20 治疗副反应量表（TESS）
            </div>
            <div class="widget-header bordered-bottom bordered-blue">
                <div style="text-align:left;padding-top:10px;">
                    <p style="font-weight:bold">测试说明：</p>
                    <p class="MsoNormal">
                        该测试表为为他评量表，根据测试者的实际情况，在每项症状的三方面做出相应的选项。</p><p>【评定注意事项】这份问卷适用于精神科医师评定各种精神药物引起副作用的成年病人。请根据病人报告，体格检查结果以及实验室报告作出相应评定，有些项目，还应向病人家属或病房工作人员询问。</p>
                </div>
            </div>
            <div class="widget-body bordered-bottom bordered-darkorange">
                <br />
                <table class="table" style="width: 90%">
                    <tr>
                        <th>分类</th>
                        <th colspan="3">项目 </th>
                        
                        <th>严重度</th>
                        <th>处理</th>
                        <th>用药关系</th>
                                             


                    </tr>


                    <tr>
                        
                        
                        <th rowspan="7">
                            <br />
                            行<br />
                            为<br />
                            毒<br />
                            性</th>
                        <th colspan="3"><span>*中毒性意识模糊</span> <a id="login1">?</a></th>
                        <th>
                            <asp:DropDownList ID="severity1" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">可疑或较轻</asp:ListItem>

                                <asp:ListItem Value="2">轻度</asp:ListItem>

                                <asp:ListItem Value="3">中度</asp:ListItem>

                                <asp:ListItem Value="4">重度</asp:ListItem>
                               
                            </asp:DropDownList>
                        </th>
                        <th>
                            <asp:DropDownList ID="manage1" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">加强观察</asp:ListItem>
                                <asp:ListItem Value="2">给拮抗药</asp:ListItem>
                                <asp:ListItem Value="3">减量</asp:ListItem>
                                <asp:ListItem Value="4">减量加拮抗药暂停治疗</asp:ListItem>
                                <asp:ListItem Value="5">暂停治疗</asp:ListItem>
                                <asp:ListItem Value="6">终止治疗</asp:ListItem>                               
                            </asp:DropDownList>
                        </th>
                        <th>
                             <asp:DropDownList ID="relation1" runat="server" Width="100%">
                                <asp:ListItem Value="0">无关</asp:ListItem>
                                <asp:ListItem Value="1">基本无关</asp:ListItem>
                                <asp:ListItem Value="2">可能有关</asp:ListItem>
                                <asp:ListItem Value="3">很可能有关</asp:ListItem>
                                <asp:ListItem Value="4">肯定有关</asp:ListItem>                               
                            </asp:DropDownList>
                        </th>
                        
                        
                    </tr>


                    <tr>
                        
                        <th colspan="3"><span>*兴奋或激越</span> <a id="login2">?</a></th>
                        <th>
                            <asp:DropDownList ID="severity2" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">可疑或较轻</asp:ListItem>

                                <asp:ListItem Value="2">轻度</asp:ListItem>

                                <asp:ListItem Value="3">中度</asp:ListItem>

                                <asp:ListItem Value="4">重度</asp:ListItem>
                            
                            </asp:DropDownList>
                        </th>
                        <th>
                            <asp:DropDownList ID="manage2" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">加强观察</asp:ListItem>
                                <asp:ListItem Value="2">给拮抗药</asp:ListItem>
                                <asp:ListItem Value="3">减量</asp:ListItem>
                                <asp:ListItem Value="4">减量加拮抗药暂停治疗</asp:ListItem>
                                <asp:ListItem Value="5">暂停治疗</asp:ListItem>
                                <asp:ListItem Value="6">终止治疗</asp:ListItem>                               
                            </asp:DropDownList>
                        </th>
                        <th>
                             <asp:DropDownList ID="relation2" runat="server" Width="100%">
                                <asp:ListItem Value="0">无关</asp:ListItem>
                                <asp:ListItem Value="1">基本无关</asp:ListItem>
                                <asp:ListItem Value="2">可能有关</asp:ListItem>
                                <asp:ListItem Value="3">很可能有关</asp:ListItem>
                                <asp:ListItem Value="4">肯定有关</asp:ListItem>                              
                            </asp:DropDownList>
                        </th>
                       
                        

                    </tr>


                    <tr>
                        
                        <th colspan="3"><span>*情感忧郁</span> <a id="login3">?</a></th>
                        <th>
                            <asp:DropDownList ID="severity3" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">可疑或较轻</asp:ListItem>

                                <asp:ListItem Value="2">轻度</asp:ListItem>

                                <asp:ListItem Value="3">中度</asp:ListItem>

                                <asp:ListItem Value="4">重度</asp:ListItem>
                                       
                            </asp:DropDownList>
                        </th>
                        <th>
                            <asp:DropDownList ID="manage3" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">加强观察</asp:ListItem>
                                <asp:ListItem Value="2">给拮抗药</asp:ListItem>
                                <asp:ListItem Value="3">减量</asp:ListItem>
                                <asp:ListItem Value="4">减量加拮抗药暂停治疗</asp:ListItem>
                                <asp:ListItem Value="5">暂停治疗</asp:ListItem>
                                <asp:ListItem Value="6">终止治疗</asp:ListItem>                               
                            </asp:DropDownList>
                        </th>
                        <th>
                             <asp:DropDownList ID="relation3" runat="server" Width="100%">
                                <asp:ListItem Value="0">无关</asp:ListItem>
                                <asp:ListItem Value="1">基本无关</asp:ListItem>
                                <asp:ListItem Value="2">可能有关</asp:ListItem>
                                <asp:ListItem Value="3">很可能有关</asp:ListItem>
                                <asp:ListItem Value="4">肯定有关</asp:ListItem>                              
                            </asp:DropDownList>
                        </th>                     
                        
                    </tr>
                    <tr>
                        
                        <th colspan="3"><span>*活动增加</span> <a id="login4">?</a></th>
                        <th>
                            <asp:DropDownList ID="severity4" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">可疑或较轻</asp:ListItem>

                                <asp:ListItem Value="2">轻度</asp:ListItem>

                                <asp:ListItem Value="3">中度</asp:ListItem>

                                <asp:ListItem Value="4">重度</asp:ListItem>
                                       
                            </asp:DropDownList>
                        </th>
                        <th>
                            <asp:DropDownList ID="manage4" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">加强观察</asp:ListItem>
                                <asp:ListItem Value="2">给拮抗药</asp:ListItem>
                                <asp:ListItem Value="3">减量</asp:ListItem>
                                <asp:ListItem Value="4">减量加拮抗药暂停治疗</asp:ListItem>
                                <asp:ListItem Value="5">暂停治疗</asp:ListItem>
                                <asp:ListItem Value="6">终止治疗</asp:ListItem>                             
                            </asp:DropDownList>
                        </th>
                        <th>
                             <asp:DropDownList ID="relation4" runat="server" Width="100%">
                                <asp:ListItem Value="0">无关</asp:ListItem>
                                <asp:ListItem Value="1">基本无关</asp:ListItem>
                                <asp:ListItem Value="2">可能有关</asp:ListItem>
                                <asp:ListItem Value="3">很可能有关</asp:ListItem>
                                <asp:ListItem Value="4">肯定有关</asp:ListItem>                              
                            </asp:DropDownList>
                        </th>
                        
                        
                    </tr>
                    <tr>
                        
                        <th colspan="3"><span>*活动减退</span> <a id="login5">?</a></th>
                        <th>
                            <asp:DropDownList ID="severity5" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">可疑或较轻</asp:ListItem>

                                <asp:ListItem Value="2">轻度</asp:ListItem>

                                <asp:ListItem Value="3">中度</asp:ListItem>

                                <asp:ListItem Value="4">重度</asp:ListItem>
                                       
                            </asp:DropDownList>
                        </th>
                        <th>
                            <asp:DropDownList ID="manage5" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">加强观察</asp:ListItem>
                                <asp:ListItem Value="2">给拮抗药</asp:ListItem>
                                <asp:ListItem Value="3">减量</asp:ListItem>
                                <asp:ListItem Value="4">减量加拮抗药暂停治疗</asp:ListItem>
                                <asp:ListItem Value="5">暂停治疗</asp:ListItem>
                                <asp:ListItem Value="6">终止治疗</asp:ListItem>                             
                            </asp:DropDownList>
                        </th>
                        <th>
                             <asp:DropDownList ID="relation5" runat="server" Width="100%">
                                <asp:ListItem Value="0">无关</asp:ListItem>
                                <asp:ListItem Value="1">基本无关</asp:ListItem>
                                <asp:ListItem Value="2">可能有关</asp:ListItem>
                                <asp:ListItem Value="3">很可能有关</asp:ListItem>
                                <asp:ListItem Value="4">肯定有关</asp:ListItem>                              
                            </asp:DropDownList>
                        </th>
                        
                        
                    </tr>
                    <tr>
                        
                        <th colspan="3"><span>*失眠</span> <a id="login6">?</a></th>
                        <th>
                            <asp:DropDownList ID="severity6" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">可疑或较轻</asp:ListItem>

                                <asp:ListItem Value="2">轻度</asp:ListItem>

                                <asp:ListItem Value="3">中度</asp:ListItem>

                                <asp:ListItem Value="4">重度</asp:ListItem>
                                       
                            </asp:DropDownList>
                        </th>
                        <th>
                            <asp:DropDownList ID="manage6" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">加强观察</asp:ListItem>
                                <asp:ListItem Value="2">给拮抗药</asp:ListItem>
                                <asp:ListItem Value="3">减量</asp:ListItem>
                                <asp:ListItem Value="4">减量加拮抗药暂停治疗</asp:ListItem>
                                <asp:ListItem Value="5">暂停治疗</asp:ListItem>
                                <asp:ListItem Value="6">终止治疗</asp:ListItem>                             
                            </asp:DropDownList>
                        </th>
                        <th>
                             <asp:DropDownList ID="relation6" runat="server" Width="100%">
                                <asp:ListItem Value="0">无关</asp:ListItem>
                                <asp:ListItem Value="1">基本无关</asp:ListItem>
                                <asp:ListItem Value="2">可能有关</asp:ListItem>
                                <asp:ListItem Value="3">很可能有关</asp:ListItem>
                                <asp:ListItem Value="4">肯定有关</asp:ListItem>                              
                            </asp:DropDownList>
                        </th>
                        
                        
                    </tr>
                    <tr>
                        
                        <th colspan="3"><span>*嗜睡</span> <a id="login7">?</a></th>
                        <th>
                            <asp:DropDownList ID="severity7" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">可疑或较轻</asp:ListItem>

                                <asp:ListItem Value="2">轻度</asp:ListItem>

                                <asp:ListItem Value="3">中度</asp:ListItem>

                                <asp:ListItem Value="4">重度</asp:ListItem>
                                       
                            </asp:DropDownList>
                        </th>
                        <th>
                            <asp:DropDownList ID="manage7" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">加强观察</asp:ListItem>
                                <asp:ListItem Value="2">给拮抗药</asp:ListItem>
                                <asp:ListItem Value="3">减量</asp:ListItem>
                                <asp:ListItem Value="4">减量加拮抗药暂停治疗</asp:ListItem>
                                <asp:ListItem Value="5">暂停治疗</asp:ListItem>
                                <asp:ListItem Value="6">终止治疗</asp:ListItem>                             
                            </asp:DropDownList>
                        </th>
                        <th>
                             <asp:DropDownList ID="relation7" runat="server" Width="100%">
                                <asp:ListItem Value="0">无关</asp:ListItem>
                                <asp:ListItem Value="1">基本无关</asp:ListItem>
                                <asp:ListItem Value="2">可能有关</asp:ListItem>
                                <asp:ListItem Value="3">很可能有关</asp:ListItem>
                                <asp:ListItem Value="4">肯定有关</asp:ListItem>                              
                            </asp:DropDownList>
                        </th>
                        
                    </tr>

                    <tr>
                        <th rowspan="3"><span>
                            实<br />
                            验<br />
                            室<br />
                            异<br />
                            常</span></th>
                        <th colspan="3"><span>*血象异常</span> <a id="login8">?</a></th>
                        
                        <th>
                            <asp:DropDownList ID="severity8" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">可疑或较轻</asp:ListItem>

                                <asp:ListItem Value="2">轻度</asp:ListItem>

                                <asp:ListItem Value="3">中度</asp:ListItem>

                                <asp:ListItem Value="4">重度</asp:ListItem>
                                       
                            </asp:DropDownList>
                        </th>
                        <th>
                            <asp:DropDownList ID="manage8" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">加强观察</asp:ListItem>
                                <asp:ListItem Value="2">给拮抗药</asp:ListItem>
                                <asp:ListItem Value="3">减量</asp:ListItem>
                                <asp:ListItem Value="4">减量加拮抗药暂停治疗</asp:ListItem>
                                <asp:ListItem Value="5">暂停治疗</asp:ListItem>
                                <asp:ListItem Value="6">终止治疗</asp:ListItem>                             
                            </asp:DropDownList>
                        </th>
                        <th>
                             <asp:DropDownList ID="relation8" runat="server" Width="100%">
                                <asp:ListItem Value="0">无关</asp:ListItem>
                                <asp:ListItem Value="1">基本无关</asp:ListItem>
                                <asp:ListItem Value="2">可能有关</asp:ListItem>
                                <asp:ListItem Value="3">很可能有关</asp:ListItem>
                                <asp:ListItem Value="4">肯定有关</asp:ListItem>                              
                            </asp:DropDownList>
                        </th>
                        
                    </tr>

                    <tr>
                        
                        <th colspan="3"><span>*肝功能</span> <a id="login9">?</a></th>
                        <th>
                            <asp:DropDownList ID="severity9" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">可疑或较轻</asp:ListItem>

                                <asp:ListItem Value="2">轻度</asp:ListItem>

                                <asp:ListItem Value="3">中度</asp:ListItem>

                                <asp:ListItem Value="4">重度</asp:ListItem>
                                       
                            </asp:DropDownList>
                        </th>
                        <th>
                            <asp:DropDownList ID="manage9" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">加强观察</asp:ListItem>
                                <asp:ListItem Value="2">给拮抗药</asp:ListItem>
                                <asp:ListItem Value="3">减量</asp:ListItem>
                                <asp:ListItem Value="4">减量加拮抗药暂停治疗</asp:ListItem>
                                <asp:ListItem Value="5">暂停治疗</asp:ListItem>
                                <asp:ListItem Value="6">终止治疗</asp:ListItem>                             
                            </asp:DropDownList>
                        </th>
                        <th>
                             <asp:DropDownList ID="relation9" runat="server" Width="100%">
                                <asp:ListItem Value="0">无关</asp:ListItem>
                                <asp:ListItem Value="1">基本无关</asp:ListItem>
                                <asp:ListItem Value="2">可能有关</asp:ListItem>
                                <asp:ListItem Value="3">很可能有关</asp:ListItem>
                                <asp:ListItem Value="4">肯定有关</asp:ListItem>                              
                            </asp:DropDownList>
                        </th>
                        
                    </tr>

                    <tr>
                        
                        <th colspan="3"><span>*尿化验异常</span> <a id="login10">?</a></th>
                        <th>
                            <asp:DropDownList ID="severity10" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">可疑或较轻</asp:ListItem>

                                <asp:ListItem Value="2">轻度</asp:ListItem>

                                <asp:ListItem Value="3">中度</asp:ListItem>

                                <asp:ListItem Value="4">重度</asp:ListItem>
                                       
                            </asp:DropDownList>
                        </th>
                        <th>
                            <asp:DropDownList ID="manage10" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">加强观察</asp:ListItem>
                                <asp:ListItem Value="2">给拮抗药</asp:ListItem>
                                <asp:ListItem Value="3">减量</asp:ListItem>
                                <asp:ListItem Value="4">减量加拮抗药暂停治疗</asp:ListItem>
                                <asp:ListItem Value="5">暂停治疗</asp:ListItem>
                                <asp:ListItem Value="6">终止治疗</asp:ListItem>                             
                            </asp:DropDownList>
                        </th>
                        <th>
                             <asp:DropDownList ID="relation10" runat="server" Width="100%">
                                <asp:ListItem Value="0">无关</asp:ListItem>
                                <asp:ListItem Value="1">基本无关</asp:ListItem>
                                <asp:ListItem Value="2">可能有关</asp:ListItem>
                                <asp:ListItem Value="3">很可能有关</asp:ListItem>
                                <asp:ListItem Value="4">肯定有关</asp:ListItem>                              
                            </asp:DropDownList>
                        </th>
                        
                    </tr>

                    <tr>
                       <th rowspan="4"><span>
                            <br />
                            神<br />
                            经<br />
                            系<br />
                            统</span></th>
                        <th colspan="3"><span>*肌强直</span> <a id="login11">?</a></th>
                        
                        <th>
                            <asp:DropDownList ID="severity11" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">可疑或较轻</asp:ListItem>

                                <asp:ListItem Value="2">轻度</asp:ListItem>

                                <asp:ListItem Value="3">中度</asp:ListItem>

                                <asp:ListItem Value="4">重度</asp:ListItem>
                                      
                            </asp:DropDownList>
                        </th>
                        <th>
                            <asp:DropDownList ID="manage11" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">加强观察</asp:ListItem>
                                <asp:ListItem Value="2">给拮抗药</asp:ListItem>
                                <asp:ListItem Value="3">减量</asp:ListItem>
                                <asp:ListItem Value="4">减量加拮抗药暂停治疗</asp:ListItem>
                                <asp:ListItem Value="5">暂停治疗</asp:ListItem>
                                <asp:ListItem Value="6">终止治疗</asp:ListItem>                             
                            </asp:DropDownList>
                        </th>
                        <th>
                             <asp:DropDownList ID="relation11" runat="server" Width="100%">
                                <asp:ListItem Value="0">无关</asp:ListItem>
                                <asp:ListItem Value="1">基本无关</asp:ListItem>
                                <asp:ListItem Value="2">可能有关</asp:ListItem>
                                <asp:ListItem Value="3">很可能有关</asp:ListItem>
                                <asp:ListItem Value="4">肯定有关</asp:ListItem>                              
                            </asp:DropDownList>
                        </th>
                        
                    </tr>

                    <tr>
                        
                        <th colspan="3"><span>*震颤</span> <a id="login12">?</a></th>
                        <th>
                            <asp:DropDownList ID="severity12" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">可疑或较轻</asp:ListItem>

                                <asp:ListItem Value="2">轻度</asp:ListItem>

                                <asp:ListItem Value="3">中度</asp:ListItem>

                                <asp:ListItem Value="4">重度</asp:ListItem>
                                      
                            </asp:DropDownList>
                        </th>
                        <th>
                            <asp:DropDownList ID="manage12" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">加强观察</asp:ListItem>
                                <asp:ListItem Value="2">给拮抗药</asp:ListItem>
                                <asp:ListItem Value="3">减量</asp:ListItem>
                                <asp:ListItem Value="4">减量加拮抗药暂停治疗</asp:ListItem>
                                <asp:ListItem Value="5">暂停治疗</asp:ListItem>
                                <asp:ListItem Value="6">终止治疗</asp:ListItem>                             
                            </asp:DropDownList>
                        </th>
                        <th>
                             <asp:DropDownList ID="relation12" runat="server" Width="100%">
                                <asp:ListItem Value="0">无关</asp:ListItem>
                                <asp:ListItem Value="1">基本无关</asp:ListItem>
                                <asp:ListItem Value="2">可能有关</asp:ListItem>
                                <asp:ListItem Value="3">很可能有关</asp:ListItem>
                                <asp:ListItem Value="4">肯定有关</asp:ListItem>                              
                            </asp:DropDownList>
                        </th>
                        
                    </tr>

                    <tr>
                        
                        <th colspan="3"><span>*扭转性痉挛</span> <a id="login13">?</a></th>
                        <th>
                            <asp:DropDownList ID="severity13" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">可疑或较轻</asp:ListItem>

                                <asp:ListItem Value="2">轻度</asp:ListItem>

                                <asp:ListItem Value="3">中度</asp:ListItem>

                                <asp:ListItem Value="4">重度</asp:ListItem>
                                    
                            </asp:DropDownList>
                        </th>
                        <th>
                            <asp:DropDownList ID="manage13" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">加强观察</asp:ListItem>
                                <asp:ListItem Value="2">给拮抗药</asp:ListItem>
                                <asp:ListItem Value="3">减量</asp:ListItem>
                                <asp:ListItem Value="4">减量加拮抗药暂停治疗</asp:ListItem>
                                <asp:ListItem Value="5">暂停治疗</asp:ListItem>
                                <asp:ListItem Value="6">终止治疗</asp:ListItem>                             
                            </asp:DropDownList>
                        </th>
                        <th>
                             <asp:DropDownList ID="relation13" runat="server" Width="100%">
                                <asp:ListItem Value="0">无关</asp:ListItem>
                                <asp:ListItem Value="1">基本无关</asp:ListItem>
                                <asp:ListItem Value="2">可能有关</asp:ListItem>
                                <asp:ListItem Value="3">很可能有关</asp:ListItem>
                                <asp:ListItem Value="4">肯定有关</asp:ListItem>                              
                            </asp:DropDownList>
                        </th>
                        
                    </tr>

                    <tr>
                        
                        <th colspan="3"><span>*静坐不能</span> <a id="login14">?</a></th>
                        <th>
                            <asp:DropDownList ID="severity14" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">可疑或较轻</asp:ListItem>

                                <asp:ListItem Value="2">轻度</asp:ListItem>

                                <asp:ListItem Value="3">中度</asp:ListItem>

                                <asp:ListItem Value="4">重度</asp:ListItem>
                            
                            </asp:DropDownList>
                        </th>
                        <th>
                            <asp:DropDownList ID="manage14" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">加强观察</asp:ListItem>
                                <asp:ListItem Value="2">给拮抗药</asp:ListItem>
                                <asp:ListItem Value="3">减量</asp:ListItem>
                                <asp:ListItem Value="4">减量加拮抗药暂停治疗</asp:ListItem>
                                <asp:ListItem Value="5">暂停治疗</asp:ListItem>
                                <asp:ListItem Value="6">终止治疗</asp:ListItem>                             
                            </asp:DropDownList>
                        </th>
                        <th>
                             <asp:DropDownList ID="relation14" runat="server" Width="100%">
                                <asp:ListItem Value="0">无关</asp:ListItem>
                                <asp:ListItem Value="1">基本无关</asp:ListItem>
                                <asp:ListItem Value="2">可能有关</asp:ListItem>
                                <asp:ListItem Value="3">很可能有关</asp:ListItem>
                                <asp:ListItem Value="4">肯定有关</asp:ListItem>                              
                            </asp:DropDownList>
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
                        <th colspan="3"><span>*口干</span> <a id="login15">?</a></th>
                        
                        <th>
                            <asp:DropDownList ID="severity15" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">可疑或较轻</asp:ListItem>

                                <asp:ListItem Value="2">轻度</asp:ListItem>

                                <asp:ListItem Value="3">中度</asp:ListItem>

                                <asp:ListItem Value="4">重度</asp:ListItem>
                                
                            </asp:DropDownList>
                        </th>
                        <th>
                            <asp:DropDownList ID="manage15" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">加强观察</asp:ListItem>
                                <asp:ListItem Value="2">给拮抗药</asp:ListItem>
                                <asp:ListItem Value="3">减量</asp:ListItem>
                                <asp:ListItem Value="4">减量加拮抗药暂停治疗</asp:ListItem>
                                <asp:ListItem Value="5">暂停治疗</asp:ListItem>
                                <asp:ListItem Value="6">终止治疗</asp:ListItem>                             
                            </asp:DropDownList>
                        </th>
                        <th>
                             <asp:DropDownList ID="relation15" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">可疑或较轻</asp:ListItem>

                                <asp:ListItem Value="2">轻度</asp:ListItem>

                                <asp:ListItem Value="3">中度</asp:ListItem>

                                <asp:ListItem Value="4">重度</asp:ListItem>
                                    
                            </asp:DropDownList>
                        </th>
                        
                    </tr>

                    <tr>
                        
                        <th colspan="3"><span>*鼻塞</span> <a id="login16">?</a></th>
                        <th>
                            <asp:DropDownList ID="severity16" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">可疑或较轻</asp:ListItem>

                                <asp:ListItem Value="2">轻度</asp:ListItem>

                                <asp:ListItem Value="3">中度</asp:ListItem>

                                <asp:ListItem Value="4">重度</asp:ListItem>
                                     
                            </asp:DropDownList>
                        </th>
                        <th>
                            <asp:DropDownList ID="manage16" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">加强观察</asp:ListItem>
                                <asp:ListItem Value="2">给拮抗药</asp:ListItem>
                                <asp:ListItem Value="3">减量</asp:ListItem>
                                <asp:ListItem Value="4">减量加拮抗药暂停治疗</asp:ListItem>
                                <asp:ListItem Value="5">暂停治疗</asp:ListItem>
                                <asp:ListItem Value="6">终止治疗</asp:ListItem>                             
                            </asp:DropDownList>
                        </th>
                        <th>
                             <asp:DropDownList ID="relation16" runat="server" Width="100%">
                                <asp:ListItem Value="0">无关</asp:ListItem>
                                <asp:ListItem Value="1">基本无关</asp:ListItem>
                                <asp:ListItem Value="2">可能有关</asp:ListItem>
                                <asp:ListItem Value="3">很可能有关</asp:ListItem>
                                <asp:ListItem Value="4">肯定有关</asp:ListItem>                              
                            </asp:DropDownList>
                        </th>
                        
                    </tr>

                    <tr>
                        
                        <th colspan="3"><span>*视力模糊</span> <a id="login17">?</a></th>
                        <th>
                            <asp:DropDownList ID="severity17" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">可疑或较轻</asp:ListItem>

                                <asp:ListItem Value="2">轻度</asp:ListItem>

                                <asp:ListItem Value="3">中度</asp:ListItem>

                                <asp:ListItem Value="4">重度</asp:ListItem>
                                  
                            </asp:DropDownList>
                        </th>
                        <th>
                            <asp:DropDownList ID="manage17" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">加强观察</asp:ListItem>
                                <asp:ListItem Value="2">给拮抗药</asp:ListItem>
                                <asp:ListItem Value="3">减量</asp:ListItem>
                                <asp:ListItem Value="4">减量加拮抗药暂停治疗</asp:ListItem>
                                <asp:ListItem Value="5">暂停治疗</asp:ListItem>
                                <asp:ListItem Value="6">终止治疗</asp:ListItem>                             
                            </asp:DropDownList>
                        </th>
                        <th>
                             <asp:DropDownList ID="relation17" runat="server" Width="100%">
                                <asp:ListItem Value="0" Text="无关">无关</asp:ListItem>
                                <asp:ListItem Value="1">基本无关</asp:ListItem>
                                <asp:ListItem Value="2">可能有关</asp:ListItem>
                                <asp:ListItem Value="3">很可能有关</asp:ListItem>
                                <asp:ListItem Value="4">肯定有关</asp:ListItem>                              
                            </asp:DropDownList>
                        </th>
                        
                    </tr>

                    <tr>
                        
                        <th colspan="3"><span>*便秘</span> <a id="login18">?</a></th>
                        <th>
                            <asp:DropDownList ID="severity18" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">可疑或较轻</asp:ListItem>

                                <asp:ListItem Value="2">轻度</asp:ListItem>

                                <asp:ListItem Value="3">中度</asp:ListItem>

                                <asp:ListItem Value="4">重度</asp:ListItem>
                                   
                            </asp:DropDownList>
                        </th>
                        <th>
                            <asp:DropDownList ID="manage18" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">加强观察</asp:ListItem>
                                <asp:ListItem Value="2">给拮抗药</asp:ListItem>
                                <asp:ListItem Value="3">减量</asp:ListItem>
                                <asp:ListItem Value="4">减量加拮抗药暂停治疗</asp:ListItem>
                                <asp:ListItem Value="5">暂停治疗</asp:ListItem>
                                <asp:ListItem Value="6">终止治疗</asp:ListItem>                             
                            </asp:DropDownList>
                        </th>
                        <th>
                             <asp:DropDownList ID="relation18" runat="server" Width="100%">
                                <asp:ListItem Value="0">无关</asp:ListItem>
                                <asp:ListItem Value="1">基本无关</asp:ListItem>
                                <asp:ListItem Value="2">可能有关</asp:ListItem>
                                <asp:ListItem Value="3">很可能有关</asp:ListItem>
                                <asp:ListItem Value="4">肯定有关</asp:ListItem>                              
                            </asp:DropDownList>
                        </th>
                        
                    </tr>

                    <tr>
                        
                        <th colspan="3"><span>*唾液增加</span> <a id="login19">?</a></th>
                        <th>
                            <asp:DropDownList ID="severity19" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">可疑或较轻</asp:ListItem>

                                <asp:ListItem Value="2">轻度</asp:ListItem>

                                <asp:ListItem Value="3">中度</asp:ListItem>

                                <asp:ListItem Value="4">重度</asp:ListItem>
                          
                            </asp:DropDownList>
                        </th>
                        <th>
                            <asp:DropDownList ID="manage19" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">加强观察</asp:ListItem>
                                <asp:ListItem Value="2">给拮抗药</asp:ListItem>
                                <asp:ListItem Value="3">减量</asp:ListItem>
                                <asp:ListItem Value="4">减量加拮抗药暂停治疗</asp:ListItem>
                                <asp:ListItem Value="5">暂停治疗</asp:ListItem>
                                <asp:ListItem Value="6">终止治疗</asp:ListItem>                             
                            </asp:DropDownList>
                        </th>
                        <th>
                             <asp:DropDownList ID="relation19" runat="server" Width="100%">
                                <asp:ListItem Value="0">无关</asp:ListItem>
                                <asp:ListItem Value="1">基本无关</asp:ListItem>
                                <asp:ListItem Value="2">可能有关</asp:ListItem>
                                <asp:ListItem Value="3">很可能有关</asp:ListItem>
                                <asp:ListItem Value="4">肯定有关</asp:ListItem>                              
                            </asp:DropDownList>
                        </th>
                        
                    </tr>

                    <tr>
                        
                        <th colspan="3"><span>*出汗</span> <a id="login20">?</a></th>
                        <th>
                            <asp:DropDownList ID="severity20" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">可疑或较轻</asp:ListItem>

                                <asp:ListItem Value="2">轻度</asp:ListItem>

                                <asp:ListItem Value="3">中度</asp:ListItem>

                                <asp:ListItem Value="4">重度</asp:ListItem>
                          
                            </asp:DropDownList>
                        </th>
                        <th>
                            <asp:DropDownList ID="manage20" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">加强观察</asp:ListItem>
                                <asp:ListItem Value="2">给拮抗药</asp:ListItem>
                                <asp:ListItem Value="3">减量</asp:ListItem>
                                <asp:ListItem Value="4">减量加拮抗药暂停治疗</asp:ListItem>
                                <asp:ListItem Value="5">暂停治疗</asp:ListItem>
                                <asp:ListItem Value="6">终止治疗</asp:ListItem>                             
                            </asp:DropDownList>
                        </th>
                        <th>
                             <asp:DropDownList ID="relation20" runat="server" Width="100%">
                                <asp:ListItem Value="0">无关</asp:ListItem>
                                <asp:ListItem Value="1">基本无关</asp:ListItem>
                                <asp:ListItem Value="2">可能有关</asp:ListItem>
                                <asp:ListItem Value="3">很可能有关</asp:ListItem>
                                <asp:ListItem Value="4">肯定有关</asp:ListItem>                              
                            </asp:DropDownList>
                        </th>
                        
                    </tr>

                    <tr>
                        
                        <th colspan="3"><span>*恶心呕吐</span> <a id="login21">?</a></th>
                        <th>
                            <asp:DropDownList ID="severity21" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">可疑或较轻</asp:ListItem>

                                <asp:ListItem Value="2">轻度</asp:ListItem>

                                <asp:ListItem Value="3">中度</asp:ListItem>

                                <asp:ListItem Value="4">重度</asp:ListItem>
                              
                            </asp:DropDownList>
                        </th>
                        <th>
                            <asp:DropDownList ID="manage21" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">加强观察</asp:ListItem>
                                <asp:ListItem Value="2">给拮抗药</asp:ListItem>
                                <asp:ListItem Value="3">减量</asp:ListItem>
                                <asp:ListItem Value="4">减量加拮抗药暂停治疗</asp:ListItem>
                                <asp:ListItem Value="5">暂停治疗</asp:ListItem>
                                <asp:ListItem Value="6">终止治疗</asp:ListItem>                             
                            </asp:DropDownList>
                        </th>
                        <th>
                             <asp:DropDownList ID="relation21" runat="server" Width="100%">
                                <asp:ListItem Value="0">无关</asp:ListItem>
                                <asp:ListItem Value="1">基本无关</asp:ListItem>
                                <asp:ListItem Value="2">可能有关</asp:ListItem>
                                <asp:ListItem Value="3">很可能有关</asp:ListItem>
                                <asp:ListItem Value="4">肯定有关</asp:ListItem>                              
                            </asp:DropDownList>
                        </th>
                        
                    </tr>

                    <tr>
                        
                        <th colspan="3"><span>*腹泻</span> <a id="login22">?</a></th>
                        <th>
                            <asp:DropDownList ID="severity22" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">可疑或较轻</asp:ListItem>

                                <asp:ListItem Value="2">轻度</asp:ListItem>

                                <asp:ListItem Value="3">中度</asp:ListItem>

                                <asp:ListItem Value="4">重度</asp:ListItem>
                           
                            </asp:DropDownList>
                        </th>
                        <th>
                            <asp:DropDownList ID="manage22" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">加强观察</asp:ListItem>
                                <asp:ListItem Value="2">给拮抗药</asp:ListItem>
                                <asp:ListItem Value="3">减量</asp:ListItem>
                                <asp:ListItem Value="4">减量加拮抗药暂停治疗</asp:ListItem>
                                <asp:ListItem Value="5">暂停治疗</asp:ListItem>
                                <asp:ListItem Value="6">终止治疗</asp:ListItem>                             
                            </asp:DropDownList>
                        </th>
                        <th>
                             <asp:DropDownList ID="relation22" runat="server" Width="100%">
                                <asp:ListItem Value="0">无关</asp:ListItem>
                                <asp:ListItem Value="1">基本无关</asp:ListItem>
                                <asp:ListItem Value="2">可能有关</asp:ListItem>
                                <asp:ListItem Value="3">很可能有关</asp:ListItem>
                                <asp:ListItem Value="4">肯定有关</asp:ListItem>                              
                            </asp:DropDownList>
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
                        <th colspan="3"><span>*血压降低</span> <a id="login23">?</a></th>
                        
                        <th>
                            <asp:DropDownList ID="severity23" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">可疑或较轻</asp:ListItem>

                                <asp:ListItem Value="2">轻度</asp:ListItem>

                                <asp:ListItem Value="3">中度</asp:ListItem>

                                <asp:ListItem Value="4">重度</asp:ListItem>
                               
                            </asp:DropDownList>
                        </th>
                        <th>
                            <asp:DropDownList ID="manage23" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">加强观察</asp:ListItem>
                                <asp:ListItem Value="2">给拮抗药</asp:ListItem>
                                <asp:ListItem Value="3">减量</asp:ListItem>
                                <asp:ListItem Value="4">减量加拮抗药暂停治疗</asp:ListItem>
                                <asp:ListItem Value="5">暂停治疗</asp:ListItem>
                                <asp:ListItem Value="6">终止治疗</asp:ListItem>                             
                            </asp:DropDownList>
                        </th>
                        <th>
                             <asp:DropDownList ID="relation23" runat="server" Width="100%">
                                <asp:ListItem Value="0">无关</asp:ListItem>
                                <asp:ListItem Value="1">基本无关</asp:ListItem>
                                <asp:ListItem Value="2">可能有关</asp:ListItem>
                                <asp:ListItem Value="3">很可能有关</asp:ListItem>
                                <asp:ListItem Value="4">肯定有关</asp:ListItem>                              
                            </asp:DropDownList>
                        </th>
                        
                    </tr>

                    <tr>
                        
                        <th colspan="3"><span>*头昏和昏厥</span> <a id="login24">?</a></th>
                        <th>
                            <asp:DropDownList ID="severity24" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">可疑或较轻</asp:ListItem>

                                <asp:ListItem Value="2">轻度</asp:ListItem>

                                <asp:ListItem Value="3">中度</asp:ListItem>

                                <asp:ListItem Value="4">重度</asp:ListItem>
                                
                            </asp:DropDownList>
                        </th>
                        <th>
                            <asp:DropDownList ID="manage24" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">加强观察</asp:ListItem>
                                <asp:ListItem Value="2">给拮抗药</asp:ListItem>
                                <asp:ListItem Value="3">减量</asp:ListItem>
                                <asp:ListItem Value="4">减量加拮抗药暂停治疗</asp:ListItem>
                                <asp:ListItem Value="5">暂停治疗</asp:ListItem>
                                <asp:ListItem Value="6">终止治疗</asp:ListItem>                             
                            </asp:DropDownList>
                        </th>
                        <th>
                             <asp:DropDownList ID="relation24" runat="server" Width="100%">
                                <asp:ListItem Value="0">无关</asp:ListItem>
                                <asp:ListItem Value="1">基本无关</asp:ListItem>
                                <asp:ListItem Value="2">可能有关</asp:ListItem>
                                <asp:ListItem Value="3">很可能有关</asp:ListItem>
                                <asp:ListItem Value="4">肯定有关</asp:ListItem>                              
                            </asp:DropDownList>
                        </th>
                        
                    </tr>

                    <tr>
                        

                        <th colspan="3"><span>*心动过速</span> <a id="login25">?</a></th>
                        <th>
                            <asp:DropDownList ID="severity25" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">可疑或较轻</asp:ListItem>

                                <asp:ListItem Value="2">轻度</asp:ListItem>

                                <asp:ListItem Value="3">中度</asp:ListItem>

                                <asp:ListItem Value="4">重度</asp:ListItem>
                               
                            </asp:DropDownList>
                        </th>
                        <th>
                            <asp:DropDownList ID="manage25" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">加强观察</asp:ListItem>
                                <asp:ListItem Value="2">给拮抗药</asp:ListItem>
                                <asp:ListItem Value="3">减量</asp:ListItem>
                                <asp:ListItem Value="4">减量加拮抗药暂停治疗</asp:ListItem>
                                <asp:ListItem Value="5">暂停治疗</asp:ListItem>
                                <asp:ListItem Value="6">终止治疗</asp:ListItem>                             
                            </asp:DropDownList>
                        </th>
                        <th>
                             <asp:DropDownList ID="relation25" runat="server" Width="100%">
                                <asp:ListItem Value="0">无关</asp:ListItem>
                                <asp:ListItem Value="1">基本无关</asp:ListItem>
                                <asp:ListItem Value="2">可能有关</asp:ListItem>
                                <asp:ListItem Value="3">很可能有关</asp:ListItem>
                                <asp:ListItem Value="4">肯定有关</asp:ListItem>                              
                            </asp:DropDownList>
                        </th>
                        
                    </tr>

                    <tr>
                       
                        <th colspan="3"><span>*血压升高</span> <a id="login26">?</a></th>
                        <th>
                            <asp:DropDownList ID="severity26" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">可疑或较轻</asp:ListItem>

                                <asp:ListItem Value="2">轻度</asp:ListItem>

                                <asp:ListItem Value="3">中度</asp:ListItem>

                                <asp:ListItem Value="4">重度</asp:ListItem>
                          
                            </asp:DropDownList>
                        </th>
                        <th>
                            <asp:DropDownList ID="manage26" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">加强观察</asp:ListItem>
                                <asp:ListItem Value="2">给拮抗药</asp:ListItem>
                                <asp:ListItem Value="3">减量</asp:ListItem>
                                <asp:ListItem Value="4">减量加拮抗药暂停治疗</asp:ListItem>
                                <asp:ListItem Value="5">暂停治疗</asp:ListItem>
                                <asp:ListItem Value="6">终止治疗</asp:ListItem>                             
                            </asp:DropDownList>
                        </th>
                        <th>
                             <asp:DropDownList ID="relation26" runat="server" Width="100%">
                                <asp:ListItem Value="0">无关</asp:ListItem>
                                <asp:ListItem Value="1">基本无关</asp:ListItem>
                                <asp:ListItem Value="2">可能有关</asp:ListItem>
                                <asp:ListItem Value="3">很可能有关</asp:ListItem>
                                <asp:ListItem Value="4">肯定有关</asp:ListItem>                              
                            </asp:DropDownList>
                        </th>
                        
                    </tr>

                    <tr>
                       
                        <th colspan="3"><span>*心电图异常</span> <a id="login27">?</a></th>
                        <th>
                            <asp:DropDownList ID="severity27" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">可疑或较轻</asp:ListItem>

                                <asp:ListItem Value="2">轻度</asp:ListItem>

                                <asp:ListItem Value="3">中度</asp:ListItem>

                                <asp:ListItem Value="4">重度</asp:ListItem>
                                   
                            </asp:DropDownList>
                        </th>
                        <th>
                            <asp:DropDownList ID="manage27" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">加强观察</asp:ListItem>
                                <asp:ListItem Value="2">给拮抗药</asp:ListItem>
                                <asp:ListItem Value="3">减量</asp:ListItem>
                                <asp:ListItem Value="4">减量加拮抗药暂停治疗</asp:ListItem>
                                <asp:ListItem Value="5">暂停治疗</asp:ListItem>
                                <asp:ListItem Value="6">终止治疗</asp:ListItem>                             
                            </asp:DropDownList>
                        </th>
                        <th>
                             <asp:DropDownList ID="relation27" runat="server" Width="100%">
                                <asp:ListItem Value="0">无关</asp:ListItem>
                                <asp:ListItem Value="1">基本无关</asp:ListItem>
                                <asp:ListItem Value="2">可能有关</asp:ListItem>
                                <asp:ListItem Value="3">很可能有关</asp:ListItem>
                                <asp:ListItem Value="4">肯定有关</asp:ListItem>                              
                            </asp:DropDownList>
                        </th>
                        
                    </tr>

                    <tr>
                        <th rowspan="7">
                            <br />
                            其<br />
                            他</th>
                        <th colspan="3"><span>*皮肤症状</span> <a id="login28">?</a></th>
                        
                        <th>
                            <asp:DropDownList ID="severity28" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">可疑或较轻</asp:ListItem>

                                <asp:ListItem Value="2">轻度</asp:ListItem>

                                <asp:ListItem Value="3">中度</asp:ListItem>

                                <asp:ListItem Value="4">重度</asp:ListItem>
                                   
                            </asp:DropDownList>
                        </th>
                        <th>
                            <asp:DropDownList ID="manage28" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">加强观察</asp:ListItem>
                                <asp:ListItem Value="2">给拮抗药</asp:ListItem>
                                <asp:ListItem Value="3">减量</asp:ListItem>
                                <asp:ListItem Value="4">减量加拮抗药暂停治疗</asp:ListItem>
                                <asp:ListItem Value="5">暂停治疗</asp:ListItem>
                                <asp:ListItem Value="6">终止治疗</asp:ListItem>                             
                            </asp:DropDownList>
                        </th>
                        <th>
                             <asp:DropDownList ID="relation28" runat="server" Width="100%">
                                <asp:ListItem Value="0">无关</asp:ListItem>
                                <asp:ListItem Value="1">基本无关</asp:ListItem>
                                <asp:ListItem Value="2">可能有关</asp:ListItem>
                                <asp:ListItem Value="3">很可能有关</asp:ListItem>
                                <asp:ListItem Value="4">肯定有关</asp:ListItem>                              
                            </asp:DropDownList>
                        </th>
                       
                    </tr>

                    <tr>
                        
                        <th colspan="3"><span>*体重增加</span> <a id="login29">?</a></th>
                        <th>
                            <asp:DropDownList ID="severity29" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">可疑或较轻</asp:ListItem>

                                <asp:ListItem Value="2">轻度</asp:ListItem>

                                <asp:ListItem Value="3">中度</asp:ListItem>

                                <asp:ListItem Value="4">重度</asp:ListItem>
                             
                            </asp:DropDownList>
                        </th>
                        <th>
                            <asp:DropDownList ID="manage29" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">加强观察</asp:ListItem>
                                <asp:ListItem Value="2">给拮抗药</asp:ListItem>
                                <asp:ListItem Value="3">减量</asp:ListItem>
                                <asp:ListItem Value="4">减量加拮抗药暂停治疗</asp:ListItem>
                                <asp:ListItem Value="5">暂停治疗</asp:ListItem>
                                <asp:ListItem Value="6">终止治疗</asp:ListItem>                             
                            </asp:DropDownList>
                        </th>
                        <th>
                             <asp:DropDownList ID="relation29" runat="server" Width="100%">
                                <asp:ListItem Value="0">无关</asp:ListItem>
                                <asp:ListItem Value="1">基本无关</asp:ListItem>
                                <asp:ListItem Value="2">可能有关</asp:ListItem>
                                <asp:ListItem Value="3">很可能有关</asp:ListItem>
                                <asp:ListItem Value="4">肯定有关</asp:ListItem>                              
                            </asp:DropDownList>
                        </th>
                        
                    </tr>


                    <tr>
                        
                        <th colspan="3"><span>*体重减轻</span> <a id="login30">?</a></th>
                        <th>
                            <asp:DropDownList ID="severity30" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">可疑或较轻</asp:ListItem>

                                <asp:ListItem Value="2">轻度</asp:ListItem>

                                <asp:ListItem Value="3">中度</asp:ListItem>

                                <asp:ListItem Value="4">重度</asp:ListItem>
                              
                            </asp:DropDownList>
                        </th>
                        <th>
                            <asp:DropDownList ID="manage30" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">加强观察</asp:ListItem>
                                <asp:ListItem Value="2">给拮抗药</asp:ListItem>
                                <asp:ListItem Value="3">减量</asp:ListItem>
                                <asp:ListItem Value="4">减量加拮抗药暂停治疗</asp:ListItem>
                                <asp:ListItem Value="5">暂停治疗</asp:ListItem>
                                <asp:ListItem Value="6">终止治疗</asp:ListItem>                             
                            </asp:DropDownList>
                        </th>
                        <th>
                             <asp:DropDownList ID="relation30" runat="server" Width="100%">
                                <asp:ListItem Value="0">无关</asp:ListItem>
                                <asp:ListItem Value="1">基本无关</asp:ListItem>
                                <asp:ListItem Value="2">可能有关</asp:ListItem>
                                <asp:ListItem Value="3">很可能有关</asp:ListItem>
                                <asp:ListItem Value="4">肯定有关</asp:ListItem>                              
                            </asp:DropDownList>
                        </th>
                        
                    </tr>

                    <tr>
                        
                        <th colspan="3"><span>*食欲减退和厌食</span> <a id="login31">?</a></th>
                        <th>
                            <asp:DropDownList ID="severity31" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">可疑或较轻</asp:ListItem>

                                <asp:ListItem Value="2">轻度</asp:ListItem>

                                <asp:ListItem Value="3">中度</asp:ListItem>

                                <asp:ListItem Value="4">重度</asp:ListItem>
                                    
                            </asp:DropDownList>
                        </th>
                        <th>
                            <asp:DropDownList ID="manage31" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">加强观察</asp:ListItem>
                                <asp:ListItem Value="2">给拮抗药</asp:ListItem>
                                <asp:ListItem Value="3">减量</asp:ListItem>
                                <asp:ListItem Value="4">减量加拮抗药暂停治疗</asp:ListItem>
                                <asp:ListItem Value="5">暂停治疗</asp:ListItem>
                                <asp:ListItem Value="6">终止治疗</asp:ListItem>                             
                            </asp:DropDownList>
                        </th>
                        <th>
                             <asp:DropDownList ID="relation31" runat="server" Width="100%">
                                <asp:ListItem Value="0">无关</asp:ListItem>
                                <asp:ListItem Value="1">基本无关</asp:ListItem>
                                <asp:ListItem Value="2">可能有关</asp:ListItem>
                                <asp:ListItem Value="3">很可能有关</asp:ListItem>
                                <asp:ListItem Value="4">肯定有关</asp:ListItem>                              
                            </asp:DropDownList>
                        </th>
                       
                    </tr>

                    <tr>
                       
                        <th colspan="3"><span>*头痛</span> <a id="login32">?</a></th>
                        <th>
                            <asp:DropDownList ID="severity32" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">可疑或较轻</asp:ListItem>

                                <asp:ListItem Value="2">轻度</asp:ListItem>

                                <asp:ListItem Value="3">中度</asp:ListItem>

                                <asp:ListItem Value="4">重度</asp:ListItem>
                             
                            </asp:DropDownList>
                        </th>
                        <th>
                            <asp:DropDownList ID="manage32" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">加强观察</asp:ListItem>
                                <asp:ListItem Value="2">给拮抗药</asp:ListItem>
                                <asp:ListItem Value="3">减量</asp:ListItem>
                                <asp:ListItem Value="4">减量加拮抗药暂停治疗</asp:ListItem>
                                <asp:ListItem Value="5">暂停治疗</asp:ListItem>
                                <asp:ListItem Value="6">终止治疗</asp:ListItem>                             
                            </asp:DropDownList>
                        </th>
                        <th>
                             <asp:DropDownList ID="relation32" runat="server" Width="100%">
                                <asp:ListItem Value="0">无关</asp:ListItem>
                                <asp:ListItem Value="1">基本无关</asp:ListItem>
                                <asp:ListItem Value="2">可能有关</asp:ListItem>
                                <asp:ListItem Value="3">很可能有关</asp:ListItem>
                                <asp:ListItem Value="4">肯定有关</asp:ListItem>                              
                            </asp:DropDownList>
                        </th>
                       
                    </tr>

                    <tr>
                        
                        <th colspan="3"><span>*迟发性运动障碍（</span><span lang="EN-GB">TD</span><span>）</span> <a id="login33">?</a></th>
                        <th>
                            <asp:DropDownList ID="severity33" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">可疑或较轻</asp:ListItem>

                                <asp:ListItem Value="2">轻度</asp:ListItem>

                                <asp:ListItem Value="3">中度</asp:ListItem>

                                <asp:ListItem Value="4">重度</asp:ListItem>
                                  
                            </asp:DropDownList>
                        </th>
                        <th>
                            <asp:DropDownList ID="manage33" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">加强观察</asp:ListItem>
                                <asp:ListItem Value="2">给拮抗药</asp:ListItem>
                                <asp:ListItem Value="3">减量</asp:ListItem>
                                <asp:ListItem Value="4">减量加拮抗药暂停治疗</asp:ListItem>
                                <asp:ListItem Value="5">暂停治疗</asp:ListItem>
                                <asp:ListItem Value="6">终止治疗</asp:ListItem>                             
                            </asp:DropDownList>
                        </th>
                        <th>
                             <asp:DropDownList ID="relation33" runat="server" Width="100%">
                                <asp:ListItem Value="0">无关</asp:ListItem>
                                <asp:ListItem Value="1">基本无关</asp:ListItem>
                                <asp:ListItem Value="2">可能有关</asp:ListItem>
                                <asp:ListItem Value="3">很可能有关</asp:ListItem>
                                <asp:ListItem Value="4">肯定有关</asp:ListItem>                              
                            </asp:DropDownList>
                        </th>
                        
                    </tr>

                    <tr>
                        
                        <th colspan="3"><span>*其它</span> <a id="login34">?</a> &nbsp<asp:TextBox ID="Name34" runat="server" CssClass="from-contol" ></asp:TextBox></th>
                        <th>
                            <asp:DropDownList ID="severity34" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">可疑或较轻</asp:ListItem>

                                <asp:ListItem Value="2">轻度</asp:ListItem>

                                <asp:ListItem Value="3">中度</asp:ListItem>

                                <asp:ListItem Value="4">重度</asp:ListItem>
                                     
                            </asp:DropDownList>
                        </th>
                        <th>
                            <asp:DropDownList ID="manage34" runat="server" Width="100%">
                                <asp:ListItem Value="0">无</asp:ListItem>
                                <asp:ListItem Value="1">加强观察</asp:ListItem>
                                <asp:ListItem Value="2">给拮抗药</asp:ListItem>
                                <asp:ListItem Value="3">减量</asp:ListItem>
                                <asp:ListItem Value="4">减量加拮抗药暂停治疗</asp:ListItem>
                                <asp:ListItem Value="5">暂停治疗</asp:ListItem>
                                <asp:ListItem Value="6">终止治疗</asp:ListItem>                             
                            </asp:DropDownList>
                        </th>
                        <th>
                             <asp:DropDownList ID="relation34" runat="server" Width="100%">
                                <asp:ListItem Value="0">无关</asp:ListItem>
                                <asp:ListItem Value="1">基本无关</asp:ListItem>
                                <asp:ListItem Value="2">可能有关</asp:ListItem>
                                <asp:ListItem Value="3">很可能有关</asp:ListItem>
                                <asp:ListItem Value="4">肯定有关</asp:ListItem>                              
                            </asp:DropDownList>
                        </th>
                       
                    </tr>

                </table>
                   

                
                
                <hr class="wide" />

               
                <asp:Button ID="Button1" runat="server" Text="提  交" class=" btn btn-info" style="width:100px;height:40px;margin:0 auto;display:block;font-weight:bold;"  OnClick="Button1_Click"/>
            </div>
        </div>
    </div>
    <!-- /Page Body -->

    <%--把checkbox复选框转换成单选按钮radio效果--%>
    <script type="text/javascript">
        checkboxToRadio("a");//需要转换的就添加这句
        checkboxToRadio("b");
        checkboxToRadio("c");
        checkboxToRadio("d");
        checkboxToRadio("e");
        checkboxToRadio("f");
        checkboxToRadio("g");
        checkboxToRadio("h");
        checkboxToRadio("i");
        checkboxToRadio("j");
        checkboxToRadio("k");
        checkboxToRadio("l");
        checkboxToRadio("m");
        checkboxToRadio("n");
        checkboxToRadio("o");
        checkboxToRadio("p");
        checkboxToRadio("q");
        checkboxToRadio("r");
        checkboxToRadio("s");
        checkboxToRadio("t");
        checkboxToRadio("u");
        checkboxToRadio("v");
        checkboxToRadio("w");
        checkboxToRadio("x");
        checkboxToRadio("y");
        checkboxToRadio("z");
        checkboxToRadio("A");
        checkboxToRadio("B");
        checkboxToRadio("C");
        checkboxToRadio("D");
        checkboxToRadio("E");
        checkboxToRadio("F");
        checkboxToRadio("G");
        checkboxToRadio("H");
        function checkboxToRadio(checkboxName, form) {
            if (checkboxName == null) return;
            var f = form || document.forms[0];
             var checkboxs = document.getElementsByName(checkboxName);

            for(i = 0; i < checkboxs.length; i++){
                checkboxs[i].onclick = function(){
                    for (j = 0; j < checkboxs.length; j++ ){
                        if (this.value != checkboxs[j].value && checkboxs[j].checked == true){
                            checkboxs[j].checked = false;
                        }
                    }
                }
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
    margin:auto;
    /*min-height: 20px;*/
      height:25px;
    /*margin: 9px;*/
   width:22px;
    border:2px solid #3DA0DB;
    /*color:#2489c5;*/
     padding:0;

   
}
.table th a{ 
  border:1px solid #ff6a00;
  color:#ff6a00;
 font-size: 13px;
            padding:1px 2px;

}
.table th a:hover{ 
    background-color:#ff6a00;
  color:#fff;
  border-bottom:none;

}


.table th { 
height:40px;
text-align:center; 
} 


</style> 
</asp:Content>

