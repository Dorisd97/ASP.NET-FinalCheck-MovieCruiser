<%@ Page Title="" Language="C#" MasterPageFile="~/MovieCruiserAdmin.Master" AutoEventWireup="true" CodeBehind="EditMovie.aspx.cs" Inherits="MovieCruiser.EditMovie" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .edit-labels {
            color: #808080;
            font-size: 20px;
        }

        .save-btn {
            background-color: #003399;
            color: #FFFFFF;
            padding: 20px 50px 20px 50px;
            text-align: center;
            display: inline-block;
            text-decoration: none;
            font-size: 16px;
            margin: 4px 2px 4px 2px;
            cursor: pointer;
        }
        .auto-style2 {
            width: 130px;
        }
        .auto-style5 {
            width: 185px;
        }
        .auto-style6 {
            width: 195px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 style="left: 0px; text-align: left; text-indent: 300px; font-size: 30px;">Edit Movie</h2>

    <table align="center" cellpadding="5" style="width: 50%; margin-left: auto; margin-right: auto;">
        <tr>
            <td colspan="4">
                <asp:Label ID="lblTitle" runat="server" Font-Bold="True" Font-Size="22px" ForeColor="#666666" Text="Title" AssociatedControlID="txtTitle"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:TextBox ID="txtTitle" runat="server" Width="600px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="TitleRequiredValidator" runat="server" ErrorMessage="*" Font-Size="20px" ForeColor="Red" ControlToValidate="txtTitle"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="lblGross" runat="server" Text="Gross($)" Font-Bold="True" Font-Size="20px" ForeColor="#666666" AssociatedControlID="txtGross"></asp:Label></td>
            <td class="auto-style2">
                <asp:Label ID="lblActive" runat="server" Text="Active" Font-Bold="True" Font-Size="20px" ForeColor="#666666"></asp:Label></td>
            <td class="auto-style6"><asp:Label ID="lblDateOfLaunch" runat="server" Text="Date of Launch" Font-Bold="True" Font-Size="20px" ForeColor="#666666" AssociatedControlID="txtDateOfLaunch"></asp:Label></td>
            <td><asp:Label ID="lblGenre" runat="server" Text="Genre" Font-Bold="True" Font-Size="20px" ForeColor="#666666" AssociatedControlID="DropDownListGenre"></asp:Label></td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:TextBox ID="txtGross" runat="server" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="GrossRequiredValidator" runat="server" ErrorMessage="*" Font-Size="20px" ForeColor="Red" ControlToValidate="txtGross"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style2">
                <asp:RadioButton ID="RadioBtnYes" runat="server" Font-Bold="False" ForeColor="Black" Text="Yes" GroupName="active" />&nbsp;&nbsp;&nbsp; 
                <asp:RadioButton ID="RadioBtnNo" runat="server" Font-Bold="False" ForeColor="Black" Text="No" GroupName="active" />
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="txtDateOfLaunch" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="DateOfLaunchFieldValidator" runat="server" ControlToValidate="txtDateOfLaunch" ErrorMessage="*" Font-Size="20px" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
                
            <td>
                <asp:DropDownList ID="DropDownListGenre" runat="server">
                    <asp:ListItem>Science Fiction</asp:ListItem>
                    <asp:ListItem>Superhero</asp:ListItem>
                    <asp:ListItem>Romance</asp:ListItem>
                    <asp:ListItem>Comedy</asp:ListItem>
                    <asp:ListItem>Adventure</asp:ListItem>
                    <asp:ListItem>Thriller</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:CheckBox ID="HasTeaserChkBox" runat="server" Font-Bold="True" ForeColor="#666666" Text="Has Teaser" />
            </td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="save-btn" OnClick="btnSave_Click" />
            </td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>
