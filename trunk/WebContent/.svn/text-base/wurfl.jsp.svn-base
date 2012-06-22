<%@ page import="java.io.*, java.util.*,net.sourceforge.wurfl.wurflapi.*" %>
<%
      ListManager lm = ObjectsManager.getListManagerInstance(); %>
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
ArrayList deviceIdSet = lm.getDeviceIdSetSorted();
int numberOfDevices = deviceIdSet.size(); 
HashMap deviceElementsList = lm.getDeviceElementsList();
%>
<B>WURFL contains <FONT color="#990000" size="4"><%=numberOfDevices%> </FONT> device elements</B> 
- Click on device ID to browse capabilities<br><br>

<TABLE border="0" width="600"  STYLE="table-layout:fixed; border-collapse:collapse">
        <TR align="left">
            <TD width="250"><FONT color="#000000"><b>Device Id</b> (&amp; fall_back)</FONT></TD>
            <TD width="350"><B><FONT color="#000000">User Agent</FONT></B></TD>           
        </TR>
        <tr><TD colspan="2" height="1" width="600" bgcolor="black"><img src="pixel.gif" width="600" height="1" alt=""></TD></tr>

        <%
        WurflDevice dev = null;
        Iterator keys = deviceIdSet.iterator();
        int i = 0; 
        String color = null;
	String id, ua, fb;
	while ( keys.hasNext() ) {
                String key = (String) keys.next();
                color = (i++ % 2 == 0) ? "#DDDDDD" : "white";
		dev = (WurflDevice) deviceElementsList.get(key);
		id = dev.getId(); 
		fb = dev.getFallBack();
		ua = dev.getUserAgent();
              %>


        <TR  bgcolor="<%=color%>">
            <TD width="250"><a href="viewdevice.jsp?id=<%=id%>"><%=id%></a></TD> 
            <TD rowspan="2" width="350" valign="top"><font size="-2"><%=ua%></font></TD>
        </TR>
        <tr  bgcolor="<%=color%>">
            <TD width="250">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=fb%></TD>
        </tr>
        <tr><TD  colspan="2" height="1" width="600" bgcolor="black"></TD></tr>
        <%}%>
    </TBODY>
</TABLE>



</BODY>
</HTML>
