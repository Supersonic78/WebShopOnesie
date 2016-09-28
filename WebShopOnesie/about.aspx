<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="WebShopOnesie.about" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="GetAllProducts" TypeName="WebShopOnesie.ProductDataAccessLayer"></asp:ObjectDataSource>
<asp:GridView ID="GridView1" runat="server" DataSourceID="ObjectDataSource2" AutoGenerateColumns="False">
    <Columns>
        <asp:BoundField DataField="ProductID" HeaderText="ProductID" SortExpression="ProductID" />
        <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
        <asp:BoundField DataField="ProductPrice" HeaderText="ProductPrice" SortExpression="ProductPrice" />
        <asp:BoundField DataField="ProductDescription" HeaderText="ProductDescription" SortExpression="ProductDescription" />
        <asp:BoundField DataField="ImagePath" HeaderText="ImagePath" SortExpression="ImagePath" />
    </Columns>
</asp:GridView>
 
   
</asp:Content>