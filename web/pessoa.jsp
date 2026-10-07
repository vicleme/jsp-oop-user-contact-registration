<%-- 
    Document   : index
    Created on : 21 de set de 2020, 16:49:54
    Author     : Victor
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.edu.fatecpg.poo.Main"%>
<%@page import="br.edu.fatecpg.poo.Pessoa"%>
<%
    Pessoa eu;
    eu = new Pessoa();
    eu.pai = new Pessoa();
    eu.pai.nome = "Carlos";
    eu.pai.pai = new Pessoa();
    eu.pai.pai.nome = "Antônio";
    eu.pai.mãe=new Pessoa();
    eu.pai.mãe.nome="Helena";
    eu.mãe = new Pessoa();
    eu.mãe.nome = "Marta";
    eu.nome="Alex";
    eu.nascimento = new Date(90,4,15);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>POO - Pessoa</title>
    </head>
    <body>
        <h2><a href="index.jsp">Voltar</a></h2>
        <h1>Pessoa</h1>
        <p>
            <%= eu.nome%> tem <%= eu.getIdade() %> anos.
        </p>
        <p>
            O pai de <%= eu.nome %> é <%= eu.pai.nome%><br>
            O avô de <%= eu.nome %> é <%= eu.pai.pai.nome%>
        </p>
    </body>
</html>
