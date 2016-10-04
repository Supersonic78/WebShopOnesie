<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebShopOnesie.Account.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container">
        <div class="row">
            <div class="col-sm-6 col-md-4 col-md-offset-4">
                <h1 class="text-center login-title">Sign in to continue</h1>
                <div class="account-wall">
                    <img class="profile-img" src="../klädImages/main_cat-generic_men.jpg" alt="ttt"/>
                    <div class="form-signin">
                        <asp:TextBox ID="txtEmail" class="form-control" placeholder="Email" runat="server"></asp:TextBox>
                        <%--<input type="text" class="form-control" placeholder="Email" id="dd"/>--%>
                         <asp:TextBox ID="txtPassword" class="form-control" placeholder="Password" runat="server"></asp:TextBox>
                        <%--<input type="password" class="form-control" placeholder="Password"  id="txtPassword"/>--%>
                        
                        <asp:Button ID="btnSignin" class="btn btn-lg btn-block btn-primary" runat="server" Text=" Sign in" OnClick="btnSignin_Click1" />
                        <asp:Label ID="lbllogin" runat="server" Text=""></asp:Label>
                        <label class="checkbox pull-left">
                            <input type="checkbox" id="ChbRemember" runat="server" value="remember-me"/>
                            Remember me 
                        </label>
                        <a href="#" class="pull-right need-help">Need help? </a><span class="clearfix"></span>
                    </div>
                </div>
                <a href="~/Account/Register.aspx" class="text-center new-account" runat="server">Create an account </a>
            </div>
        </div>
    </div>
</asp:Content>
