<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="WebShopOnesie.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div id="formbox">

        <h2>Contact</h2>

        <label for="text">First name:</label><br />
        <input class="form-control" id="inputdefault1" name="firstname" type="text" />
        <label for="text">Last name:</label><br />
        <input class="form-control" id="inputdefault2" name="lastname" type="text" />
        <label for="text">Phone:</label><br />
        <input class="form-control" id="inputdefault3" name="phone" type="tel" />
        <label for="email">E-mail:</label><br />
        <input class="form-control" id="inputdefault4" name="email" type="email" /><br />
        <select>
            <option value="1">😀</option>
            <option value="2">😊</option>
            <option value="3">😐</option>
            <option value="4">😢</option>
        </select>
        <input type="submit" id="submit" name="submit" value="Confirm" />
        <div class="form-group">
        </div>
    </div>
</asp:Content>
