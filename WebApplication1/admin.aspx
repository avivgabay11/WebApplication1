<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="WebApplication1.admin" %>
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
 padding: 16px 205px;
}

.button1:hover {
  background-color: #696969;
  color: white;
}

.button2 {
  background-color: white; 
  color: black; 
  border: 2px solid #696969;
 padding: 16px 180px;
}

.button2:hover {
  background-color: #696969;
  color: white;
}
.button3 {
  background-color: white; 
  color: black; 
  border: 2px solid #696969;
  padding: 16px 138px;
}

.button3:hover {
  background-color: #696969;
  color: white;
}

                .box {
            float: none;
            position: absolute;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: lightgrey;
            border: 12px solid red;
            padding: 15px;
            margin: 0px;
            font-size: 20px;
            top: 370px;
        }
</style>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  

    <div class="box">
       <h2 style="font-family:Arial, Helvetica, sans-serif; left: 100px; text-align:center"> Admin Page:</h2>
      <p> <a href="Users.aspx">  <button class="button button1"> Users</button> </a></p>
      <p> <a href="DeleteUsers.aspx">  <button class="button button2"> Delete Users</button> </a></p>
      <p>  <a href="Changepassword.aspx">  <button class="button button3"> Change Users Password</button> </a></p>
       <p><%=result %></p>
    </div>

   
</asp:Content>
