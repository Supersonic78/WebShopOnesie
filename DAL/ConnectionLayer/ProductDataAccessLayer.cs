﻿using System.Collections.Generic;
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
                    where CategoryName = '{categoryName}' or ProductName = '{categoryName}'";
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
        public static Product GetProductByID(string productName)
        {
            Product product = new Product();
            string CS = ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                string sql = $@"select tblProduct.*
                    from tblProduct 
                    where ProductName = '{productName}'";
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

        public static List<Product> GetProductBySearchText(string searchText)
        {
            List<Product> listProducts = new List<Product>();
            string CS = ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                string sql = $@"select tblProduct.*
                    from tblProduct join tblCategory on tblProduct.CategoryID = tblCategory.CategoryID
                    where CategoryName = '{searchText}' or ProductName = '{searchText}'";
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
        //public static Product AddProductToCart(int productID)
        //{
        //    Product product = new Product();
        //    string CS = ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;
        //    using (SqlConnection con = new SqlConnection(CS))
        //    {
        //        string sql = $@"select tblProduct.*
        //            from tblProduct 
        //            where ProductID = '{productID}'";
        //        SqlCommand cmd = new SqlCommand(sql, con);
        //        con.Open();
        //        SqlDataReader rdr = cmd.ExecuteReader();
        //        rdr.Read();

        //        product.ProductID = Convert.ToInt32(rdr["ProductID"]);
        //        product.ProductName = rdr["ProductName"].ToString();
        //        product.ProductDescription = rdr["ProductDescription"].ToString();
        //        product.ImagePath = rdr["ImagePath"].ToString();
        //        product.ProductPrice = Convert.ToDouble(rdr["ProductPrice"]);

        //    }
        //    return product;
        //}
        //static void AddUser()
        //{

        //    string CS = ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;
        //    using (SqlConnection con = new SqlConnection(CS))
        //    {
        //        string sql = "Insert Into Customer (FirstName, LastName) Values('" + fName + "','" + lName + "')";

        //        SqlCommand insertCmd = new SqlCommand(sql, con);
        //        if (insertCmd.ExecuteNonQuery() > 0)
        //        {

        //        }

        //    }

        //}
        public static int AddUser(Customer cus)
        {
            int result = 0;
            string CS = ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                var sql = $"INSERT INTO tblCustomer(FirstName,LastName,Adress,PhoneNumber,Email,Password,City,Zip)"+$"VALUES('{cus.FirstName}','{cus.LastName}','{cus.Adress}','{cus.PhoneNumber}','{cus.Email}','{cus.Password}', '{cus.City}','{cus.Zip}')";

                var insertCmd = new SqlCommand(sql, con);
                con.Open();
                result =insertCmd.ExecuteNonQuery();   
            }
           
            return result;
        }
        public static Customer GetUserLogin(string email, string pass)
        {
            var cus = new Customer();
            string CS = ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
               
                string sql = $"SELECT Email ='{email}', Password = '{pass}' from tblCustomer";
                SqlCommand cmd = new SqlCommand(sql, con);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                rdr.Read();
                cus.Email=rdr["Email"].ToString();
                cus.Password = rdr["Password"].ToString();
            }
            return cus;
        }


    }
}
