<%-- 
    Document   : hello
    Created on : Oct 30, 2018, 5:35:39 PM
    Author     : thomas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%String username = request.getParameter("username");%>
        
         
         
         <h1>Hello <%= username  %>! FROM the Control</h1>
        
        
    </body>
</html>
