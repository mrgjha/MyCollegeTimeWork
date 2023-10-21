<xsl:stylesheet 
 xmlns:xsl="http://www.w3.org/TR/WD-xsl">
  <xsl:template select="cities">
    <html><body>
      <h3>Current Weather Conditions</h3>
      <table border="1">
        <tr>
          <th>City.</th>
          <th>Temp.</th>
          <th>Barom.</th>
        </tr>
<xsl:for-each select="cities/city">
    <tr>
      <td><xsl:value-of select="name"/></td>
      <td><xsl:value-of select="temp"/></td>
      <td><xsl:value-of select="barom"/></td>
    </tr>
  </xsl:for-each>
  </table>
 </body></html>
 </xsl:template>
</xsl:stylesheet>
