<html xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<title>
<xsl:value-of select="//specials-menu/menu-date"/>
</title>
<h1> 
<xsl:value-of select="//menu-date"/>
</h1>
<h2>Appetizer</h2>
<ul>
<li>
<xsl:value-of select="//spec-appetiz"/>
</li>
</ul>
<h2>Soup</h2>
<ul>
<li>
<xsl:value-of select="//spec-soup"/>
</li>
</ul>

<h2>Fish</h2>
<ul>
<li>
<xsl:value-of select="//spec-fish"/>
</li>
</ul>
<h2>Pasta</h2>
<ul>
<li>
<xsl:value-of select ="//spec-pasta"/>
</li>
</ul>
<h2>Entree</h2>
<ul>
<li>
<xsl:value-of select ="//spec-meat"/>
</li>
</ul>
<h2>Dessert</h2>
<ul>
<li>
<xsl:value-of select ="//spec-sweet"/>
</li>
</ul>
<br/>
<h3>Specials are available every day from opening until
exhaustion.</h3>
<p>Come see us anytime!</p>
</html>