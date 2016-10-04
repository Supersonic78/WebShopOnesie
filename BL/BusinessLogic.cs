
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
            return ProductDataAccessLayer.GetUserLogin(email, pass);
        }
        public static int AddUser(Customer c)
        {
            return ProductDataAccessLayer.AddUser(c);
        }
    }
}
