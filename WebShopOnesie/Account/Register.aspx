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
                            <label class="control-label" for="username">FirstName</label>
                            <div class="controls">
                                <asp:TextBox ID="txtfirstName" runat="server" class="form-control input-lg"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="You must inter your FirstName" ControlToValidate="txtfirstName"></asp:RequiredFieldValidator>
                                <%--<input name="username" class="form-control input-lg" id="txtusername" type="text" placeholder="">--%>
                               <%-- <p class="help-block">First Name can contain any letters or numbers, without spaces</p>--%>
                            </div>
                        </div>

                       <div class="control-group">
                            <label class="control-label" for="username">LastName</label>
                            <div class="controls">
                                <asp:TextBox ID="txtLastname" runat="server" class="form-control input-lg"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLastname" ErrorMessage="You must inter your LastName"></asp:RequiredFieldValidator>
                                <%--<input name="username" class="form-control input-lg" id="txtusername" type="text" placeholder="">--%>
                                <p class="help-block">LastName can contain any letters or numbers, without spaces</p>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="username">Adress</label>
                            <div class="controls">
                                <asp:TextBox ID="txtAdress" runat="server"></asp:TextBox>
                                  <p class="help-block">Adress </p>
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label" for="email">E-mail</label>
                            <div class="controls">
                                 <asp:TextBox ID="txtEmail" runat="server" class="form-control input-lg"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="you must inter your Email"></asp:RequiredFieldValidator>
                               <%-- <input name="email"  id="email" type="email" placeholder="">--%>
                                <p class="help-block">Please provide your E-mail</p>
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label" for="password">Password</label>
                            <div class="controls">
                                <asp:TextBox ID="txtpassword" runat="server" class="form-control input-lg" TextMode="Password" ></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtpassword" ErrorMessage="inter password"></asp:RequiredFieldValidator>
                                <%--<input name="password" class="form-control input-lg" id="password" type="password" placeholder="">--%>
                                <p class="help-block">Password should be at least 6 characters</p>
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label" for="password_confirm">Password (Confirm)</label>
                            <div class="controls">
                                <asp:TextBox ID="txtpasswordconfirm" runat="server" class="form-control input-lg" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtpasswordconfirm" ErrorMessage="inter password again"></asp:RequiredFieldValidator>
                                <%--<input name="password_confirm" class="form-control input-lg" id="password_confirm" type="password" placeholder="">--%>
                                <p class="help-block">Please confirm password</p>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="password_confirm">Phone Number</label>
                            <div class="controls">
                                <asp:TextBox ID="txtphonenumber" runat="server" class="form-control input-lg"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtphonenumber" ErrorMessage="you must inter your phonr num ber"></asp:RequiredFieldValidator>
                                <%--<input name="password_confirm" class="form-control input-lg" id="password_confirm" type="password" placeholder="">--%>
                                <p class="help-block">Please inter your phone number</p>
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label" for="password_confirm">City</label>
                            <div class="controls">
                                <asp:TextBox ID="txtcity" runat="server" class="form-control input-lg"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtcity" ErrorMessage="inter your city"></asp:RequiredFieldValidator>
                                <%--<input name="password_confirm" class="form-control input-lg" id="password_confirm" type="password" placeholder="">--%>
                                <p class="help-block">Please inter your city</p>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="password_confirm">Zip_Cod</label>
                            <div class="controls">
                                <asp:TextBox ID="txtzipcod" runat="server" class="form-control input-lg"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtzipcod" ErrorMessage="inter zipcod"></asp:RequiredFieldValidator>
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
