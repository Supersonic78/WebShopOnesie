<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebShopOnesie.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div id="test3" class="container">
        <div id="row2" class="row">
            <section class="col-lg-12">
                <img id="banner2" src="images/childish-onesies.png" />
            </section>
        </div>
    </div>
    <div id="test2" class="container">
        <div id="row1" class="row">
            <section class="col-sm-3">
                <h2>Super island</h2>
                <div id="column1">
                    Cookie chocolate bar fruitcake lollipop jujubes macaroon. Soufflé jelly cotton candy tootsie roll fruitcake. Powder cookie biscuit cupcake chocolate bar tart.
                    Pie sweet sugar plum ice cream macaroon. Caramels macaroon cake sweet. Liquorice bonbon jelly beans fruitcake pudding. Chocolate bar fruitcake gingerbread candy soufflé.
                    Caramels chocolate bar chocolate jelly beans carrot cake gingerbread. Candy canes tiramisu sweet roll brownie.
                    Powder candy tiramisu pastry bonbon tart marshmallow gummi bears tiramisu. Dragée tart chocolate cake oat cake gingerbread dragée. Brownie candy canes pie gingerbread.
                </div>
            </section>
            <section class="col-sm-4">
                <h2>Lovely weather</h2>
                <div id="column2">
                    Cookie chocolate bar fruitcake lollipop jujubes macaroon. Soufflé jelly cotton candy tootsie roll fruitcake. Powder cookie biscuit cupcake chocolate bar tart.
                    Pie sweet sugar plum ice cream macaroon. Caramels macaroon cake sweet. Liquorice bonbon jelly beans fruitcake pudding. Chocolate bar fruitcake gingerbread candy soufflé. Caramels chocolate bar chocolate jelly beans carrot cake gingerbread. Candy canes tiramisu sweet roll brownie.
                    Powder candy tiramisu pastry bonbon tart marshmallow gummi bears tiramisu. Dragée tart chocolate cake oat cake gingerbread dragée. Brownie candy canes pie gingerbread.
                </div>
            </section>
            <section class="col-sm-3">
                <h2>Beautiful hotel</h2>
                <div id="column3">
                    Cookie chocolate bar fruitcake lollipop jujubes macaroon. Soufflé jelly cotton candy tootsie roll fruitcake. Powder cookie biscuit cupcake chocolate bar tart.
                    Pie sweet sugar plum ice cream macaroon. Caramels macaroon cake sweet. Liquorice bonbon jelly beans fruitcake pudding. Chocolate bar fruitcake gingerbread candy soufflé. Caramels chocolate bar chocolate jelly beans carrot cake gingerbread. Candy canes tiramisu sweet roll brownie.
                    Powder candy tiramisu pastry bonbon tart marshmallow gummi bears tiramisu. Dragée tart chocolate cake oat cake gingerbread dragée. Brownie candy canes pie gingerbread.
                </div>
            </section>
            <aside class="col-sm-2">
                <h2>Nice people</h2>
                <div id="column4">
                    Cookie chocolate bar fruitcake lollipop jujubes macaroon. Soufflé jelly cotton candy tootsie roll fruitcake.
                    Powder cookie biscuit cupcake chocolate bar tart. Pie sweet sugar plum ice cream macaroon. Caramels macaroon cake sweet.
                    Liquorice bonbon jelly beans fruitcake pudding. Chocolate bar fruitcake gingerbread candy soufflé. Caramels chocolate bar chocolate jelly beans carrot cake gingerbread.
                    Candy canes tiramisu sweet roll brownie. Powder candy tiramisu pastry bonbon tart marshmallow gummi bears tiramisu. Dragée tart chocolate cake oat cake gingerbread dragée.
                    Brownie candy canes pie gingerbread.
                </div>
            </aside>
        </div>
    </div>

                 <!-- Single button -->
<%--<div class="btn-group">
  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Dropdown <span class="caret"></span>
  </button>
  <ul class="dropdown-menu">
    <li><a href="contact.aspx">Contact</a></li>
    <li><a href="#">Another action</a></li>
    <li><a href="#">Something else here</a></li>
    <li role="separator" class="divider"></li>
    <li><a href="#">Separated link</a></li>
  </ul>
</div>--%>

            <div id="menu">
            <label>
                Onesie:
            <select name="onesies" > 
                <option value ="null">Choose Onesie</option>

                <optgroup label ="For Babys">
                <option value ="large">Adult</option>
                <option value ="small">Kids</option>
                <option value ="brown">Senior</option>
                    </optgroup>

                  <optgroup label ="For Kids">
                <option value ="large">Adult</option>
                <option value ="small">Kids</option>
                <option value ="brown">Senior</option>
                    </optgroup>

                  <optgroup label ="For Adults">
                <option value ="large">Adult</option>
                <option value ="small">Kids</option>
                <option value ="brown">Senior</option>
                    </optgroup>

            </select>
            </label>

        </div>
</asp:Content>
