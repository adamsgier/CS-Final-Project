using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class LearnMore : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Type"] != "user")
                Response.Redirect("~/Login.aspx");

            if (!IsPostBack)
            {
                if(Request.QueryString["ProductID"].ToString() != null)
                {
                    string PID = Request.QueryString["ProductID"].ToString();
                    string userSqlStr = "select * from [Products] where [Num]='" + PID + "'";
                    DataTable dt = DBFunctions.SelectFromTable(userSqlStr, "UserDatabase.mdb");
                    Image1.ImageUrl = dt.Rows[0][4].ToString();
                    Label1.Text =  dt.Rows[0][6].ToString();
                    Label2.Text = dt.Rows[0][1].ToString()+" - " + dt.Rows[0][2].ToString();
                    Label3.Text = dt.Rows[0][5].ToString();
                    Label4.Text = dt.Rows[0][3].ToString();

                }
            }
            string userSqlStr1 = "select * from [WishList] where [Email]='" + Session["email"].ToString() + "' and [ID]='" + Request.QueryString["ProductID"].ToString() + "'";
            DataTable dt1 = DBFunctions.SelectFromTable(userSqlStr1, "UserDatabase.mdb");
            if (Request.QueryString["ProductID"].ToString() != null)
            {
                if (dt1.Rows.Count > 0)
                {
                    ImageButton1.ImageUrl = "product-page/images/Wishlist-liked.png";
                    ImageButton1.Enabled = false;
                }
                else
                {
                    ImageButton1.ImageUrl = "product-page/images/Wishlist-shallow.png";
                }
                string reviews = "<ul>";
                string ReviewSqlStr = "select * from [Reviews] where [ProductId]='" + Request.QueryString["ProductID"].ToString() + "'";
                DataTable rdt = DBFunctions.SelectFromTable(ReviewSqlStr, "UserDatabase.mdb");
                if (rdt.Rows.Count > 0)
                {
                    for (int i = 0; i < rdt.Rows.Count; i++)
                    {
                        reviews += "<li>" + rdt.Rows[i][2].ToString() + " - " + rdt.Rows[i][3].ToString() + "</li>";
                    }
                    reviews += "</ul>";
                }
                else
                {
                    reviews = "<h4>No reviews yet. Be the first!</h4>";
                }

                Label5.Text = reviews;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string productID = Request.QueryString["ProductID"].ToString(); 
            string productName = Label2.Text;
            string price = Label4.Text;
            string quantity = TextBox1.Text;
            string sqlstr = "Insert into [ShoppingCartTbl] ([Email], [productID],[productName], [Price],[Quantity])";
            sqlstr += "values ('" + Session["email"].ToString() + "','" + productID + "','" + productName + "','" + price + "','" + quantity + "')";
            DBFunctions.ChangeTable(sqlstr, "UserDatabase.mdb");
            Response.Redirect("~/Checkout.aspx");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            string productID = Request.QueryString["ProductID"].ToString();

            string sqlstr = "Insert into [WishList] ([Email], [ID])";
            sqlstr += "values ('" + Session["email"].ToString() + "','" + productID + "')";
            DBFunctions.ChangeTable(sqlstr, "UserDatabase.mdb");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string review = TextBox2.Text;
            string sqlstr = "Insert into [Reviews] ([Email], [ProductId],[Review], [Date])";
            sqlstr += "values ('" + Session["email"].ToString() + "','" + Request.QueryString["ProductID"].ToString() + "','" + review +"','" +  DateTime.Now.ToString() + "')";
            DBFunctions.ChangeTable(sqlstr, "UserDatabase.mdb");
        }
    }
}