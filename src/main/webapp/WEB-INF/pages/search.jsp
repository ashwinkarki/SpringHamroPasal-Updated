<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
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
         function hideURLbar(){ window.scrollTo(0,1); } 
      </script>
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
      <link rel="stylesheet" href="${pageContext.request.contextPath}/css/jquery.countdown.css" />
      <!-- countdown --> 
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
       <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles.css">
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
         </ul>
      </div>
      
      <script>
         $('#myModal88').modal('show');
      </script>  
      <!-- header modal -->
      
      <!-- Seach Form -->
                      <jsp:include page="_header.jsp" />

      <form method="POST" action="${pageContext.request.contextPath}/search">
          Keyword <input type="text" name="keyword"/>
          <input type="submit" value ="Submit"/>
      </form>
      
          <!-- Show value -->
          
          <c:if test="${not empty paginationResults}">
              <div style="border:1px solid blue;">
                  
                  <c:forEach var = "product" items="${paginationResults.list}">
                      <div style="border:1px solid red;padding:10px;">
                           <div class="product-preview-container">
                               <ul>
                       <li><img class="product-image"
                   src="${pageContext.request.contextPath}/productImage?code=${product.code}" style="width:100%" style="height:100%" alt="Image"/></li>
                       <center><li>${product.name}</li>
                         <li> Rs.${product.price}</li>
                          <li><a
                       href="${pageContext.request.contextPath}/buyProduct?code=${product.code}" class="btn btn-primary">
                       <span class="glyphicon glyphicon-shopping-cart">Add To Cart</a></li> </center> 
                      </div>
                      
                      </c:forEach>
                  
                  
              </div>
              
          </c:if>
      <!-- Show navigator -->
         <c:if test="${paginationResults.totalPages > 1}">
       <div class="page-navigator">
          <c:forEach items="${paginationResults.navigationPages}" var = "page">
              <c:if test="${page != -1 }">
                <a href="?page=${page}&keyword=${keyword}" class="nav-item">${page}</a>
              </c:if>
              <c:if test="${page == -1 }">
                <span class="nav-item"> ... </span>
              </c:if>
          </c:forEach>
        
       </div>
   </c:if>
      
      
   
      <jsp:include page="_footer.jsp" />
   </body>
</html>