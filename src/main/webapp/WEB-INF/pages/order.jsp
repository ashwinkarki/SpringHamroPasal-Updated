<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product List</title>


<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style.css">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins">
<style>
body,h1,h2,h3,h4,h5 {font-family: "Poppins", sans-serif}
body {font-size:16px;}
.w3-half img{margin-bottom:-6px;margin-top:16px;opacity:0.8;cursor:pointer}
.w3-half img:hover{opacity:1}
</style>
</head>
<body>

    
  



<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:340px;margin-right:40px">

  <!-- Header -->
  <div class="w3-container" style="margin-top:80px" id="showcase">
  
    <h1 class="w3-xxxlarge w3-text-red"><b>Orders Detail</b></h1>
    <hr style="width:50px;border:5px solid red" class="w3-round">
  </div>
  
  <!-- Photo grid (modal) -->
  <div class="w3-row-padding">
    <div class="w3-half">
    
        <fmt:setLocale value="en_US" scope="session"/>

	
	<div class="customer-info-container">
		<h3>Customer Information:</h3>
		<ul>
			<li>Name: ${orderInfo.customerName}</li>
			<li>Email: ${orderInfo.customerEmail}</li>
			<li>Phone: ${orderInfo.customerPhone}</li>
			<li>Address: ${orderInfo.customerAddress}</li>
		</ul>
		<h3>Order Summary:</h3>
		<ul> 
			<li>Total:Rs.
			<span class="total">
			<fmt:formatNumber value="${orderInfo.amount}"s/>
			</span></li>
		</ul>
	</div>
	
	<br/> 
    
	<table border="1" style="width:100%">
		<tr>
			<th>Product Code</th>
			<th>Product Name</th>
			<th>Quantity</th>
			<th>Price</th>
			<th>Amount</th> 
		</tr>
		<c:forEach items="${orderInfo.details}" var="orderDetailInfo">
			<tr>
				<td>${orderDetailInfo.productCode}</td>
				<td>${orderDetailInfo.productName}</td>
				<td>${orderDetailInfo.quanity}</td>
				<td>
				 Rs.<fmt:formatNumber value="${orderDetailInfo.price}"/>
				</td>
				<td>
				 Rs.<fmt:formatNumber value="${orderDetailInfo.amount}"/>
				</td>  
			</tr>
		</c:forEach>
	</table>
	<c:if test="${paginationResult.totalPages > 1}">
		<div class="page-navigator">
           <c:forEach items="${paginationResult.navigationPages}" var = "page">
               <c:if test="${page != -1 }">
                 <a href="orderList?page=${page}" class="nav-item">${page}</a>
               </c:if>
               <c:if test="${page == -1 }">
                 <span class="nav-item"> ... </span>
               </c:if>
           </c:forEach>
			
		</div>
	</c:if>

        <a href="${pageContext.request.contextPath}/orderList">
            <span class="btn btn-danger">
                Back</span></a> 
        
        
    </div>

    





<script>
// Script to open and close sidebar
function w3_open() {
    document.getElementById("mySidebar").style.display = "block";
    document.getElementById("myOverlay").style.display = "block";
}
 
function w3_close() {
    document.getElementById("mySidebar").style.display = "none";
    document.getElementById("myOverlay").style.display = "none";
}

// Modal Image Gallery
function onClick(element) {
  document.getElementById("img01").src = element.src;
  document.getElementById("modal01").style.display = "block";
  var captionText = document.getElementById("caption");
  captionText.innerHTML = element.alt;
}
</script>

</body>
</html>
	
	



	

</body>
</html>