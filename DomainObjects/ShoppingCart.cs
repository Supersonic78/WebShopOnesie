using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DomainObjects
{
    public class ShoppingCart
    {
        public List<ShoppingCartItem> Items { get; set; }
        public ShoppingCart()
        {
            Items = new List<ShoppingCartItem>();
        }
        public void AddToCart(Product product)
        {
            Items.Add(new ShoppingCartItem() { Product = product, Quantity = 1 });
        }
    }
}