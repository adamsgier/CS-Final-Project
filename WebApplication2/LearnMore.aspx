<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LearnMore.aspx.cs" Inherits="WebApplication2.LearnMore" %>
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
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500" rel="stylesheet">
    <!-- CSS -->
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link href="product-page/style.css" rel="stylesheet">
    <meta name="robots" content="noindex,follow" />
    <div class="container">


      <!-- Left Column / Image -->
      <div style="  width: 65%;position: relative;">
          <asp:Image ID="Image1" runat="server"  style="width: 55%; position: absolute; left: -2px; top: 0;"/>
      </div>


      <!-- Right Column -->
      <div style="  width: 35%;margin-top: 60px;">

        <!-- Product Description -->
        <div class="product-description">
          <span>
              Category: <asp:Label ID="Label1" runat="server" Text="Category" ForeColor="White"></asp:Label></span>
          <h3>
              Name: <asp:Label ID="Label2" runat="server" Text="Name" ForeColor="White"></asp:Label></h3>
          <p>
              Description: <asp:Label ID="Label3" runat="server" Text="Description" ForeColor="White"></asp:Label></p>
        </div>

        <!-- Product Configuration -->
        <div class="product-configuration">
            Quantity: <asp:TextBox ID="TextBox1" runat="server" TextMode="Number" Width="50px"></asp:TextBox>
        
        <!-- Product Pricing -->
        <div class="product-price">
          <span>
              Price: <asp:Label ID="Label4" runat="server" Text="Price"></asp:Label>
            <br />
            </span>
            <asp:Button ID="Button1" class="cart-btn" runat="server" Text="Add to cart" OnClick="Button1_Click" />
            <asp:ImageButton ID="ImageButton1" runat="server" Height="37px" OnClick="ImageButton1_Click" style="margin-top: 0px" Width="37px" />
        </div>
      </div>
                      <h2 style="color: gold">Reviews:</h2>
          <font size="4" color="gold">
        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
              </font>
          
          <h4>Share your review:</h4>
          <asp:TextBox ID="TextBox2" class="w3-input w3-animate-input" style="width:50px" runat="server"></asp:TextBox><asp:Button ID="Button2" runat="server" class="button" Text="Add your review" OnClick="Button2_Click" Width="123px" />
        </div>


    </div>

</asp:Content>
