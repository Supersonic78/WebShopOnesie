using DomainObjects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace WebShopOnesie
{
    public partial class Checkout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            ShoppingCart shoppingCart = (ShoppingCart)Session["cart"];           
            GridView1.DataSource = shoppingCart.Items;
                GridView1.DataBind();



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Customer customer = new Customer() { FirstName = FirstName.Text, LastName = LastName.Text};
            Session.Add("customer", customer);
            Response.Redirect("Reciept.aspx");
        }
    }
}