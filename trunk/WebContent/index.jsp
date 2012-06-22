<%@ taglib uri="/WEB-INF/tld/wall.tld" prefix="wall" %><wall:document><wall:xmlpidtd />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><wall:load_capabilities />

<wall:head>
   <wall:title>WURFL applications</wall:title>
<c:if test="${capabilities.wall_markup != 'wml'}">
<style>
 body,td {font-family:verdana;font-size:13px;}
 xmp {font-size:95%;} 
 a {text-decoration:none}
 a:hover {text-decoration:underline;}
 .wtitle {font-size:14px;font-family:arial}
</style>
</c:if>
</wall:head>


<wall:body>
 <wall:block>

<c:if test="${capabilities.wall_markup != 'wml'}">
<wall:h3>WURFL apps</wall:h3>

<a href="wurfl.html">WURFL Browser (web application)</a><wall:br/>
Browse the WURFL, the capabilities of each device
and the list of actual devices.<wall:br/>
</c:if>


<wall:h3>WALLTaglib demo</wall:h3><wall:br/>
Great tag-library to multiserve wireless applications.
<wall:br/>
<a href="wall/index.jsp">WALL Demos</a><wall:br/>
 </wall:block>
</wall:body>
</wall:document>