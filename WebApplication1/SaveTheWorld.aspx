<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="SaveTheWorld.aspx.cs" Inherits="WebApplication1.SaveTheWorld" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>savetheworld</title>
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
            top: 1100px;
        }
         
            </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <h1  style="font-family:Arial, Helvetica, sans-serif; text-align:center">Fortnite save the world:</h1>
   <img src="photos/Fortnitestw.jpg" width="900" height="600" style="left: 50%; top:500px; transform: translate(-50%, -50%); position:absolute;" >
           <div class="box">
                   
                   Fortnite: Save the World is a co-op third-person shooter survival video game developed                    and published by Epic Games.The game was released as a paid-for early access title for 
                   Microsoft Windows, macOS, PlayStation 4 and Xbox One on July 25, 2017, with a full 
                   free-to-play release expected sometime in 2019.The retail versions of the game were  
                   published by Gearbox Software, while online distribution of the PC versions is handled 
                   by Epic's launcher. Fortnite is set in contemporary Earth, where the sudden appearance 
                   of a worldwide storm causes 98% of the world's population to disappear, and zombie-like 
                   creatures rise to attack the remainder. Considered by Epic as a cross between Minecraft  
                   and Left 4 Dead, Fortnite has up to four players cooperating on various missions on 
                   randomly-generated maps to collect resources, build fortifications around defensive 
                   objectives that are meant to help fight the storm and protect survivors, and construct 
                   weapons and traps to engage in combat with waves of these creatures that attempt to destroy
                   the objectives. Players gain rewards through these missions to improve their hero characters,
                   support teams, and arsenal of weapon and trap schematics to be able to take on more difficult
                   missions. The game is supported through microtransactions to purchase in-game currency that 
                   can be used towards these upgrades. A standalone battle royale game version, Fortnite Battle 
                   Royale, was released for the same platforms in September 2017. Following the release, 
                   the player-versus-environment mode was officially distinguished as "Save the World". 
   </div>

</asp:Content>
