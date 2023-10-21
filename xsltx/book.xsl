<?xml version="1.0"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/books">

<html>
<body>

<h1>A List Of Books</h1>

<table width="640">

<xsl:apply-templates select="book"/>

</table>
</body>
</html>


</xsl:template>







<xsl:template match="book">
<tr>
<td>
<xsl:number/>
</td>

<xsl:apply-templates select="author|title|price"/>
</tr>

</xsl:template>



<xsl:template match="author|title|price">
<td>
<xsl:value-of select="."/>
</td>



</xsl:template>

</xsl:stylesheet>




