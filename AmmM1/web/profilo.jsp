<%-- 
    Document   : profilo
    Created on : 28-giu-2017, 17.11.56
    Author     : marcotegas
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Nerdbook : Profilo</title>
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

        
    
        
        
            <div id="latoProfilo">

                <img src="${userUrlFotoProfilo}" width="100"  alt="Foto profilo"/>

                <form>
                    <div class="text">
                        <label>Nome:</label>
                        <input type="text" name="nome"></div><br>
                    <div class="text">
                        <label>Cognome:</label>
                        <input type="text" name="cognome"></div><br>
                    <div class="text">
                        <label>Url della tua immagine:</label>
                        <input type="url" name="url"></div> <br>
                    <div class="text">
                        <label>Una descrizione di te: </label>
                        <textarea rows=4 cols=30 name="descrizione" ></textarea></div><br>
                    <div class="text">
                        <label>Data di nascita:</label>
                        <input type="date" name="date"></div> <br>
                    <div class="text">
                        <label>Password:</label>
                        <input type="password" name="password"></div><br>
                    <div class="text">
                        <label>Ripeti Password:</label>
                        <input type="password" name="ripeti"></div><br>
                    <div class="text">
                        <button type="submit">Salva</button>
                    </div>
                </form>

                </body>
                </html>

