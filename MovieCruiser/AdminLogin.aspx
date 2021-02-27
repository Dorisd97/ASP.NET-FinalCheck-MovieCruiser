<%@ Page Title="" Language="C#" MasterPageFile="~/MovieCruiserCustomer.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="MovieCruiser.AdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
        }
        .lgnbtn {
            background-color: #000080;
            border: none;
            color: white;
            padding: 20px 50px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
            width:44%;
            font-weight:bold;
        }
        #loginform {
            margin-left:625px;
        }
        .textbox {
            width: 40%;
            padding: 12px 20px;
            margin: 8px 0;
        }

</style>

<script>
    function ValidateName(sender, args)
    {
        if (args.Value != "DorisDeb297")
                args.IsValid = false;
            else
                args.IsValid = true;
    }

    function ValidatePassword(sender, args)
    {
        if (args.Value != "1234567")
            args.IsValid = false;
        else
            args.IsValid = true;
    }
</script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="loginform" style="margin-left: auto; margin-right: auto; width: 50%; background-image: url('images/movie-bg.jpg');">
    <center>
        <h3 style="font-size: 30px;">Log In as Admin</h3> 
            <asp:Label ID="lblName" runat="server" AssociatedControlID="txtName" CssClass="label" ForeColor="Black" Text="Name " Font-Size="20px" Font-Bold="True"></asp:Label>
            <asp:RequiredFieldValidator ID="NameRequiredValidator" runat="server" ControlToValidate="txtName" ErrorMessage="*" Font-Size="20px" ForeColor="Red" ToolTip="This field is required"></asp:RequiredFieldValidator>
            <asp:CustomValidator ID="NameValidator" runat="server" ErrorMessage="Name is incorrect" ClientValidationFunction="ValidateName" ControlToValidate="txtName" Display="Dynamic" ForeColor="Red" OnServerValidate="NameValidator_ServerValidate"></asp:CustomValidator>
            <br />
            <asp:TextBox ID="txtName" runat="server" CssClass="textbox" placeholder="Enter Username"></asp:TextBox>
            <br />   
            <asp:Label ID="lblPassword" runat="server" CssClass="label" ForeColor="Black" Text="Password " Font-Bold="True" Font-Size="20px" AssociatedControlID="txtPassword"></asp:Label>
            <asp:RequiredFieldValidator ID="PasswordRequiredValidator" runat="server" ControlToValidate="txtPassword" ErrorMessage="*" Font-Size="20px" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:CustomValidator ID="PasswordValidator" runat="server" ErrorMessage="Password is incorrect" ControlToValidate="txtPassword" Display="Dynamic" Font-Size="15px" ForeColor="Red" ClientValidationFunction="ValidatePassword" OnServerValidate="PasswordValidator_ServerValidate"></asp:CustomValidator>    
            <br />
            <asp:TextBox ID="txtPassword" runat="server" CssClass="textbox" placeholder="Enter Password" TextMode="Password"></asp:TextBox>
            <br />   
            <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="lgnbtn" OnClick="btnLogin_Click" />
    </center>
        </div>
</asp:Content>
