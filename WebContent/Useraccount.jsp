<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="fontawesome/css/all.min.css">
    <link rel="stylesheet" href="css/templatemo-style.css">
    <!--  user-->
    
    
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="stylesheet" href="css/UsserAcount.css">
    
  
    <script src="js/checkReantedPassword.js"> </script>
    
    
    
    
  
    
    
    
    
    
    <!--user-->
    <style>
    
    .hov:hover {
     color: SeaGreen;
     background-color: transparent;
     text-decoration: underline;
     }
     
     .hov{color:DodgerBlue; text-decoration: none;}
     
     
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
                    <a class="nav-link nav-link-4 "  href="contact.jsp">Contact</a>
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
            
            <!-- userAccount  -->
             <div class="container main-secction">
        <div class="row">
           
            <div class="row user-left-part">
                <div class="col-md-3 col-sm-3 col-xs-12 user-profil-part pull-left">
                    <div class="row ">
                        <div class="col-md-12 col-md-12-sm-12 col-xs-12 user-image text-center">
                            <img src="https://www.jamf.com/jamf-nation/img/default-avatars/generic-user-purple.png" class="rounded-circle">
                        </div>
                        <div class="col-md-12 col-sm-12 col-xs-12 user-detail-section1 text-center">
                            <button id="btn-contact" (click)="clearModal()" data-toggle="modal" data-target="#contact" class="btn btn-success btn-block follow">Change Password</button> 
                            <button id="btn-contact" (click)="clearModal()" data-toggle="modal" data-target="#contact2" class="btn btn-success btn-block follow">Delete Account</button> 
                          <!--  <button class="btn btn-warning btn-block">Descargar Curriculum</button>    -->                             
                        </div>
                        <div class="row user-detail-row">
                            <div class="col-md-12 col-sm-12 user-detail-section2 pull-left">
                                <div class="border"></div>
                                
                            </div>                           
                        </div>
                       
                    </div>
                </div>
                <div class="col-md-9 col-sm-9 col-xs-12 pull-right profile-right-section">
                    <div class="row profile-right-section-row">
                        <div class="col-md-12 profile-header">
                            <div class="row">
                                <div class="col-md-8 col-sm-6 col-xs-6 profile-header-section1 pull-left">
                                    <h1>User Profile</h1>
                                    <h5></h5>
                                </div>
                                <div class="col-md-4 col-sm-6 col-xs-6 profile-header-section1 text-right pull-rigth">
                                    <a href="index.jsp" class="btn btn-primary btn-block">Log Out</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="row">
                                <div class="col-md-8">
                                        <ul class="nav nav-tabs" role="tablist">
                                                <li class="nav-item">
                                                  <a class="nav-link active" href="#profile" role="tab" data-toggle="tab"><i class="fas fa-user-circle"></i> User Profile</a>
                                                </li>
                                                <li class="nav-item">
                                                  <a class="nav-link" href="#buzz" role="tab" data-toggle="tab"><i class="fas fa-edit"></i> Edit profile </a>
                                                </li>                                                
                                              </ul>
                                              <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    										<%@ page import = "java.util.*,com.oop.model.User" %>
                                              <!-- Tab panes -->
                                              
                                              
                                              <c:forEach var = "uniqueCustomer"  items= "${user}">
                                              	<c:set var = "userID" value = "${uniqueCustomer.userID}"/>
                                              	<c:set var = "fistName" value = "${uniqueCustomer.firstName}"/>
                                              	<c:set var = "lastName" value = "${uniqueCustomer.lastName}"/>
                                              	<c:set var = "Address" value = "${uniqueCustomer.address}"/>
                                              	<c:set var = "city" value = "${uniqueCustomer.city}"/>
                                              	<c:set var = "country" value = "${uniqueCustomer.country}"/>
                                              	<c:set var = "email" value = "${uniqueCustomer.email}"/>
                                              	<c:set var = "password" value = "${uniqueCustomer.password}"/>
                                            
                                             
                                              
                                             
                                              <div class="tab-content">
                                                <div role="tabpanel" class="tab-pane fade show active" id="profile">
                                                        <div class="row">
                                                                <div class="col-md-2">
                                                                    <label>ID</label>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <p>${uniqueCustomer.userID}</p>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-2">
                                                                    <label>Name</label>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <p>${uniqueCustomer.firstName} ${uniqueCustomer.lastName}</p>
                                                                </div>
                                                            </div>
                                                            
                                                            <div class="row">
                                                                <div class="col-md-2">
                                                                    <label>Email</label>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <p>${uniqueCustomer.email}</p>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-2">
                                                                    <label>Address</label>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <p>${uniqueCustomer.address}</p>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-2">
                                                                    <label>City</label>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <p>${uniqueCustomer.city}</p>
                                                                </div>
                                                            </div>
                                                             <div class="row">
                                                                <div class="col-md-2">
                                                                    <label>Country</label>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <p>${uniqueCustomer.country}</p>
                                                                </div>
                                                            </div>
                                                </div>
                                                
                                                <div role="tabpanel" class="tab-pane fade" id="buzz">
                                                      <br>
                                                   
                                                       <form  id="login-form" action="UserAccontUpdateServlet" class="needs-validation" method="post" novalidate>
                                                       		
                                                       		<input type="hidden"  value="${uniqueCustomer.userID}"  name="userID" required>
                                                            <div class="row">
                                                                <div class="col-md-2">
                                                                    <label for="name">First_Name</label>
                                                                </div>
                                                                <div class="col-md-6">
                                                                     <input type="text" class="form-control" class="form-control" name="firstName" value="${uniqueCustomer.firstName}" required>
                                                                </div>
                                                            </div>
                                                             <br>
                                                             <div class="row">
                                                                <div class="col-md-2">
                                                                    <label for="name">Last_Name</label>
                                                                </div>
                                                                <div class="col-md-6">
                                                                     <input type="text" class="form-control" class="form-control" name="lastName" value="${uniqueCustomer.lastName}" required>
                                                                </div>
                                                            </div>
                                                             <br>
                                                            <div class="row">
                                                                <div class="col-md-2">
                                                                    <label for="email">Email</label>
                                                                </div>
                                                                <div class="col-md-6">
                                                                	<input type="email" class="form-control" id="inputEmail"  name="email" value="${uniqueCustomer.email}" required>
                                                                    
                                                                </div>
                                                            </div>
                                                             <br>
                                                            <div class="row">
                                                                <div class="col-md-2">
                                                                    <label for ="adress">Address</label>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <input type="text" class="form-control" id="inputAddress" name="address" value="${uniqueCustomer.address}" required>
                                                                </div>
                                                            </div>
                                                            <br>
                                                            <div class="row">
                                                                <div class="col-md-2">
                                                                    <label for="city">City</label>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <input type="text" class="form-control" id="inputCity"   name="city" value="${uniqueCustomer.city}" required>
                                                                </div>
                                                            </div>
                                                             <br>
                                                             <div class="row">
                                                                <div class="col-md-2">
                                                                    <label for="contry">Country</label>
                                                                </div>
                                                                <div class="col-md-6">
                                                                		<input type="text" class="form-control" id="inputState"  name="country" value="${uniqueCustomer.country}" required>
								                                      
                                                                </div>
                                                            </div>
                                                            <br>
                                                             <button type="submit" class="btn btn-primary">Save	</button>
                                                        </form> 
                                                         </c:forEach>    
                                                </div>
                                                
                                              </div>
                          
                                </div>
                                <div class="col-md-4 img-main-rightPart">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="row image-right-part">
                                                <div class="col-md-6 pull-left image-right-detail">
                                                    <h6></h6>
                                                </div>
                                            </div>
                                        </div>
                                        <a href="http://camaradecomerciozn.com/">
                                            <div class="col-md-12 image-right">
                                               <a class="navbar-brand" href="index.jsp">
									                <h2>  <i class="fas fa-film mr-2"></i>
									                SingMe</h2>
									            </a>
                                            </div>
                                        </a>
                                        <div class="col-md-12 image-right-detail-section2">

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- pop up o1 -->
    
    					
                                               	<c:forEach var = "uniqueCustomer"  items= "${user}">
                                              	<c:set var = "userID" value = "${uniqueCustomer.userID}"/>
                                              	<c:set var = "fistName" value = "${uniqueCustomer.firstName}"/>
                                              	<c:set var = "lastName" value = "${uniqueCustomer.lastName}"/>
                                              	<c:set var = "Address" value = "${uniqueCustomer.address}"/>
                                              	<c:set var = "city" value = "${uniqueCustomer.city}"/>
                                              	<c:set var = "country" value = "${uniqueCustomer.country}"/>
                                              	<c:set var = "email" value = "${uniqueCustomer.email}"/>
                                              	<c:set var = "password" value = "${uniqueCustomer.password}"/>
       
    
    
    <div class="modal fade" id="contact" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
        
            <div class="modal-content">
            <form  id="login-form" action="UserAccChengePassword" class="needs-validation" method="post"  onsubmit="return checkpassword()" novalidate> 
                <div class="modal-header">
                    <h5 class="modal-title" id="contact">Change Password</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true"> X</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <p for="msj"></p>
                    </div>
                    
                    <div class="form-group">
                        <label for="txtFullname"></label>
                        <input type="hidden" id="txtFullname" class="form-control"  name="UserId" value="${uniqueCustomer.userID}" required>
                    </div>
                    <div class="form-group">
                        <label for="txtEmail">New Password</label>
                        <input type="password" id="pw" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label for="txtPhone">Re-enter New Password</label>
                        <input type="password" id="repw" class="form-control"  name="password" required>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="Reset" class="btn btn-secondary" >Reset</button>
                    <button type="submit" class="btn btn-primary" (click)="openModal()" >Change</button>
                </div>
               </form> 
            </div>
           
        </div>
    </div>
    
     </c:forEach>  
    
    <!-- pop up o2 -->
    
                                               	<c:forEach var = "uniqueCustomer"  items= "${user}">
                                              	<c:set var = "userID" value = "${uniqueCustomer.userID}"/>
                                              	<c:set var = "fistName" value = "${uniqueCustomer.firstName}"/>
                                              	<c:set var = "lastName" value = "${uniqueCustomer.lastName}"/>
                                              	<c:set var = "Address" value = "${uniqueCustomer.address}"/>
                                              	<c:set var = "city" value = "${uniqueCustomer.city}"/>
                                              	<c:set var = "country" value = "${uniqueCustomer.country}"/>
                                              	<c:set var = "email" value = "${uniqueCustomer.email}"/>
                                              	<c:set var = "password" value = "${uniqueCustomer.password}"/>
       
                                              	
      <div class="modal fade" id="contact2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
        
            <div class="modal-content">
            <form  id="login-form" action="UserAccountDeleteServelet" class="needs-validation" method="post"  novalidate> 
                <div class="modal-header">
                    <h5 class="modal-title" id="contact">Delete account</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">X</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <p for="msj"></p>
                    </div>
                    <p>Once you click delete button, your account will be deleted permanently. If you clicked by an accidentally, please contact us</p>
                    <input type="hidden" value="${uniqueCustomer.userID}"  name="userID" required>
                	
                	
               </div>
                <div class="modal-footer">
                   
                    <button type="submit" class="btn btn-primary" (click)="openModal()" >Delete</button>
                </div>
               </form> 
                
            </div>
           
        </div>
    </div>
    </c:forEach>      
             <!-- userAccount  -->
             
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