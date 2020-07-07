using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vendor_Management_Site
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void OnSignInClick(object sender, EventArgs e)
        {
            Response.Redirect("LoginChoice.aspx");
        }
    }
}