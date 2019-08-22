using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Business
{
    public class Acesso
    {
        public static SqlConnection Connection
        {
            get
            {
                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = @"Data Source=.\sqlexpress; 
                                            initial catalog=db01;
                                            User ID=sa;
                                            password=sa123";
                conn.Open();

                return conn;
            }
        }
    }
}
