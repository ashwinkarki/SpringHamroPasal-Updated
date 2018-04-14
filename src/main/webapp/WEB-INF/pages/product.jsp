<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add product</title>
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
    
<!-- Sidebar/menu -->
<nav class="w3-sidebar w3-red w3-collapse w3-top w3-large w3-padding" style="z-index:3;width:300px;font-weight:bold;" id="mySidebar"><br>
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-button w3-hide-large w3-display-topleft" style="width:100%;font-size:22px">Close Menu</a>
  <div class="w3-container">
    <h3 class="w3-padding-64"><b>Welcome<br>Admin</b></h3>
  </div>
  <div class="w3-bar-block">
    <a href="#" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Create Product</a> 
       </div>
</nav>
<!-- Top menu on small screens -->
<header class="w3-container w3-top w3-hide-large w3-red w3-xlarge w3-padding">
  <a href="javascript:void(0)" class="w3-button w3-red w3-margin-right" onclick="w3_open()">?</a>
  <span>Your Store</span>
</header>
<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>
<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:340px;margin-right:40px">
  <!-- Header -->
  <div class="w3-container" style="margin-top:80px" id="showcase">
      <h1 class="w3-xxxlarge w3-text-red"><b>Create Product</b></h1>
    <hr style="width:50px;border:5px solid red" class="w3-round">
  </div>
    <!-- Photo grid (modal) -->
  <div class="w3-row-padding">
    <div class="w3-half">
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
<c:if test="${not empty errorMessage }">
      <div class="error-message">
          ${errorMessage}
      </div>
    </c:if>
	<form:form modelAttribute="productForm" method="POST" enctype="multipart/form-data">
		<table style="text-align:left;">
			<tr>
				<td>Product Code</td>
				<td style="color:red;">
				   <c:if test="${not empty productForm.code}">
				        <form:hidden path="code"/>
				        ${productForm.code}
				   </c:if>
				   <c:if test="${empty productForm.code}">
				        <form:input path="code" />
				        <form:hidden path="newProduct" />
				   </c:if>
				</td>
				<td><form:errors path="code" class="error-message" /></td>
			</tr>

			<tr>
				<td>Product Name</td>
				<td><form:input path="name" /></td>
				<td><form:errors path="name" class="error-message" /></td>
			</tr>

			<tr>
				<td>Product Price </td>
				<td><form:input path="price" /></td>
				<td><form:errors path="price" class="error-message" /></td>
			</tr>
			<tr>
				<td>Product Image</td>
				<td>
				<img src="${pageContext.request.contextPath}/productImage?code=${productForm.code}" width="100"/></td>
				<td> </td>
			</tr>
			<tr>
				<td>Upload Image</td>
				<td><form:input type="file" path="fileData"/></td>
				<td> </td>
			</tr>
                        <tr>
                      
                            <td>Category Name</td>
                            <td> <select name="catId">
                            <c:forEach items="${cat}" var="cate">
                            <option value="${cate.catId}">
                             ${cate.categoryName}
                              </option>
                               
                               </c:forEach>
                              </select>
                                 
                               
                            </td> 
                       
			</tr>
 			<tr>
				<td>&nbsp;</td>
				<td><input type="submit" value="Submit" /> <input type="reset"
					value="Reset" /></td>
			</tr>
		</table>
	</form:form>
<a href="${pageContext.request.contextPath}/accountInfo"><span class="btn btn-danger">
                Back</span></a> 
</body>
</html>