<%@ Page Title="Cart" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="WebApplication2.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="https://codepen.io/dope/pen/ZQWBeL">
<style>
    @import url("https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700");
    .button {
    --background: #362A89;
    --text: #fff;
    position: relative;
    border: none;
    background: none;
    padding: 8px 28px;
    border-radius: 8px;
    -webkit-appearance: none;
    -webkit-tap-highlight-color: transparent;
    -webkit-mask-image: -webkit-radial-gradient(white, black);
    overflow: hidden;
    cursor: pointer;
    text-align: center;
    min-width: 144px;
    color: var(--text);
    background: var(--background);
    
    
}
</style>

<div align="center" style="margin-left: 0px">
    
        <br />
        <br />
        <asp:TextBox Visible="false" ID="emailBox" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
            DataSourceID="AccessDataSource2" DataTextField="category" 
            DataValueField="category" Height="10%" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
            style="text-align: center;border-radius: 20px;background-color:black;color:snow" Width="212px">
        </asp:DropDownList>
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" 
            DataSourceID="AccessDataSource1" 
            OnSelectedIndexChanged="GridView1_SelectedIndexChanged" 
            style="text-align: center" BackColor="#CCCCCC" BorderColor="#999999" 
            BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" 
            ForeColor="Black" Width="100%">
            <RowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="productId" HeaderText="productId" 
                    SortExpression="productId" />
                <asp:BoundField DataField="productName" HeaderText="productName" 
                    SortExpression="productName" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                <asp:BoundField DataField="category" HeaderText="category" />
                 <asp:TemplateField HeaderText="Quantity" Visible="true">
                <ItemTemplate>
                <asp:TextBox ID="txtquantity" runat="server" Width="52px" Visible="true" Height="28px" TextMode="Number"></asp:TextBox>
                </ItemTemplate>
                </asp:TemplateField>    
                <asp:TemplateField HeaderText="">
                <ItemTemplate>
                <asp:Image ID="Picture" runat="server" Width="200" Height="200" ImageUrl='<%# Eval("image") %>'/></ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField SelectText="Add to Cart" ShowSelectButton="True" 
                    ButtonType="Button" ControlStyle-CssClass="button" >
<ControlStyle CssClass="button"></ControlStyle>
                </asp:CommandField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/App_Data/UserDatabase.mdb" 
            SelectCommand="SELECT [productId], [productName], [category], [price],[image] FROM [Cart] WHERE ([category] = ?)">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="cold and flu" Name="category" 
                    SessionField="category" Type="String" />
            </SelectParameters>
        </asp:AccessDataSource>
        <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
            DataFile="~/App_Data/UserDatabase.mdb" 
            SelectCommand="SELECT DISTINCT [category] FROM [Cart]">
        </asp:AccessDataSource>
        <br />
    
    </div>

</asp:Content>
