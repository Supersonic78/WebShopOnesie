<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="ProductDetail.aspx.cs" Inherits="WebShopOnesie.Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="Style/StyleSheet1.css" media="screen" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
  <asp:ListView ID="productsList" runat="server">
                <LayoutTemplate>
                    <ul class="productList">
                        <asp:PlaceHolder ID="itemPlaceHolder" runat="server"></asp:PlaceHolder>
                    </ul>
                </LayoutTemplate>
                <ItemTemplate>
                    <li>                  
                        <img width="300" height="400" src="<%#Eval("ImagePath") %>" /><br /><p><%#Eval("ProductName") %></p><br /><br /><%#Eval("ProductDescription") %><p><bold>Pris: </bold><%#Eval("ProductPrice") %> kr</p>                       
                    </li>                   
                </ItemTemplate>
                <EmptyDataTemplate>
                    <div>
                        No content here.
                    </div>
                </EmptyDataTemplate>

            </asp:ListView>
</asp:Content>
