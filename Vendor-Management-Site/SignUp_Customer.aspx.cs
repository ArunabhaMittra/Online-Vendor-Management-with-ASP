using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vendor_Management_Site
{
    public partial class SignUp_Customer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void OnLoginClick(object sender, EventArgs e)
        {
            // Redirec to Log In page
            Response.Redirect("");                  //ADD PAGE NAME - Common Log In Page
        }

        protected void OnSubmitClick(object sender, EventArgs e)
        {
            // Subbmt Details and Commit to Database and Redirect to Site Landing Page
            /*
             
            ADD Database commit business logic
            User Type : Customer
             
             */
            Response.Redirect("Site_LandingPage.aspx");
        }
    }
}