<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApplication2.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="contact-form-v9/ContactForm_v9/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="contact-form-v9/ContactForm_v9/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="contact-form-v9/ContactForm_v9/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="contact-form-v9/ContactForm_v9/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="contact-form-v9/ContactForm_v9/vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="contact-form-v9/ContactForm_v9/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="contact-form-v9/ContactForm_v9/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="contact-form-v9/ContactForm_v9/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="contact-form-v9/ContactForm_v9/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="contact-form-v9/ContactForm_v9/css/util.css">
	<link rel="stylesheet" type="text/css" href="contact-form-v9/ContactForm_v9/css/main.css">
<!--===============================================================================================-->


	<body>
	<div class="container-contact100">
		<div class="contact100-map" id="google_map" data-map-x="40.722047" data-map-y="-73.986422" data-pin="images/icons/map-marker.png" data-scrollwhell="0" data-draggable="1"></div>

		<div class="wrap-contact100">
			<form class="contact100-form validate-form">
				<span class="contact100-form-title">
					Contact Us
				</span>

				<div class="wrap-input100 validate-input" data-validate="Please enter your name">
					<input class="input100" type="text" name="name" placeholder="Full Name">
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate = "Please enter email: e@a.x">
					<input class="input100" type="text" name="email" placeholder="Email">
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate = "Please enter your message">
					<textarea class="input100" name="message" placeholder="Your Message"></textarea>
					<span class="focus-input100"></span>
				</div>

				<div class="container-contact100-form-btn">
					<button class="contact100-form-btn">
						Send
					</button>
				</div>
			</form>

			<div class="contact100-more">
				Contact our 24/7 call center: <span class="contact100-more-highlight">+972 54-565-7401</span>
			</div>
		</div>
	</div>



	<div id="dropDownSelect1"></div>

<!--===============================================================================================-->
	<script src="contact-form-v9/ContactForm_v9/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="contact-form-v9/ContactForm_v9/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="contact-form-v9/ContactForm_v9/vendor/bootstrap/js/popper.js"></script>
	<script src="contact-form-v9/ContactForm_v9/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="contact-form-v9/ContactForm_v9/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="contact-form-v9/ContactForm_v9/vendor/daterangepicker/moment.min.js"></script>
	<script src="contact-form-v9/ContactForm_v9/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="contact-form-v9/ContactForm_v9/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="contact-form-v9/ContactForm_v9/https://maps.googleapis.com/maps/api/js?key=AIzaSyAKFWBqlKAGCeS1rMVoaNlwyayu0e0YRes"></script>
	<script src="contact-form-v9/ContactForm_v9/js/map-custom.js"></script>
<!--===============================================================================================-->
	<script src="contact-form-v9/ContactForm_v9/js/main.js"></script>

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
<script>
    window.dataLayer = window.dataLayer || [];
    function gtag() { dataLayer.push(arguments); }
    gtag('js', new Date());

    gtag('config', 'UA-23581568-13');
</script>
</body>
</asp:Content>
