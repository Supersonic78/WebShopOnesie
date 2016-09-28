using BL;
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
            List<string> categories = _businessLogic.GetCategories();

            ListView1.DataSource = categories;
            ListView1.DataBind();
            //List<string> products = _businessLogic.GetProducts();

            //ListView2.DataSource = products;
            //ListView2.DataBind();



        }
        //protected void Page_Load2(object sender, EventArgs e)
        //{
        //    List<string> products = _businessLogic.GetProducts();

        //    ListView1.DataSource = products;
        //    ListView1.DataBind();
        //}

        
    }
}