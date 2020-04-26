<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication1.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
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
            top: 300px;
        }
input[type=text],input[type=password], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid red;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
  background-color: #FF0000;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: red;
}

div {
  border-radius: 5px;
  background-color: #FF0000;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
    

         <h1>LOGIN:</h1>
    <div class="box">  
    <form action="login.aspx" method="post">
    <label for="Username">Username</label>
    <input type="text" id="Usernme" name="Username" placeholder="Your Username..">

    <label for="Password">Password</label>
    <input type="password" id="Password" name="Password" placeholder="Your Password..">

    <input type="submit" value="Submit" name="submit" id =" submit">
         <%=server %>
  </form>
</div>

  

</asp:Content>
