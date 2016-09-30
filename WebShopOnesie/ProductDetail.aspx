<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="ProductDetail.aspx.cs" Inherits="WebShopOnesie.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="ProductName" runat="server" Text="Label"></asp:Label>
    <asp:Image ID="Image1" runat="server" />
    <asp:Label ID="Price" runat="server" Text="Label"></asp:Label>
</asp:Content>
