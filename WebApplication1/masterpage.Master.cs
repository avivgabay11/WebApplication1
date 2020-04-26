using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        public string isLogin = "LOGIN";
        public string loggedin;
        public string userName;
        
        protected void Page_Load(object sender, EventArgs e)
        {

            loggedin = "<a href=\"login.aspx\" id=\"Login\" onclick=\"LoginLogout()\" name=\"Login\">Login</a>";
            if (Session["LoggedIn"] != null)
            {
                isLogin = "LOGIN";
                loggedin = string.Format("<a href=\"LogOut.aspx\" id=\"Login\" name=\"Login\">LogOut {0}</a>", Session["LoggedIn"]);
            }
            else
            {
                isLogin = "LOGOUT";
            }

          
            
                      
            }
        }
    }
