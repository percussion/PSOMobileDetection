<%@ page import="java.io.*, java.util.*,net.sourceforge.wurfl.wurflapi.*" %>
<%
	UAManager uam = ObjectsManager.getUAManagerInstance();
%>
<HTML>
<style>
 body,td {font-family:verdana;font-size:13px;}
 xmp {font-size:95%;} 
 a {text-decoration:none}
 a:hover {text-decoration:underline;}
 .wtitle {font-size:14px;font-family:arial}
</style>
</HEAD>
<BODY>
type in the User-Agent string and WURFL will get you the device ID
<br>
<form action="findbyname.jsp">
<%
String ua_string = ""+request.getParameter("ua_string");
String strict = ""+request.getParameter("strict");
String firsttime = ""+request.getParameter("firsttime");

//need to see if it's the first time
boolean ft = firsttime.equals("null");

if (ua_string.equals("null")) {
   ua_string = "";
}

%>
<br>
Find devices containing:<br>
<input size="60" type="text" name="ua_string" value="<%=ua_string%>"><br>
<input type="hidden" name="firsttime" value="certainlynotnull" /> 
<input type="checkbox" name="strict" <%
		if (strict.equals("on")){
		%> checked="true"<%}%>> &nbsp; Strict match?


<BR>
<INPUT type="submit" name="Find" value="Find">

<BR>
<br>
<br>

<!--- only do the rest if this is not the firstTime --------->
<%
if(!ft){

     String dev_id;
     if (strict.equals("on")) {
       dev_id = uam.getDeviceIDFromUA(ua_string);
     } else {
       dev_id = uam.getDeviceIDFromUALoose(ua_string);
     }
%>
Found device <%=dev_id%>. Click <a href="viewdevice.jsp?id=<%=dev_id%>">here to 
browse device info and capabilities.
<%
}
%>

</form>
</BODY>
</HTML>
