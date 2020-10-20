<%@ page language="java" import="java.util.*" %> 
<%@ page import = "java.util.ResourceBundle" %>
<% ResourceBundle resource = ResourceBundle.getBundle("common");%>

<html>
<body>
<h1>Hello World!</h1>
<h2> My name is: <%=resource.getString("username") %></h2>
<h2> Favorite color: <%=resource.getString("color") %></h2>
</body>
</html>
