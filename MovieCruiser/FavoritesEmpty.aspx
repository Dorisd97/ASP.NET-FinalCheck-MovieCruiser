<%@ Page Title="" Language="C#" MasterPageFile="~/MovieCruiserCustomer.Master" AutoEventWireup="true" CodeBehind="FavoritesEmpty.aspx.cs" Inherits="MovieCruiser.FavoritesEmpty" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2 style="left: 0px; text-align: left; text-indent: 300px;">Favorites</h2>
    <p style="text-indent: 300px; font-weight: bold;color: #666699">
        No items in Favorites. Use &#39;Add to Favorite&#39; option in
        <asp:HyperLink ID="MovieListHyperLink" runat="server" ForeColor="#0033CC" NavigateUrl="~/MovieListCustomer.aspx">Movie List</asp:HyperLink>.
    </p>

</asp:Content>
