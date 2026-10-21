using POS.DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace POS.wwwroot
{
    public partial class LoginUI : System.Web.UI.Page
    {
        string userName = "admin";
        string password = "admin";
        protected void Page_Load(object sender, EventArgs e)
        {

            //without database information login with cookie
            //if (User.Identity.IsAuthenticated)
            //{
            //    Response.Redirect("Components/Home.aspx", false);
            //    Context.ApplicationInstance.CompleteRequest();
            //    return;
            //}

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            TextBox userNameBox = (TextBox)LoginID.FindControl("UserName");
            TextBox passwordBox = (TextBox)LoginID.FindControl("Password");
            CheckBox remeberMeCheck = (CheckBox)LoginID.FindControl("RememberMeCheckBox");
            Label errorMassage = (Label)LoginID.FindControl("EroorMessegeLabel");
            string userName = userNameBox.Text.Trim();
            string userPassword = passwordBox.Text.Trim();

            if ( userName!="" && userPassword!="" )
            {
                DataTable dt = new DataTable();
                dt = DBAccess.FillDataTable("select * from [User] where " +
                    "UserName='" + userName + "' and Password='" + userPassword + "'", dt);
                if (dt != null && dt.Rows.Count>0)
                {
                    Response.Redirect("Components/Home.aspx", false);
                }
                else
                {
                    errorMassage.Text = " username or password incorrect.";
                }

            } else
            {


                errorMassage.Text = "Please enter username and password.";


            }












            //without database information login with cookie

            //string userInput = userNameBox != null ? userNameBox.Text.Trim() : string.Empty;
            //string userPassword = passwordBox != null ? passwordBox.Text.Trim() : string.Empty;
            //bool isRememberMe = remeberMeCheck !=null && remeberMeCheck.Checked;
            //if ( userInput == userName && userPassword == password) {
            //    DateTime issueDate = DateTime.Now;
            //    DateTime expirationDate = isRememberMe ? issueDate.AddDays(30) : issueDate.AddDays(30);

            //    FormsAuthenticationTicket ticket = new FormsAuthenticationTicket
            //        (
            //            1,
            //            userInput,
            //            issueDate,
            //            expirationDate,
            //            isRememberMe,
            //            "POSUser",
            //            FormsAuthentication.FormsCookiePath

            //        );
            //    string encryptedTicket = FormsAuthentication.Encrypt(ticket);
            //    HttpCookie authCookie = new HttpCookie(FormsAuthentication.FormsCookieName, encryptedTicket)
            //    {
            //        HttpOnly =true,
            //        Path=FormsAuthentication.FormsCookiePath
            //    };
            //    if (isRememberMe)
            //    {
            //        authCookie.Expires = ticket.Expiration;
            //    }
            //    Response.Cookies.Remove(FormsAuthentication.FormsCookieName);
            //    Response.Cookies.Add(authCookie);
            //    Response.Redirect("Components/Home.aspx",false);
            //    Context.ApplicationInstance.CompleteRequest();

            //}
            //else
            //{

            //    if (errorMassage != null)
            //    {
            //        errorMassage.Text = "Invalid username or password.";

            //    }
            //}
        }
    }
}