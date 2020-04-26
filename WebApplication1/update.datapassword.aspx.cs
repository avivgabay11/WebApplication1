using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class update_data : System.Web.UI.Page
    {
        public string result;
        public string oldpassword = "";
        public string newpassword1 = "";
        public string newpassword2 = "";
        public string sql = "";
        protected void Page_Load(object sender, EventArgs e)
        {
       


            if (Request.Form["submit"] != null)
            {
                 // firstname = Request.Form["firstname"];
                //lastname = Request.Form["lastname"];
                oldpassword = Request.Form["oldpassword"];
                newpassword1 = Request.Form["newpassword1"];
                newpassword2 = Request.Form["newpassword2"];
                //email = Request.Form["email"];
                // city = Request.Form["city"];
                //oldpassword != null &&
                if (!newpassword1.Equals(newpassword2))
                {
                    result = "The password are not the same";
                }
                else
                {
                    if( oldpassword!="")
                    {
                        sql = string.Format("select * from Users where Username = '{0}' and Password = '{1}'", Session["LoggedIn"], oldpassword);
                        if (MyAdoHelperSql.IsExist(sql))
                        {
           
                                sql = string.Format("update Users set Password = '{0}' where Username = '{1}'", newpassword1, Session["LoggedIn"]);

                                if (MyAdoHelperSql.RowsAffected(sql) == 1) 
                                {
                                    result = "password change Confirmed!";
                                }
                                else
                                {
                                    result = "something was wrong";
                                }
                            }
                            else
                            {
                                result = "password does not mach your account!";
                            }
                        }                        
                    }
                }
             
            }
        }



    }
