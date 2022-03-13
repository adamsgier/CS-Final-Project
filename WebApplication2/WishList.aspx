<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WishList.aspx.cs" Inherits="WebApplication2.WishList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <style>
        .button {
              background-color: white;
              color: black;
              border-radius: 12px;
              border: 2px solid #4CAF50; /* Green */
              transition-duration: 0.4s;
                }
        .button:hover {
          background-color: #4CAF50; /* Green */
          color: white;
            }
    </style>
    <center>
        <asp:DropDownList ID="DropDownList1" class="w3-select" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem>Category</asp:ListItem>
            <asp:ListItem Value="3d Printer">3D Printer</asp:ListItem>
            <asp:ListItem Value="Add ons">Add ons</asp:ListItem>
            <asp:ListItem>Fillament</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList2" class="w3-select" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged"></asp:DropDownList>
        <asp:DropDownList ID="DropDownList3" class="w3-select" runat="server"></asp:DropDownList>
        <asp:Button ID="Button1" class="button" runat="server" Text="Show Products" OnClick="Button1_Click" />
        <br />
        <asp:DataList ID="DataList1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" RepeatColumns="4" RepeatDirection="Horizontal" Width="100%" OnItemCommand="DataList1_ItemCommand">
            <AlternatingItemStyle BackColor="PaleGoldenrod" />
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <ItemTemplate>
                <center>
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Bind("Picture") %>' Width="40%" />
                <br />
                <br />
                    Brand:
                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Brand") %>'></asp:Label>
                <br />
                    Name:
                <asp:Label ID="Label2" runat="server" Text='<%# Bind("ProductName") %>'></asp:Label>
                    <br />
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Num") %>' Visible="False"></asp:Label>
                <br />
                <asp:Button ID="Button2" class="button" runat="server" Text="Learn More" CommandName="LearnMore" OnClick="Button2_Click" />
                    <br />
                    <asp:Button ID="Button3" runat="server" CommandName="Delete" Text="Delete" />
                    </center>
            </ItemTemplate>
            <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        </asp:DataList>
    </center>
</asp:Content>
