<!--
 
  Remote debugging only. Don't ship with any production application

  <%-- Warning!  Can be used to retrieve the source code for
       any file in the 'standard-examples' application.
       It is not advisable to insert any sensitive code
       (even as an experiment) into this application --%>
-->

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<% pageContext.setAttribute("filepath",
     application.
       getResource(request.getParameter("filename")).toExternalForm()); %>
<% pageContext.setAttribute("filename", request.getParameter("filename")); %>

<html>
<head>
  <title>JSTL: Source code for <c:out value="${filename}"/></title>
</head>
<body bgcolor="#FFFFFF">
<h3>Source code for:&nbsp; ${filename}</h3>

<hr>

<c:import varReader="reader" url="${filepath}">
<pre>
  <c:out value="${reader}" />
</pre>
</c:import>
<hr>
</body>
</html>
