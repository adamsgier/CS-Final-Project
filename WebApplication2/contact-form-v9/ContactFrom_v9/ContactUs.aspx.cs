using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string sqlstr = "Insert into [ContactUs] ([Name],[Email],[Message])";
            sqlstr += " values ('" + this.TextBox1.Text + "','" + this.TextBox2.Text + "','" + this.TextBox3.Text + "')";
            DBFunctions.ChangeTable(sqlstr, "UserDatabase.mdb");
            Label1.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/3d-printer-main-page/Default.aspx");
        }
    }
}