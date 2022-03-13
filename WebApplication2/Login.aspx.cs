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
using System.Security.Cryptography;


namespace WebApplication2
{
    public partial class Login : System.Web.UI.Page
    {
        public static string GlobalUserName { get; set; }
        
        protected void Page_Load(object sender, EventArgs e)
        {
        }


        protected void Button1_Click1(object sender, EventArgs e)
        {
            UserClass user1 = new UserClass();


            if (CheckAdmin(this.email.Text, this.pass.Text))
            {
                Session["Type"] = "admin";
                Session["email"] = this.email.Text;
                Response.Redirect("~/AdminPage.aspx");
            }
            else
            {
                if (user1.UserExist(this.email.Text, this.pass.Text))
                {
                    Session["Type"] = "user";
                    Session["user"] = user1.UserDetails(this.email.Text);
                    
                    Session["email"] = this.email.Text;
                    Response.Redirect("~/3d-printer-main-page/Default.aspx");

                }
                else
                {

                    this.Label1.Visible = true;
                }
            }
        }


        public bool CheckAdmin(string userEmail, string userPassword)
        {
            DataSet ds = new DataSet();
            ds.ReadXml(HttpContext.Current.Server.MapPath("~/XMLLoginFile.xml"));
            DataTable dt = ds.Tables[0];
            if (dt != null)
                if (dt.Rows.Count > 0)
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        if (dt.Rows[i]["email"].ToString() == userEmail && dt.Rows[i]["password"].ToString() == userPassword)
                            return true;
                    }
            return false;
        }
    }
    
}