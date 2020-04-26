<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="battle_royale.aspx.cs" Inherits="WebApplication1.battle_royale" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
            <title>battleroyale</title>
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
            top: 1250px;
        }
         </style>
        
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
           <h1 style="text-align:center">Fortnite Battle Royale:</h1>
            <img src="photos/fortnite2.jpg" width="800" height="600" style="left: 50%; top:500px; transform: translate(-50%, -50%); position:absolute;">
             <div class="box">
             <p>
              Fortnite Battle Royale is a free-to-play battle royale video game developed and published by Epic Games.
              It was released as an early access game for Microsoft Windows, macOS, PlayStation 4 and Xbox One in September 2017,
              and for iOS, Nintendo Switch, and Android in 2018. It is a spin-off from Epic's Fortnite: Save the World,
              a cooperative survival game with construction elements. As a battle royale game, Fortnite Battle Royale features
              up to a hundred players, either alone, in duos, or in squads of up to four players, attempting to be the last player
              or group alive by killing other players or evading them, while staying within a constantly shrinking safe zone to 
              prevent taking lethal damage from being outside it. Players start with no intrinsic advantages, and must scavenge
              for weapons and armor to gain the upper hand on their opponents. The game adds the construction element from Fortnite;
              players can break down most objects in the game world to gain resources they can use to build fortifications as part 
              of their strategy. Limited-time modes are cycled through the game that introduce experimental or unconventional 
              gameplay but otherwise follow the battle royale "last player standing" goal. While the game world remains the same
              for all matches, Epic presents a seasonal approach that may make small or major changes to the game world, including
              simultaneous single-time events that occur on all game servers. The game features cross-platform play between the 
              platforms that was limited for the first five seasons, before the restrictions were eased. The idea for Fortnite 
              Battle Royale arose following the release of the similar battle royale game PlayerUnknown's Battlegrounds, which saw
              numerous player count records broken throughout 2017. Seeing its rapid growth and commercial success, Epic Games saw 
              the opportunity to create a battle royale mode of their own. Originally released as part of the paid Fortnite game, 
              Epic spun out a dedicated version of the game offered as free-to-play funded by microtransactions, sharing in-game 
              currency with the main Fortnite game, allowing players to buy or earn cosmetic items to customize their character,
              as well as completing challenges through a battle pass to earn additional rewards. As of January 2019, the game has
              seen over 200 million players, and has been estimated to have earned $2.4 billion in microtransactions. Fortnite 
              Battle Royale has become a cultural phenomenon, with streams of the game achieving record-high viewerships, and 
              with several high-profile celebrities stating their appreciation of the game.
             </p>
             </div>
         
</asp:Content>
