<%@ Page Language="C#" AutoEventWireup="true"MasterPageFile="~/Master.Master" CodeBehind="Categories.aspx.cs" Inherits="WebShopOnesie.Categories" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
   
    
   
   
    
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <div id="oo">
          <asp:ListView ID="ListView3" runat="server" >
    <LayoutTemplate>
        <ul>
            <asp:PlaceHolder ID="itemPlaceholder" runat="server"  />    
        </ul>                
    </LayoutTemplate>
    <ItemTemplate>
        <li>
             <a id ="cat" href ="/Products.aspx?id=<%# Container.DataItem %>"><%# Container.DataItem %> </a>
        </li>
    </ItemTemplate>
    <EmptyDataTemplate>
        <p>Nothing here.</p> 
    </EmptyDataTemplate>
</asp:ListView>
            </div>
        
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        
   
    </asp:Content>