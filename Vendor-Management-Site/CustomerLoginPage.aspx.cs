using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace Vendor_Management_Site
{
    public partial class CustomerLoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SignInClick(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            string query = "select count(*) from customer where customer_name='" + TextBox1.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            con.Close();
            if (temp == 1)
            {
                con.Open();
                string checkpasswordquery = " select password from customer where customer_name='" + TextBox1.Text + "'";
                SqlCommand passComm = new SqlCommand(checkpasswordquery, con);
                string password = passComm.ExecuteScalar().ToString().Replace(" ", "");
                con.Close();
                if (password == TextBox2.Text)
                {
                    // Load and store the session variables here.
                    con.Open();
                    string qr = " select * from customer where customer_name='" + TextBox1.Text + "'";
                    SqlCommand cmd1 = new SqlCommand(qr, con);
                    SqlDataReader dr = cmd1.ExecuteReader();
                    bool recordfound = dr.Read();
                    Session["customer_name"] = dr["customer_name"].ToString();
                    Session["customer_credit"] = dr["credit_amount"].ToString();
                    Session["contact_no"] = dr["contact_no"].ToString();
                    Session["customer_id"] = dr["customer_id"].ToString();

                    Response.Redirect("CustomerDashboard.aspx");
                }
                else
                {
                    Label1.Text = "Password is not correct";
                }

            }
            else
            {
                Response.Write("Password is Not Correct ");
            }
        }

        protected void SignUpClick(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}