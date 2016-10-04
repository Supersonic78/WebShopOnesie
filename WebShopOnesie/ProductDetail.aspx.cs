using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DomainObjects;

namespace WebShopOnesie
{
    public partial class Products : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string text = Request.QueryString["id"];

            Label1.Text = $"List {text} stuff";
            int productID = Int32.Parse(text);
            Product product = BL.BusinessLogic.GetProductByID(productID);
            ProductName.Text = product.ProductName;
            Price.Text = product.ProductPrice.ToString();
            Image1.ImageUrl = $"~/images/{product.ImagePath}";
            

        }
    }
}