<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="notloggedin.aspx.cs" Inherits="WebApplication1.notloggedin1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 style="text-align:center">You need to Loggin to view that page!</h1>
    <h2 style="text-align:center">To Registeration Press <a href="registeration.aspx" style="color:red">Registeration</a></h2>
    <h2 style="text-align:center">TO Loggin Press <a href="login.aspx" style="color:red">Loggin</a></h2>
</asp:Content>
