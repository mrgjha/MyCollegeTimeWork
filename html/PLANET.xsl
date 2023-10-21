


<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<HTML>
<xsl:apply-templates/>
</HTML>
</xsl:template>
<xsl:template match="PLANET">
<xsl:for-each select="NAME">
<P><xsl:value-of select="."/></P>
</xsl:for-each>
</xsl:template>
</xsl:stylesheet>


