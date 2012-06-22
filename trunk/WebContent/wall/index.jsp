<%@ taglib uri="/WEB-INF/tld/wall.tld" prefix="wall" %><wall:document><wall:xmlpidtd />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><wall:load_capabilities />

<wall:head>
   <wall:title>WALL Demos</wall:title>
</wall:head>

<wall:body>
 <wall:menu autonumber="true">
   <wall:a href="body.jsp">body</wall:a>
   <wall:a href="menu.jsp">menu</wall:a>
   <wall:a href="coolmenu.jsp">coolmenu</wall:a>
   <wall:a href="form.jsp">form</wall:a>
   <wall:a href="form2.jsp">form2</wall:a>
   <wall:a href="portal.jsp">portal</wall:a>
 </wall:menu>
 <wall:block>
UA = <%= request.getHeader("User-Agent") %><wall:br/>
Wurfl ID = <wall:b>${device_id}</wall:b><wall:br/>
<wall:b>Capabilities</wall:b>:<wall:br/>
Mark-up = <wall:b>${capabilities.wall_markup}</wall:b><wall:br/>
preferred_markup = <wall:b>${capabilities.preferred_markup}</wall:b><wall:br/>

<c:choose>
  <c:when test="${capabilities.wall_markup == 'wml'}" > 
wml_make_phone_call_string = <wall:b>${capabilities.wml_make_phone_call_string}</wall:b><wall:br/>
softkey_support = <wall:b>${capabilities.softkey_support}</wall:b><wall:br/>
wml_1_3 = <wall:b>${capabilities.wml_1_3}</wall:b><wall:br/>
menu_with_select_element_recommended = <wall:b>${capabilities.menu_with_select_element_recommended}</wall:b><wall:br/>
card_title_support  = <wall:b>${capabilities.card_title_support}</wall:b>
  </c:when> 
  <c:when test="${capabilities.wall_markup == 'xhtmlmp'}" > 
xhtml_make_phone_call_string = <wall:b>${capabilities.xhtml_make_phone_call_string}</wall:b><wall:br/>
xhtml_format_as_css_property = <wall:b>${capabilities.xhtml_format_as_css_property}</wall:b><wall:br/>
xhtml_format_as_attribute = <wall:b>${capabilities.xhtml_format_as_attribute}</wall:b><wall:br/>
xhtml_table_support = <wall:b>${capabilities.xhtml_table_support}</wall:b><wall:br/>
xhtml_supports_table_for_layout = <wall:b>${capabilities.xhtml_supports_table_for_layout}</wall:b><wall:br/>
xhtml_supports_css_cell_table_coloring = <wall:b>${capabilities.xhtml_supports_css_cell_table_coloring}</wall:b><wall:br/>
xhtml_document_title_support = <wall:b>${capabilities.xhtml_document_title_support}</wall:b><wall:br/>
  </c:when> 
  <c:when test="${capabilities.wall_markup == 'chtml'}" > 
chtml_make_phone_call_string = <wall:b>${capabilities.chtml_make_phone_call_string}</wall:b><wall:br/>
chtml_table_support = <wall:b>${capabilities.chtml_table_support}</wall:b><wall:br/>
  </c:when> 
</c:choose>

   </wall:block>
</wall:body>
</wall:document>


