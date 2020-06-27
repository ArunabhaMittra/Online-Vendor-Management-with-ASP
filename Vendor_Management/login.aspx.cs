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
    public partial class login : System.Web.UI.Page
    {
        SqlConnection con = null;
        SqlDataAdapter adp = null;
        DataSet dset = null;
        DataRow dr = null;
        String u_type = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection("Data Source=localhost\\sqlexpress;Initial Catalog=vendorproject;Integrated Security=True");
            con.Open();
            adp = new SqlDataAdapter("Select * from vendoruser where user_id='" + TextID.Text + "' and user_password='" + TextPass.Text + "' ", con);
            dset = new DataSet();
            adp.Fill(dset, "vendoruser_set");
        }

        protected void Button_login_Click(object sender, EventArgs e)
        {
            int id_count = dset.Tables[0].Rows.Count;

            if (id_count!=0)
            {
                dr = dset.Tables[0].Rows[0];
                u_type = dr[6].ToString();
                if (u_type.Equals("ADMIN"))
                {
                    Response.Redirect("customer_datails.aspx");
                }
                else
                {
                    Response.Redirect("c_home.aspx");
                }
            }
                else
                {
                    lbl.Text="Wrong User ID or Password";
                }
            }
        }
    }
