<%-- 
    Document   : login
    Created on : 28-giu-2017, 17.11.50
    Author     : marcotegas
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Nerdbook : Login</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="author" content="Marco Tegas">
        <meta name="keywords" content="cerca nerd">
        <link rel="stylesheet" type="text/css" href="style.css"  
              media="screen">

    <div id="titleLogin">Nerdbook</div>

    <div id="login_form">
            
            <c:if test="${invalidData == true}">
                <div id="invalidDataWarning">I dati inseriti non sono corretti</div>
            </c:if>
            <c:if test="${accessDenied==true}">
                <div id="accessDeniedError">Utente già autenticato</div>
            </c:if>
            
            <form action="Login" method="post">
                <label for="user">Username</label>
                <input type="text" name="user" id="user">
                <br />
                <label for="pswd">Password</label>
                <input type="password" name="pswd" id="pswd">
                <br /><br />
                <button type="submit">Login</button>
            </form>
                
        </div>



</body>
</html>
