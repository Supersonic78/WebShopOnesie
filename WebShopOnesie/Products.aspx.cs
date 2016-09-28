using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebShopOnesie
{
    public partial class Products : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string text = Request.QueryString["id"];
            if (text.Equals("Asfalt"))
            {
                Label1.Text = "ASFALT ÄR GOTT!";
                BL.BusinessLogic b = new BL.BusinessLogic();
                List<string> products = b.GetProducts();


                //ListView3.DataSource = products;
                //ListView3.DataBind();



            }
            else if (text.Equals("Women"))
            {
                Label1.Text = "List Women stuff";
            }
            else if (text.Equals("Kids"))
            {
                Label1.Text = "List Kids stuff";
            }
        }
    }
}