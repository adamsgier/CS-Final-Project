using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;


    public class Products
    {
    
    public static DataTable GetAllProducts()
    {
        DataTable dt;
        string File1 = "UserDatabase.mdb";
        string SQLStr = "select * from [Products] ";
        dt = DBFunctions.SelectFromTable(SQLStr, File1);
        return dt;
    }
    public static DataTable GetAllOrdersByEmail(string email)
    {
        DataTable dt;
        string File1 = "UserDatabase.mdb";
        string SQLStr = "select * from [ShoppingCartTbl] where [Email]= '" + email+ "'";
        dt = DBFunctions.SelectFromTable(SQLStr, File1);
        return dt;
    }
    public static DataTable GetAllOrders()
    {
        DataTable dt;
        string File1 = "UserDatabase.mdb";
        string SQLStr = "select * from [PurchasedProducts] ";
        dt = DBFunctions.SelectFromTable(SQLStr, File1);
        return dt;
    }
    public static void DeleteOrderById(string id,string email)
    {
        string userSqlStr = "Delete  from [PurchasedProducts] where [productId]='" + id + "' and [email]='" + email + "'";
        DBFunctions.ChangeTable(userSqlStr, "UserDatabase.mdb");

    }
    public static void DeleteProduuctById(string id)
    {
        string userSqlStr = "Delete  from [Products] where [Num]='" + id + "'";
        DBFunctions.ChangeTable(userSqlStr, "UserDatabase.mdb");

    }
    public static void UpdateProductData(string Id, string Brand, string ProductName, string Price, string Picture, string Description, string Category, string Size, string Quantity, string Picture2, string Picture3, string PurchaseCount)
    {
        string File1 = "UserDatabase.mdb";
        string SQLStr = "update [Products] set [Brand]='{1}',[ProductName]='{2}',[Price]='{3}', [Picture]='{4}',[Description]='{5}',[Category]='{6}',[Size]='{7}',[Quantity]='{8}',[Picture2]='{9}',[Picture3]='{10}',[PurchaseCount]='{11}' where [Num]='{0}'";
        SQLStr = string.Format(SQLStr, Id,  Brand,  ProductName,  Price,  Picture,  Description,  Category,  Size,  Quantity,  Picture2,  Picture3,  PurchaseCount);
        DBFunctions.ChangeTable(SQLStr, File1);
    }
    }
