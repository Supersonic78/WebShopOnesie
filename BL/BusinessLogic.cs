
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
        public static Product GetProductByID(int productID)
        {
            return ProductDataAccessLayer.GetProductByID(productID);
        }

        public static Customer login(string email, string pass)
        {
            return ProductDataAccessLayer.customer(email, pass);
        }
        public static Customer InsertRegister(string firstName, string lastName, string adress, string password, int phonenumder, string email, int zip, string city)
        {
            return ProductDataAccessLayer.customer( firstName,  lastName,  adress,  password,  phonenumder,  email,  zip,  city);
        }
    }
}
