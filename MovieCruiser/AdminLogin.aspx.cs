using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MovieCruiser
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
                if (txtName.Text == "DorisDeb297" && txtPassword.Text == "1234567")
                {
                    Session["name"] = txtName.Text;
                    FormsAuthentication.RedirectFromLoginPage(txtName.Text, true);
                }
                
        }

        protected void NameValidator_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (args.Value != "DorisDeb297")
                args.IsValid = false;
            else
                args.IsValid = true;
        }

        protected void PasswordValidator_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (args.Value != "12345677")
                args.IsValid = false;
            else
                args.IsValid = true;
        }

        //protected void Page_Error(object sender, EventArgs e)
        //{
        //    Response.Clear();
        //    Exception exc = Server.GetLastError();
        //    Server.Transfer("ErrorPage.aspx?errorMessage=" + exc.Message);
        //}

    }



    //class CustomException : Exception
    //{
    //    public CustomException(string msg) : base(msg)
    //    {

    //    }
    //}

}