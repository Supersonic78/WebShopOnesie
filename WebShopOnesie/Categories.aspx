<%@ Page Language="C#" AutoEventWireup="true"MasterPageFile="~/Master.Master" CodeBehind="Categories.aspx.cs" Inherits="WebShopOnesie.Categories" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
   
    
   
   
    
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <div id="oo">
            <asp:ListView ID="productsList" runat="server" ItemType="DomainObjects.Product">
                <LayoutTemplate>
                    <ul class="productList">
                        <asp:PlaceHolder ID="itemPlaceHolder" runat="server"></asp:PlaceHolder>
                    </ul>
                </LayoutTemplate>
                <ItemTemplate>
                    <li>                  
                        <img width="300" height="400" src="<%#Eval("ImagePath") %>" /><br /><p><%#Eval("ProductName") %></p><br /><p><bold>Pris: </bold><%#Eval("ProductPrice") %> kr</p>
                        <a id="cat" href="/ProductDetail.aspx?id=<%#:Item.ProductName %>"<b>Produktinfo</b></a>
                    </li>
                    
                </ItemTemplate>
                <EmptyDataTemplate>
                    <div>
                        No content here.
                    </div>
                </EmptyDataTemplate>

            </asp:ListView>
            </div>
        
 
        
   
    </asp:Content>