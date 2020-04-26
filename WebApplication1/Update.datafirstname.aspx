<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="Update.datafirstname.aspx.cs" Inherits="WebApplication1.Update_datafirstname" %>
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

    
    <script type="text/javascript" src="javascript/USERS.js">          
    </script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1 style="font-family:Arial, Helvetica, sans-serif; text-align:center">Change firstname:</h1>
        <div class ="box">
        <form method="post" onsubmit="return validatefirstName()">

      
        <label for="username"> Username: </label>
        <input type="text" id="username" name="username">
            

        <label for="firstname"> New FirstName: </label>
        <input type="text" id="firstname" name="firstname">
        <label id ="firstNameErr"></label>
    

           <p> <input type="submit" id="submit" name="submit" value="update" />   
               <input type="reset" id="reset" value="reset" />  </p>
            
            <%=result %>

        </form>
       </div> 


</asp:Content>
