<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebApplication2.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

   <head runat="server">
<meta charset="UTF-8">
    <title>Register</title>
    <!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================--><meta name="robots" content="noindex">
<link rel="shortcut icon" type="image/x-icon" href="https://static.codepen.io/assets/favicon/favicon-aec34940fbc1a6e787974dcd360f2c6b63348d4b1f4e06c77743096d55480f33.ico">
<link rel="mask-icon" type="" href="https://static.codepen.io/assets/favicon/logo-pin-8f3771b1072e3c38bd662872f6b673a722f4b3ca2421637d5596661b4e2132cc.svg" color="#111">
<link rel="canonical" href="https://codepen.io/dope/pen/ZQWBeL">
<meta name="viewport" content="width=device-width, initial-scale=1"><link href="https://fonts.googleapis.com/css?family=Roboto:400,700" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<style class="INLINE_PEN_STYLESHEET_ID">
    * {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

body {
  font-family: "Roboto";
  font-size: 14px;
  background-size: 200% 100% !important;
  -webkit-animation: move 10s ease infinite;
          animation: move 10s ease infinite;
  -webkit-transform: translate3d(0, 0, 0);
          transform: translate3d(0, 0, 0);
  background: linear-gradient(45deg, #49D49D 10%, #A2C7E5 90%);
  height: 100vh;
}

.user {
  width: 90%;
  max-width: 340px;
  margin: 10vh auto;
}

.user__header {
  text-align: center;
  opacity: 0;
  -webkit-transform: translate3d(0, 500px, 0);
          transform: translate3d(0, 500px, 0);
  -webkit-animation: arrive 500ms ease-in-out 0.7s forwards;
          animation: arrive 500ms ease-in-out 0.7s forwards;
}

.user__title {
  font-size: 14px;
  margin-bottom: -10px;
  font-weight: 500;
  color: white;
}

.form {
  margin-top: 40px;
  border-radius: 6px;
  overflow: hidden;
  opacity: 0;
  -webkit-transform: translate3d(0, 500px, 0);
          transform: translate3d(0, 500px, 0);
  -webkit-animation: arrive 500ms ease-in-out 0.9s forwards;
          animation: arrive 500ms ease-in-out 0.9s forwards;
}

.form--no {
  -webkit-animation: NO 1s ease-in-out;
          animation: NO 1s ease-in-out;
  opacity: 1;
  -webkit-transform: translate3d(0, 0, 0);
          transform: translate3d(0, 0, 0);
}

.form__input {
  display: block;
  width: 100%;
  padding: 20px;
  font-family: "Roboto";
  -webkit-appearance: none;
  border: 0;
  outline: 0;
  -webkit-transition: 0.3s;
  transition: 0.3s;
}
.form__input:focus {
  background: #f7f7f7;
}

.btn {
  display: block;
  width: 100%;
  padding: 20px;
  font-family: "Roboto";
  -webkit-appearance: none;
  outline: 0;
  border: 0;
  color: white;
  background: #ABA194;
  -webkit-transition: 0.3s;
  transition: 0.3s;
}
.btn:hover {
  background: #a09486;
}

@-webkit-keyframes NO {
  from, to {
    -webkit-transform: translate3d(0, 0, 0);
    transform: translate3d(0, 0, 0);
  }
  10%, 30%, 50%, 70%, 90% {
    -webkit-transform: translate3d(-10px, 0, 0);
    transform: translate3d(-10px, 0, 0);
  }
  20%, 40%, 60%, 80% {
    -webkit-transform: translate3d(10px, 0, 0);
    transform: translate3d(10px, 0, 0);
  }
}

@keyframes NO {
  from, to {
    -webkit-transform: translate3d(0, 0, 0);
    transform: translate3d(0, 0, 0);
  }
  10%, 30%, 50%, 70%, 90% {
    -webkit-transform: translate3d(-10px, 0, 0);
    transform: translate3d(-10px, 0, 0);
  }
  20%, 40%, 60%, 80% {
    -webkit-transform: translate3d(10px, 0, 0);
    transform: translate3d(10px, 0, 0);
  }
}
@-webkit-keyframes arrive {
  0% {
    opacity: 0;
    -webkit-transform: translate3d(0, 50px, 0);
            transform: translate3d(0, 50px, 0);
  }
  100% {
    opacity: 1;
    -webkit-transform: translate3d(0, 0, 0);
            transform: translate3d(0, 0, 0);
  }
}
@keyframes arrive {
  0% {
    opacity: 0;
    -webkit-transform: translate3d(0, 50px, 0);
            transform: translate3d(0, 50px, 0);
  }
  100% {
    opacity: 1;
    -webkit-transform: translate3d(0, 0, 0);
            transform: translate3d(0, 0, 0);
  }
}
@-webkit-keyframes move {
  0% {
    background-position: 0 0;
  }
  50% {
    background-position: 100% 0;
  }
  100% {
    background-position: 0 0;
  }
}
@keyframes move {
  0% {
    background-position: 0 0;
  }
  50% {
    background-position: 100% 0;
  }
  100% {
    background-position: 0 0;
  }
}

    .auto-style1 {
        display: block;
        font-weight: 400;
        text-align: center;
        white-space: nowrap;
        vertical-align: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
        font-size: 1rem;
        line-height: 1.25;
        border-radius: .25rem;
        transition: 0.3s;
        font-family: Roboto;
        -webkit-appearance: none;
        outline-width: 0;
        outline-style: none;
        outline-color: invert;
        color: white;
        -webkit-transition: 0.3s;
        border-style: none;
        border-color: inherit;
        border-width: 0;
        padding: 20px;
        background: #ABA194;
    }

  </style>
<script src="https://static.codepen.io/assets/editor/iframe/iframeConsoleRunner-dc0d50e60903d6825042d06159a8d5ac69a6c0e9bcef91e3380b17617061ce0f.js"></script>
<script src="https://static.codepen.io/assets/editor/iframe/iframeRefreshCSS-e03f509ba0a671350b4b363ff105b2eb009850f34a2b4deaadaa63ed5d970b37.js"></script>
<script src="https://static.codepen.io/assets/editor/iframe/iframeRuntimeErrors-29f059e28a3c6d3878960591ef98b1e303c1fe1935197dae7797c017a3ca1e82.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="user">
    <header class="user__header">
        <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/3219/logo.svg" alt="" />
        <h1 class="user__title">Register</h1>
    </header>
    
        <br />
        <br />
        <div class="form__group">
            <asp:TextBox ID="Email1" type="text" placeholder="Email" class="form__input" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Email1" ErrorMessage="Email Required"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="Email1" ErrorMessage="enter the right email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            
        </div>
        
        <div class="form__group">
            <asp:TextBox ID="password" placeholder="Password" type="Password" class="form__input" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="password" ErrorMessage="password Required"></asp:RequiredFieldValidator>

        </div>
        
        <div class="form__group">
            
            <asp:TextBox type="FirstName" placeholder="First name" class="form__input" ID="Firstname" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Firstname" ErrorMessage="First name Required"></asp:RequiredFieldValidator>
            
        </div>

                <div class="form__group">
            
            <asp:TextBox type="LastName" placeholder="Last Name" class="form__input" ID="userlastname" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="userlastname" ErrorMessage="Last name Required"></asp:RequiredFieldValidator>
            
        </div>

                <div class="form__group">
            
            <asp:DropDownList ID="DropDownList4" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>spain</asp:ListItem>
                    <asp:ListItem>israel</asp:ListItem>
                    <asp:ListItem>italy</asp:ListItem>
                    <asp:ListItem>brazil</asp:ListItem>
                    <asp:ListItem>usa</asp:ListItem>
                    <asp:ListItem>turkey</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList4" ErrorMessage="Country Required"></asp:RequiredFieldValidator>
            
        </div>

                <div class="form__group">
            
            <asp:DropDownList ID="DropDownList3" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>male</asp:ListItem>
                    <asp:ListItem>female</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="DropDownList3" ErrorMessage="Gender Required"></asp:RequiredFieldValidator>
        </div>

                <div class="form__group">
            
            <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>what is your favorate color</asp:ListItem>
                    <asp:ListItem>what is the name of your father</asp:ListItem>
                    <asp:ListItem>what is your second name</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="DropDownList2" ErrorMessage="Choose Security Question"></asp:RequiredFieldValidator>
                    </div>

                <div class="form__group">
            
            <asp:TextBox type="passwordanswer" placeholder="Password Answer" class="form__input" ID="passwordanswer" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="passwordanswer" ErrorMessage="What is your answer"></asp:RequiredFieldValidator>
                    
        </div>
        <asp:Label ID="Label4" runat="server" Text="Label" Visible="True"></asp:Label>
            <asp:Button  class="btn"  ID="AddButton1" runat="server" Text="Register" OnClick="AddButton1_Click1" Height="50px"   />
            <asp:Button ID="Button1" CssClass="auto-style1" runat="server" Text="< Back" OnClick="Button1_Click" CausesValidation="False" Height="48px" />
        
      
</div>
    </form>

</body>
</html>
