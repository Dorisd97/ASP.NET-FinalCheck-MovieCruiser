<%@ Page Title="" Language="C#" MasterPageFile="~/MovieCruiserAdmin.Master" AutoEventWireup="true" CodeBehind="MovieListAdmin.aspx.cs" Inherits="MovieCruiser.MovieListAdmin" %>
<%@ Register Src="~/header-admin.ascx" TagPrefix="ah" TagName="adminheader"%>
<%@ Register Src="~/footer.ascx" TagPrefix="ft" TagName="foot" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2 style="left: 0px; text-align: left; text-indent: 400px;">Movies</h2>

    <asp:GridView ID="MovieListGridView" runat="server" BorderStyle="None" CaptionAlign="Left" CellPadding="5" CellSpacing="2" DataSourceID="" GridLines="None" HorizontalAlign="Center" AutoGenerateColumns="False">
        <EditRowStyle HorizontalAlign="Center" />
        <RowStyle HorizontalAlign="Left" />
        <Columns>
            <%--<asp:BoundField HeaderText="ID" DataField="Id" />--%>
            <asp:BoundField HeaderText="Title" DataField="Title" />
            <asp:BoundField HeaderText="Box Office" DataField="BoxOffice" />
            <asp:CheckBoxField HeaderText="Active" DataField="Active" />
            <asp:BoundField HeaderText="Date Of Launch" DataField="DateOfLaunch" />
            <asp:BoundField HeaderText="Genre" DataField="Genre" />
            <asp:CheckBoxField HeaderText="Has Teaser" DataField="HasTeaser" />
            <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="~\EditMovie.aspx?id={0}" Text="Edit" HeaderText="Action" />
    </Columns>
    </asp:GridView>

</asp:Content>
