<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="WebApplication1.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style>
.button {
  background-color: #696969; 
  border: none;
  color: white;
  padding: 16px 160px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  -webkit-transition-duration: 0.4s; 
  transition-duration: 0.4s;
  cursor: pointer;
}

.button1 {
  background-color: white; 
  color: black; 
  border: 2px solid #696969;
}

.button1:hover {
  background-color: #696969;
  color: white;
}

.button2 {
  background-color: white; 
  color: black; 
  border: 2px solid #696969;
}

.button2:hover {
  background-color: #696969;
  color: white;
}
.button3 {
  background-color: white; 
  color: black; 
  border: 2px solid #696969;
}

.button3:hover {
  background-color: #696969;
  color: white;
}

img {
  display: block;
  margin-left: auto;
  margin-right: auto;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
     
         <img src="photos/fortnite1.jpg" style="width:50%;"/> 
        
         <h2 style="font-family:Arial, Helvetica, sans-serif; left: 100px; text-align:center"> Gamemods:</h2>
      
       
    <p style="text-align:center">
       <a href="battle_royale.aspx">  <button class="button button1"><i class="fab fa-fort-awesome"></i> BattleRoyale</button> </a>
       <a href="SaveTheWorld.aspx">  <button class="button button2"><i class="fas fa-satellite-dish"></i> SaveTHeWorld</button> </a>
       <a href="creative.aspx">  <button class="button button3"><i class="fas fa-city"></i> Creative</button> </a>
       <a href="https://www.epicgames.com/fortnite/en-US/buy-now/battle-royale"> <button class="button button1"> Download Fortnite </button> </a>
    </p>  

        <img src="photos/homepage.jpg" />
 
</asp:Content>
