<%-- 
    Document   : bacheca
    Created on : 28-giu-2017, 17.11.28
    Author     : marcotegas
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Nerdbook : Bacheca</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="author" content="Marco Tegas">
        <meta name="keywords" content="cerca nerd">
        <link rel="stylesheet" type="text/css" href="style.css"  
              media="screen">
    </head>

    <body>

         <jsp:include page="header.jsp"/>




       <jsp:include page="sidebar.jsp"/>

       <div id="post">
            <c:if test="${accessDenied==true}">
                <div id="accessDeniedError">Per visualizzare la bacheca è nesessario autenticarsi</div>
            </c:if>
            <c:forEach var="post" items="${post}">
                <div class="post">
                    <c:if test="${post.getPostType() == 'TEXT'}">
                        <p>${post.getUser().getNome()} ${post.getUser().getCognome()}</p>
                        <img class="profile_img" title="fotoProfilo" width="75" height="100" alt="Foto profilo ${post.getUser().getNome()} ${post.getUser().getCognome()}" src="${post.getUser().getUrlFotoProfilo()}">
                        <p>${post.getContent()}</p>
                    </c:if>
                    <c:if test="${post.postType == 'IMAGE'}">
                        <p>${post.getUser().getNome()} ${post.getUser().getCognome()}</p>
                        <img class="profile_img" title="fotoProfilo" width="75" height="100" alt="Foto profilo ${post.getUser().getNome()} ${post.getUser().getCognome()}" src="${post.getUser().getUrlFotoProfilo()}">
                        <img alt="Post con foto" src="${post.getContent()}">
                    </c:if>
                </div>
            </c:forEach>
        </div>

    </body>
</html>

