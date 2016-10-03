<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="ProductDetail.aspx.cs" Inherits="WebShopOnesie.ProductDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="Style/StyleSheet1.css" media="screen" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:Label ID="ProductName" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="Price" runat="server" Text="Label"></asp:Label>
    <asp:Image ID="Image1" runat="server" />
</asp:Content>
