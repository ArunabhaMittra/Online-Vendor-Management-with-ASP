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
    public partial class forgot_password : System.Web.UI.Page
    {
        SqlConnection con = null;
        SqlDataAdapter adp = null;
        DataSet dset = null;
        DataRow dr = null;
        SqlCommand cmd = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
            con = new SqlConnection("Data Source=localhost\\sqlexpress;Initial Catalog=vendorproject;Integrated Security=True");
            adp = new SqlDataAdapter("Select * from vendoruser where user_email='" + TextEmail.Text + "' ", con);
            con.Open();
            dset = new DataSet();
            adp.Fill(dset, "vendoruser_set");
        }
        protected void find_Click(object sender, EventArgs e)
        {
            int information_count = dset.Tables[0].Rows.Count;

            if (information_count != 0)
            {
                Panel1.Visible = false;
                Panel2.Visible = true;
            }
            else 
            {
                lbl1.Text = "Wrong Email ID";
            }
        }

        protected void update_Click(object sender, EventArgs e)
        {
            if (TextCon.Text == TextPass.Text)
               {
                  cmd = new SqlCommand("Update vendoruser set user_password='" + TextPass.Text + "' where user_email=" + TextEmail.Text, con);
                  cmd.ExecuteNonQuery();
                  lbl.Text = "Passowrd Update Successfully";
                }
            else
               {
                   Panel1.Visible = false;
                   Panel2.Visible = true;
                  lbl.Text = "Passowrd Not Match";
               }
        } 
    }
}