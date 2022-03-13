<%@ Page Title="Fillament" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Fillament.aspx.cs" Inherits="WebApplication2.Fillament1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <style type="text/css">
        @import url('https://fonts.googleapis.com/css?family=Amatic+SC');
        .style1
        {
            width: 100%;
            height: 1580px;
            margin-left: 0px;
            font-size: large;
        }
        .style2
        {
            font-size: x-large;
            font-weight: bold;
            color: #FF0000;
        }
        .style3
        {
            color: #000099;
        }
        .style4
        {
            color: #000099;
            font-weight: bold;
        }
        .style5
        {
            font-weight: bold;
            height: 401px;
            color: #000099;
            width: 286px;
            text-align: center;
        }
        .style7
        {
            color: #000099;
            font-weight: bold;
            height: 395px;
            width: 286px;
            text-align: center;
        }
        .style11
        {
            height: 399px;
            width: 346px;
            text-align: center;
        }
        .style12
        {
            color: #000099;
            font-weight: bold;
            font-size: large;
            text-align: center;
        }
        .style13
        {
            font-size: large;
        }
        .style14
        {
            color: #000099;
            font-weight: bold;
            height: 403px;
            font-size: large;
            width: 286px;
            text-align: center;
        }
        .style57
    {
        height: 401px;
        width: 342px;
            text-align: center;
        }
    .style58
    {
        height: 329px;
        width: 443px;
    }
    .style62
    {
        color: #FF0000;
    }
    .style64
    {
        height: 87px;
        width: 388px;
        font-weight: bold;
        font-size: x-large;
        color: #0000FF;
        background-color: #FFFFFF;
    }
    .style65
    {
        height: 403px;
        width: 342px;
        background-color: #FFFFFF;
            text-align: center;
        }
        .style76
        {
            height: 486px;
        }
        .style80
        {
            height: 403px;
            width: 346px;
            background-color: #FFFFFF;
            text-align: center;
        }
        .style81
        {
            height: 395px;
            width: 346px;
            font-weight: bold;
            text-align: center;
        }
        .style82
        {
            height: 414px;
            width: 259px;
        }
        .style83
        {
            color: #000099;
            font-size: large;
        }
        .style89
        {
            height: 401px;
            width: 346px;
            color: #0000FF;
            font-weight: bold;
            font-size: x-large;
            text-align: center;
            background-color: #FFFFFF;
        }
        .style90
        {
            height: 395px;
            width: 342px;
            font-weight: bold;
            text-align: center;
        }
        .style91
        {
            height: 399px;
            width: 342px;
            color: #0000FF;
            font-weight: bold;
            font-size: x-large;
            text-align: center;
            background-color: #FFFFFF;
        }
        .style92
        {
            color: #000099;
            font-weight: bold;
            height: 399px;
            width: 286px;
            text-align: center;
        }
.button_container {
  position: absolute;
  left: 0;
  right: 0;
  top: 30%;
}

.description, .link {
  font-family: 'Amatic SC', cursive;
  text-align: center;
}

.description {
  font-size: 35px;
}

.btn {
  border: none;
  display: block;
  text-align: center;
  cursor: pointer;
  text-transform: uppercase;
  outline: none;
  overflow: hidden;
  position: relative;
  color: #fff;
  font-weight: 700;
  font-size: 15px;
  background-color: #222;
  padding: 17px 60px;
  margin: 0 auto;
  box-shadow: 0 5px 15px rgba(0,0,0,0.20);
}

.btn span {
  position: relative; 
  z-index: 1;
}

.btn:after {
  content: "";
  position: absolute;
  left: 0;
  top: 0;
  height: 490%;
  width: 140%;
  background: #78c7d2;
  -webkit-transition: all .5s ease-in-out;
  transition: all .5s ease-in-out;
  -webkit-transform: translateX(-98%) translateY(-25%) rotate(45deg);
  transform: translateX(-98%) translateY(-25%) rotate(45deg);
}

.btn:hover:after {
  -webkit-transform: translateX(-9%) translateY(-25%) rotate(45deg);
  transform: translateX(-9%) translateY(-25%) rotate(45deg);
}

.link {
  font-size: 20px;
  margin-top: 30px;
}

.link a {
  color: #000;
  font-size: 25px; 
}
        </style>



    <table class="style1" align="center" style="background-color:white">
        <tr>
            <td colspan="3" style="text-align: center" class="style2">
                <br />
                Fillament<br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="style7">
                <span class="style3">Black</span><br class="style3" />
                <image alt="" src="img/fillament/Black.jpg"
                    style="width: 219px; height: 216px" class="style3" /><br />
                The Price:$19.00</td>
            <td class="style81">
                <span class="style83">Orange</span><br class="style3" />
                <img alt="" src="img/fillament/Orange.jpg" style="width: 205px; height: 205px" 
                    class="style3" /><br class="style3" />
                <span class="style3">The Price:$18.00</span></td>
            <td class="style90">
                <span class="style3">Blue</span><br class="style3" /><img alt="" 
                    src="img/fillament/Blue.jpg" style="width: 191px; height: 201px" class="style3" /><br 
                    class="style3" />
                <span class="style3">The Price:$19.00</span></td>
        </tr>
        <tr>
            <td class="style5">
                <span class="style4">White</span><b><br class="style3" /><img alt="" 
                    src="img/fillament/White.jpg" style="width: 218px; height: 218px" class="style3" /><br 
                    class="style3" />
                <span class="style3">the price:$16.00</span></b></td>
            <td class="style89">
                <span class="style12">Silver</span><b><br class="style3" /><img alt="" 
                    src="img/fillament/Silver.jpg" style="width: 213px; height: 219px" class="style3" /><br 
                    class="style3" />
                <span class="style83">The Price:$17.00</span></b></td>
            <td class="style57">
                <span class="style4">Pink</span><b><br class="style3" /><img alt="" 
                    src="img/fillament/Pink.jpg" style="width: 213px; height: 202px" class="style3" /><br 
                    class="style3" />
                <span class="style3">The Price:$18.00</span></b></td>
        </tr>
        <tr>
            <td class="style92">
                <span class="style3">Red</span><br class="style3" />
                <img alt="" src="img/fillament/Red.jpg" 
                    style="width: 215px; height: 201px" class="style3" /><br />
                The Price:$19.00</td>
            <td class="style11">
                <span class="style4">Yellow</span><b><br class="style3" /></b>
                <img alt="" class="style4" src="img/fillament/Yellow.jpg" 
                    style="width: 204px; height: 204px" /><b><br class="style3" />
                </b><span class="style4">The Price:$20.00</span></td>
            <td class="style91">
                <span class="style12">Transparent</span><b><br class="style3" />
                </b><img alt="" class="style4" src="img/fillament/Transparent.jpg" 
                    style="width: 205px; height: 205px" /><b><br class="style3" />
                </b><span class="style12">The Price:$15.00</span></td>
        </tr>
        <tr>
            <td class="style14">
                <span class="style13">gold</span><br class="style13" />
                <img alt="" class="style12" src="img/fillament/Gold.jpg" 
                    style="width: 180px; height: 202px" /><br class="style13" />
                <span class="style13">The Price:$20.00</span></td>
            <td class="style80">
                <span class="style12">Green</span><br />
                <img alt="" class="style12" src="img/fillament/Green.jpg" 
                    style="width: 205px; height: 205px; text-align: center;" /><br class="style3"/>
                <span class="style12">The Price:$18.00</span></td>
            
        </tr>
        <tr>
            <td class="style2" colspan="3" style="text-align: center">
                <asp:Button ID="Button1" CssClass="btn" runat="server" Text="< Back" OnClick="Button1_Click" /> </td>
        </tr>
    </table>













</asp:Content>
