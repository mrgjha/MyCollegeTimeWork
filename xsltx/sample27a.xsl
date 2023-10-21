<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"  
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
     xmlns:fo="http://www.w3.org/1999/XSL/Format"
     xmlns="http://www.w3.org/TR/REC-html40"
     xmlns:s="D:\Osborn-McGraw\XML-ComRef\Chapter27">
  <xsl:output method="xml" version="1.0" 
              encoding="UTF-8" omit-xml-declaration="no" 
              indent="no" media-type="text/html" /> 

  <xsl:template match="InvList">
   <html>
    <head>
     <title>
       Inventory List 
     </title>
     <style type="text/css">
       @page {
            margin-left: 15px;
            margin-bottom: 30px;
            margin-right: 15px;
        }
        h1 {
            font-family: Verdana, Arial, sans-serif ;
            font-size: larger;
            background-color: yellow;
            border-bottom-style: double;
            color: Black;
         }
     </style>
     <script type="text/javascript">
     <!--
       var bwr = navigator.appName; 
       var ver = parseInt(navigator.appVersion, 10); 
      NS4 = ( bwr == "Netscape" && ver == 4 ) ? 1 : 0;
      NS6 = ( bwr == "Netscape" && ver == 6 ) ? 1 : 0;
      IE4 = ( bwr == "Microsoft Internet Explorer" && ver == 4 ) ? 1 : 0;
      IE5 = ( bwr == "Microsoft Internet Explorer" && ver == 5 ) ? 1 : 0; 
    if (NS4 || NS6) {
       doc = "document";
       styl = "";
     }
     else if (IE4 || IE5) {
       doc = "document.all";
       styl = ".style";
     }
     function ChangeProp (layerName, theProp, theValue) {
       var usedLyr = eval(doc + '["' + layerName + '"]' + styl);
       eval('usedLyr.' + theProp + '="' + theValue + '"');
     } 
    -->
     </script>
    </head>
    <body onload="ChangeProp('1','visiblity','hidden');
                  ChangeProp('2','visiblity','hidden'); 
                  ChangeProp('3','visiblity','hidden')">
     <div id="Layer1" 
          style="position:absolute; left:8px; top:5px; 
                width:408px; height:49px; z-index:1">
      <form method="post" action="">
          <input type="button" name="WidgetPro" 
           value="Widget Pro"              
           onClick="ChangeProp('1','visiblity','hidden')" />
          <input type="button" name="WidgetBasic" 
           value="Widget Basic" 
           onClick="ChangeProp('2','visiblity','hidden')" />
          <input type="button" name="WidgetReg" 
           value="Widget Regular"
           onClick="ChangeProp('3','visiblity','hidden')" />
      </form>
     </div>
      <xsl:for-each select="ItemInfo">  
      <div id="{@Name}" 
           style="position:absolute; 
                  left:6px; top:78px; 
                  width:412px; height:111px; 
                  z-index:2">
        <h1>
          <xsl:value-of select="ItemName" /> 
        </h1>
        <blockquote>
           Item Number: <xsl:value-of select="ItemNum" /><br />
           Item Description: <xsl:value-of select="ItemDesc" /><br />
           Item Cost: $<xsl:value-of select="ItemCost" /><br />
           Item Location: <xsl:value-of select="ItemLocation" /><br />  
           Num. In Stock: <xsl:value-of select="NumInStock" />
        </blockquote>
      </div>
      </xsl:for-each>
    </body>
   </html>
  </xsl:template>
</xsl:stylesheet>

