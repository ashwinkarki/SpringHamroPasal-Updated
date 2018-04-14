<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>    
<!-- //navigation -->
<!-- banner -->
<div class="banner">
    <div class="container">
        <h3>Electronic Store, <span>Special Offers</span></h3>
    </div>
</div>
<!-- //banner --> 
<!-- banner-bottom -->
<ul id="myTab" class="nav nav-tabs" role="tablist">
    <!--Category List -->
    <c:forEach items="${categories}" var="cat" varStatus="theCount">
        <c:if test="${theCount.index == 0}">
            <c:set var ="role" value="active"/>
            <c:set var ="active" value="active"/>
        </c:if>
        <c:if test="${theCount.index != 0}">
            <c:set var ="role" value="presentation"/>
            <c:set var ="active" value=""/>
        </c:if>
        <li role="${role}" class="${active}">
            <a href="#aaa-${cat.catId}" id="aaa-${cat.catId}-tab" 
               role="tab" data-toggle="tab"
               aria-controls="aaa-${cat.catId}">
                ${cat.categoryName}
            </a>
        </li>
    </c:forEach>
</ul>
<div id="myTabContent" class="tab-content">
    <!-- START -->
    <!-- current category -->
    <c:forEach items="${categories}" var="cat" varStatus="idx">
        <!-- Product List for each category -->
        <div role="tabpanel" 
             class="tab-pane fade active in" 
             id="aaa-${cat.catId}"
             aria-labelledby="aaa-${cat.catId}-tab">
            <div class="agile_ecommerce_tabs">
                <!-- now products here are all product in the DB-->
                <c:forEach items="${cat.products}" var ="prod">
                    <!-- Start a product -->    
                    <div class="col-md-4 agile_ecommerce_tab_left">
                        <div class="hs-wrapper">
                            <img src="${pageContext.request.contextPath}/productImage?code=${prod.code}"
                                 alt=" " class="img-responsive" /> 
                            <img src="${pageContext.request.contextPath}/productImage?code=${prod.code}"
                                 alt=" " class="img-responsive" /> 
                            <img src="${pageContext.request.contextPath}/productImage?code=${prod.code}"
                                 alt=" " class="img-responsive" /> 
                            <img src="${pageContext.request.contextPath}/productImage?code=${prod.code}"
                                 alt=" " class="img-responsive" /> 
                            <img src="${pageContext.request.contextPath}/productImage?code=${prod.code}"
                                 alt=" " class="img-responsive" /> 
                            <img src="${pageContext.request.contextPath}/productImage?code=${prod.code}"
                                 alt=" " class="img-responsive" /> 
                        </div>
                        <h5><a href="single.html">${prod.name}</a></h5>
                        <!--Product list here -->
                        <div class="simpleCart_shelfItem">
                            &#8360.<p>${prod.price}</p>
                            <form action="#" method="post">
                                <input type="hidden" name="cmd" value="_cart" />
                                <input type="hidden" name="add" value="1" />
                                <input type="hidden"  value="${prod.name}" /> 
                                <input type="hidden" name="amount" value="${prod.price}" />   
                                <a href="${pageContext.request.contextPath}/buyProduct?code=${prod.code}" class="btn btn-primary">
                                    <span class="glyphicon glyphicon-shopping-cart">Add to cart</a>
                            </form>
                        </div>
                    </div>
                    <!-- end of product -->   
                </c:forEach>
                <div class="clearfix"> </div>
            </div>
        </div>
    </c:forEach>
    <!-- END -->
</div>
