<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact</title>
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
                    <a class="nav-link nav-link-4 active" aria-current="page" href="contact.jsp">Contact</a>
                </li>
            </ul>
            </div>
        </div>
    </nav>

    <div class="tm-hero d-flex justify-content-center align-items-center" data-parallax="scroll" data-image-src="img/hero.jpg"></div>

    <div class="container-fluid tm-mt-60">
        <div class="row tm-mb-50">
            <div class="col-lg-4 col-12 mb-5">
                <h2 class="tm-text-primary mb-5">Inquire here</h2>
                <i><label for="songName">Please use below link to request new songs.</label></i>
               	<div class="form-group tm-text-right">
                       <a href="RequestSong.jsp" class="btn btn-primary">Request Songs</a>
                </div>
                <form id="contact-form" action="ContactUsServlet" method="POST" class="tm-contact-form mx-auto">           
                    <div class="form-group">
                        <input type="text" name="name" class="form-control rounded-0" placeholder="Name" required />
                    </div>
                    <div class="form-group">
                        <input type="email" name="email" class="form-control rounded-0" placeholder="Email" required />
                    </div>
                    <div class="form-group">
                        <select class="form-control" id="contact-select" name="inquiry">
                            <option value="-">Subject</option>
                            <option value="new">Website issues</option>
                            <option value="creative">My Account</option>
                            <option value="Other">Other</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <textarea rows="8" name="message" class="form-control rounded-0" placeholder="Message" required=></textarea>
                    </div>

                    <div class="form-group tm-text-right">
                        <button type="submit" class="btn btn-primary">Send</button>
                    </div>
                    <%  
                    	String Output_msg = (String)request.getAttribute("message");
                		
                			if (Output_msg == null)
                				Output_msg = " ";
                    %> 
                    <label> <i><%=Output_msg %></i> </label>
                </form>                
            </div>
            <div class="col-lg-4 col-12 mb-5">
                <div class="tm-address-col">
                    <h2 class="tm-text-primary mb-5">Contact through</h2>
                    <address class="tm-text-gray tm-mb-50">
                        SLIIT Malabe Campus<br>
                        New Kandy Road,<br> 
                        Malabe.
                    </address>
                    <ul class="tm-contacts">
                        <li>
                            <a href="#" class="tm-text-gray">
                                <i class="fas fa-envelope"></i>
                                Email: info@sliit.lk
                            </a>
                        </li>
                        <li>
                            <a href="#" class="tm-text-gray">
                                <i class="fas fa-phone"></i>
                                Tel: +94 11 754 4801
                            </a>
                        </li>
                        <li>
                            <a href="#" class="tm-text-gray">
                                <i class="fas fa-globe"></i>
                                URL: www.sliit.lk
                            </a>
                        </li>
                    </ul>
                </div>                
            </div>
            <div class="col-lg-4 col-12">
                <h2 class="tm-text-primary mb-5">Our Location</h2>
                <!-- Map -->
                <div class="mapouter mb-4">
                    <div class="gmap-canvas">
                        <iframe width="100%" height="520" id="gmap-canvas"
                            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3960.798467112126!2d79.97075581329099!3d6.91468282041397!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae256db1a6771c5%3A0x2c63e344ab9a7536!2sSri%20Lanka%20Institute%20of%20Information%20Technology!5e0!3m2!1sen!2slk!4v1620604985439!5m2!1sen!2slk" 
                            frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
                    </div>
                </div>               
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