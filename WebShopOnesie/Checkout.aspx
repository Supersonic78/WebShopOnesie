<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Master.Master" CodeBehind="Checkout.aspx.cs" Inherits="WebShopOnesie.Checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">





    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="Product.ProductID" HeaderText="ProductID" />
            <asp:BoundField DataField="Product.ProductName" HeaderText="ProductTitle" />
            <asp:BoundField DataField="Product.ProductPrice" HeaderText="ProductPrice" />
        </Columns>
        <Columns>
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" />

        </Columns>
    </asp:GridView>
    <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
    <asp:TextBox ID="FirstName" runat="server"></asp:TextBox><br />
    <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label><br />
    <asp:TextBox ID="LastName" runat="server"></asp:TextBox><br />
    <asp:Button ID="Button1" runat="server" Text="BUY NOW" OnClick="Button1_Click" />




</asp:Content>
