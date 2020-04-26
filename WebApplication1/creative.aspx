<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="creative.aspx.cs" Inherits="WebApplication1.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>Creative</title>
      <style>
      .box {
            float: none;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: lightgrey;
            border: 12px solid red;
            padding: 15px;
            margin: 0px;
            font-size: 20px;
            top: 750px;
        }
         </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

           <h1 style="text-align:center">Fortnite Creative:</h1>
           <img src="photos/Fortnite-Creative.jpg" width="730" height="500" style="left: 50%; top:350px; transform: translate(-50%, -50%); position:absolute;">
             <div class="box">
             <p>
                 Creative is a mode where players can design games, race around the island,
                 battle with friends in a private island where everything that was made
                 is saved. Battle Pass owners will have access to a private island for
                 the first week of Season 7. During this early access week Battle Pass 
                 owners can invite players to play on their island. Starting December 13,
                 all players will have access to a private island for free.
             </p>
             </div>
</asp:Content>
