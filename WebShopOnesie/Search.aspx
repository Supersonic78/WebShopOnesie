<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="WebShopOnesie.Search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  <%--   <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="False">
    <Columns>
        <asp:HyperLinkField DataTextField="ProductID" HeaderText="ProductID" DataNavigateUrlFields="ProductID" DataNavigateUrlFormatString="/ProductDetail.aspx?ID={0}"/>
        <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
        <asp:BoundField DataField="ProductPrice" HeaderText="ProductPrice" SortExpression="ProductPrice" />
        <asp:BoundField DataField="ProductDescription" HeaderText="ProductDescription" SortExpression="ProductDescription" />
    </Columns>
</asp:GridView>--%>
              <asp:ListView ID="productsList" runat="server">
                <LayoutTemplate>
                    <ul class="productList">
                        <asp:PlaceHolder ID="itemPlaceHolder" runat="server"></asp:PlaceHolder>
                    </ul>
                </LayoutTemplate>
                <ItemTemplate>
                    <li><img width="300" height="400" src="<%#Eval("ImagePath") %>" /><br /><p><%#Eval("ProductName") %></p><br /><p><%#Eval("ProductDescription") %></p><br /><p><bold>Pris: </bold><%#Eval("ProductPrice") %> kr</p></li>
                    
                </ItemTemplate>
                <EmptyDataTemplate>
                    <div>
                        No content here.
                    </div>
                </EmptyDataTemplate>

            </asp:ListView>
</asp:Content>
