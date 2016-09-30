<%@ Page Language="C#" AutoEventWireup="true"MasterPageFile="~/Master.Master" CodeBehind="Categories.aspx.cs" Inherits="WebShopOnesie.Categories" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
   
    
   
   
    
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <div id="oo">
         <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="False">
    <Columns>
        <asp:HyperLinkField DataTextField="ProductID" HeaderText="ProductID" DataNavigateUrlFields="ProductID" DataNavigateUrlFormatString="/ProductDetail.aspx?ID={0}"/>
        <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
        <asp:BoundField DataField="ProductPrice" HeaderText="ProductPrice" SortExpression="ProductPrice" />
        <asp:BoundField DataField="ProductDescription" HeaderText="ProductDescription" SortExpression="ProductDescription" />
    </Columns>
</asp:GridView>

            <asp:ListView ID="ListView1" runat="server"></asp:ListView>
            </div>
        
 
        
   
    </asp:Content>