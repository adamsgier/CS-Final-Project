using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class AdminPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Type"] != "admin")
                Response.Redirect("~/Login.aspx");
            if (!IsPostBack)
            {
                DataTable dt = UserClass.GetAllUsers();
                GridView2.DataSource = dt;
                GridView2.DataBind();
                DataTable dt2 = Products.GetAllProducts();
                GridView3.DataSource = dt2;
                GridView3.DataBind();
            }
        }

        protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label label1 = (Label)GridView2.Rows[e.RowIndex].FindControl("Label1");
            string UserEmail = label1.Text;
            UserClass.DeleteUserByEmail(UserEmail);
            DataTable dt = UserClass.GetAllUsers();
            GridView2.DataSource = dt;
            GridView2.DataBind();
            
        }

        protected void GridView2_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView2.EditIndex = e.NewEditIndex;
            DataTable dt = UserClass.GetAllUsers();
            GridView2.DataSource = dt;
            GridView2.DataBind();
        }

        protected void GridView2_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView2.EditIndex = -1;
            DataTable dt = UserClass.GetAllUsers();
            GridView2.DataSource = dt;
            GridView2.DataBind();
        }

        protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }

        protected void GridView2_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string Email = ((TextBox)GridView2.Rows[e.RowIndex].FindControl("TextBox1")).Text;
            string Password = ((TextBox)GridView2.Rows[e.RowIndex].FindControl("TextBox2")).Text;
            string FirstName = ((TextBox)GridView2.Rows[e.RowIndex].FindControl("TextBox3")).Text;
            string LastName = ((TextBox)GridView2.Rows[e.RowIndex].FindControl("TextBox4")).Text;
            string City = ((TextBox)GridView2.Rows[e.RowIndex].FindControl("TextBox5")).Text;
            string Gender = ((TextBox)GridView2.Rows[e.RowIndex].FindControl("TextBox6")).Text;
            string SecurityQuestion = ((TextBox)GridView2.Rows[e.RowIndex].FindControl("TextBox7")).Text;
            string SecurityAnswer = ((TextBox)GridView2.Rows[e.RowIndex].FindControl("TextBox8")).Text;
            UserClass.UpdatePlayerData(Email, Password, FirstName, LastName, City, Gender, SecurityQuestion, SecurityAnswer);
            GridView2.EditIndex = -1;
            DataTable dt = UserClass.GetAllUsers();
            GridView2.DataSource = dt;
            GridView2.DataBind();
        }

        protected void GridView3_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView3.EditIndex = -1;
            DataTable dt = Products.GetAllProducts();
            GridView3.DataSource = dt;
            GridView3.DataBind();
        }

        protected void GridView3_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label label1 = (Label)GridView3.Rows[e.RowIndex].FindControl("Label18");
            string Id = label1.Text;
            Products.DeleteProduuctById(Id);
            DataTable dt = Products.GetAllProducts();
            GridView3.DataSource = dt;
            GridView3.DataBind();
        }

        protected void GridView3_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView3.EditIndex = e.NewEditIndex;
            DataTable dt = Products.GetAllProducts();
            GridView3.DataSource = dt;
            GridView3.DataBind();
        }

        protected void GridView3_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string ID = ((Label)GridView3.Rows[e.RowIndex].FindControl("Label9")).Text;
            string Brand = ((TextBox)GridView3.Rows[e.RowIndex].FindControl("TextBox9")).Text;
            string ProductName = ((TextBox)GridView3.Rows[e.RowIndex].FindControl("TextBox10")).Text;
            string Price = ((TextBox)GridView3.Rows[e.RowIndex].FindControl("TextBox11")).Text;
            string Picture = ((TextBox)GridView3.Rows[e.RowIndex].FindControl("TextBox12")).Text;
            string Description = ((TextBox)GridView3.Rows[e.RowIndex].FindControl("TextBox13")).Text;
            string Category = ((TextBox)GridView3.Rows[e.RowIndex].FindControl("TextBox14")).Text;
            string Size = ((TextBox)GridView3.Rows[e.RowIndex].FindControl("TextBox15")).Text;
            string Quantity = ((TextBox)GridView3.Rows[e.RowIndex].FindControl("TextBox16")).Text;
            string Picture2 = ((TextBox)GridView3.Rows[e.RowIndex].FindControl("TextBox17")).Text;
            string Picture3 = ((TextBox)GridView3.Rows[e.RowIndex].FindControl("TextBox18")).Text;
            string PurchaseCount = ((TextBox)GridView3.Rows[e.RowIndex].FindControl("TextBox19")).Text;
            Products.UpdateProductData(ID, Brand, ProductName, Price, Picture, Description, Category, Size, Quantity, Picture2, Picture3, PurchaseCount);
            GridView3.EditIndex = -1;
            DataTable dt = Products.GetAllProducts();
            GridView3.DataSource = dt;
            GridView3.DataBind();
        }

        protected void GridView3_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string userSqlStr = "select DISTINCT [Brand] from [Products] where [Category]='" + DropDownList1.SelectedValue + "'";
            DataTable dt = DBFunctions.SelectFromTable(userSqlStr, "UserDatabase.mdb");
            string userSqlStr1 = "select * from [Products] where [Category]='" + DropDownList1.SelectedValue + "'";
            DataTable dt1 = DBFunctions.SelectFromTable(userSqlStr1, "UserDatabase.mdb");
            GridView3.DataSource = dt1;
            GridView3.DataBind();
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("Brand");
            for (int i = 0; i < dt.Rows.Count; i++)
                DropDownList2.Items.Add(dt.Rows[i][0].ToString());
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            string userSqlStr = "select DISTINCT [Price] from [Products] where [Category]='" + DropDownList1.SelectedValue + "' and [Brand]='" + DropDownList2.SelectedValue + "'";
            DataTable dt = DBFunctions.SelectFromTable(userSqlStr, "UserDatabase.mdb");
            string userSqlStr1 = "select * from [Products] where [Category]='" + DropDownList1.SelectedValue + "' and [Brand]='" + DropDownList2.SelectedValue + "'";
            DataTable dt1 = DBFunctions.SelectFromTable(userSqlStr1, "UserDatabase.mdb");
            GridView3.DataSource = dt1;
            GridView3.DataBind();
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            DropDownList1.ClearSelection();
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("Brand");
            DataTable dt2 = Products.GetAllProducts();
            GridView3.DataSource = dt2;
            GridView3.DataBind();
        }
    }
}