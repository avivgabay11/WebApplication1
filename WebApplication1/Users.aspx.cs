using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Users : System.Web.UI.Page
    {
        public string UsersTable = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            string sql;
         
            sql = "select * from Users";
            UsersTable = MyAdoHelperSql.PrintDataTable(sql);
            if (Request.Form["submit"] != null)
            {
                string FirstName = Request.Form["FirstName"];
                string LastName = Request.Form["LastName"];
                string Username = Request.Form["Username"];
                if (Username != "")
                    sql = string.Format("select * from Users where Username like '%{0}%'", Username);
                if (FirstName != "")
                    sql = string.Format("select * from Users where FirstName like '%{0}%'", FirstName);
                if (LastName != "")
                    sql = string.Format("select * from Users where LastName like '%{0}%'", LastName);

                if (Username != "" && FirstName != "")
                    sql = string.Format("select * from Users where Username like '%{0}%' and FirstName like '{1}%'", Username, FirstName);

                if(Username != "" && LastName != "")
                    sql = string.Format("select * from Users where Username like '%{0}%' and LastName like '{1}%'", Username, LastName);

                if (FirstName != "" && LastName != "")
                    sql = string.Format("select * from Users where LastName like '%{0}%' and FirstName like '{1}%'", LastName, FirstName);

                if (Username != "" && FirstName != "" && LastName!="")
                    sql = string.Format("select * from Users where Username like '%{0}%' and FirstName like '{1}%' and LastName like '{2}%'", Username, FirstName, LastName);
                UsersTable = MyAdoHelperSql.PrintDataTable(sql);
            }
        }
    }
}