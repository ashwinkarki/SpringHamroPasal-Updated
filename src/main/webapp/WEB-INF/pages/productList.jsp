<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<link rel="stylesheet" type="text/css" href="styles.css">
<jsp:include page="_header.jsp" />
<div class="page-title"> <center><h1>Product List</h1></center></div>
        <fmt:setLocale value="en_US" scope="session"/>
        <c:forEach items="${paginationProducts.list}" var="prodInfo">
    <div class="col-md-4 agile_ecommerce_tab_left">
        <div class="hs-wrapper">
            <img src="${pageContext.request.contextPath}/productImage?code=${prodInfo.code}"alt=" " class="img-responsive" /> 
            <img src="${pageContext.request.contextPath}/productImage?code=${prodInfo.code}"alt=" " class="img-responsive" /> 
            <img src="${pageContext.request.contextPath}/productImage?code=${prodInfo.code}"alt=" " class="img-responsive" /> 
            <img src="${pageContext.request.contextPath}/productImage?code=${prodInfo.code}"alt=" " class="img-responsive" /> 
            <img src="${pageContext.request.contextPath}/productImage?code=${prodInfo.code}"alt=" " class="img-responsive" /> 
            <img src="${pageContext.request.contextPath}/productImage?code=${prodInfo.code}"alt=" " class="img-responsive" /> 
        </div>
        <h5><a href="#">${prodInfo.name}</a></h5>
        <!--Product list here -->
        <div class="simpleCart_shelfItem">
            <p>${prodInfo.price}</p>
            <form action="#" method="post">
                <input type="hidden" name="cmd" value="_cart" />
                <input type="hidden" name="add" value="1" />
                <input type="hidden" name="w3ls_item" value="${prodInfo.name}" /> 
                <input type="hidden" name="amount" value="${prodInfo.price}" />   
                <a href="${pageContext.request.contextPath}/buyProduct?code=${prodInfo.code}" class="btn btn-primary">
                    <span class="glyphicon glyphicon-shopping-cart">Add to Cart</a>
                    <security:authorize  access="hasRole('ROLE_MANAGER')">
                    
                        <br><button type="button" class="btn btn-success"><a href="${pageContext.request.contextPath}/product?code=${prodInfo.code}">Edit Product</button>
                    </security:authorize>
            </form>
        </div>
    </div>
    <!-- For Manager edit Product -->
</c:forEach>  
<c:if test="${paginationProducts.totalPages > 1}">
    <div class="page-navigator">
        <c:forEach items="${paginationProducts.navigationPages}" var = "page">
            <c:if test="${page != -1 }">
                <a href="productList?page=${page}" class="nav-item">${page}</a>
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