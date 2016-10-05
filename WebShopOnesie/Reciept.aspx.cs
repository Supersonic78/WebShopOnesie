using DomainObjects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebShopOnesie
{
    public partial class Reciept : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Customer customer = (Customer)Session["customer"];
            ShoppingCart shoppingCart = (ShoppingCart)Session["cart"];

            if(customer == null || shoppingCart == null)
            {
                Response.Redirect("Default.aspx");
            }

            Name.Text = customer.FirstName + " " + customer.LastName;            
            double totalAmount = shoppingCart.Items.Sum(p => p.Product.ProductPrice);
            TotalAmount.Text = totalAmount.ToString();
                     
            GridView1.DataSource = shoppingCart.Items;
            GridView1.DataBind();
            
            Session.RemoveAll();
        }
    }
}