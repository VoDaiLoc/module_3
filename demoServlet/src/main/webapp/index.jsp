<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<% int x=10, y=15;
int z=x+y; %>
<h1><%= "Hello World!" %>
</h1>
<h1><%=z%></h1>
<br/>
<a href="hello-servlet">Hello Servlet</a>
</body>
</html>