using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Threading;

namespace Vendor_Management_Site
{
    public partial class Customer_Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\OnlineVendorManagerDB.mdf;Integrated Security=True


        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            string password, confirm_password;
            password = (TextPassword.Text).Trim();
            confirm_password = (TextCpass.Text).Trim();
            if(password == confirm_password)
            {
                string query = "insert into customer(customer_name, email_id, contact_no, address, password) values('" + TextName.Text + "','" + TextEmail.Text + "','" + TextContact.Text + "','" + TextAddress.Text + "','" + TextPassword.Text + "')";
                SqlCommand cmd = new SqlCommand(query,con);
                con.Open();
                int results = cmd.ExecuteNonQuery();
                con.Close();
                if (results >= 1)
                {
                    //Response.Write("Data Saved Successfully");
                    //Response.Redirect("LoginPage.aspx");
                    lbl.Text = "";
                    lbl.Text = "Data Saved Successfully!";
                    Thread.Sleep(2000);
                    Response.Redirect("CustomerLoginPage.aspx");
                    
                }
                else
                {
                    Response.Write("Something Went Wrong! Data Not Saved");
                }
            }
            else
            {
                lbl.Text = "Passwords Do Not Match";
            }

        }

        protected void clear_Click(object sender, EventArgs e)
        {

        }
    }
}