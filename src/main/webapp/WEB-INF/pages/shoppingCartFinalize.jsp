<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Shopping Cart Finalize</title>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style.css">

</head>
<body>
	<jsp:include page="_header.jsp" />


<center><div class="page-title" >
        <h1>Finalized</h1></div>
    
	<div class="container">
            <h4>Thank you for your order.<br>Remember us for easy shopping, great service and quality products.</h4>
            <h3>Your order number is: ${lastOrderedCart.orderNum}</h3>
	</div></center>

<center><jsp:include page="payment.jsp" /></center>

<jsp:include page="_footer.jsp" />


</body>
</html>