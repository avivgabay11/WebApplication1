using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        public string server = "Not Logged in";
        protected void Page_Load(object sender, EventArgs e)
        {
            string sql;
            if (Request.Form["submit"] != null)
            {
                string username = Request.Form["Username"];
                string password = Request.Form["Password"];
                sql = string.Format("select * from Users where Username = '{0}' and Password = '{1}'", username, password);
                if (MyAdoHelperSql.IsExist(sql))
                {
                    server = string.Format("{0}, successfully logged in",username);
                    Session["LoggedIn"] = username;
                    sql = string.Format("select * from users where admin=1 and username='{0}';", username);
                    if (MyAdoHelperSql.IsExist(sql))
                        Session["admin"] = 1;
                   Response.Redirect("homepage.aspx");
                }
                else
                    server = " The username or password dous not exist, please try again! ";
            }
        }
    }
}