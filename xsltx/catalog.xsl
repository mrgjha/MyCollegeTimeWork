<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" />
<xsl:template match="/">
<html><body>
  <head>
    <style>
	.catalog {background-color: #ffff00; width: 100%}
	.cd {display: block; margin-bottom: 30pt; margin-left: 0}
	.title {color: #ff0000; font-size: 20pt}
	.artist {color: #0000ff; font-size: 20pt}
	.details {display: block; color: #000000; margin-left: 20pt}
    </style>
  </head>
  <div class="catalog">
    <xsl:for-each select="catalog/cd">
      <div class="cd">
        <span class="title"><xsl:value-of select="title"/><xsl:text> </xsl:text></span>
        <span class="artist"><xsl:value-of select="artist"/></span>
        <xsl:for-each select="country|comany|price|year">
          <div class="details"><xsl:value-of select="."/></div>
        </xsl:for-each>
      </div>
    </xsl:for-each>
  </div>
</body></html>
</xsl:template>
</xsl:stylesheet>
