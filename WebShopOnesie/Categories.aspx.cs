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
          
           if(text.Equals("Men"))
            {
               Label1.Text = "List Men stuff";
                BL.BusinessLogic b = new BL.BusinessLogic();
                List<string> products = b.GetProducts();


                ListView3.DataSource = products;
                ListView3.DataBind();



            }
            else if (text.Equals("Women"))
            {
                Label1.Text = "List Women stuff";
            }
            else if(text.Equals("Kids"))
            {
                Label1.Text = "List Kids stuff";
            }
        }
    }
}