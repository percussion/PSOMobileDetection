<%@ page import="java.io.*, java.util.*,net.sourceforge.wurfl.wurflapi.*" %>
<%
	UAManager uam = ObjectsManager.getUAManagerInstance();
	CapabilityMatrix cm = ObjectsManager.getCapabilityMatrixInstance();
	ListManager lm = ObjectsManager.getListManagerInstance();
%>
<HTML>
<HEAD>
<style>
 body,td {font-family:verdana;font-size:10px;}
 xmp {font-size:95%;} 
 a {text-decoration:none}
 a:hover {text-decoration:underline;}
 .wtitle {font-size:14px;font-family:arial}
</style>
</HEAD>
<BODY>

<%

	TreeMap lol = lm.getDeviceGroupedByBrand();
	ArrayList al = lm.getDeviceBrandList();
        //out.println(al.size());
	for (int i = 0; i < al.size(); i++) {
	    String key = (String)al.get(i);
	    out.println("<h4>"+key+"</h4>");
	    TreeMap hm = (TreeMap)lol.get(key);  
	    Iterator models = hm.keySet().iterator();	    
	    while( models.hasNext() )  {
		String model = (String)models.next();
                WurflDevice wd = (WurflDevice)hm.get(model);
		out.println("<a href=\"viewdevice.jsp?id=");
		out.println(wd.getId()+"\">"+model+"</a>");
                if ( models.hasNext() ) out.println(", ");

	    }
            out.println("<br><br>");
	}


%>
</BODY>
</HTML>
