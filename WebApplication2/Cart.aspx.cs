using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Security;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
namespace WebApplication2
{
    public partial class Cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Type"] != "user")
                Response.Redirect("~/Login.aspx");
            emailBox.Text = Session["email"].ToString();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                int index = GridView2.SelectedIndex;
                string productID = GridView2.SelectedRow.Cells[0].Text;
                string productName = GridView2.SelectedRow.Cells[1].Text;
                string price = GridView2.SelectedRow.Cells[2].Text;
                TextBox tb = (TextBox)GridView2.SelectedRow.Cells[4].FindControl("txtquantity");
                string quantity = tb.Text;

                string sqlstr = "Insert into [ShoppingCartTbl] ([Email], [productID],[productName], [Price],[Quantity])";
                sqlstr += "values ('" + this.emailBox.Text + "','" + productID + "','" + productName + "','" + price + "','" + quantity + "')";
                DBFunctions.ChangeTable(sqlstr, "UserDatabase.mdb");
                GridView2.DataBind();

                Response.Redirect("~/Checkout.aspx");
            }
            catch
            {
                GridView2.SelectedIndex = -1;
                Page.ClientScript.RegisterStartupScript(this.GetType(), "PopupScript", "alert('Please select quantity number');", true); 
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["category"] = this.DropDownList1.SelectedValue;
        }
    }
}