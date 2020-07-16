using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace Vendor_Management_Site
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
        }
        void Session_Start(object sender, EventArgs e)
        {
            Session["customer_name"]= "No Name";
            Session["customer_credit"]= "0";
            Session["contact_no"]= "0";
            Session["customer_id"]= "-1";
            Session["customer_chose_vendor_name"] = "nothing";
            Session["customer_refund_amount"]= "-1";
            Session["customer_refund_service_id"] = "-1";
            Session["invoice_sid"] = "-1";
        }
        void Session_End(object sender, EventArgs e)
        {
            // Code that runs when a session ends
        }
    }
}