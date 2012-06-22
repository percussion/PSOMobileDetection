<%@ page contentType="text/html" %><?xml version="1.0" encoding="ISO-8859-1"?>
<!DOCTYPE wml PUBLIC "-//WAPFORUM//DTD WML 1.1//EN" "http://www.wapforum.org//DTD//wml_1.1.xml">
<%@ taglib uri="/WEB-INF/tld/wurfl.tld" prefix="wurfl" %>

<wml>
 <head>
   <meta content="max-age=10" http-equiv="Cache-Control"/>
 </head>
 <card>
  <p mode="nowrap">
<wurfl:ifmc> 
  <wurfl:condition capability="gif"/>  
<wurfl:then>
  <img src="/logo.gif" alt="Global TEL" />
</wurfl:then>
<wurfl:else>
   <img src="/logo.wbmp" alt="Global TEL" />
</wurfl:else>
</wurfl:ifmc>
<br/>
<wurfl:if capability="midp_10" match="loose">
 <a href="portal.jsp">Try Java on your phone</a><br/>
</wurfl:if>


<wurfl:ifmc logic="AND">
 <wurfl:condition  capability="midp_10" match="loose"/>
 <wurfl:condition  capability="j2me_colors" relation="GT" value="8" match="loose"/>
 <wurfl:then>
  <a href="portal.jsp">More Better Java!</a><br/>
 </wurfl:then>
</wurfl:ifmc>


<wurfl:if capability="wap_push_support" match="loose">
 <a href="portal.jsp">Keep informed with WAP Push</a><br/>
</wurfl:if>


<wurfl:if capability="receiver" match="loose">
 <a href="portal.jsp">Get some Cool MMS Pics</a><br/>
</wurfl:if>


<wurfl:if capability="sender" match="loose">
 <a href="portal.jsp">Send MMS? here is how</a><br/>
</wurfl:if>

<wurfl:if capability="downloadfun_support" match="loose">
 <a href="portal.jsp">Download Fun</a><br/>
</wurfl:if>

<a href="portal.jsp">News</a><br/>

 </p>
 </card>
</wml>

