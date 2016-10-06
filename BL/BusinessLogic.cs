
using System.Collections.Generic;
using WebShopOnesie;
using DomainObjects;

namespace BL
{
    public class BusinessLogic
    {
        public static List<string> GetCategories()
        {
            return ProductDataAccessLayer.GetCategories();
        }
        public static List<Product> GetProductsByCategoryName(string categoryName)
        {
            return ProductDataAccessLayer.GetAllProductsByCategoryName(categoryName);
        }
        public static Product GetProductByID(string productName)
        {
            return ProductDataAccessLayer.GetProductByID(productName);
        }
        public static List<Product> GetProductBySearchText(string searchText)
        {
            return ProductDataAccessLayer.GetProductBySearchText(searchText);
        }
        //static void AddUser()
        //{

        //    string CS = ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;
        //    using (SqlConnection con = new SqlConnection(CS))
        //    {
        //        connection.ConnectionString = @"Data Source=(local); Initial Catalog = Books; User ID = books; Password = books; Integrated Security = True";
        //        connection.Open();

        //        string sql =
        //            "Insert Into Authors (FirstName, LastName) Values('" + fName + "','" + lName + "')";
        //        SqlCommand insertCmd = new SqlCommand(sql, connection);
        //        if (insertCmd.ExecuteNonQuery() > 0)
        //        {
        //            Console.WriteLine("Authors table is updated");
        //        }

        //    }


        public static Customer login(string email, string pass)
        {
            return ProductDataAccessLayer.GetUserLogin(email, pass);
        }
        public static int AddUser(Customer c)
        {
            return ProductDataAccessLayer.AddUser(c);
        }
    }
}
