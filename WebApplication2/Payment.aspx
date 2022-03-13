<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="WebApplication2.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style type="text/css">
        .style1
        {
            border-style: none;
            border-color: inherit;
            border-width: 2;
            width: 89%;
            height: 562px;
            }
        .style2
        {
            text-align: center;
        }
        .style3
        {
            width: 186px;
            text-align: center;
            font-size: x-large;
        }
        .style4
        {
            font-size: x-large;
        }
        .style6
        {
            width: 186px;
            text-align: center;
            font-size: x-large;
            height: 78px;
        }
        .style7
        {
            font-size: x-large;
            height: 78px;
            width: 790px;
        }
        .style8
        {
            text-align: center;
            font-size: x-large;
            height: 81px;
        }
        .style9
        {
            font-size: x-large;
            height: 81px;
            width: 790px;
        }
        .style10
        {
            text-align: center;
            height: 244px;
        }
        .auto-style3 {
            color: #FF0000;
        }
        .auto-style4 {
            width: 186px;
            text-align: center;
            font-size: x-large;
            height: 78px;
            font-weight: bold;
            color: #0000FF;
        }
    </style>

    <div>
      <asp:Label ID="Label1" runat="server" style="font-size: xx-large" 
            Text="Check Out"></asp:Label>
        <br />
        <table class="style1">
            <tr>
                <td class="auto-style4">
                    Total Price</td>
                <td class="style7">
                    <asp:Label ID="Label2" runat="server" style="font-size: large; font-weight: 700; color: #FF0000;" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    Visa Number</td>
                <td class="style7">
                    <asp:TextBox ID="visaNoBox" runat="server" style="font-size: large" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    AccNumber</td>
                <td class="style7">
                    <asp:TextBox ID="accNoBox" runat="server" style="font-size: large" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    Visa Type</td>
                <td class="style7">
                    <asp:DropDownList ID="DropDownList1" runat="server" style="font-size: large" Width="180px">
                        <asp:ListItem>Mastercard</asp:ListItem>
                        <asp:ListItem>Visa</asp:ListItem>
                        <asp:ListItem>American Express</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    Expiration Date</td>
                <td class="style7">
                    <asp:Calendar ID="Calendar1" runat="server" Height="67px" 
                        onselectionchanged="Calendar1_SelectionChanged" Width="287px">
                    </asp:Calendar>
                    <strong>
                    <asp:Label ID="Label7" runat="server" CssClass="auto-style3"></asp:Label>
                    </strong>&nbsp;</td>
            </tr>
            <tr>
                <td class="style8">
                    <asp:Button ID="Button1" runat="server" Height="35px" 
                        style="text-align: center; font-weight: 700; color: #FF0000;" Text="Pay" Width="113px" 
                        onclick="Button1_Click" />
                </td>
                <td class="style9">
                    <asp:Button ID="Button2" runat="server" Height="36px" Text="cancel" 
                        Width="114px" onclick="Button2_Click" style="color: #FF0000; font-weight: 700" />
                </td>
            </tr>
            <tr>
                <td class="style8" colspan="2">
                    <strong>
                    <asp:Label ID="Label8" runat="server" CssClass="auto-style3"></asp:Label>
                    <br class="auto-style3" />
                    <br class="auto-style3" />
                    <asp:Label ID="Label9" runat="server" CssClass="auto-style3"></asp:Label>
                    <br class="auto-style3" />
                    <br class="auto-style3" />
                    <asp:Label ID="Label10" runat="server" CssClass="auto-style3"></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="style10" colspan="2">
                    &nbsp;</td>
            </tr>
        </table>
    <br />
    <br />
    
    
    </div>

</asp:Content>
