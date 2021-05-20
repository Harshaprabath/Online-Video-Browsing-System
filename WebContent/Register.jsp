<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="fontawesome/css/all.min.css">
    <link rel="stylesheet" href="css/templatemo-style.css">
    
   <!--   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"> --> 
   <!--  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"> -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="js/checkReantedPassword.js"> </script>

     <script>
	  // Self-executing function
			  (function() {
			         'use strict';
			         window.addEventListener('load', function() {
			          // Fetch all the forms we want to apply custom Bootstrap validation styles to
			            var forms = document.getElementsByClassName('needs-validation');
			                // Loop over them and prevent submission
			                var validation = Array.prototype.filter.call(forms, function(form) {
			                    form.addEventListener('submit', function(event) {
			                        if (form.checkValidity() === false) {
			                            event.preventDefault();
			                            event.stopPropagation();
			                         }
			                      form.classList.add('was-validated');
		                   }, false);
			               });
			          }, false);
			       })();
	 </script>
			    
    
    
<!--
    
TemplateMo 556 Catalog-Z

https://templatemo.com/tm-556-catalog-z

-->
</head>
<body>
    <!-- Page Loader -->
    <div id="loader-wrapper">
        <div id="loader"></div>

        <div class="loader-section section-left"></div>
        <div class="loader-section section-right"></div>

    </div>
    <nav class="navbar navbar-expand-lg">
        <div class="container-fluid">
            <a class="navbar-brand" href="index.jsp">
                <h2>  <i class="fas fa-film mr-2"></i>
                SingMe</h2>
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <i class="fas fa-bars"></i>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link nav-link-1" href="index.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link nav-link-2" href="videos.jsp">Videos</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link nav-link-3" href="about.jsp">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link nav-link-4 " aria-current="page" href="contact.jsp">Contact</a>
                </li>
            </ul>
            </div>
        </div>
    </nav>

    <div class="tm-hero d-flex justify-content-center align-items-center" data-parallax="scroll" data-image-src="img/hero.jpg"></div>

    <div class="container-fluid tm-mt-60">
        <div class="row tm-mb-50">
            <div class="col-lg-4 col-12 mb-5">
                  
            </div>
            
            <!-- login form start -->
            
                <div class="col-lg-4 col-12 mb-5">
                <h2 class="tm-text-primary mb-5">Register</h2>
          
          
          
    
          
                       <form  id="login-form" action="RegisterServlet" class="needs-validation" method="post" onsubmit="return checkpassword()" novalidate>
                                  
				              <div class="row">
								  <div class="col">
								    <label for="inputFirstname" >First name</label>
								     	 <input type="text" class="form-control" placeholder="First name" name="firstName" required>
								    </div>
								    <div class="col">
									     <label for="inputLastname">Last name</label>
									      <input type="text" class="form-control" placeholder="Last name" name="lastName" required>
								    </div>
								    </div>
								    <br>
																    
				                   <div class="form-group">
									    <label for="inputAddress">Address</label>
									    <input type="text" class="form-control" id="inputAddress" placeholder="Address" name="address" required>
								  </div>
								  <div class="row">
								    <div class="col">
									      <label for="inputCity">City</label>
									      <input type="text" class="form-control" id="inputCity" name="city" required>
								    </div>
								    <div class="form-group col-md-4">
								      <label for="inputState">Country</label>
								      <select id="inputState" class="form-control" name="country">
								        <option selected>Sri Lanka</option>
								        <option>india</option>
								        <option>Bangaladesh</option>
								        <option>Singapore</option>
								      </select>
								    </div>
							   
							    </div> 
								<div class="form-group">
						            <label for="inputEmail">Email</label>
						            <input type="email" class="form-control" id="inputEmail" placeholder="Email" name="email" required>
						            <div class="invalid-feedback">Please enter a valid email address.</div>
						        </div>
						        <div class="form-group">
						            <label for="inputPassword">Password</label>
						            <input type="password" class="form-control" id="pw" placeholder="Password" required>
						            <div class="invalid-feedback">Please enter your password to continue.</div>
						        </div>
						         <div class="form-group">
						            <label for="inputRe-enterdPassword">Re-entered Password</label>
						            <input type="password" class="form-control" id="repw" placeholder="Password"  name="password" required>
						            <div class="invalid-feedback">Please re-enter your password to continue.</div>
						        </div>
				     
				        <button type="submit" class="btn btn-primary">Register	</button>
                    </form>
    
                     
          
            </div>
             
             <!-- login form end -->
             
            <div class="col-lg-4 col-12">
                         
            </div>
        </div>
        <div class="row tm-mb-74 tm-people-row">
           
        </div>
    </div> <!-- container-fluid, tm-container-content -->

 <footer class="tm-bg-gray pt-5 pb-3 tm-text-gray tm-footer">
        <div class="container-fluid tm-container-small">
            <div class="row">
                <div class="col-lg-6 col-md-12 col-12 px-5 mb-5">
                    <h3 class="tm-text-primary mb-4 tm-footer-title">About SingMe</h3>
                    <p>We are well experienced in Karaoke music more than decades. As a company that loves music, We are full of courage to deliver the best.</p>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 col-12 px-5 mb-5">
                    <h3 class="tm-text-primary mb-4 tm-footer-title">More:</h3>
                    <ul class="tm-footer-links pl-0">
                        <li><a href="https://www.sliit.lk/">Advertise</a></li>
                        <li><a href="https://www.sliit.lk/">Support</a></li>
                        <li><a href="about.jsp">About us</a></li>
                        <li><a href="contact.jsp">Contact us</a></li>
                    </ul>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 col-12 px-5 mb-5">
                    <ul class="tm-social-links d-flex justify-content-end pl-0 mb-5">
                        <li class="mb-2"><a href="https://facebook.com"><i class="fab fa-facebook"></i></a></li>
                        <li class="mb-2"><a href="https://twitter.com"><i class="fab fa-twitter"></i></a></li>
                        <li class="mb-2"><a href="https://instagram.com"><i class="fab fa-instagram"></i></a></li>
                        <li class="mb-2"><a href="https://pinterest.com"><i class="fab fa-pinterest"></i></a></li>
                    </ul>
                    <a href="#" class="tm-text-gray text-right d-block mb-2">Terms of Use</a>
                    <a href="#" class="tm-text-gray text-right d-block">Privacy Policy</a>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 col-md-7 col-12 px-5 mb-3">
                    Copyright 2021@SLIIT Y2S1
                </div>           
            </div>
        </div>
    </footer>
    
    <script src="js/plugins.js"></script>
    <script>
        $(window).on("load", function() {
            $('body').addClass('loaded');
        });
    </script>
    
    
    
    
</body>
</html>