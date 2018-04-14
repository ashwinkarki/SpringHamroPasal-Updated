<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Shopping Cart</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles.css">
    </head>
    <body>
        <jsp:include page="_header.jsp" />
        <fmt:setLocale value="en_US" scope="session"/>
        <div class="page-title"><h1><center> My Cart </center></h1></div>
        <br/><br/><br/><br/>
        <c:if test="${empty cartForm or empty cartForm.cartLines}">
            <h1 style="color:red" align="center">There are no items in Cart. Please order first.</h1><br><br><br/>
            <a href="${pageContext.request.contextPath}/productList" class="btn btn-success" align="center">Show
                Product List</a>
            </c:if>
            <c:if test="${not empty cartForm and not empty cartForm.cartLines   }">
                <form:form method="POST" modelAttribute="cartForm"
                           action="${pageContext.request.contextPath}/shoppingCart">

                <c:forEach items="${cartForm.cartLines}" var="cartLineInfo"
                           varStatus="varStatus">
                    <div class="product-preview-container">
                        <center><ul>
                                <li><img class="product-image"
                                         src="${pageContext.request.contextPath}/productImage?code=${cartLineInfo.productInfo.code}" style="width:100%" style="height:120%" alt="Image" />
                                </li>
                                
                                <li>Name: ${cartLineInfo.productInfo.name}</li>
                                <li>Price: <span class="price"> &#8360;
                                        <fmt:formatNumber value="${cartLineInfo.productInfo.price}"/>
                                    </span></li>
                                <li>Quantity: <form:input
                                        path="cartLines[${varStatus.index}].quantity" /></li>
                                <li>Subtotal: 
                                    <span class="subtotal">&#8360;
                                        <fmt:formatNumber value="${cartLineInfo.amount}"/>
                                    </span>
                                </li>
                                <li><a href="${pageContext.request.contextPath}/shoppingCartRemoveProduct?code=${cartLineInfo.productInfo.code}" class="btn-danger">
                                        Delete </a></li>
                            </ul></center>
                    </div>
                </c:forEach>
                <div style="clear: both"></div>
                <input class="btn btn-danger" type="submit" value="Update Quantity" />
                <a class="btn btn-success" 
                   href="${pageContext.request.contextPath}/productList" class="btn btn-Info">Add More</a>
                <a class="btn btn-info"
                   href="${pageContext.request.contextPath}/shoppingCartCustomer" class="btn btn-Warning">Proceed</a>

            </form:form>
        </c:if>
        <jsp:include page="footer.jsp" />
    </body>
</html>