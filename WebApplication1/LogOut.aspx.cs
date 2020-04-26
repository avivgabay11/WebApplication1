using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class LogOut : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["logout"] != null)
            {
                Session["LoggedIn"] = null;
                Session["admin"] = 0;
                Response.Redirect("homepage.aspx");
            }

        }
    }
}