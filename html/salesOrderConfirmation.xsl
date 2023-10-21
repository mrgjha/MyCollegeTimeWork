<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl= "http://www.w3.org/1999/XSL/Transform" version="1.0">
   <xsl:template match = "/">
     <HTML>
     <CENTER>
	<TABLE CELLSPACING="2" CELLPADDING="2">
	<TR ALIGN="CENTER"><TD><B>Thanks for Shopping SkipsSports.com <BR/>	
        The Best Deals on the Web</B></TD></TR>
	     <TABLE BORDER="1">
	        <TR>
		<TD>This is your order confirmation (please retain):</TD></TR>
		<TR>
		<TD>Customer name:
		<xsl:value-of select="salesOrder/customerInformation/name"/></TD></TR>
		<TR>
		<TD>Address:
		<xsl:value-of select="//address[@type='shipping']/streetOrBox"/>,  
		<xsl:value-of select="//address[@type='shipping']/city"/>, 
		<xsl:value-of select="//address[@type='shipping']/state"/>, 
		<xsl:value-of select="//address[@type='shipping']/zip"/>
		</TD></TR>
		</TABLE>
	     <TABLE BORDER="1">
		<TR>
		<TD COLSPAN="5">Order number: 
		<xsl:value-of select="salesOrder/orderInformation/orderNumber"/>
		</TD></TR>
		<TR>
		<TD>Item</TD><TD>Brand</TD><TD>Model</TD><TD>Size</TD><TD>Price</TD></TR>

	<xsl:for-each select="//item">
		<TR>
		<TD> <xsl:value-of select="id"/> </TD>
		<TD> <xsl:value-of select="brandName"/> </TD>
		<TD> <xsl:value-of select="model"/> </TD>
		<TD> <xsl:value-of select="size"/> </TD>
		<TD> <xsl:value-of select="format-number(retailPrice,'$#.00')"/> </TD>	
		</TR>
		</xsl:for-each>

		<TR><TD ALIGN="RIGHT" COLSPAN="4">Order Total:</TD>
		<TD><xsl:value-of select=
		"format-number(sum(//retailPrice),'$#.00')"/> </TD>
		</TR>
		<TR><TD ALIGN="RIGHT" COLSPAN="4">Shipping charge:</TD>
		<TD><xsl:value-of select="format-number(//shippingCharge,'$#.00')"/> </TD>
		</TR>
		<TR><TD ALIGN="RIGHT" COLSPAN="4">Total charges:</TD>
		<TD><xsl:value-of select=
		"format-number(sum(//retailPrice) + //shippingCharge,'$#.00')"/> </TD>
		</TR>
		
		</TABLE>

	</TABLE>
	</CENTER>
	</HTML>

   </xsl:template>

</xsl:stylesheet >
