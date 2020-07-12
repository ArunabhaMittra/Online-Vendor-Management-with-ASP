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
    public partial class Customer_AddToWallet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label4.Text = Session["customer_name"].ToString();
            Label6.Text = "<img src=\"Images/loadng2.gif\" width=\"300px\" height=\"110px\" />";
        }

        protected void OnSubmit(object sender, EventArgs e)
        {
            string name = Session["customer_name"].ToString();
            string cust_id = Session["customer_id"].ToString();
            string acc_no = TextBox1.Text.Trim();
            string card_type = DropDownList1.SelectedValue.Trim();
            string x = TextBox2.Text;
            string cvv_no = TextBox3.Text.Trim();
            string pin = TextBox4.Text.Trim();
            DateTime selected_date = DateTime.ParseExact(x, "yyyy-MM-dd", null);
            string exp_date = selected_date.ToString("dd-MM-yyyy");

            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select * from [card_details] where customer_id='" + cust_id + "'";
            cmd.Connection = con;
            SqlDataReader rd = cmd.ExecuteReader();
            string db_cardno = "", db_cid = "", db_type = "", db_date = "", db_cvv = "", db_pin = ""; 
            if (rd.HasRows)
            {
                while (rd.Read())
                {
                    db_cardno = rd[0].ToString();
                    db_cid = rd[1].ToString();
                    db_type = rd[3].ToString();
                    db_date = rd[4].ToString();
                    db_cvv = rd[5].ToString();
                    db_pin = rd[6].ToString();

                }
            }
            else
            {
                Label5.Text = "Your Card Has not been Added Yet !";
            }
            con.Close();

            int flag = 0;
            string bal = "";

            if ( acc_no == db_cardno)
            {
                if(card_type == db_type)
                {
                    if(db_date.Contains(exp_date) == true)
                    {
                        if(cvv_no == db_cvv)
                        {
                            if(pin == db_pin)
                            {
                                //Label5.Text = "SUCCESS"; 
                                flag = 1;
                            }
                            else
                            {
                                Label5.Text = "card pin wrong";
                                Label6.Text = "<img src=\"Images/warning.gif\" width=\"100px\" height=\"100px\" />";
                            }
                        }
                        else
                        {
                            Label5.Text = "card cvv wrong";
                            Label6.Text = "<img src=\"Images/warning.gif\" width=\"100px\" height=\"100px\" />";
                        }
                    }
                    else
                    {
                        Label5.Text = "card date wrong ";
                        Label6.Text = "<img src=\"Images/warning.gif\" width=\"100px\" height=\"100px\" />";
                    }

                }
                else
                {
                    Label5.Text = "card type wrong";
                    Label6.Text = "<img src=\"Images/warning.gif\" width=\"100px\" height=\"100px\" />";
                }

            }
            else
            {
                Label5.Text = "card number wrong";
                Label6.Text = "<img src=\"Images/warning.gif\" width=\"100px\" height=\"100px\" />";
            }
            int balance_int, amt_int;

            if (flag == 1)
            {
                string cs2 = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlConnection con2 = new SqlConnection(cs2);
                con2.Open();
                SqlCommand cmd2 = new SqlCommand();
                cmd2.CommandText = "select credit_amount from [customer] where customer_id='" + Session["customer_id"].ToString() + "'";
                cmd2.Connection = con2;
                SqlDataReader rd2 = cmd2.ExecuteReader();

                

                if (rd2.HasRows)
                {
                    while (rd2.Read())
                    {
                        string balance = rd2[0].ToString();
                        string amt = TextBox5.Text;
                        balance_int = Convert.ToInt32(balance);
                        amt_int = Convert.ToInt32(amt);
                        balance_int += amt_int;
                        //Label5.Text = balance_int.ToString();
                        bal = balance_int.ToString();
                    }
                }
                con2.Close();

                string cs3 = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlConnection con3 = new SqlConnection(cs3);
                con3.Open();
                //SqlCommand cmd3 = new SqlCommand();
                string qr = "update customer set credit_amount='"+ bal +"' where customer_id='" + Session["customer_id"].ToString() + "'";
                SqlCommand cmd3 = new SqlCommand(qr, con3);
                int x1 = cmd3.ExecuteNonQuery();
                if ( x1 > 0)
                {
                    Session["customer_credit"] = bal;
                    Label6.Text = "<img src=\"Images/success.gif\" width=\"210px\" height=\"130px\" />";
                    Label5.Text = "Amount Added!";
                }
                else
                {
                    Label5.Text = "Amount Could not be Added!";
                    Label6.Text = "<img src=\"Images/warning.gif\" width=\"100px\" height=\"100px\" />";
                }





            }// end of if flag block



                    //Label5.Text = x;

        }
    }
}