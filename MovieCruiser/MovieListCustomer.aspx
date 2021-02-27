<%@ Page Title="" Language="C#" MasterPageFile="~/MovieCruiserCustomer.Master" AutoEventWireup="true" CodeBehind="MovieListCustomer.aspx.cs" Inherits="MovieCruiser.MovieListCustomer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2 style="left: 0px; text-align: left; text-indent: 500px;">Movies</h2>
    <asp:Panel ID="NotificationPanel" Visible="false" runat="server" Font-Bold="True" Font-Size="20px" ForeColor="#33CC33" HorizontalAlign="Center">Movie added to Favorites Successfully<br /></asp:Panel>
    <asp:GridView ID="MovieListGridView" runat="server" AutoGenerateColumns="False" BorderStyle="None" DataSourceID="" GridLines="None" CellPadding="5" CellSpacing="2" HorizontalAlign="Center">
        <Columns>
                <asp:BoundField HeaderText="Title" DataField="Title" />
                <asp:BoundField HeaderText="Box Office" DataField="BoxOffice" />
                <asp:BoundField HeaderText="Genre" DataField="Genre" />
                <asp:CheckBoxField HeaderText="Has Teaser" DataField="HasTeaser" />
                <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="~\MovieListCustomer.aspx?id={0}&ShowPanel=True" Text="Add to Favorite" HeaderText="Action" />
        </Columns>
        <RowStyle HorizontalAlign="Left" />
    </asp:GridView>

</asp:Content>
