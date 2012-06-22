<%@ taglib uri="/WEB-INF/tld/wall.tld" prefix="wall" %><%@ taglib prefix="c" uri="/WEB-INF/tld/c.tld" %><wall:document>
<wall:xmlpidtd />

<wall:head title="My Document" enforce_title="true">
   <!--sent to all devices as it is -->
   <meta name="value" content="value" />
   <wall:condition markup="chtml">
     <!-- only applies to Chtml devices -->
     <meta name="name" content="value" />
   </wall:condition>
</wall:head>
<wall:body>
 <wall:block>
  Preferred Markup: <c:out value="${capabilities.preferred_markup}" />
   <wall:br />

  GIF: <c:out value="${capabilities.gif}" />
   <wall:br />
 wml_can_display_images_and_text_on_same_line <c:out value="${capabilities.wml_can_display_images_and_text_on_same_line}" />
   <wall:br />
  <c:if test="${capabilities.preferred_markup == 'chtml_1'}">
    Si, funziona anche l'if
  </c:if>
   <wall:br />
  plain text
<pre>
<c:forEach items="${capabilities}" var="capa">
   Capability:  <c:out value="${capa['key']}" /> UGUALE <c:out value="${capa['value']}" />
</c:forEach>
</pre>
 </wall:block>
</wall:body>
</wall:document>