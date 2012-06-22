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

 .capatable {padding:10px;
	background-color:#eee;
	color: black;
	border:1px dashed #999;
 }
</style>
<script language="JavaScript">
var firsttime = true;

var js_capas = new Array();

function selectAll() {

   for (var i=0; i<arguments.length-1; i++) {
      var e = eval("document.myform."+arguments[i]);
      //alert(e.name);
      e.checked = !e.checked;
   }
 
}

function setAll(bool) {
      for (i=0;i<js_capas.length;i++) {
         var e = eval("document.myform."+js_capas[i]);
         e.checked = bool;
      }
}


function reverseSet() {

      document.listofcapa.capatextarea.value = '';

      for (i=0;i<js_capas.length;i++) {
         var e = eval("document.myform."+js_capas[i]);
         if (e.checked) {
           if (document.listofcapa.capatextarea.value == '') {
              document.listofcapa.capatextarea.value += js_capas[i];
           } else {
              document.listofcapa.capatextarea.value += ","+js_capas[i];
           }
         }
      }
}

function countCapas() {
      var cnt = 0;
      for (i=0;i<js_capas.length;i++) {
         var e = eval("document.myform."+js_capas[i]);
         if (e.checked) {
           cnt++;
         }
      }
      alert("Number of selected capabilities "+cnt);

}

function setCapas() {

  if (document.listofcapa.capatextarea.value.indexOf("Enter") != -1) {
    alert("You must insert a list of valid capability names in the capability box.");
    return;
  }
  if (document.listofcapa.capatextarea.value == '') {
    alert("You must insert a list of valid capability names in the capability box.");
    return;
  }
  var str = document.listofcapa.capatextarea.value.replace(/[\r\n]/g,'');
  //alert(str);
  var my_array=str.split(",");
  for(i=0;i<my_array.length;i++) {
        //alert(my_array[i]);
        try {
          eval("selectAll('"+my_array[i]+"','')");
        } catch (e) {
          alert("capability "+my_array[i]+" not recognized");
        }
  }
}
</script>
</HEAD>
<BODY>
<h2>WURFL Filter</h2>
Choose the WURFL capabilities that you want and let the filter
build a WURFL that's much smaller
than the big one, but still has everything you need!<br><br>

Capability Box:
<form name="listofcapa">
<textarea id="capatextarea" name="capatextarea"  
          style="border:1px dashed #999;" cols="50" rows="10" 
          onfocus="if (firsttime) {this.value='';firsttime=false}">
Enter your list of capabilities (separated by 
a comma ',') in this text area (we recommend 
that you copy and paste them from
a local text file on your PC or workstation.
</textarea><br>
<input style="font-size:120%;font-weight:bold" 
       type="button" value="set capabilities" onclick="setCapas()" />&nbsp;
<input style="font-size:100%;font-weight:normal" 
       type="button" value="set all" onclick="setAll(true)" />&nbsp;
<input style="font-size:100%;font-weight:normal" 
       type="button" value="clear all" onclick="setAll(false)" />&nbsp;
<input style="font-size:100%;font-weight:normal" 
       type="button" value="reverse set" onclick="reverseSet()" />&nbsp;
<input style="font-size:100%;font-weight:normal" 
       type="button" value="count capabilities" onclick="countCapas()" />&nbsp;
</form>
Set Capabilities = check boxes by using list of capabilities<br>
Set All = set all capability boxes <br>
Clear All = clear all capability boxes <br>
Reverse Set = import capability names of checks boxes into list<br>
Count Capabilities = Return the number of select capabilities<br>
<form action="filterwurfl" method="post" name="myform">
<%

   HashMap log = lm.getListOfGroups(); 
   Iterator groups = log.keySet().iterator();	   
   int colcounter = 0;
   while( groups.hasNext() )  {
        String group = (String)groups.next();
        out.println("<h3>"+group+"</h3>");
        out.println("<table class=\"capatable\"><tr><td valign=top>");
	ArrayList cs = (ArrayList)log.get(group);
        //out.println(al.size());
        int threeshold = 0;
        if (cs.size() <= 5) {
 	  threeshold = 5;
        } else {
 	  threeshold = cs.size() / 3;
        }
	for (int i = 0; i < cs.size(); i++) {

	    String key = (String)cs.get(i);
	    //out.println("<h4>"+key+"</h4>");
            out.println("<script>");
            out.println("js_capas["+colcounter+"] = '"+key+"';");
            out.println("</script>");
            colcounter++;
	    out.println("<input type=checkbox name='"+key+"'> ");
	    if (key.length() > 30) {
		  out.print("<br>"+key.substring(0,28)+"..<br>");
            } else {
         	  out.println(key+"<br>");
            }
	    if (i % threeshold == 0 && i > 1) {
                  out.println("</td><td valign=top>");
            }

	}
        out.println("</td></tr></table>");
        //checkbox to select/deselect whole groups
        out.print("<br><input style='background-color:#DDDDDD' type=checkbox name=SelectGroup"+colcounter+" onclick=\"selectAll(");
	for (int i = 0; i < cs.size(); i++) {
	    String key = (String)cs.get(i);
            out.print("'"+key+"',");
        }
        out.println("'');\" /> <b>Toggle this group</b>");
   }
  out.println("<br><br><b>Number of Capabilities "+colcounter+"</b>");
%>
<br>
<input type="checkbox" name="binary"> Send as binary please (enables "Save As")
<br>


<input type="submit" name="Go!" value="go"/>
</form>
</BODY>
</HTML>
