<%-- 
    Document   : registration
    Created on : 31-10-2018, 22:28:37
    Author     : JNE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Page</title>
    </head>
    <body>
         <form action="FrontControl" method="POST">
            ID: <input type="number" name="id" value=""/><br/>
            Username: <input type="text" name="username" value="" /><br/>
            Password: <input type="text" name="password" value="" /><br/>
            <input type="hidden" name="origin" value="register"/>
            <input type="submit" name="submit" value="Registrer" />
        </form>
    </body>
</html>
