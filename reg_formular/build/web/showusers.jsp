<%-- 
    Document   : showusers
    Created on : 08-11-2018, 21:05:05
    Author     : JNE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.List, logic.Person" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show Users Page</title>
    </head>
    <body>
        <table>
            <thead><tr><th>id</th><th>username</th><th>password</th></tr></thead>
            <tbody>
           <% List<Person> users = (List<Person>)request.getAttribute("allusers"); 
            for (Person user : users) {
                out.println("<tr><td>"+user.getId()+"</td><td>"+user.getUsername()+"</td><td>"+user.getPassword()+"</td>");
            }
            %>
            </tbody>
        </table>
        
    </body>
</html>
