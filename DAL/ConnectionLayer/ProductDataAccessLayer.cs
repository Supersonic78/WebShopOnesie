using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System;
using DomainObjects;

namespace WebShopOnesie
{

    public class ProductDataAccessLayer
    {
        public static List<Product> GetAllProducts()
        {
            List<Product> listProducts = new List<Product>();
            string CS = ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("select * from tblProduct", con);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    Product product = new Product();
                    product.ProductID = Convert.ToInt32(rdr["ProductID"]);
                    product.ProductName = rdr["ProductName"].ToString();
                    product.ProductDescription = rdr["ProductDescription"].ToString();
                    product.ImagePath = rdr["ImagePath"].ToString();
                    product.ProductPrice = Convert.ToDouble(rdr["ProductPrice"]);

                    listProducts.Add(product);
                }
            }
            return listProducts;
        }
        public static List<Product> GetAllProductsByCategoryName(string categoryName)
        {
            List<Product> listProducts = new List<Product>();
            string CS = ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                string sql = $@"select tblProduct.*
                    from tblProduct join tblCategory on tblProduct.CategoryID = tblCategory.CategoryID
                    where CategoryName = '{categoryName}'";
                SqlCommand cmd = new SqlCommand(sql, con);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    Product product = new Product();
                    product.ProductID = Convert.ToInt32(rdr["ProductID"]);
                    product.ProductName = rdr["ProductName"].ToString();
                    product.ProductDescription = rdr["ProductDescription"].ToString();
                    product.ImagePath = rdr["ImagePath"].ToString();
                    product.ProductPrice = Convert.ToDouble(rdr["ProductPrice"]);

                    listProducts.Add(product);
                }
            }
            return listProducts;
        }
        public static List<string> GetCategories()
        {
            List<string> categories = new List<string>();
            string CS = ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                string sql = "select CategoryName from tblCategory";
                con.Open();
                SqlCommand myCommand = new SqlCommand(sql, con);

                using (SqlDataReader myDataReader = myCommand.ExecuteReader())
                {
                    while (myDataReader.Read())
                    {
                        categories.Add(myDataReader["CategoryName"].ToString());
                    }
                }

            }

            return categories;
        }
        public static Product GetProductByID(int productID)
        {
            Product product = new Product();
            string CS = ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                string sql = $@"select tblProduct.*
                    from tblProduct 
                    where ProductID = '{productID}'";
                SqlCommand cmd = new SqlCommand(sql, con);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                rdr.Read();

                product.ProductID = Convert.ToInt32(rdr["ProductID"]);
                product.ProductName = rdr["ProductName"].ToString();
                product.ProductDescription = rdr["ProductDescription"].ToString();
                product.ImagePath = rdr["ImagePath"].ToString();
                product.ProductPrice = Convert.ToDouble(rdr["ProductPrice"]);

            }
            return product;
        }
        public static Customer customer(string email, string pass)
        {
            Customer customer = new Customer();
            string log = ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(log))
            {
                try
                {
                    string sql = $"SELECT * from tblCustomer where Email ='{email}' and Password ='{pass}'";
                    SqlCommand cmd = new SqlCommand(sql, con);
                    con.Open();
                    SqlDataReader rdr = cmd.ExecuteReader();
                    rdr.Read();
                    //customer.CustomerId = Convert.ToInt32(rdr["CustomerId"]);
                    //customer.FirstName = rdr["FirstName"].ToString();
                    //customer.LastName = rdr["LastName"].ToString();
                    //customer.Adress = rdr["Adress"].ToString();
                    //customer.PhoneNumber = Convert.ToInt32(rdr["PhoneNumber"]);
                    customer.Email = rdr["Email"].ToString();
                    customer.Password = rdr["Password"].ToString();
                    //customer.City = rdr["City"].ToString();
                    //customer.Zip = Convert.ToInt32(rdr["Zip"]);
                }
                catch
                {
                    ;
                }
            }
            return customer;
        }
        
        public static int InsertRegister(Customer customer)
        {            
            var rows = 0;           
            try
            {               
                string sql = ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;
                using (SqlConnection con = new SqlConnection(sql))
                {
                    string reg = $"Insert Into Customer (FirstName, LastName, Adress, PhoneNumber, Email, Password, City, Zip)"+ $"Values (' { customer.FirstName}  ','  { customer.LastName}  ','  {customer.Adress } ','  {customer.Password } ','  { customer.Email} ',' {customer.Zip} ',' {customer.City} )";

                    SqlCommand cmd = new SqlCommand(reg, con);
                    con.Open();
                    rows = cmd.ExecuteNonQuery();

                    //customer.CustomerId = Convert.ToInt32(rdr["CustomerId"]);
                    //customer.FirstName = rdr["FirstName"].ToString();
                    //customer.LastName = rdr["LastName"].ToString();
                    //customer.Adress = rdr["Adress"].ToString();
                    //customer.PhoneNumber = Convert.ToInt32(rdr["PhoneNumber"]);
                    //customer.Email = rdr["Email"].ToString();
                    //customer.Password = rdr["Password"].ToString();
                    //customer.City = rdr["City"].ToString();
                    //customer.Zip = Convert.ToInt32(rdr["Zip"]);
                    //customer.
                }
            }
            catch
            {
                
            }
            return rows;

        }
    }
}
