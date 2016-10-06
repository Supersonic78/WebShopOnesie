using BL;
using DomainObjects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace WebShopOnesie
{
    public partial class Master : System.Web.UI.MasterPage
    {
        BusinessLogic _businessLogic;

        public Master()
        {
            _businessLogic = new BusinessLogic();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["cart"] == null)
            {
                ShoppingCart shoppingCart = new ShoppingCart();
                Session.Add("cart", shoppingCart);
            }
            
            List<string> categories = BL.BusinessLogic.GetCategories();

            ListView1.DataSource = categories;
            ListView1.DataBind();

            if (Session["login"] != null)
            {
                lbluser.Text = "Welcome Back: " + Session["login"].ToString();
                Panel1.Visible = true;
                Panel2.Visible = false;
            }
            else
            {
                Panel1.Visible = false;
                Panel2.Visible = true;
                lbluser.Text = null;
            }


        }

        protected void SearchButton_Click(object sender, EventArgs e)
        {
            Response.Redirect($"Categories.aspx?id={SearchField.Text}");
        }
        //protected void Page_Load2(object sender, EventArgs e)
        //{
        //    List<string> products = _businessLogic.GetProducts();

        //    ListView1.DataSource = products;
        //    ListView1.DataBind();
        //}


    }
}