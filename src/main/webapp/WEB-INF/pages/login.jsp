<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">

        <title>Login</title>

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








        <div class="login-container">

            <h1><center>Enter Username and Password</center></h1>
            <br>
            <!-- /login?error=true -->
            <c:if test="${param.error == 'true'}">
                <div style="color: red; margin: 10px 0px;">

                    Login Failed!!!<br /> Reason :
                    ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}

                </div>
            </c:if>

            <form method="POST"
                  action="${pageContext.request.contextPath}/j_spring_security_check">
                <div class="container">
                    <center><table>
                            <tr>
                                <td>Username</td>
                                <td><input name="userName" type="text" placeholder="Username" required="required"  /></td>
                            </tr>

                            <tr>
                                <td>Password</td>
                                <td><input type="password" name="password" placeholder="Password" required="required"   /></td>
                            </tr>

                            <tr>
                                <td>&nbsp;</td>
                                <td> <input type="submit" value="Login" class="btn btn-success"/>
                                    <input type="checkbox" checked="checked"> Remember me  
                                    <input type="reset"
                                           value="Reset" class="btn btn-danger" /></td></br>

                            </tr>
                            <div class="container" align="bottom" style="background-color:#f1f1f1">
                                <button type="button" class="cancelbtn"><a href="${pageContext.request.contextPath}/">Cancel</button>
                            </div>
                        </table></center>
            </form>

            <span class="error-message">${error }</span>


        </div>




    </body>
</html>