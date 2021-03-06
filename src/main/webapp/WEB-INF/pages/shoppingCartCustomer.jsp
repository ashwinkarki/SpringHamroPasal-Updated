<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Enter Customer Information</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style.css">
    
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

            .cancelbtn {
                width: auto;
                padding: 10px 18px;
                background-color: #f44336;
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

            /* Change styles for span and cancel button on extra small screens */
            @media screen and (max-width: 300px) {
                span.psw {
                    display: block;
                    float: none;
                }
                .cancelbtn {
                    width: 100%;
                }
            }
        </style>
    </head>
    <body>
        <jsp:include page="_header.jsp" />
    <center><div class="page-title">Enter Customer Information</div></center>
        <form:form method="POST" modelAttribute="customerForm"action="${pageContext.request.contextPath}/shoppingCartCustomer">
        <center><table>
                <tr>
                    <td>Name:</td>
                    <td><form:input path="name" /></td>
                    <td><form:errors path="name" class="error-message" /></td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td><form:input path="email" /></td>
                    <td><form:errors path="email" class="error-message" /></td>
                </tr>
                <tr>
                    <td>Phone:</td>
                    <td><form:input path="phone" /></td>
                    <td><form:errors path="phone" class="error-message" /></td>
                </tr>
                <tr>
                    <td>Address:</td>
                    <td><form:input path="address" /></td>
                    <td><form:errors path="address" class="error-message" /></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td> 
                        <input type="submit" value="Submit" class="btn btn-success"/>
                        <input type="checkbox" checked="checked"> Remember me  
                        <input type="reset"value="Reset" class="btn btn-danger" />
                    </td>
                </tr> 
            </table></center>
        </form:form>
        <jsp:include page="_footer.jsp" />
</body>
</html>