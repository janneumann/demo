<%-- 
    Document   : multiselect
    Created on : Oct 30, 2018, 7:12:53 PM
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
       <form action="FrontControl" method="post">
           <input type="hidden" name="origin" value="multiselect"/>
            First Name:
            <input type="text" name="fname"><br>
            Last Name:
            <input type="text" name="lname"><br>
            Password:
            <input type="password" name="password"><br>
            Are you male or female?<br>
            <input type="radio" name="sex" value="male">Male
            <input type="radio" name="sex" value="female">Female<br>
            Check the languages you know<br>
            <input type="checkbox" name="language" value="html">HTML<br>
            <input type="checkbox" name="language" value="java">Java<br>
            <input type="checkbox" name="language" value="c#">C#<br>
            <input type="checkbox" name="language" value="python">Python<br>
            <input type="checkbox" name="language" value="javascript">Javascript<br>
            In which country were you born<br>
            <select name="country">
                <option value="Denmark" selected>Denmark</option>
                <option value="Namibia">Namibia</option>
                <option value="Pakistan">Pakistan</option>
                <option value="Tibet">Tibet</option>
                <option value="Colombia">Colombia</option>
            </select><br>
            <textarea name="description" placeholder="Descripe your self"></textarea><br>
            <input type="submit" value="submit"><br>
</form>
    </body>
</html>
