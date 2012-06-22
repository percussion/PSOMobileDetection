<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% pageContext.setAttribute("filepath",
     application.
       getResource(request.getParameter("filename")).toExternalForm()); %>
<% pageContext.setAttribute("filename", request.getParameter("filename")); %>
<html>
<head>
  <title>JSTL: Source code for <c:out value="${filename}"/></title>
</head>
<c:import varReader="reader" url="${filepath}">
<body bgcolor="black" text="#FFFFFF">
<pre>
  <c:out value="${reader}" />
</pre>
</c:import>
</body>
</html>
