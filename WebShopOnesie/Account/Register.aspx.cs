﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DomainObjects;

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

                var user = new Customer();

                user.FirstName = txtfirstName.Text;
                user.LastName = txtLastname.Text;
                user.Adress = txtAdress.Text;
                user.PhoneNumber = txtphonenumber.Text;
                user.Email =txtEmail.Text;
                user.Password = txtpassword.Text;
                user.City =txtcity.Text;
                user.Zip = txtzipcod.Text;
                //BL.BusinessLogic.InsertRegister(user);

                if (!string.IsNullOrEmpty(user?.Email) && !string.IsNullOrEmpty(user.Password))
                {
                    //HttpCookie c = new HttpCookie("login");
                    Session["login"] = user.FirstName;

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