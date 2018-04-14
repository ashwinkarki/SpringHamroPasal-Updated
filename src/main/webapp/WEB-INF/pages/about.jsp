<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Developers Details</title>
        <!-- for-mobile-apps -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Electronic Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              SmartPhone Compatible web template, free web designs for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
            function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- //for-mobile-apps -->
        <!-- Custom Theme files -->
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" /> 
        <!-- //Custom Theme files -->
        <!-- font-awesome icons -->
        <link href="css/font-awesome.css" rel="stylesheet"> 
        <!-- //font-awesome icons -->
        <!-- js -->
        <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script> 
        <!-- //js -->  
        <!-- web fonts --> 
        <link href='//fonts.googleapis.com/css?family=Glegoo:400,700' rel='stylesheet' type='text/css'>
        <link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
        <!-- //web fonts --> 
        <!-- for bootstrap working -->
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap-3.1.1.min.js"></script>
        <!-- //for bootstrap working -->
        <!-- start-smooth-scrolling -->
        <script type="text/javascript">
            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();
                    $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
                });
            });
        </script>
        <div class="col-md-12">
            <ul class="social">
                <li class="social_facebook"><a href="https://www.facebook.com/Pasaley"target="_blank"><i class="entypo-facebook"></i></a></li>
            </ul>
        </div>    </head> 
    <body> 
        <!-- header modal -->
        <div class="modal fade" id="myModal88" tabindex="-1" role="dialog" aria-labelledby="myModal88"
             aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                            &times;</button>
                        <h4 class="modal-title" id="myModalLabel">Don't Wait, Login now!</h4>
                    </div>
                    <div class="modal-body modal-body-sub">
                        <div class="row">
                            <div class="col-md-8 modal_body_left modal_body_left1" style="border-right: 1px dotted #C2C2C2;padding-right:3em;">
                                <div class="sap_tabs">	
                                    <div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
                                        <ul>
                                            <li class="resp-tab-item" aria-controls="tab_item-0"><span>Sign in</span></li>
                                            <li class="resp-tab-item" aria-controls="tab_item-1"><span>Sign up</span></li>
                                        </ul>		
                                        <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
                                            <div class="facts">
                                                <div class="register">
                                                    <form action="#" method="post">			
                                                        <input name="Email" placeholder="Email Address" type="text" required="">						
                                                        <input name="Password" placeholder="Password" type="password" required="">										
                                                        <div class="sign-up">
                                                            <input type="submit" value="Sign in"/>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div> 
                                        </div>	 
                                        <div class="tab-2 resp-tab-content" aria-labelledby="tab_item-1">
                                            <div class="facts">
                                                <div class="register">
                                                    <form action="#" method="post">			
                                                        <input placeholder="Name" name="Name" type="text" required="">
                                                        <input placeholder="Email Address" name="Email" type="email" required="">	
                                                        <input placeholder="Password" name="Password" type="password" required="">	
                                                        <input placeholder="Confirm Password" name="Password" type="password" required="">
                                                        <div class="sign-up">
                                                            <input type="submit" value="Create Account"/>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div> 			        					            	      
                                    </div>	
                                </div>
                                <script src="${pageContext.request.contextPath}/js/easyResponsiveTabs.js" type="text/javascript"></script>
                                <script type="text/javascript">
            $(document).ready(function () {
                $('#horizontalTab').easyResponsiveTabs({
                    type: 'default', //Types: default, vertical, accordion           
                    width: 'auto', //auto or any width like 600px
                    fit: true   // 100% fit in a container
                });
            });
                                </script>
                                <div id="OR" class="hidden-xs">OR</div>
                            </div>
                            <div class="col-md-4 modal_body_right modal_body_right1">
                                <div class="row text-center sign-with">
                                    <div class="col-md-12">
                                        <h3 class="other-nw">Sign in with</h3>
                                    </div>
                                    <div class="col-md-12">
                                        <ul class="social">
                                            <li class="social_facebook"><a href="#" class="entypo-facebook"></a></li>
                                            <li class="social_dribbble"><a href="#" class="entypo-dribbble"></a></li>
                                            <li class="social_twitter"><a href="#" class="entypo-twitter"></a></li>
                                            <li class="social_behance"><a href="#" class="entypo-behance"></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> 
        <!-- header modal -->
        <!-- header -->
    <center><div class="header" id="home1">
            <div class="container">
                <div class="btn btn-warning container-fluid" style="float: left;" >  
                    <li><a href="${pageContext.request.contextPath}/search"><span class="glyphicon glyphicon search_form"></span>Search</a></li>
                </div>
                <div class="w3l_logo">
                    <h1><a href="index.html">Hamro Pasal<span>Your stores. Your place.</span></a></h1>
                </div>

                <div class="btn btn-info container-fluid" style="float: right;" >  
                    <li><a href="${pageContext.request.contextPath}/shoppingCart"><span class="glyphicon glyphicon-shopping-cart"></span>My Cart</a></li>
                </div></center>
                <!-- //header -->
                <!-- navigation -->
                <div class="navigation">
                    <div class="container">
                        <nav class="navbar navbar-default">
                            <!-- Brand and toggle get grouped for better mobile display -->
                            <div class="navbar-header nav_2">
                                <img src="${pageContext.request.contextPath}/images/7.png" alt="Logo" style="width:64px;height:60px;">
                                <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                            </div> 
                            <center><div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
                                    <ul class="nav navbar-nav">
                                        <li><a href="${pageContext.request.contextPath}/">Home</a></li>	
                                        <!-- Mega Menu -->
                                        <li><a href="${pageContext.request.contextPath}/productList">Products</a></li>
                                        <li><a href="${pageContext.request.contextPath}/login"<span class="btn btn-success">Login</a></li>
                                        <li><a href="${pageContext.request.contextPath}/mail">Mail Us</a></li>
                                        <li><a href="${pageContext.request.contextPath}/faq"><span class="glyphicon" aria-hidden="true"></span> FAQ</a></li>
                                    </ul>
                                </div></center>
                        </nav>
                    </div>
                </div>
                <!-- //navigation -->
                <!-- banner -->
                <div class="banner banner10">
                    <div class="container">
                        <h2>About Us</h2>
                    </div>
                </div>
                <!-- //banner -->   
                <!-- breadcrumbs -->
                <div class="breadcrumb_dress">
                    <div class="container">
                        <ul>
                            <li><a href="${pageContext.request.contextPath}/"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Home</a> <i>/</i></li>
                            <li><a href="${pageContext.request.contextPath}/about"><span class="glyphicon" aria-hidden="true"></span> About us</a></li>
                        </ul>
                    </div>
                </div>
                <!-- //breadcrumbs --> 
                <!-- about -->
                <div class="about">
                    <div class="container">	
                        <div class="w3ls_about_grids">
                            <div class="col-md-6 w3ls_about_grid_left">
                                <p>Hamro Pasal is a Ecommerce webapp designed and developed as a major project system.</p>
                                <div class="col-xs-2 w3ls_about_grid_left1">
                                    <span class="glyphicon glyphicon-new-window" aria-hidden="true"></span>
                                </div>
                                <div class="col-xs-10 w3ls_about_grid_left2">
                                    <p>This wepapp is developed by Nischal Khanal, Anish Thapa, Karan Shrestha & Ashwin Karki.</p>
                                </div>
                                <div class="clearfix"> </div>
                                <div class="col-xs-2 w3ls_about_grid_left1">
                                    <span class="glyphicon glyphicon-flash" aria-hidden="true"></span>
                                </div>
                                <div class="col-xs-10 w3ls_about_grid_left2">
                                    <p>We are a group of friends currently studying Computer Engineering in Advanced College of Engineering and Management.</p>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                            <div class="col-md-6 w3ls_about_grid_right">
                                <img src="${pageContext.request.contextPath}/images/hp.jpg" alt=" " class="img-responsive" />
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                    </div>
                </div>
                <!-- //about --> 
                <!-- team -->
                <div class="team">
                    <div class="container">
                        <h3>Meet Our Team</h3>
                        <div class="wthree_team_grids">
                            <div class="col-md-3 wthree_team_grid">
                                <img src="${pageContext.request.contextPath}/images/nischal.jpg" alt=" " class="img-responsive" />
                                <h4>Nischal Khanal <span>CEO</span></h4>
                                <div class="agileits_social_button">
                                    <ul>
                                        <li><a href="https://www.facebook.com/nickhanal" target="_blank"><i class="facebook"> </i></a></li>
                                        <li><a href="https://www.twitter.com/nickhnl7" target="_blank" <i class="twitter"></i> </a></li>
                                        <li><a href="https://www.gmail.com/nickkhnl" target="_blank" <i class="google"></i> </a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-md-3 wthree_team_grid">
                                <img src="${pageContext.request.contextPath}/images/anish_1.jpg" alt=" " class="img-responsive" />
                                <h4>Anish Thapa <span>Manager</span></h4>
                                <div class="agileits_social_button">
                                    <ul>
                                        <li><a href="https://www.facebook.com/anish.thapa.507" target="_blank"><i class="facebook"> </i></a></li>
                                        <li><a href="#" class="twitter"> </a></li>
                                        <li><a href="#" class="google"> </a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-md-3 wthree_team_grid">
                                <img src="${pageContext.request.contextPath}/images/karan.jpg" alt=" " class="img-responsive" />
                                <h4>Karan Shrestha <span>Director</span></h4>
                                <div class="agileits_social_button">
                                    <ul>
                                        <li><a href="https://www.facebook.com/karan.shrestha.1000" target="_blank"><i class="facebook"> </i></a></li>
                                        <li><a href="#" class="twitter"> </a></li>
                                        <li><a href="#" class="google"> </a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-md-3 wthree_team_grid">
                                <img src="${pageContext.request.contextPath}/images/ashwin.jpg" alt=" " class="img-responsive" />
                                <h4>Ashwin Karki <span>Designer</span></h4>
                                <div class="agileits_social_button">
                                    <ul>
                                        <li><a href="https://www.facebook.com/ashwin.karki123" target="_blank"><i class="facebook"/> </a></li>
                                        <li><a href="#" class="twitter"> </a></li>
                                        <li><a href="#" class="google"> </a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="clearfix"> </div>
                            <p>Contact us through our social sites.</p>
                        </div>
                    </div>
                </div>
                <!-- //team -->
                <!-- team-bottom -->
                <div class="team-bottom">
                    <div class="container">
                        <h3>Are You Ready For Deals? Flat <span>30% Offer </span>on Mobiles</h3>
                        <p>Shop with us for quality products with great discounts.</p>
                        <a href="${pageContext.request.contextPath}/productList.html">Shop Now</a>
                    </div>
                </div>
                <!-- //team-bottom -->
                <!-- newsletter -->
                
                <!-- //newsletter -->
                <!-- footer -->
                <div class="footer">
                    <div class="container">
                        <div class="w3_footer_grids">
                            <div class="col-md-3 w3_footer_grid">
                                <h3>Contacts</h3>
                                <p></p>
                                <ul class="address">
                                    <li><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i>Kupondole,Lalitpur</li>
                                    <li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a href="mailto:info@example.com">admin@gmail.com</a></li>
                                    <li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>9860924277</li>
                                </ul>
                            </div>


                            <h4></h4>
                            <div class="agileits_social_button">
                                <ul>
                                    <li><a href="https://www.facebook.com/Pasaley" target="_blank"> <i class="facebook"> </i></a></li>
                                    <li><a href="https://www.twitter.com/nickhnl7" target="_blank" <i class="twitter"></i> </a></li>
                                    <li><a href="https://www.gmail.com/nickkhnl" target="_blank" <i class="google"></i> </a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                </div>
                <div class="footer-copy">
                    <div class="footer-copy1">
                        <div class="footer-copy-pos">
                            <a href="#home1" class="scroll"><img src="images/arrow.png" alt=" " class="img-responsive" /></a>
                        </div>
                    </div>
                    <div class="container">
                        <p>&copy; 2017 hamropasal.com | All rights reserved | Developed & designed by <a href="${pageContext.request.contextPath}/"> Team HamroPasal</p>
                    </div>
                </div>
            </div>
