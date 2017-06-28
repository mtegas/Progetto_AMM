<%-- 
    Document   : header
    Created on : 28-giu-2017, 17.15.04
    Author     : marcotegas
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
       
    <header>

            <div id="title">
                Nerdbook
            </div>

            <nav>
                <ol>
                    <li><a href="descrizione.jsp">Descrizione</a></li>
                    <li><a href="Profilo">Profilo</a></li>
                    <li><a href="Bacheca">Bacheca</a></li>
                </ol>
                
                <div>
                    <img src= "${utente.urlFotoProfilo}" width="100"  alt="Foto profilo"/>
                    <p>${utente.nome}</p>
                    <a href="Login?logout=1"> Logout </a>
                </div>
            </nav>
        </header>