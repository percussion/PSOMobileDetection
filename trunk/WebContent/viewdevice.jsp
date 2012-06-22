<%@ page import="java.io.*, java.util.*,net.sourceforge.wurfl.wurflapi.*" %>
<%	ListManager lm = ObjectsManager.getListManagerInstance();
        CapabilityMatrix cm = ObjectsManager.getCapabilityMatrixInstance();
%>
<HTML>
<HEAD>

<style>
 body,td {font-family:verdana;font-size:13px;}
 xmp {font-size:95%;} 
 a {text-decoration:none}
 a:hover {text-decoration:underline;}
 .wtitle {font-size:14px;font-family:arial}
</style>
</HEAD>
<BODY>

<%
String id = new String(request.getParameter("id")) ;
 
HashMap deviceElementsList = lm.getDeviceElementsList();
HashMap logr = lm.getListOfGroups();


WurflDevice dev = (WurflDevice) deviceElementsList.get(id);
String fb, ua;
fb = dev.getFallBack();
ua = dev.getUserAgent();

String model,brand;
model = cm.getCapabilityForDevice(id,"model_name");
brand = cm.getCapabilityForDevice(id,"brand_name");
%>

Device: <b><%=id%></b><br>
User-Agent: <code><%=ua%></code><br>

<% if (!fb.equals("root")) { %> 
Fall-back:
 <a href="viewdevice.jsp?id=<%=fb%>"><%=fb%></a><br>
<% } %>
Brand and Model: <%=brand%>, <%=model%><br>
<br>
List of capabilities for <b><%=id%></b><br><br>
<%
        Iterator keys = logr.keySet().iterator();
        int i = 0; 
	while ( keys.hasNext() ) {
                String key = (String) keys.next();
                out.print(" <a href=\"#"+key+"\">"+key+"</a> /\n");
        }
%>

<table border="0" width="600"  STYLE="table-layout:fixed; border-collapse:collapse">
  <tr>
   <td width="400"><b>Capability Name</b></td>
   <td width="200">Value</td>
  </tr>
  <tr><TD colspan="2" height="1" width="600" bgcolor="black"><img src="pixel.gif" width="600" height="1" alt=""></TD></tr>
        <%

        keys = logr.keySet().iterator();
        i = 0; 	    
        String color = null;
	while ( keys.hasNext() ) {
                String key = (String) keys.next();
                ArrayList cap_list = (ArrayList)logr.get(key);
         %>

  <tr bgcolor="#AAAAAA">
   <td colspan="2" ><a name="<%=key%>"><b><%=key%></b></a></td>   
  </tr>
  <tr><TD colspan="2" height="1" width="600" bgcolor="black"><img src="pixel.gif" width="600" height="1" alt=""></TD></tr>

         <%
                Iterator capa_keys = cap_list.iterator();
                while ( capa_keys.hasNext() ) {
                  String capa_key = (String) capa_keys.next();
                  String value = cm.getCapabilityForDevice(id,capa_key);
                  color = (i++ % 2 == 0) ? "#DDDDDD" : "white";
              %>
  <tr bgcolor="<%=color%>">
   <td>&nbsp;&nbsp;<%=capa_key%></td>
   <td><%=value%></td>
  </tr>
  <tr><TD colspan="2" height="1" width="600" bgcolor="black"></TD></tr>

        <%      }

          }%>
</table>
</BODY>
</HTML>
