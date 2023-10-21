<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format"
xmlns="http://www.w3.org/TR/REC-html40"
xmlns:s="D:\Osborn-McGraw\XML-ComRef\Chapter27">
<xsl:output method="xml" version="1.0" encoding="UTF-8" omit-xml-declaration="no" indent="no" media-type="text/html" /> 

<xsl:template match="*|">
   <html>
    <head>
     <title>
       Inventory List 
     </title>
    </head>
    <body>
        <xsl:apply-templates />
    </body>
  </html>
</xsl:template>
</xsl:stylesheet>
