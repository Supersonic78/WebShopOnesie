using DomainObjects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebShopOnesie
{
    public partial class Categories : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Label1.Text = Request.QueryString["id"];
            string text = Request.QueryString["id"];
          
              Label1.Text = $"List {text} stuff";
          
                List<Product> products = BL.BusinessLogic.GetProductsByCategoryName(text);

         
                productsList.DataSource = products;
                productsList.DataBind();




        }

    

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            
        }

        protected void button1_Click(object sender, EventArgs e)
        {
            
        }
    }
}