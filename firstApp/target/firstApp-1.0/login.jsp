<%-- 
    Document   : login
    Created on : Oct 30, 2018, 6:52:27 PM
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
        <form action="FrontControl" method="POST">
            Username: <input type="text" name="username" value="" /><br/>
            Password: <input type="text" name="password" value="" /><br/>
            <input type="hidden" name="origin" value="login"/>
            <input type="submit" name="submit" value="Registrer" />
        </form>
        
    </body>
</html>
