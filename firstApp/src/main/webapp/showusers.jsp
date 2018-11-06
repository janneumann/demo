<%-- 
    Document   : showusers
    Created on : Nov 6, 2018, 8:15:34 PM
    Author     : thomas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.List, logic.User" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table>
            <thead><tr><th>id</th><th>username</th><th>password</th></tr></thead>
            <tbody>
           <% List<User> users = (List<User>)request.getAttribute("allusers"); 
            for (User user : users) {
                out.println("<tr><td>"+user.getId()+"</td><td>"+user.getUsername()+"</td><td>"+user.getPassword()+"</td>");
            }
            %>
            </tbody>
        </table>
    </body>
</html>
