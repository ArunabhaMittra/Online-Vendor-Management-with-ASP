using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vendor_Management_Site
{
    public partial class SignUp_CustORVend : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SignUp_Vendor(object sender, EventArgs e)
        {
            // Redirect to Vendor Sign Up page
            Response.Redirect("");                                       // ADD PAGE NAME - for  Vendor Sign Up
        }

        protected void SignUp_Customer(object sender, EventArgs e)
        {
            Response.Redirect("SignUp_Customer.aspx");                  // ADD PAGE NAME - for Customer Sign Up
        }
    }
}