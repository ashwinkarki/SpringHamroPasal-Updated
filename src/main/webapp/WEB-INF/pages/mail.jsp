<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Hamro Pasal</title>
        <!-- for-mobile-apps -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Electronic Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              SmartPhone Compatible web template, free web designs for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
            function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- //for-mobile-apps -->
        <!-- Custom Theme files -->
        <link href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" media="all" />
        <link href="${pageContext.request.contextPath}/css/fasthover.css" rel="stylesheet" type="text/css" media="all" />
        <link href="${pageContext.request.contextPath}/css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
        <!-- //Custom Theme files -->
        <!-- font-awesome icons -->
        <link href="${pageContext.request.contextPath}/css/font-awesome.css" rel="stylesheet"> 
        <!-- //font-awesome icons -->
        <!-- js -->
        <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/jquery.countdown.css" /> <!-- countdown --> 
        <!-- //js -->  
        <!-- web fonts --> 
        <link href='//fonts.googleapis.com/css?family=Glegoo:400,700' rel='stylesheet' type='text/css'>
        <link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
        <!-- //web fonts -->  
        <!-- start-smooth-scrolling -->
        <script type="text/javascript">
            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();
                    $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
                });
            });
        </script>
        <!-- //end-smooth-scrolling -->
        <style>
            form {
                border: 3px solid #f1f1f1;
            }

            input[type=text], input[type=password] {
                width: 100%;
                padding: 12px 20px;
                margin: 8px 0;
                display: inline-block;
                border: 1px solid #ccc;
                box-sizing: border-box;
            }

            button {
                background-color: #4CAF50;
                color: white;
                padding: 14px 20px;
                margin: 8px 0;
                border: none;
                cursor: pointer;
                width: 100%;
            }

            button:hover {
                opacity: 0.8;
            }

            

            .imgcontainer {
                text-align: center;
                margin: 24px 0 12px 0;
            }

            img.avatar {
                width: 40%;
                border-radius: 50%;
            }

            .container {
                padding: 16px;
            }

            span.psw {
                float: right;
                padding-top: 16px;
            }

            
        </style>
    </head>
    <body>
        <!-- for bootstrap working -->
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap-3.1.1.min.js"></script>
        <!-- //for bootstrap working -->
        <!-- header modal -->
        <script src="easyResponsiveTabs.js" type="text/javascript"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                $('#horizontalTab').easyResponsiveTabs({
                    type: 'default', //Types: default, vertical, accordion           
                    width: 'auto', //auto or any width like 600px
                    fit: true   // 100% fit in a container
                });
            });
        </script>
    </div>
    <div class="col-md-12">
        <ul class="social">
            <li class="social_facebook"><a href="https://www.facebook.com/Pasaley"target="_blank"><i class="entypo-facebook"></i></a></li>
        </ul>
    </div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<script>
    $('#myModal88').modal('show');
</script>  
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
                        <center><ul class="nav navbar-nav">
                                <!-- Mega Menu -->
                                <li><a href="${pageContext.request.contextPath}/">Home</a></li>	
                                <li><a href="${pageContext.request.contextPath}/productList">Products</a></li>
                                <li><a href="${pageContext.request.contextPath}/login"<span class="btn btn-success">Login</a></li>
                                <li><a href="${pageContext.request.contextPath}/about">About Us</a></li> 
                                <li><a href="${pageContext.request.contextPath}/faq"> FAQ</a></li>
                            </ul></center>
                </div>
                </nav>
            </div>

            <form method="post" action="${pageContext.request.contextPath}/saves">
                <center>
                    <table>
                        <tr>
                            <td>
                        <center><h2>Mail Us</h2></center>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input type="text" placeholder="Your Email" name="email" size="150">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <textarea name="suggestion" placeholder="Suggestion" cols="156" row="6" ></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                        <td> <center>
                                <input style="color: red" type="reset" value="Reset">
                                <button type="submit" class="btn btn-success">Submit</button>
                            </center></td>
                        </tr>
                    </table>
                </center>
            </form>