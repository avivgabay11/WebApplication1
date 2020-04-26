using System.Data;
using System.Data.SqlClient;
using System.Web;

namespace WebApplication1
{
    public class MyAdoHelperSql
    {

        /// <summary>
        /// Summary description for SqlHelper
        /// פעולות עזר לשימוש במסד נתונים  מסוג 
        /// SQL SERVER
        ///  App_Data המסד ממוקם בתקיה 
        /// </summary>


        private const string dbFileName = "~/App_Data/Database1.mdf";


        public MyAdoHelperSql()
        {
            //
            // TODO: Add constructor logic here
            //
        }

        /// <summary>
        /// הפעולה מקבל נתיב לקובץ בסיס הנתונים ויוצרת קשר אל בסיס הנתונים
        /// </summary>
        /// <returns>קישור אל בסיס הנתונים</returns>
        private static SqlConnection ConnectToDb()
        {
            string path = HttpContext.Current.Server.MapPath(dbFileName);//מיקום מסד בפורוייקט
            string connString = string.Format(@"server=(LocalDB)\MSSQLLocalDB;AttachDbFilename={0};Integrated Security=True", path);
            //        string connString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=" +
            //                             path +
            //                             ";Integrated Security=True;User Instance=True";
            SqlConnection conn = new SqlConnection(connString);
            return conn;

        }

        /// <summary>
        /// To Execute update / insert / delete queries
        ///  הפעולה מקבלת משפט לביצוע ומבצעת את הפעולה על המסד
        /// </summary>
        /// <param name="sql">שאילת לביצוע כמחרוזת מחיקה/ הוספה/ עדכון</param>
        public static void DoQuery(string sql)
        {

            SqlConnection conn = ConnectToDb();
            conn.Open();
            SqlCommand com = new SqlCommand(sql, conn);
            com.ExecuteNonQuery();
            com.Dispose();
            conn.Close();

        }

        /// <summary>
        /// To Execute update / insert / delete queries
        ///  הפעולה מקבלת משפט לביצוע ומחזירה את מספר השורות שהושפעו מביצוע הפעולה
        /// </summary>
        /// <param name="sql">שאילת לביצוע כמחרוזת מחיקה/ הוספה/ עדכון</param>
        /// <returns>מספר השורות שהושפעו מביצוע הפעולה</returns>
        public static int RowsAffected(string sql)
        {

            SqlConnection conn = ConnectToDb();
            conn.Open();
            SqlCommand com = new SqlCommand(sql, conn);
            int rowsA = com.ExecuteNonQuery();
            conn.Close();
            return rowsA;
        }

        /// <summary>
        /// הפעולה מקבלת משפט לחיפוש ערך - מחזירה אמת אם הערך נמצא ושקר אחרת
        /// </summary>
        /// <param name="sql">שאילתת אחזור לביצוע כמחרוזת</param>
        /// <returns>אמת אם הנתונים קיימים ושקר אחרת</returns>
        public static bool IsExist(string sql)
        {

            SqlConnection conn = ConnectToDb();
            conn.Open();
            SqlCommand com = new SqlCommand(sql, conn);
            SqlDataReader data = com.ExecuteReader();
            bool found;
            found = (bool)data.Read();// אם יש נתונים לקריאה יושם אמת אחרת שקר - הערך קיים במסד הנתונים
            conn.Close();
            return found;

        }

        /// <summary>
        /// הפעולה מקבלת משפט לחיפוש ערך - מחזירה אובייקט המכיל טבלה של התוצאות
        /// </summary>
        /// <param name="sql">שאילתת אחזור לביצוע כמחרוזת</param>
        /// <returns>אובייקט טבלה המכיל את תוצאות החיפוש</returns>
        public static DataTable ExecuteDataTable(string sql)
        {
            SqlConnection conn = ConnectToDb();
            conn.Open();
            SqlDataAdapter tableAdapter = new SqlDataAdapter(sql, conn);
            System.Data.DataTable dt = new DataTable();
            tableAdapter.Fill(dt);
            return dt;
        }
        /// <summary>
        /// הפעולה מקבלת משפט לחיפוש ערך - מחזירה מחרוזת המכילה טבלה בפורמט
        /// html
        /// המכילה את נתוני הטבלה מבסיס הנתונים
        /// </summary>
        /// <param name="sql">שאילתת אחזור לביצוע כמחרוזת</param>
        /// <returns>טבלה כמחרוזת להצגה בדפדפן</returns>
        public static string PrintDataTable(string sql)
        {

            DataTable dt = ExecuteDataTable(sql);

            string printStr = "<table border='1'>";

            foreach (DataRow row in dt.Rows)
            {
                printStr += "<tr>";
                foreach (object myItemArray in row.ItemArray)
                {
                    printStr += "<td>" + myItemArray.ToString() + "</td>";
                }
                printStr += "</tr>";
            }
            printStr += "</table>";

            return printStr;
        }

    }
}