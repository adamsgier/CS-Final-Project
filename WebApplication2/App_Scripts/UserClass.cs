using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.OleDb;

public class UserClass
{

    private string userEmail;
    private string userPassword;
    private string userFirstName;
    private string userLastName;
    private string city;
    private string gender;
    private DateTime birthDate;
    private string sq;
    private string answer;
    private string userType;



    public UserClass()

    {
        this.userType = "Guest";
    }


    public string UserEmail
    {
        get { return userEmail; }
        set { this.userEmail = value; }
    }


    public string UserPassword
    {
        get { return userPassword; }
        set { this.userPassword = value; }
    }


    public string UserFirstName
    {
        get { return userFirstName; }
        set { this.userFirstName = value; }
    }


    public string UserLastName
    {
        get { return userLastName; }
        set { this.userLastName = value; }
    }


    public string City
    {
        get { return city; }
        set { this.city = value; }
    }


    public string Gender
    {
        get { return gender; }
        set { this.gender = value; }
    }

    public DateTime BirthDate
    {
        set { this.birthDate = value; }
        get { return this.birthDate; }
    }

    public string Sq
    {
        get { return sq; }
        set { this.sq = value; }
    }
    public string Answer
    {
        get { return answer; }
        set { this.answer = value; }
    }

    public string UserType
    {
        set { this.userType = value; }
        get { return this.userType; }
    }


    // =========================================================================   
    public bool UserExist(string userEmail, string userPassword)
    {
        WebApplication2.App_Scripts.CustomPasswordHash myfeed = new WebApplication2.App_Scripts.CustomPasswordHash();
        string password = myfeed.HashPassword(userPassword);
        for(int i = 0; i <100; i++)
        {
            password = myfeed.HashPassword(password);
        }
        string userSqlStr = "select  [userEmail] from [Customer] where [userEmail]='" +
            userEmail + "' and [userPassword]='" + password + "'";
        DataTable dt = DBFunctions.SelectFromTable(userSqlStr, "UserDatabase.mdb");
        if (dt.Rows.Count > 0)
            return true;
        return false;
    }

    public string UserDetails(string userEmail)
    {
        string userSqlStr = "select  [UserFirstName] , [UserLastName] from [Customer] where [userEmail]='" + userEmail + "'";
        DataTable dt = DBFunctions.SelectFromTable(userSqlStr, "UserDatabase.mdb");
        if (dt.Rows.Count > 0)
            return dt.Rows[0][0].ToString() + " " + dt.Rows[0][1].ToString();
        return " ";

    }

    public bool CheckAdmin2(string userEmail, string userPassword)
    {
        string userSqlStr = "select  * from [Customer] where [userEmail]='" + userEmail + "' and [userPassword]='" + userPassword + "' and [userTybe]='Admin' ";
        DataTable dt = DBFunctions.SelectFromTable(userSqlStr, "UserDatabase.mdb");

        if (dt.Rows.Count > 0)
            return true;
        else
            return false;
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

    public bool UserExistSignUp()
    {
        string userSqlStr = "select  [userEmail] from [Customer] where [userEmail]='" + this.userEmail + "'";
        DataTable dt = DBFunctions.SelectFromTable(userSqlStr, "UserDatabase.mdb");
        if (dt.Rows.Count > 0)
            return true;
        return false;
    }

    public void UpdatePassword(string newPassword)
    {

        string userSqlStr = "Update [Customer] Set [userPassword]='" + newPassword + "' where [userEmail]='" + this.userEmail + "'";
        DBFunctions.ChangeTable(userSqlStr, "UserDatabase.mdb");


    }

    public void DeleteUser()
    {
        string userSqlStr = "Delete  from [Customer] where [userEmail]='" + this.userEmail + "'";
        DBFunctions.ChangeTable(userSqlStr, "UserDatabase.mdb");

    }
    public static void DeleteUserByEmail(string email)
    {
        string userSqlStr = "Delete  from [Customer] where [userEmail]='" + email + "'";
        DBFunctions.ChangeTable(userSqlStr, "UserDatabase.mdb");

    }

    public void InsertNewUser()
    {

        //  string sqlstr = "Insert into [Customer] ([userEmail], [userPassword], [userFirstName],[Gender],[State],[eMailAddress],[PasswordQuestion],[PasswordAnswer],[userType],[Credit])";
        //   sqlstr +="values ('" + this.UserFirstName + "','" + this.UserLastName + "','" + this.UserPassword + "','" + this.Gender + "','" + this.State + "','" + this.userEmailId + "','" + this.sq + "','" + this.answer + "','"+this.userType+"','"+this.credit+"')";
        //   DBFunctions.ChangeTable(sqlstr, "UserDatabase.mdb");
    }
    public static DataTable GetAllUsers()
    {
        DataTable dt;
        string File1 = "UserDatabase.mdb";
        string SQLStr = "select * from [Customer] ";
        dt = DBFunctions.SelectFromTable(SQLStr, File1);
        return dt;
    }
    public void UpdateFname(string newFname)
    {

        string userSqlStr = "Update [Customer] Set [userFirstName]='" + newFname + "'";
        DBFunctions.ChangeTable(userSqlStr, "UserDatabase.mdb");


    }
    public void UpdateLname(string newLname)
    {

        string userSqlStr = "Update [Customer] Set [userLastName]='" + newLname + "'";
        DBFunctions.ChangeTable(userSqlStr, "UserDatabase.mdb");


    }

    public void UpdateGender(string newGender)
    {

        string userSqlStr = "Update [Customer] Set [Gender]='" + newGender + "'";
        DBFunctions.ChangeTable(userSqlStr, "UserDatabase.mdb");


    }

    public void UpdateSequrityQ(string newSQ)
    {

        string userSqlStr = "Update [Customer] Set [PasswordQuestion]='" + newSQ + "'";
        DBFunctions.ChangeTable(userSqlStr, "UserDatabase.mdb");


    }

    public void UpdateAnswer(string newAnswer)
    {

        string userSqlStr = "Update [Customer] Set [PasswordAnswer]='" + newAnswer + "'";
        DBFunctions.ChangeTable(userSqlStr, "UserDatabase.mdb");


    }

    public void UpdateCountry(string newCountry)
    {

        string userSqlStr = "Update [Customer] Set [State]='" + newCountry + "'";
        DBFunctions.ChangeTable(userSqlStr, "UserDatabase.mdb");


    }
    public static void DeleteContactUs(int id)
    {
        string userSqlStr = "Delete  from [ContacUs] where [ID]=" + id ;
        DBFunctions.ChangeTable(userSqlStr, "UserDatabase.mdb");
    }
    public static void UpdatePlayerData(string Email, string Password, string FirstName, string LastName, string City, string Gender, string SecurityQuestion, string SequrityPassword)
    {
        string File1 = "UserDatabase.mdb";
        string SQLStr = "update [Customer] set [userPassword]='{1}',[userFirstName]='{2}',[userLastName]='{3}', [city]='{4}',[Gender]='{5}',[PasswordQuestion]='{6}',[PasswordAnswer]='{7}' where [userEmail]='{0}'";
        SQLStr = string.Format(SQLStr,  Email,  Password,  FirstName,  LastName,  City,  Gender,  SecurityQuestion,  SequrityPassword);
        DBFunctions.ChangeTable(SQLStr, File1);
    }
    //--------------------------------------------------------------------------------------


}