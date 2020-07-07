using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Threading;

namespace Vendor_Management_Site
{
    public partial class CustManageService : System.Web.UI.Page
    {
        StringBuilder service_table = new StringBuilder();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlConnection con = new SqlConnection(cs);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                string cid = Session["customer_id"].ToString();
                cmd.CommandText = "select * from [service] where customer_id='" + cid + "'" ;
                cmd.Connection = con;
                SqlDataReader rd = cmd.ExecuteReader();
                service_table.Append("<table border='1'>");
                service_table.Append("<tr><th>Booked On</th><th>Completion Date</th><th>Type</th><th>Description</th><th>Charge</th><th>Status</th>");
                service_table.Append("</tr>");

                if(rd.HasRows)
                {
                    while(rd.Read())
                    {
                        service_table.Append("<tr>");
                        //string x = rd[1];
                        service_table.Append("<td>" + rd[1] + "</td>");
                        service_table.Append("<td>" + rd[2] + "</td>");
                        service_table.Append("<td>" + rd[3] + "</td>");
                        service_table.Append("<td>" + rd[4] + "</td>");
                        service_table.Append("<td>" + rd[5] + "</td>");
                        service_table.Append("<td>" + rd[9] + "</td>");
                        service_table.Append("</tr>");
                    }
                }
                service_table.Append("</table.");
                PlaceHolder1.Controls.Add(new Literal { Text = service_table.ToString() });
                rd.Close();
            }
        }
    }
}