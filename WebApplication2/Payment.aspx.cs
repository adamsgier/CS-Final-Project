using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Type"] != "user")
                Response.Redirect("~/Login.aspx");
            Label2.Text = Session["total"].ToString();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            VisaWS v1 = new VisaWS();
            if (v1.ValidVisaDetails(int.Parse(this.visaNoBox.Text), int.Parse(this.accNoBox.Text), this.DropDownList1.SelectedValue, this.Label7.Text))
            {
                this.Label8.Text = "Your credit card is valid !!";
                if (v1.CheckVisaBalance(int.Parse(this.visaNoBox.Text), int.Parse(this.accNoBox.Text), this.DropDownList1.SelectedValue, double.Parse(this.Label2.Text)))
                {
                    
                    v1.UpdateVisaAccount(int.Parse(this.visaNoBox.Text), int.Parse(this.accNoBox.Text), this.DropDownList1.SelectedValue, double.Parse(this.Label2.Text));
                    string userSqlStr = "INSERT INTO [PurchasedProducts] SELECT ShoppingCartTbl.productId,Products.ProductName,Products.Price,ShoppingCartTbl.Quantity,ShoppingCartTbl.Email FROM [ShoppingCartTbl] INNER JOIN [Products] ON ShoppingCartTbl.productId = Products.Num Where ShoppingCartTbl.Email = '" + Session["email"].ToString() + "'";
                    DBFunctions.ChangeTable(userSqlStr, "UserDatabase.mdb");
                    string SQLStr = "update [PurchasedProducts] set [PurchaseDate]='{1}' where [userEmail]='{0}' and [productId]='{2}'";
                    SQLStr = string.Format(SQLStr, Session["email"].ToString(),DateTime.Now.ToString(),1);
                    DBFunctions.ChangeTable(SQLStr, "UserDatabase.mdb");
                    this.Label9.Text = "  You have paied !!";


                }
                else
                    this.Label9.Text = " No Balance !!";
            }
            else
                this.Label8.Text = "The credit card isn't valid !!";
        }



        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Checkout.aspx");
        }
        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            this.Label7.Text = this.Calendar1.SelectedDate.ToShortDateString().ToString();
        }
        protected void ChangePassword1_ChangedPassword(object sender, EventArgs e)
        {

        }
    }

}
