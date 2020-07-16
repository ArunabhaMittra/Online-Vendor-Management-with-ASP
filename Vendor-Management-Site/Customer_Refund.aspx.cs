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
    public partial class Customer_Refund : System.Web.UI.Page
    {
        System.Text.StringBuilder service_table = new System.Text.StringBuilder();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
        }

        protected void OnSelectClick(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            Label4.Text = DropDownList1.SelectedValue;
            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            string service_type = DropDownList1.SelectedValue;
            cmd.CommandText = "select * from [service] where service_type='" + service_type + "' and customer_id='" + (Session["customer_id"].ToString()) + "'";
            cmd.Connection = con;
            SqlDataReader rd = cmd.ExecuteReader();
            service_table.Append("<table border='1'>");
            service_table.Append("<tr><th>ID</th><th>Booking Date</th><th>Vendor ID</th><th>Description</th><th>Charge</th><th>Status</th>");
            service_table.Append("</tr>");
            if (rd.HasRows)
            {
                while (rd.Read())
                {
                    service_table.Append("<tr>");
                    service_table.Append("<td>" + rd[0] + "</td>");
                    service_table.Append("<td>" + rd[1] + "</td>");
                    service_table.Append("<td>" + rd[7] + "</td>");
                    service_table.Append("<td>" + rd[4] + "</td>");
                    service_table.Append("<td>" + rd[5] + "</td>");
                    service_table.Append("<td>" + rd[9] + "</td>");
                    service_table.Append("</tr>");
                }
            }
            service_table.Append("</table>");
            PlaceHolder1.Controls.Add(new Literal { Text = service_table.ToString() });
            rd.Close();
        }

        protected void OnSubmit(object sender, EventArgs e)
        {
            Session["customer_refund_service_id"]= TextBox1.Text;
            Response.Redirect("Customer_Refund_Commit.aspx");

        }
    }
}