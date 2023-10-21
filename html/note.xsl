<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">

<html>

<center>
Message:
<xsl:value-of select="note/heading"/>
</center>

<br/>
<br/>

Date:
<xsl:value-of select="note/date/month"/>
/
<xsl:value-of select="note/date/day"/>
/
<xsl:value-of select="note/date/year"/>
<br/>

To:
<xsl:value-of select="note/to"/>
<br/>

From:
<xsl:value-of select="note/from"/>
<br/>
<br/>
<xsl:value-of select="note/body"/>

</html>

</xsl:template>
</xsl:stylesheet>
