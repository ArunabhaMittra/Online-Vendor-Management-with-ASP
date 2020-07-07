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
    public partial class Vendor_Registration : System.Web.UI.Page
    {
        protected void resetData()
        {
            TextName.Text = "";
            TextEmail.Text = "";
            TextContact.Text = "";
            TextAddress.Text = "";
            DropDownList1.Text = " ";
            TextPassword.Text = "";
            TextCpass.Text = "";
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            string password, confirm_password;
            password = (TextPassword.Text).Trim();
            confirm_password = (TextCpass.Text).Trim();
            if (password == confirm_password)
            {
                string query = "insert into vendor(vendor_name, email_id, Contact_no, address, vendor_type, password) values('" + TextName.Text + "','" + TextEmail.Text + "','" + TextContact.Text + "','" + TextAddress.Text + "','" + DropDownList1.SelectedValue + "','" + TextPassword.Text + "')";
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                int results = cmd.ExecuteNonQuery();
                con.Close();
                if (results >= 1)
                {
                    //Response.Write("Data Saved Successfully");
                    //Response.Redirect("LoginPage.aspx");
                    lbl.Text = "";
                    lbl.Text = "Data Saved Successfully!";

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
            resetData();
        }
    }
}