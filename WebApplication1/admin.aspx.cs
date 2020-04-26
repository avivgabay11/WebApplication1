using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class admin : System.Web.UI.Page
    {
        public string isLogin = "LOGIN";    
        public string result;

        protected void Page_Load(object sender, EventArgs e)
        {
         

            if (Session["username"] != null)
            {
                isLogin = "LOGIN";
            }
            else
            {
                isLogin = "LOGOUT";
                Application["Count"] = 0;
            }

            if (Session["LoggedIn"] != null)
            {
                Application.Lock();
                if (Application["Count"] != null)
                {
                    Application["Count"] = (int)Application["Count"] + 1;
                }
                Application.UnLock();
                result = string.Format("Online: {0}", Application["Count"]);
            }
        }
    }
}