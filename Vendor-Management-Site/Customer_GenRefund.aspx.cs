using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Text;
using System.Data;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;
using System.Configuration;
using System.Data.SqlClient;
using System.Threading;


namespace Vendor_Management_Site
{
    public partial class Customer_GenRefund : System.Web.UI.Page
    {
        [Obsolete]
        protected void Page_Load(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            string sid = Session["invoice_sid"].ToString();
            cmd.CommandText = "select * from [service] where service_id='" + sid + "'";
            cmd.Connection = con;
            SqlDataReader rd = cmd.ExecuteReader();
            string vend_id = "";
            string stype = "";
            string service_charge = "";
            if (rd.HasRows)
            {
                while (rd.Read())
                {
                    stype = rd[3].ToString();
                    vend_id = rd[7].ToString();
                    service_charge = rd[5].ToString();


                }
            }
            rd.Close();
            con.Close();
            string cs2 = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con2 = new SqlConnection(cs2);
            con2.Open();
            SqlCommand cmd2 = new SqlCommand();
            cmd2.CommandText = "select * from [vendor] where Vendor_id='" + vend_id + "'";
            cmd2.Connection = con2;
            SqlDataReader rd2 = cmd2.ExecuteReader();
            string vendor_name = "";
            if (rd2.HasRows)
            {
                while (rd2.Read())
                {
                    vendor_name = rd2[1].ToString();
                    


                }
            }
            rd2.Close();
            con2.Close();
            DataTable dt = new DataTable();
            dt.Columns.AddRange(new DataColumn[2] {
                            new DataColumn("asd", typeof(string)),
                            new DataColumn("asd1", typeof(string))});

            dt.Rows.Add("Service ID",sid);
            dt.Rows.Add("Vendor Name", vendor_name);
            dt.Rows.Add("Service Type", stype);
            dt.Rows.Add("Service Charge", service_charge);

            using (StringWriter sw = new StringWriter())
            {
                using (HtmlTextWriter hw = new HtmlTextWriter(sw))
                {
                    StringBuilder sb = new StringBuilder();

                    //Generate Invoice (Bill) Header.
                    sb.Append("<table width='100%' cellspacing='0' cellpadding='2'>");
                    sb.Append("<tr><td align='center' style='background-color: #1818f0' colspan = '2'><b>Invoice Sheet</b></td></tr>");
                    sb.Append("<tr><td colspan = '2'></td></tr>");
                    sb.Append("<tr><td><b>Order No: </b>");
                    sb.Append(sid);
                    sb.Append("</td><td align = 'right'><b>Date: </b>");
                    sb.Append(DateTime.Now);
                    sb.Append(" </td></tr>");
                    sb.Append("<tr><td colspan = '2'><b>Company Name: </b>");
                    sb.Append(vendor_name);
                    sb.Append("</td></tr>");
                    sb.Append("</table>");
                    sb.Append("<br />");

                    //Generate Invoice (Bill) Items Grid.
                    sb.Append("<table border = '1'>");
                    sb.Append("<tr>");
                    foreach (DataColumn column in dt.Columns)
                    {
                        sb.Append("<th style = 'background-color: #D20B0C;color:#ffffff'>");
                        sb.Append(column.ColumnName);
                        sb.Append("</th>");
                    }
                    sb.Append("</tr>");
                    foreach (DataRow row in dt.Rows)
                    {
                        sb.Append("<tr>");
                        foreach (DataColumn column in dt.Columns)
                        {
                            sb.Append("<td>");
                            sb.Append(row[column]);
                            sb.Append("</td>");
                        }
                        sb.Append("</tr>");
                    }
                    sb.Append("</td>");
                    sb.Append("</tr></table>");

                    //Export HTML String as PDF.
                    StringReader sr = new StringReader(sb.ToString());
                    Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 10f, 0f);
                    HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
                    PdfWriter writer = PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
                    pdfDoc.Open();
                    htmlparser.Parse(sr);
                    pdfDoc.Close();
                    Response.ContentType = "application/pdf";
                    Response.AddHeader("content-disposition", "attachment;filename=Invoice_" + sid + ".pdf");
                    Response.Cache.SetCacheability(HttpCacheability.NoCache);
                    Response.Write(pdfDoc);
                    Response.End();
                }
            }






        }
    }
}