using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Update_datalastname : System.Web.UI.Page
    {
        public string result;
        public string lastname = "";
        public string sql = "";
        public string username = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["submit"] != null)
            {
                lastname = Request.Form["firstname"];
                username = Request.Form["username"];

                {
                    if (lastname != "")
                    {
                        sql = string.Format("select * from Users where Username = '{0}'", Session["LoggedIn"]);
                        if (MyAdoHelperSql.IsExist(sql))
                        {

                            sql = string.Format("update Users set firstname = '{0}' where Username = '{1}'", lastname, Session["LoggedIn"]);

                            if (MyAdoHelperSql.RowsAffected(sql) == 1)
                            {
                                result = "firstname change Confirmed!";
                            }
                            else
                            {
                                result = "something was wrong";
                            }
                        }


                    }
                }
            }
        }
    }
}