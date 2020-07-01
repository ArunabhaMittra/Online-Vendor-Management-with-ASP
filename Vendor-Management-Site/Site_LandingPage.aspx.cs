using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vendor_Management_Site
{
    public partial class Site_LandingPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void OnSignUpClick(object sender, EventArgs e)
        {
            Response.Redirect("");              // ADD PAGE NAME - for Sign Up
        }

        protected void OnLoginClick(object sender, EventArgs e)
        {
            // VERIFY LOG IN DETAILS AND PROCEED
        }
    }
}