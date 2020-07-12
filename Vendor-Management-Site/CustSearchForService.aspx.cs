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
    public partial class CustAddService : System.Web.UI.Page
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
            cmd.CommandText = "select * from [service_charge] where serv_category='" + service_type + "'";
            cmd.Connection = con;
            SqlDataReader rd = cmd.ExecuteReader();
            service_table.Append("<table border='1'>");
            service_table.Append("<tr><th>ID</th><th>name</th><th>Type</th><th>Charge</th>");
            service_table.Append("</tr>");
            if (rd.HasRows)
            {
                while (rd.Read())
                {
                    service_table.Append("<tr>");
                    //string x = rd[1];
                    service_table.Append("<td>" + rd[1] + "</td>");
                    service_table.Append("<td>" + rd[2] + "</td>");
                    service_table.Append("<td>" + rd[3] + "</td>");
                    service_table.Append("<td>" + rd[5] + "</td>");
                    service_table.Append("</tr>");
                }
            }
            service_table.Append("</table>");
            PlaceHolder1.Controls.Add(new Literal { Text = service_table.ToString() });
            rd.Close();

        }

        protected void OnSubmit(object sender, EventArgs e)
        {
            Session["customer_chose_vendor_name"] = TextBox1.Text;
            Response.Redirect("Customer_AddService.aspx");
        }





        /*   protected void OnSubmitClick(object sender, EventArgs e)
         {
             string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
             SqlConnection con = new SqlConnection(cs);
             //
             string Datestring = TextBox2.Text;
             DateTime selected_date = DateTime.ParseExact(Datestring, "yyyy-MM-dd", null);
             DateTime today_date = DateTime.Now;
             int date_difference = DateTime.Compare(selected_date , today_date);
             if (date_difference > 0)
             {
                 string customer_id = Session["customer_id"].ToString();
                 string default_book_status = "PENDING";
                 string x = selected_date.ToString("MM-dd-yyyy");
                 string query = "insert into service(serv_booking_date, service_type, service_description, customer_id, status) values('" + x + "','" + DropDownList1.SelectedValue + "','" + TextBox1.Text + "','" + customer_id + "','" + default_book_status + "')";
                 SqlCommand cmd = new SqlCommand(query, con);
                 con.Open();
                 int results = cmd.ExecuteNonQuery();
                 con.Close();
                 if (results >= 1)
                 {
                     Label1.Text = "Data Saved ! You can View your booked Services in My Services Tab !";
                 }
                 else
                 {
                     Label1.Text = "Something Went Wrong";
                 }
             }
             else
             {
                 Label1.Text = "Please Select a Date After Today !";
             }




         } */
    }
}