<%-- 
    Document   : multiviewresult.jsp
    Created on : Oct 30, 2018, 7:18:14 PM
    Author     : thomas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.List, logic.Person" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Indhold af multiselect boxen fra multiselect.jsp</h2>
        <% String[] languages = (String[])request.getAttribute("languages");
        for (String language : languages) {
                out.println(language+"<br/>");
            }
        %>
        <h2>Indhold af personlisten</h2>
        <% List<Person> persons = (List<Person>)request.getAttribute("persons");
//        out.print(persons.size());
//        for (Person p : persons) {
//                out.println(p.getUsername()+"<br/>");
//            }
        %>
        
    </body>
</html>
