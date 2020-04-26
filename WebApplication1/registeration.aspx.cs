using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm2 : System.Web.UI.Page
    {
   
        public string result = "";
        public string str = "";
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.Form["submit"] != null)
            {
                
                result = "";
                string sql;
                string firstname = Request.Form["firstname"];
                string lastname = Request.Form["lastname"];
                string username = Request.Form["username"];
                string password = Request.Form["password"];
                string country = Request.Form["country"];
                string city = Request.Form["city"];
                string email = Request.Form["email"];

                if (firstname != "" || lastname != "" || username != "" || password != "" || country != "" || city != "" || email != "")
                {
                    sql = "select * from Users where Username = '" + username + "'";
                    if (MyAdoHelperSql.IsExist(sql))
                    {
                        result = "already exists";
                        Response.Redirect("login.aspx");
                    }
                    else
                    {
                        result = "successfuly created";
                        sql = string.Format("insert into Users (Username, Password, FirstName, LastName, email, country, city) values ('{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}')", username, password, firstname, lastname, email, country, city);
                        if (MyAdoHelperSql.RowsAffected(sql) == 1)
                        {
                            result = "seccesfly connected";
                        }
                    }
                }
                else
                    result = "please try again!";
            }


        }

    }
}   
 