<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Request songs</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="fontawesome/css/all.min.css">
    <link rel="stylesheet" href="css/templatemo-style.css">
    
     <style>
    
    .hov1:hover {
     color: DodgerBlue;
     background-color: transparent;
     text-decoration: underline;
     }
     
     .hov1{color:black; text-decoration: none;}
     
     
    </style>
    
   <!--   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"> --> 
   <!--  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"> -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

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
              <b> <a class="hov1" href="Register.jsp">Register</a> </b> | 
            <b> <a class="hov1" href="login.jsp">Login</a> </b>
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
                    <a class="nav-link nav-link-4" href="contact.jsp">Contact</a>
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
	                <h2 class="tm-text-primary mb-5">Request songs</h2>
	          
	          
	                    <form  id="login-form" action="requestSongServlet" method="POST" class="needs-validation"  novalidate>
					        <div class="form-group">
					            <label for="songName">Enter required song name</label>
					            <input type="text" class="form-control" placeholder="song" name="songName" required>
					            <div class="invalid-feedback">Please enter a song name.</div>
					        </div>
					        <div class="form-group">
					            <label for="singerName">Enter singer name</label>
					            <input type="text" class="form-control" placeholder="singer's name" name="singerName">
					        </div>
					        <div class="form-group">
					            <label for="inputEmail">Enter your Email</label>
					            <input type="email" class="form-control" id="inputEmail" placeholder="email" name="email" required>
					            <div class="invalid-feedback">Please enter a valid email address.</div>
					            <i><label for="songName">Once relevant song get uploaded, we will let you know via Email. </label></i>
				        	</div>
					        <div class="form-group">
					            <label><input type="checkbox"> Subscribe our newsletter</label> 
					        </div>
					        <button type="submit" class="btn btn-primary">Submit</button>
	                   </form>
	    
	             </div>        

             
             <!-- login form end -->    
             
            <div class="col-lg-4 col-12">
                     
            </div>
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