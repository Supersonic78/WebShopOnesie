
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

    }
}
