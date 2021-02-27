<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="header-customer.ascx.cs" Inherits="MovieCruiser.header_customer" %>
<header style="padding: 15px; style.css; background-color: #000080;">
    <nav style="float: right; color: #FFFFFF;">
        <a href="MovieListCustomer.aspx" style="color: #FFFFFF">Movies</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="Favorites.aspx" style="color: #FFFFFF">Favorites</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="AdminLogin.aspx" style="color: #FFFFFF">Login as Admin</a>
    </nav>
    <span style="color: #FFFFFF; font-size: 35px;">Movie Cruiser</span>
    <asp:Image ID="img" runat="server" Height="50px" ImageUrl="~/images/moviereel.png" Width="50px" style="margin-left: 11px" />
</header>
