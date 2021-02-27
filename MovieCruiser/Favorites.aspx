<%@ Page Title="" Language="C#" MasterPageFile="~/MovieCruiserCustomer.Master" AutoEventWireup="true" CodeBehind="Favorites.aspx.cs" Inherits="MovieCruiser.Favorites" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2 style="left: 0px; text-align: left; text-indent: 485px;">Favorites</h2>
    <asp:Panel ID="NotificationPanel" Visible="false" runat="server" Font-Bold="True" Font-Size="20px" ForeColor="#33CC33" HorizontalAlign="Center">Movie removed from Favorites Successfully<br /></asp:Panel>

     <asp:GridView ID="FavoritesGridView" runat="server" AutoGenerateColumns="False" CellPadding="5" CellSpacing="2" GridLines="None" HorizontalAlign="Center" CssClass="auto-style1" Width="565px">
         <HeaderStyle BorderStyle="Dashed" HorizontalAlign="Left" />
         <RowStyle HorizontalAlign="Left" />
         <Columns>
            
            <asp:BoundField HeaderText="Title" DataField="Title" />
            <asp:BoundField HeaderText="Box Office" DataField="BoxOffice" />
            <asp:BoundField HeaderText="Genre" DataField="Genre" />
            <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="~\Favorites.aspx?id={0}&ShowPanel=True" Text="Delete" HeaderText="" />
          </Columns>
     </asp:GridView>
    <br />
    <p style="text-indent:485px; font-weight:bold">No. of Favorites: <asp:Label ID="lblNoOfFavorites" runat="server" ForeColor="Black"></asp:Label></p>

</asp:Content>
