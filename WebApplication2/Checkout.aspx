<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="WebApplication2.Checkout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <style type="text/css">
        .auto-style1 {
            color: #FF0000;
            background-color: #FFFFFF;
        }
    </style>


    <div>
    
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="AccessDataSource1" DataKeyNames="id" >
            <Columns>
             <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" 
                    Visible="False" ReadOnly="true" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" 
                    Visible="False" ReadOnly="true" />
                <asp:BoundField DataField="productId" HeaderText="productId" 
                    SortExpression="productId" ReadOnly="true" />
                <asp:BoundField DataField="productName" HeaderText="productName" 
                    SortExpression="productName" ReadOnly="true" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" ReadOnly="true" />
                <asp:BoundField DataField="quantity" HeaderText="quantity" 
                    SortExpression="Quantity" />
                <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/UserDatabase.mdb" 
            SelectCommand="SELECT * FROM [ShoppingCartTbl] WHERE ([Email] = ?)"
            DeleteCommand="Delete From [ShoppingCartTbl] WHERE id=@id" 
            UpdateCommand="Update [ShoppingCartTbl] SET quantity=@quantity WHERE id = @id" >
           
            <SelectParameters>
                <asp:SessionParameter Name="Email" SessionField="Email" Type="String" />
            </SelectParameters>
        </asp:AccessDataSource>
        <br />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Total" Width="136px" />
&nbsp;&nbsp;&nbsp; <strong>
        <asp:Label ID="Label6" runat="server" Text="Total Price : " CssClass="auto-style1" Visible="False"></asp:Label>
        </strong>&nbsp;<strong><asp:Label ID="Label1" runat="server" Text="Label" CssClass="auto-style1" Visible="False"></asp:Label>
        </strong>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Chek Out" 
            onclick="Button1_Click" />
        <br />



    
       <script src="https://www.paypal.com/sdk/js?client-id=ATyikN_CLctW5bx44_Q9oQmpAr5mqFHX7SfBhhpZlOxFvoAXNKZ94ftLRhIUCyPSgjZZslRkgFgJe0Zs"></script>
    <script>
  paypal.Buttons({
    createOrder: function(data, actions) {
      // This function sets up the details of the transaction, including the amount and line item details.
      return actions.order.create({
        purchase_units: [{
          amount: {
            value: '<%=price%>'
          }
        }]
      });
    },
    onApprove: function(data, actions) {
      // This function captures the funds from the transaction.
      return actions.order.capture().then(function(details) {
        // This function shows a transaction success message to your buyer.
        alert('Transaction completed by ' + details.payer.name.given_name);
      });
    }
  }).render('#paypal-button-container');
  //This function displays Smart Payment Buttons on your web page.
</script>
         <div id="paypal-button-container"></div>

    </div>
</asp:Content>

