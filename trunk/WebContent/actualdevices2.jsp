<%@ taglib uri="/WEB-INF/tld/wall.tld" prefix="wall" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<wall:load_capabilities />

<HTML>
<HEAD>
<style>
 body,td {font-family:verdana;font-size:10px;}
 xmp {font-size:95%;} 
 a {text-decoration:none}
 a:hover {text-decoration:underline;}
 .wtitle {font-size:14px;font-family:arial}
</style>
</HEAD>
<BODY>
<c:forEach var="brand"  items="${devices}">
<h4><c:out value="${brand.key}"/></h4>
 <c:forEach var="device"  items="${brand.value}">
  <a href="viewdevice.jsp?id=<c:out value="${device.value.id}"/>"><c:out value="${device.key}"/></a>
 </c:forEach>
</c:forEach>

</BODY>
</HTML>