using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vendor_Management_Site
{
    public partial class CustomerLogin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*
             ===== write code to load the session values here =====
                  
             *                  customer_name
             *                  credit_amount
             *                  contact_no
                               
            */

            var time = DateTime.Now;
            //string formattedTime = time.ToString("yyyy, MM, dd, hh, mm, ss");
            string formattedTime = time.ToString("dd/MM/yyyy");
            Label1.Text = Session["customer_name"].ToString();
            Label2.Text = Session["customer_credit"].ToString();
            Label3.Text = formattedTime;

        }

        protected void OnLogoutClick(object sender, EventArgs e)
        {
            Response.Redirect("CustomerLoginPage.aspx");
        }
    }
}