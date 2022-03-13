using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

namespace WebApplication2
{
    public partial class Register : System.Web.UI.Page
    {

        
        protected void Page_Load(object sender, EventArgs e)
        {
            this.Label4.Visible = false;


        }


        public bool UserExist()
        {
            string SqlStr = "select  [userEmail] from [Customer] where [userEmail]='" + this.Email1.Text + "'";
            DataTable dt = DBFunctions.SelectFromTable(SqlStr, "UserDatabase.mdb");
            if (dt.Rows.Count > 0)
                return true;
            return false;
        }

        
        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login.aspx");
        }
        protected void AddButton1_Click1(object sender, EventArgs e)
        {
            if (UserExist())
            {
                Label4.Text = " user Is Exist ";
                Label4.Visible = true;

            }
            else
            {

                App_Scripts.CustomPasswordHash myfeed = new App_Scripts.CustomPasswordHash();
                string password = myfeed.HashPassword(this.password.Text);
                for (int i = 0; i < 100; i++)
                {
                    password = myfeed.HashPassword(password);
                }
                string sqlstr = "Insert into [Customer] ([userEmail], [userPassword], [userFirstName],[userLastName],[city],[Gender],[PasswordQuestion],[PasswordAnswer],[userType]) values ('" + this.Email1.Text + "','" + password + "','" + this.Firstname.Text + "','" + this.userlastname.Text + "','" + this.DropDownList4.SelectedValue + "','" + this.DropDownList3.SelectedValue + "','" + this.DropDownList2.SelectedValue + "','" + this.passwordanswer.Text + "','" + "user" + "')";
                DBFunctions.ChangeTable(sqlstr, "UserDatabase.mdb");
                this.Label4.Text = "  Thank you for registering  ";
                this.Label4.Visible = true;



            }




        }
    }

}