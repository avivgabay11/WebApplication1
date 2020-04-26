<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="WebApplication1.Users" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <link href="CSS/Forms.css" rel="stylesheet" />
    <style>
        #inner {
            width: 60%;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th {
            line-height: 50px;
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
            top: 500px;
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
    <div class="box">
        <form method="post">
        <div>
            <div id="inner" class="unsetbox">
                <h1>Search:</h1>
                <table>
                    <tr>

                        <td>
                            <label for="Username">Username: </label>
                            <input type="text" name="Username" placeholder="Enter Username" />
                        </td>

                        <td>
                            <label for="FirstName">First Name: </label>
                            <input type="text" name="FirstName" placeholder="Enter First Name" />
                        </td>

                        <td>
                            <label for="LastName">Last Name: </label>
                            <input type="text" name="LastName" placeholder="Enter Last Name" />
                        </td>
                                     
                    </tr>
                </table>
                <input type="submit" name="submit" id="submit" value="Search" style="margin-bottom: 1.5%;" />
                    <%=UsersTable %>          
            </div>
        </div>
    </form>
    </div>
</asp:Content>
