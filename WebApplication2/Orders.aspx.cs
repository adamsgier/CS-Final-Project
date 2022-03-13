using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Orders : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Type"] != "user")
                Response.Redirect("~/Login.aspx");
            if (!IsPostBack)
            {
                string userSqlStr = "select * from [PurchasedProducts] where [Email]= '" + Session["email"].ToString() + "'";
                DataTable dt = DBFunctions.SelectFromTable(userSqlStr, "UserDatabase.mdb");
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label label1 = (Label)GridView1.Rows[e.RowIndex].FindControl("Label1");
            string PID = label1.Text;
            Products.DeleteOrderById(PID, Session["email"].ToString());
            DataTable dt = Products.GetAllOrders();
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}