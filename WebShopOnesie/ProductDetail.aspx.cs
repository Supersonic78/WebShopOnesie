using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DomainObjects;

namespace WebShopOnesie
{
    public partial class ProductDetail : System.Web.UI.Page
    {
        Product TheProduct { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
           
            string text = Request.QueryString["id"];
          
         
               Label1.Text = $"List {text} stuff";
              
                List<Product> products = BL.BusinessLogic.GetProductsByCategoryName(text);
            TheProduct = BL.BusinessLogic.GetProductByID(text);

                productsList.DataSource = products;
                productsList.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            ShoppingCart shoppingCart = (ShoppingCart)Session["cart"];
            shoppingCart.AddToCart(TheProduct);

            
            
        }
    }
}