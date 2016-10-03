using DomainObjects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebShopOnesie
{
    public partial class Search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string text = Request.QueryString["text"];
            List<Product> products = BL.BusinessLogic.GetProductBySearchText(text);
            GridView1.DataSource = products;
            GridView1.DataBind();
        }
    }
}