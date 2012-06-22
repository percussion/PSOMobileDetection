<%@ page import="java.io.*, java.util.*,net.sourceforge.wurfl.wurflapi.*" %>
<%	ListManager lm = ObjectsManager.getListManagerInstance();
        CapabilityMatrix cm = ObjectsManager.getCapabilityMatrixInstance(); %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
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
<FORM action="findcapa.jsp">


<%
ArrayList capas = lm.getCapabilitySet();
ArrayList deviceElementsList = lm.getDeviceIdSetSorted();

String theDeviceId = ""+request.getParameter("deviceId");
String theCapaName = ""+request.getParameter("capaName");

if(theDeviceId.equals("null")){
	theDeviceId = "generic";
}

%>
<!-- Start builduing the two combos for devices and capabilities first -->

<TABLE border="0"  STYLE="table-layout:fixed; border-collapse:collapse">
        <TR>
            <TD><B>Device</B></TD>
            <TD><B>Capability</B></TD>
        </TR>
        <TR>
            <TD>
            <select name ="deviceId" >
<%
        Iterator keys = deviceElementsList.iterator();
	String devSel;
	while ( keys.hasNext() ) {
		String id = (String) keys.next();
              %>
			<OPTION  value="<%=id%>" 
<% 
			if(id.equals(theDeviceId)){
				devSel = "selected";
			
			}else{
				devSel = "";
			}
%>
			<%=devSel%>><%=id%>
			</OPTION>
<%
        }
%>
			</select>
            </TD>
            <TD>
            <select name ="capaName">
<%
                Iterator capa_keys = capas.iterator();
                String capSel;
                while ( capa_keys.hasNext() ) {
                  String capa_key = (String) capa_keys.next();
		
				
%>		
			<OPTION  value="<%=capa_key%>"<% 
			if(capa_key.equals(theCapaName)){
				capSel = "selected";
			
			}else{
				capSel = "";
			}
                        %><%=capSel%>><%=capa_key%>
			</OPTION>
<%
                }
%>
			</select>
            </TD>
        </TR>
</TABLE>
<BR>
<INPUT type="submit" name="Find" value=" Find  ">

<BR>
<BR>
<% if( !theCapaName.equals("null")){ %>
<FONT size="3">Device: <%= theDeviceId %></FONT><br>
<FONT size="3">Capability: <%= theCapaName %></FONT><br><br>

<FONT size="4">Value: <%= cm.getCapabilityForDevice(theDeviceId, theCapaName) %></FONT>

<% } %>

</FORM>
</BODY>
</HTML>
