using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebShopOnesie.Account
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnregister_Click(object sender, EventArgs e)
        {
            {

                var user = BL.BusinessLogic.InsertRegister(txtEmail.Text, txtpassword.Text, txtphonenumber.Text, txtcity.Text, txtEmail.Text, txtzipcod.Text, txtcity.Text);
                if (!string.IsNullOrEmpty(user?.Email) && !string.IsNullOrEmpty(user.Password))
                {
                    //HttpCookie c = new HttpCookie("login");
                    //Session["login"] = txtUserName.Text;

                    //if (ChkRemember.Checked)
                    //{
                    //    //Session["login"]
                    //}

                    Response.Redirect("~/Default.aspx");
                }
                else
                {
                    btnregister.Text = "User/Password incorrect";
                }
            }
        }
    }
}