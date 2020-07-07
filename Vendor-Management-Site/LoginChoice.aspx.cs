using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vendor_Management_Site
{
    public partial class LoginChoice : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void VendorLogin(object sender, EventArgs e)
        {
            Response.Redirect("");                  // REDIRECT TO Vendor Log-in Page
        }

        protected void CustomerLogin(object sender, EventArgs e)
        {
            Response.Redirect("CustomerLoginPage.aspx");                 // REDIRECT TO Customer Log-in Page
        }
    }
}