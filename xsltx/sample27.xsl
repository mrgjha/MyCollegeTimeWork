<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns="http://www.w3.org/TR/REC-html40" xmlns:s="D:\Osborn-McGraw\XML-ComRef\Chapter27">
<xsl:output method="xml" version="1.0" encoding="UTF-8" omit-xml-declaration="no" indent="no" media-type="text/html" /> 

<xsl:template match="InvList">
	<html>
		<head>
		<title> Inventory List </title>
        <style type="text/css">
        @page {
		 margin-left : 15px;
		 margin-bottom : 30px;
		margin-right : 15px;
		}

	h1 {
		font-family : Verdana, Arial, sans-serif ;
		font-size : larger;
		background-color : yellow;
		border-bottom-style : double;
		color : Black;
		}
	</style>
	</head>
	<body>
                <xsl:for-each select="ItemInfo">
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
                </xsl:for-each>
	</body>
	</html>
	</xsl:template>
</xsl:stylesheet>
