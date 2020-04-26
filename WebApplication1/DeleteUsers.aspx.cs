using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class DeleteUsers : System.Web.UI.Page
    {

        public string result = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            string sql;
            
            setResult("Enter a username, press Delete Account to delete that account.", "black");
            if (Request.Form["submit"] != null)
            {
                string Username = Request.Form["Username"];
                if (Username.Equals(Session["LoggedIn"]))
                {
                    if (!Username.Equals(Session["Username"]))
                    {
                        sql = string.Format("delete from Users where Username = '{0}'", Username);
                        if (MyAdoHelperSql.RowsAffected(sql) == 1)
                            setResult(string.Format("Account {0} has been deleted.", Username), "green");
                        else
                            setResult("Username was not found!", "red");
                    }
                    else
                    {
                        setResult("You can not to delete your own account!", "red");
                    }
                }
            }

        }

        private void setResult(string str, string color)
        {
            result = string.Format("<p style=\"color:{0}; text-align:center; width: 100%; font-size: 1.2rem; text-decoration: underline; margin: 0 auto;\">{1}</p>", color, str);
        }
    }
}