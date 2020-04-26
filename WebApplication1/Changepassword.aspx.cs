using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class ChangePassword : System.Web.UI.Page
    {

        public string result;
        public string username = "";
        public string newpassword1 = "";
        public string newpassword2 = "";
        public string admin = "";

        protected void Page_Load(object sender, EventArgs e)
        {


            if (Request.Form["submit"] != null)
            {
                string sql = string.Format("SELECT * FROM Users");
                username = Request.Form["username"];
                newpassword1 = Request.Form["newpassword1"];
                newpassword2 = Request.Form["newpassword2"];
                admin = Request.Form["admin"];
                if (username != "" && username != "admin" && newpassword1 != "" && newpassword2 != "" && newpassword1.Equals(newpassword2))
                {
                   
               
                    sql = string.Format("UPDATE Users SET password = '{0}' WHERE username = '{1}'", newpassword1, username);

                    if (MyAdoHelperSql.RowsAffected(sql) == 1)
                    {
                        result = " The Password Change Compleated!";
                    }
                    else
                        result = "Change Failed!";
                }
                else if (username == "admin")
                {
                    result = "You Can't Change Your Password.";
                }
                else if (username == "" && newpassword1 != "" && newpassword2 != "")
                {
                    result = "You Need To Type username!";
                }
                else if (username != "" && newpassword1 == "" && newpassword2 != "")
                {
                    result = "You Need To Type password!";
                }
                else if (username == "" && newpassword1 == "" && newpassword2 == "")
                {
                    result = "You Need To Type usernam, Password And confirm Password";
                }
                else if (!newpassword1.Equals(newpassword2))
                {
                    result = "The passwords are not the same";
                }
            }




        }
    }
}