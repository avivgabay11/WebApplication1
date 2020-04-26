<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="registeration.aspx.cs" Inherits="WebApplication1.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
           <meta charset="utf-8"/>
            <title>Registration</title>
            <style> 
                 .box {
            width: 50%;
            float: none;
            position: absolute;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: lightgrey;
            border: 12px solid red;
            padding: 15px;
            margin: 0px;
            font-size: 20px;
            top: 550px;
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
       <h1 style="font-family:Arial, Helvetica, sans-serif; text-align:center">registaration page:</h1>
        <div class ="box">
        <form method="post" action="registeration.aspx"  onsubmit="return validate()">

        <div>
            <label for="firstname">First Name: </label>
                <input type="text" id="firstname" name="firstname">
                <label id ="firstNameErr"></label>
        </div>
        
        <div>
            <label for="lastname">Last Name: </label>
            <input type="text" id="lastname" name="lastname">
            <label id ="lastNameErr"></label>
        </div>
        
        <div>
            <label for="username"> UserName: </label>
            <input type="text" id="username" name="username">
            <label id ="userNameErr"></label>
        </div>
        <div>
            <label for="password"> Password: </label>
            <input type="text" id="password" name="password">
            <label id ="PasswordErr"></label>
        </div>

           
        <div>
            <label for="city"> City: </label>
            <input type="text" id="city" name="city">
        </div>
    
        <div>
             <label for="email"> Email: </label>
             <input type="text" id="email" name="email">
                <label id ="emailErr"></label>
        </div>

       

        Gender: <p> Male: <input type="radio" name="gender" value="male" checked />   Female: <input type="radio" name="gender" value="female" checked /> </p>
        
              <p> Country:  <select name="country" id="country" size="1">
            <option value="Israel" selected> Israel </option>
            <option value="Italy" selected> Italy </option>
            <option value="Spain" selected> Spain </option>
            <option value="Germany" selected> Germany </option>
            </select> </p>

           <p> <input type="submit" id="submit" name="submit" value="Register" />   <input type="reset" id="reset" value="reset" />  </p>
           
            <%=result %>
            
        </form>
       </div> 
</asp:Content>
