<%@ page contentType="text/html" %><?xml version="1.0" encoding="ISO-8859-1"?>
<!DOCTYPE wml PUBLIC "-//WAPFORUM//DTD WML 1.1//EN" "http://www.wapforum.org//DTD//wml_1.1.xml">
<%@ taglib uri="/WEB-INF/tld/wall.tld" prefix="wall" %><%@ taglib uri="/WEB-INF/tld/c.tld" prefix="c" %>
<wall:load_capabilities />
<wml>
 <head>
   <meta content="max-age=10" http-equiv="Cache-Control"/>
 </head>
 <card>
  <p mode="nowrap">
<c:choose>
 <c:when test="${capabilities.gif}">
  <img src="/logo.gif" alt="Global TEL" />
 </c:when>
 <c:otherwise>
   <img src="/logo.wbmp" alt="Global TEL" />
 </c:otherwise>
</c:choose>

<c:if test="${capabilities.midp_10}">
 <a href="portal.jsp">Try Java on your phone</a><br/>
</c:if>


<c:if test="${capabilities.midp_10} && ${capabilities.j2me_colors > 8}">
 <a href="portal.jsp">More Better Java</a><br/>
</c:if>

<c:if test="${capabilities.wap_push_support}">
 <a href="portal.jsp">Keep informed with WAP Push</a><br/>
</c:if>

<c:if test="${capabilities.receiver}">
 <a href="portal.jsp">Get some Cool MMS Pics</a><br/>
</c:if>

<c:if test="${capabilities.sender}">
 <a href="portal.jsp">Send MMS? here is how</a><br/>
</c:if>

<c:if test="${capabilities.downloadfun_support}">
 <a href="portal.jsp">Send MMS? here is how</a><br/>
</c:if>
<a href="portal.jsp">News</a><br/>

 </p>
 </card>
</wml>

