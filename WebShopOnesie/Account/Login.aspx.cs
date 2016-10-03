using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DomainObjects;
using BL;

namespace WebShopOnesie.Account
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         
        }
     
        
        protected void btnSignin_Click1(object sender, EventArgs e)
        {
               
           var user= BL.BusinessLogic.login(txtEmail.Text, txtPassword.Text);
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
                lbllogin.Text = "User/Password incorrect";
            }
        }
    }
}