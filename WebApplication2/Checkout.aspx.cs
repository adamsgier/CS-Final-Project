using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Checkout : System.Web.UI.Page
    {
        protected string price;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Type"] != "user")
                Response.Redirect("~/Login.aspx");

            Label1.Visible = false;
            Label6.Visible = false;


        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            double total = 0;

            foreach (GridViewRow row in GridView1.Rows)
            {

                total = total + double.Parse(row.Cells[4].Text) * double.Parse(row.Cells[5].Text);

            }
            Session["total"] = total.ToString();
            
            Response.Redirect("~/Payment.aspx");
        }


        protected void Button2_Click(object sender, EventArgs e)
        {
            double total = 0;

            foreach (GridViewRow row in GridView1.Rows)
            {

                total = total + double.Parse(row.Cells[4].Text) * double.Parse(row.Cells[5].Text);

            }
            Label1.Text = total.ToString();
            price = total.ToString();
            Label1.Visible = true;
            Label6.Visible = true;
        }

        protected void PayPal_Click(object sender, EventArgs e)
        {
            double total = 0;
            foreach (GridViewRow row in GridView1.Rows)
            {

                total = total + double.Parse(row.Cells[4].Text) * double.Parse(row.Cells[5].Text);

            }
            Label1.Text = total.ToString();
            Session["total"] = total.ToString();
            Response.Redirect("~/paypal.aspx");
        }
    }
}