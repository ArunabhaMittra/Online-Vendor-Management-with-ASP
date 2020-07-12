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
    public partial class Customer_AddService : System.Web.UI.Page
    {
        string vendor_type = "";
        string charge = "";
        string vid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            string vendor_name = Session["customer_chose_vendor_name"].ToString(); // CHANGE THIS TO VENDOR ID LATER
            vendor_name = vendor_name.Trim();
            cmd.CommandText = "select * from [service_charge] where vendor_name='" + vendor_name + "'";
            cmd.Connection = con;
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.HasRows)
            {
                while (rd.Read())
                {
                    Label4.Text = vendor_name;
                    Label5.Text = DateTime.Now.Date.ToString();
                    // DateTime date2 = date1.AddDays(36); 
                    Label6.Text = DateTime.Now.Date.AddDays(3).ToString();//add 3 days to todays date
                    Label7.Text = rd[3].ToString();
                    vendor_type = rd[3].ToString();
                    Label10.Text = rd[5].ToString();
                    charge = rd[5].ToString();
                    Label8.Text = Session["customer_id"].ToString();
                    Label9.Text = rd[1].ToString();
                    vid = rd[1].ToString();
                }
            }
            else
            {
                Label4.Text = "nothing to display";
                Label7.Text = Session["customer_chose_vendor_name"].ToString();
            }

        }

        protected void OnConfirmBooking(object sender, EventArgs e)
        {
            int paisa = Convert.ToInt32(charge);
            int wallet = Convert.ToInt32(Session["customer_credit"].ToString());

            if (wallet > paisa)
            {

                string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlConnection con = new SqlConnection(cs);
                string customer_id = Session["customer_id"].ToString();
                string default_book_status = "PENDING";
                string description = TextBox1.Text;
                //string Datestring = DateTime.Now.Date.ToString();
                //DateTime selected_date = DateTime.ParseExact(Datestring, "yyyy-MM-dd", null);
                string x = DateTime.Now.Date.ToString("MM-dd-yyyy");
                vendor_type = vendor_type.Trim();
                vid = vid.Trim();
                string query = "insert into service(serv_booking_date, service_type, service_description, service_charge, customer_id, vendor_id, status) values('" + x + "','" + vendor_type + "','" + description + "','" + paisa + "','" + customer_id + "','" + vid + "','" + default_book_status + "')";
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                int results = cmd.ExecuteNonQuery();
                con.Close();
                if (results >= 1)
                {
                    Label11.Text = "Data Saved ! You can View your booked Services in My Services Tab !";
                    // Now deduct the money in the Database
                    wallet = wallet - paisa;
                    string cs3 = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                    SqlConnection con3 = new SqlConnection(cs3);
                    con3.Open();
                    //SqlCommand cmd3 = new SqlCommand();
                    string qr = "update customer set credit_amount='" + wallet + "' where customer_id='" + Session["customer_id"].ToString() + "'";
                    SqlCommand cmd3 = new SqlCommand(qr, con3);
                    int x1 = cmd3.ExecuteNonQuery();
                    if( x1 > 0)
                    {
                        Session["customer_credit"] = wallet;
                        Label11.Text = "Service Booking Successful ! Go to Manage Booking to View Service";
                        CreditToVendor(paisa);
                        CreditToWebsite(paisa);
                    }
                    con3.Close();
                }
                else
                {
                    Label11.Text = "Something Went Wrong";
                }
            }
            else
            {
                Label11.Text = "Insuffcient Funds ! Add Money to your Wallet";
            }



        }

        protected void OnCancelBooking(object sender, EventArgs e)
        {
            Response.Redirect("CustSearchForService.aspx");
        }

        protected void CreditToVendor(int credit_amount)
        {
            // 90 % of the fee PASSED TO VENDOR.

            string vendor_name = Session["customer_chose_vendor_name"].ToString().Trim();
            double paisa = Convert.ToDouble(credit_amount);
            // ======================== MAIN LOGIC ===============================
            paisa = 0.90 * paisa;
            // ===================================================================
            // ================ RETRIEVE OLD AMOUNT FORM DATABASE=================
            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select * from [vendor] where vendor_name='" + vendor_name + "'";
            cmd.Connection = con;
            SqlDataReader rdnew = cmd.ExecuteReader();
            if (rdnew.HasRows)
            {
                while (rdnew.Read())
                {
                    string old_str = rdnew[6].ToString();
                    double old_amount = Convert.ToDouble(old_str);
                    //================== ADD TO PREVIOUS BALANCE ================
                    old_amount += paisa; 
                    
                    //============ NOW UPDATE NEW UPDATE TO DATABASE ============
                    string cs3 = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                    SqlConnection con3 = new SqlConnection(cs3);
                    con3.Open();
                                // NOW old_amount CONTAINS THE ADDED AMOUNT
                    string qr = "update vendor set credit_amount='" + old_amount + "' where vendor_name='" + vendor_name + "'";
                    SqlCommand cmd3 = new SqlCommand(qr, con3);
                    int x1 = cmd3.ExecuteNonQuery();
                    con3.Close();


                }
                con.Close();
            }
            else
            {
                con.Close();
            }




        }
        protected void CreditToWebsite(int credit_amount)
        {
            // 10 % of the fee PASSED TO WEBSITE.
            string vendor_name = Session["customer_chose_vendor_name"].ToString().Trim();
            double paisa = Convert.ToDouble(credit_amount);
            string today_date = DateTime.Now.Date.ToString("MM-dd-yyyy");
            // ======================== MAIN LOGIC ===============================
            paisa = 0.10 * paisa;
            // ===================================================================
            // ============= ADD THE AMOUNT INTO COMMISION DATABASE===============
            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            string query = "insert into company_commision(vendor_id, com_amount, credit_date) values('" + vid + "','" + paisa + "','" + today_date + "')";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            int results = cmd.ExecuteNonQuery();
            con.Close();


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
 