<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="DeleteUsers.aspx.cs" Inherits="WebApplication1.DeleteUsers" %>
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
            top: 370px;
        }

                    input[type=text] {
             width: 100%;
             padding: 12px 20px;
             margin: 8px 0;
             box-sizing: border-box;
             border: 2px solid red;
             border-radius: 4px;
              }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <form method="post">
        <div class="box">
          
                <h1 style="font-family:Arial, Helvetica, sans-serif; text-align:center">Delete Users:</h1>
               
                    <h3><%=result %> </h3> 
          
                <label for="Username">Username:</label>
                <input type="text" name="Username" placeholder="Enter Username" required />
                <button class="button button3" type="submit" name="submit" > Delete Account:</button>
                
          
        </div>
    </form>
</asp:Content>
