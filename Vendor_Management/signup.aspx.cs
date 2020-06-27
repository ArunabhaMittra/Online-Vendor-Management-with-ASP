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
    public partial class c_home : System.Web.UI.Page
    {
        SqlConnection con = null;
        SqlDataAdapter adp = null, adp1=null;
        DataSet dset = null, dest1=null;
        DataRow dr = null, dr1=null;
        String id=null;
        String customer= "CUSTOMER";
        SqlCommandBuilder cmd = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection("Data Source=localhost\\sqlexpress;Initial Catalog=vendorproject;Integrated Security=True");
            con.Open();
            dset = new DataSet();
            adp = new SqlDataAdapter("select * from vendoruser", con);
            adp.Fill(dset, "vendoruser_set");
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            if (TextCPass.Text == TextPass.Text)
            {
                String u_id = null;
                dest1 = new DataSet();
                adp1 = new SqlDataAdapter("select count(*)+100 from vendoruser", con);
                adp1.Fill(dest1, "count_set");

                int i_count = dest1.Tables[0].Rows.Count;
                if (i_count != 0)
                {
                    dr1 = dest1.Tables[0].Rows[0];
                    u_id = dr1[0].ToString();
                }
                  id = u_id;

                cmd = new SqlCommandBuilder(adp);
                dr = dset.Tables[0].NewRow();        
                dr[0] = id.ToString();
                dr[1] = TextName.Text;
                dr[2] = TextEmail.Text;
                dr[3] = TextPhone.Text;
                dr[4] = TextPass.Text;
                dr[5] = TextAdd.Text;
                dr[6] = customer.ToString();
                dset.Tables[0].Rows.Add(dr);

                adp.Update(dset, "vendoruser_set");
                lbl.Text = "<b>SignUp Successfully</b>";
            }
            else
            {
                lbl.Text = "<b>Confirm Password Doesn't Match</b>";
            }
            }
        }
    }
