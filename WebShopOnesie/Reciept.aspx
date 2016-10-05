<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Master.Master" CodeBehind="Reciept.aspx.cs" Inherits="WebShopOnesie.Reciept" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    Thank you for the order
     <asp:Label ID="Name" runat="server"></asp:Label><br /> 
 
   


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

    Total amount:<asp:Label ID="TotalAmount" runat="server"></asp:Label>




</asp:Content>
