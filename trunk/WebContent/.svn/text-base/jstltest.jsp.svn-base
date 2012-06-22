<%@ taglib prefix="c" uri="/WEB-INF/tld/c.tld" %>
<%@ page import="net.sourceforge.wurfl.wurflapi.*" %>
<%      ListManager lm = ObjectsManager.getListManagerInstance();
        UAManager uam = ObjectsManager.getUAManagerInstance();
        String device_id = uam.getDeviceIDFromUALoose(request.getHeader("User-Agent"));
        pageContext.setAttribute("capabilities",lm.getCapabilitiesForDeviceID(device_id));

 %>
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//WAPFORUM//DTD XHTML Mobile 1.0//EN"  "http://www.wapforum.org/DTD/xhtml-mobile10.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">  
 <head>
   <title>JSTL and WURFL</title>
   <meta name="value" content="value" />
 </head>
 <body>
 <p>
  Preferred Markup: <c:out value="${capabilities.preferred_markup}" />
  <br />
  <c:if test="${capabilities.preferred_markup == 'chtml_1'}">
   *if* works
  </c:if>

<pre>
<c:forEach items="${capabilities}" var="capa">
   Capability:  <c:out value="${capa['key']}" /> EQUALS <c:out value="${capa['value']}" />
</c:forEach>
</pre>
 </p>
 </body>
</html> 


