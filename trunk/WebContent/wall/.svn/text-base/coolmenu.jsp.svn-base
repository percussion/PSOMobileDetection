<%@ taglib uri="/WEB-INF/tld/wall.tld" prefix="wall" %><wall:document><wall:xmlpidtd />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<wall:load_capabilities />
<wall:head>
    <wall:title>Cool Portal</wall:title>

    <c:set var="gridsize" value="2" />
    <c:if test="${capabilities.resolution_width >= 160}">
      <c:set var="gridsize" value="3" />
    </c:if>
    <wall:cool_menu_css colnum="${gridsize}"/>
</wall:head>

<wall:body>
  <wall:cool_menu colnum="${gridsize}">
   <wall:cell>
    <wall:img src="pix/movies.gif" alt="Cinema" >
     <wall:alternate_img src="pix/movies_big.gif" test="${capabilities.resolution_width >= 160}" />
     <wall:alternate_img nopicture="true" test="${not capabilities.gif}" />
     <wall:alternate_img opwv_icon="camcorder" test="${capabilities.resolution_width <= 90}" />
     <wall:alternate_img eu_imode_icon="&#58999;" test="${capabilities.resolution_width <= 90}" />
     <wall:alternate_img ja_imode_icon="&#63704;" test="${capabilities.resolution_width <= 90}" />
    </wall:img>
    <wall:a href="http://url1" title="">Cinema</wall:a>
   </wall:cell>

   <wall:cell>
    <wall:img src="pix/dice.gif" alt="Games" >
     <wall:alternate_img src="pix/dice_big.gif" test="${capabilities.resolution_width >= 160}" />
     <wall:alternate_img nopicture="true" test="${not capabilities.gif}" />
     <wall:alternate_img opwv_icon="dice" test="${capabilities.resolution_width <= 90}" />
     <wall:alternate_img eu_imode_icon="&#59024;" test="${capabilities.resolution_width <= 90}" />
     <wall:alternate_img ja_imode_icon="&#63729;" test="${capabilities.resolution_width <= 90}" />
    </wall:img>
    <wall:a href="http://url1" title="">Games</wall:a>
   </wall:cell>


   <wall:cell>
    <wall:img src="pix/holiday.gif" alt="Travel" >
     <wall:alternate_img src="pix/holiday_big.gif" test="${capabilities.resolution_width >= 160}" />
     <wall:alternate_img nopicture="true" test="${not capabilities.gif}" />
     <wall:alternate_img opwv_icon="plane" test="${capabilities.resolution_width <= 90}" />
     <wall:alternate_img eu_imode_icon="&#58978;" test="${capabilities.resolution_width <= 90}" />
     <wall:alternate_img ja_imode_icon="&#63683;" test="${capabilities.resolution_width <= 90}" />
    </wall:img>
    <wall:a href="http://url1" title="">Travel</wall:a>
   </wall:cell>



   <wall:cell>
    <wall:img src="pix/heart.gif" alt="Lovelife" >
     <wall:alternate_img src="pix/heart_big.gif" test="${capabilities.resolution_width >= 160}" />
     <wall:alternate_img nopicture="true" test="${not capabilities.gif}" />
     <wall:alternate_img opwv_icon="heart" test="${capabilities.resolution_width <= 90}" />
     <wall:alternate_img eu_imode_icon="&#59116;" test="${capabilities.resolution_width <= 90}" />
     <wall:alternate_img ja_imode_icon="&#63889;" test="${capabilities.resolution_width <= 90}" />
    </wall:img>
    <wall:a href="http://url1" title="">Lovelife</wall:a>
   </wall:cell>


   <wall:cell>
    <wall:img src="pix/clouds.gif" alt="Weather" >
     <wall:alternate_img src="pix/clouds_big.gif" test="${capabilities.resolution_width >= 160}" />
     <wall:alternate_img nopicture="true" test="${not capabilities.gif}" />
     <wall:alternate_img opwv_icon="partcloudy" test="${capabilities.resolution_width <= 90}" />
     <wall:alternate_img eu_imode_icon="&#58942;" test="${capabilities.resolution_width <= 90}" />
     <wall:alternate_img ja_imode_icon="&#63647;" test="${capabilities.resolution_width <= 90}" />
    </wall:img>
    <wall:a href="http://url1" title="">Weather</wall:a>
   </wall:cell>

   <wall:cell>
    <wall:img src="pix/headphones.gif" alt="Music" >
     <wall:alternate_img src="pix/headphones_big.gif" test="${capabilities.resolution_width >= 160}" />
     <wall:alternate_img nopicture="true" test="${not capabilities.gif}" />
     <wall:alternate_img opwv_icon="speaker" test="${capabilities.resolution_width <= 90}" />
     <wall:alternate_img eu_imode_icon="&#59126;" test="${capabilities.resolution_width <= 90}" />
     <wall:alternate_img ja_imode_icon="&#63899;" test="${capabilities.resolution_width <= 90}" />
    </wall:img>
    <wall:a href="http://url1" title="">Music</wall:a>
   </wall:cell>

   <wall:cell>
    <wall:img src="pix/soccer.gif" alt="Sport" >
     <wall:alternate_img src="pix/soccer_big.gif" test="${capabilities.resolution_width >= 160}" />
     <wall:alternate_img nopicture="true" test="${not capabilities.gif}" />
     <wall:alternate_img opwv_icon="football" test="${capabilities.resolution_width <= 90}" />
     <wall:alternate_img eu_imode_icon="&#58966;" test="${capabilities.resolution_width <= 90}" />
     <wall:alternate_img ja_imode_icon="&#63671;" test="${capabilities.resolution_width <= 90}" />
    </wall:img>
    <wall:a href="http://url1" title="">Sport</wall:a>
   </wall:cell>



   <wall:cell>
    <wall:img src="pix/magnifier.gif" alt="Search" >
     <wall:alternate_img src="pix/magnifier_big.gif" test="${capabilities.resolution_width >= 160}" />
     <wall:alternate_img nopicture="true" test="${not capabilities.gif}" />
     <wall:alternate_img opwv_icon="magnifyglass" test="${capabilities.resolution_width <= 90}" />
     <wall:alternate_img eu_imode_icon="&#59100;" test="${capabilities.resolution_width <= 90}" />
     <wall:alternate_img ja_imode_icon="&#63873;" test="${capabilities.resolution_width <= 90}" />
    </wall:img>
    <wall:a href="http://url1" title="">Search</wall:a>
   </wall:cell>



   <wall:cell>
    <wall:img src="pix/more1.gif" alt="More" >
     <wall:alternate_img src="pix/more1_big.gif" test="${capabilities.resolution_width >= 160}" />
     <wall:alternate_img nopicture="true" test="${not capabilities.gif}" />
     <wall:alternate_img opwv_icon="rightarrow2" test="${capabilities.resolution_width <= 90}" />
     <wall:alternate_img eu_imode_icon="&#59030;" test="${capabilities.resolution_width <= 90}" />
     <wall:alternate_img ja_imode_icon="&#63735;" test="${capabilities.resolution_width <= 90}" />
    </wall:img>
    <wall:a href="http://url1" title="">More</wall:a>
   </wall:cell>

  </wall:cool_menu>

</wall:body>
</wall:document>
