<%@ taglib uri="/WEB-INF/tld/wall.tld" prefix="wall" %><wall:document><wall:xmlpidtd />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><wall:load_capabilities />
<wall:head>
   <wall:title>Pingular</wall:title>
   <wall:menu_css />
</wall:head>

<wall:body>
 <wall:block>
<c:choose>
 <c:when test="${capabilities.gif}">
   <img src="pingular.gif" alt="Pingular" />
 </c:when>
 <c:otherwise>
   <img src="pingular.wbmp" alt="Pingular" />
 </c:otherwise>
</c:choose>
 </wall:block>
 <wall:menu colorize="true" autonumber="true">
<c:if test="${capabilities.midp_10}">
   <wall:a href="http://url1" title="Games">Java Games</wall:a>
</c:if>
<c:if test="${capabilities.midp_10} && ${capabilities.j2me_colors > 8}">
   <wall:a href="http://url1" title="Games">Cool Java Games</wall:a>
</c:if>
<c:if test="${capabilities.wap_push_support}">
   <wall:a href="http://url2" title="Sport">Real-Time Sport Updates</wall:a>
</c:if>
<c:if test="${capabilities.receiver}">
   <wall:a href="http://url2" title="MMS">Cool Pics</wall:a>
</c:if>
<c:if test="${capabilities.sender}">
   <wall:a href="http://url2" title="MMS">Send MMS to your friends</wall:a>
</c:if>
   <wall:a href="http://url2" title="News">News</wall:a>
 </wall:menu>
</wall:body>
</wall:document>


