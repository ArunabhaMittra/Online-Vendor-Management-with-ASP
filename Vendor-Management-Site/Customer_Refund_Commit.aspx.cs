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
    public partial class Customer_Refund_Commit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            string service_id = Session["customer_refund_service_id"].ToString();
            cmd.CommandText = "select * from [service] where service_id='" + service_id + "'";
            cmd.Connection = con;
            SqlDataReader rd = cmd.ExecuteReader();
            string amount_str = "";
            string type_str = "";
            string status_str = "";
            if (rd.HasRows)
            {
                while (rd.Read())
                {
                    amount_str = rd[5].ToString();
                    type_str = rd[3].ToString();
                    status_str = rd[9].ToString();

                }
            }
            con.Close();
            Label4.Text = service_id;
            Session["customer_refund_amount"] = amount_str;
            Label6.Text = DateTime.Now.Date.ToString();
            Label7.Text = status_str;


        }

        protected void OnConfirmClick(object sender, EventArgs e)
        {
            // Add details into refund table
            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            string sid = Session["customer_refund_service_id"].ToString();
            string camt = Session["customer_refund_amount"].ToString();
            int paisa = Convert.ToInt32(camt);
            string stype = Label7.Text;
            string rtype = "";
            if(stype.Contains("PENDING"))
            {
                rtype = "REFUND";
            }
            else if(stype.Contains("COMPLETED") || stype.Contains("BOOKED"))
            {
                rtype = "CANCELLATION";
            }
            string reason = TextBox1.Text;
            string x = DateTime.Now.Date.ToString("MM-dd-yyyy");
            string status = "REFUND PENDING";
            string query = "insert into refund(serv_id, refund_amount, refund_type, refund_reason, refund_date, status) values('" + sid + "','" + paisa + "','" + rtype + "','" + reason + "','" + x + "','" + status + "')";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            int results = cmd.ExecuteNonQuery();
            con.Close();

            // Change status of service as Refund Pending
            if (results >= 1)
            {
                string cs3 = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlConnection con3 = new SqlConnection(cs3);
                con3.Open();
                string qr = "update service set status='" + status + "' where service_id='" + sid + "'";
                SqlCommand cmd3 = new SqlCommand(qr, con3);
                int x1 = cmd3.ExecuteNonQuery();
                if ( x1 > 0 )
                {
                    Label9.Text = "Refund Initiated ! The Vendor will get in touch shortly !";
                }
                else
                {
                    Label9.Text = "Something Went Wrong Refund Failure!";
                }
            }
            else
            {
                Label9.Text = "Something Went Wrong Refund Failure!";
            }


        }

        protected void OnCancelClick(object sender, EventArgs e)
        {
            // RE - ROUTE BACK TO CHOOSE REFUND PAGE 
            Response.Redirect("Customer_Refund.aspx");
        }
    }
}