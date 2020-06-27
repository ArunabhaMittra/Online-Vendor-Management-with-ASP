using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Collections;
using System.Data;

namespace Vendor_Management
{
    public partial class customer_datails : System.Web.UI.Page
    {
        SqlConnection con = null;
        SqlDataAdapter adp = null;
        DataSet dset = null;

        protected void Page_Load(object sender, EventArgs e)
        {
             con = new SqlConnection("Data Source=localhost\\sqlexpress;Initial Catalog=vendorproject;Integrated Security=True");
            con.Open();
            adp = new SqlDataAdapter("select * from vendoruser", con);
            dset = new DataSet();
            adp.Fill(dset, "vendoruser_set");
            GridView1.DataSource = dset;
            GridView1.DataBind();
        }

    }
}