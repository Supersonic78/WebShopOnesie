<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebShopOnesie.Account.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="form-horizontal" runat="server" action="" method="POST">
                    <fieldset>
                        <div id="legend">
                            <div>Register</div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="username">Username</label>
                            <div class="controls">
                                <asp:TextBox ID="txtusername" runat="server" class="form-control input-lg"></asp:TextBox>
                                <%--<input name="username" class="form-control input-lg" id="txtusername" type="text" placeholder="">--%>
                                <p class="help-block">Username can contain any letters or numbers, without spaces</p>
                            </div>
                        </div>

                       

                        <div class="control-group">
                            <label class="control-label" for="email">E-mail</label>
                            <div class="controls">
                                 <asp:TextBox ID="txtEmail" runat="server" class="form-control input-lg"></asp:TextBox>
                               <%-- <input name="email"  id="email" type="email" placeholder="">--%>
                                <p class="help-block">Please provide your E-mail</p>
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label" for="password">Password</label>
                            <div class="controls">
                                <asp:TextBox ID="txtpassword" runat="server" class="form-control input-lg" ></asp:TextBox>
                                <%--<input name="password" class="form-control input-lg" id="password" type="password" placeholder="">--%>
                                <p class="help-block">Password should be at least 6 characters</p>
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label" for="password_confirm">Password (Confirm)</label>
                            <div class="controls">
                                <asp:TextBox ID="txtpasswordconfirm" runat="server" class="form-control input-lg"></asp:TextBox>
                                <%--<input name="password_confirm" class="form-control input-lg" id="password_confirm" type="password" placeholder="">--%>
                                <p class="help-block">Please confirm password</p>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="password_confirm">Phone Number</label>
                            <div class="controls">
                                <asp:TextBox ID="txtphonenumber" runat="server" class="form-control input-lg"></asp:TextBox>
                                <%--<input name="password_confirm" class="form-control input-lg" id="password_confirm" type="password" placeholder="">--%>
                                <p class="help-block">Please inter your phone number</p>
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label" for="password_confirm">City</label>
                            <div class="controls">
                                <asp:TextBox ID="txtcity" runat="server" class="form-control input-lg"></asp:TextBox>
                                <%--<input name="password_confirm" class="form-control input-lg" id="password_confirm" type="password" placeholder="">--%>
                                <p class="help-block">Please inter your city</p>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="password_confirm">Zip_Cod</label>
                            <div class="controls">
                                <asp:TextBox ID="txtzipcod" runat="server" class="form-control input-lg"></asp:TextBox>
                                <%--<input name="password_confirm" class="form-control input-lg" id="password_confirm" type="password" placeholder="">--%>
                                <p class="help-block">Please inter zip cod</p>
                            </div>
                        </div>
                        <div class="control-group">
                            <!-- Button -->
                            <div class="controls">
                                <%--<button class="btn btn-primary">Register</button>--%>
                                <asp:Button ID="btnregister" runat="server"  class="btn btn-primary" Text="Register" OnClick="btnregister_Click" />
                            </div>
                        </div>
                    </fieldset>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
