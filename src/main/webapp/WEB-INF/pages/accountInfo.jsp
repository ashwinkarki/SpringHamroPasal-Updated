<jsp:include page="accountinfoheader.jsp" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="btn-warning">
    <ul>
        <h1><li>User Name: ${pageContext.request.userPrincipal.name}</li></h1>
        <li>
            <h1>Role:
                <ul>
                    <c:forEach items="${userDetails.authorities}" var="auth">
                        <li>${auth.authority }</li></h1>
                        </c:forEach>
    </ul>
</div>
<center>
    <br>
    <h1>
        <a href="${pageContext.request.contextPath}/orderList" class="btn-success">Order List</a>
        <br><br> <a href="${pageContext.request.contextPath}/product" class="btn-primary">Create Product</a>

    </h1>
    </br>
    <form method="post" action="${pageContext.request.contextPath}/save">
        <center>
            <table>
                <tr>
                    <td>
                        <h2>FAQ:</h2>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="text" placeholder="question" name="question" size="150">
                    </td>
                </tr>
                <tr>
                    <td>
                        <textarea name="answer" placeholder="answer" cols="150" row="6" ></textarea>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td> 
                        <input style="color: red" type="reset" value="Reset">
                        <button type="submit" class="btn btn-success">Save</button></center>
                    </td>
                </tr>
            </table>
        </center>
    </form>
</center>

<!--Email-->
<div class="btn-primary">
    <h1> Suggestion from customers</h1></div>
    <c:forEach items="${emails}" var="e">
    <h2>${e.id}.${e.email}</h2>
    <p><h4><b>Suggestion.</b> ${e.suggestion}</h4></p>
</c:forEach>
<jsp:include page="footer.jsp" />