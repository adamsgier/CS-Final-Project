using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class WishList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Type"] != "user")
                Response.Redirect("~/Login.aspx");
            if (!IsPostBack)
            {
                

                string WishListSqlStr = "SELECT DISTINCT Products.Num,Products.Brand,Products.ProductName,Products.Picture,Products.Category,Products.Price FROM [WishList] INNER JOIN [Products] ON WishList.ID = Products.Num Where WishList.Email='" + Session["email"].ToString()+"'";
                DataTable dt = DBFunctions.SelectFromTable(WishListSqlStr, "UserDatabase.mdb");
                DataList1.DataSource = dt;
                DataList1.DataBind();
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string userSqlStr = "SELECT DISTINCT Products.Num,Products.Brand,Products.ProductName,Products.Picture,Products.Category,Products.Price FROM [WishList] INNER JOIN [Products] ON WishList.ID = Products.Num where [Category]='" + DropDownList1.SelectedValue + "'";
            DataTable dt = DBFunctions.SelectFromTable(userSqlStr, "UserDatabase.mdb");
            DropDownList2.Items.Clear();
            DropDownList3.Items.Clear();
            for (int i = 0; i < dt.Rows.Count; i++)
                DropDownList2.Items.Add(dt.Rows[i][1].ToString());
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            string userSqlStr = "SELECT DISTINCT Products.Num,Products.Brand,Products.ProductName,Products.Picture,Products.Category,Products.Price FROM [WishList] INNER JOIN [Products] ON WishList.ID = Products.Num where [Category]='" + DropDownList1.SelectedValue + "' and [Brand]='" + DropDownList2.SelectedValue + "'";
            DataTable dt = DBFunctions.SelectFromTable(userSqlStr, "UserDatabase.mdb");
            DropDownList3.Items.Clear();
            DropDownList3.Items.Add("");
            for (int i = 0; i < dt.Rows.Count; i++)
                DropDownList3.Items.Add(dt.Rows[i][5].ToString());
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s = DropDownList3.SelectedValue;
            string userSqlStr;
            if (DropDownList3.SelectedValue == "" && DropDownList2.SelectedValue != "")
                userSqlStr = "SELECT Products.Num,Products.Brand,Products.ProductName,Products.Picture,Products.Category,Products.Price FROM [WishList] INNER JOIN [Products] ON WishList.ID = Products.Num where [Category]='" + DropDownList1.SelectedValue + "' and [Brand]='" + DropDownList2.SelectedValue + "'";
            else if (DropDownList2.SelectedValue == "")
                userSqlStr = "SELECT Products.Num,Products.Brand,Products.ProductName,Products.Picture,Products.Category,Products.Price FROM [WishList] INNER JOIN [Products] ON WishList.ID = Products.Num where [Category]='" + DropDownList1.SelectedValue + "'";
            else
                userSqlStr = "SELECT Products.Num,Products.Brand,Products.ProductName,Products.Picture,Products.Category,Products.Price FROM [WishList] INNER JOIN [Products] ON WishList.ID = Products.Num where [Category]='" + DropDownList1.SelectedValue + "' and [Brand]='" + DropDownList2.SelectedValue + "'" + " and [Price]=" + s;
            DataTable dt = DBFunctions.SelectFromTable(userSqlStr, "UserDatabase.mdb");
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName.Equals("LearnMore"))
            {

                int index = e.Item.ItemIndex;

                Label lbl1 = (Label)DataList1.Items[index].FindControl("Label3");
                string prodid = lbl1.Text;

                Response.Redirect("LearnMore.aspx?ProductID=" + prodid);
            }
            if (e.CommandName.Equals("Delete"))
            {
                int index = e.Item.ItemIndex;
                Label lbl1 = (Label)DataList1.Items[index].FindControl("Label3");
                string prodid = lbl1.Text;
                string SqlStr = "Delete from [WishList] where [Email]='"+ Session["email"].ToString() + "' and [ID]='" + prodid + "'";
                DBFunctions.ChangeTable(SqlStr, "UserDatabase.mdb");
                string WishListSqlStr = "SELECT Products.Num,Products.Brand,Products.ProductName,Products.Picture,Products.Category,Products.Price FROM [WishList] INNER JOIN [Products] ON WishList.ID = Products.Num";
                DataTable dt = DBFunctions.SelectFromTable(WishListSqlStr, "UserDatabase.mdb");
                DataList1.DataSource = dt;
                DataList1.DataBind();
            }
        }
    }
}