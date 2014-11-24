<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:output method='xhtml' indent='yes' doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"/>
    
    <xsl:template match='/'>
<div class='graph'>
    <svg xmlns='http://www.w3.org/2000/svg' height='100%' width='100%'>
        <g transform='translate(0 100)'>
            <xsl:for-each select='//ref'>
                <rect x='{position()*10}' y='{-.}' height='{.}' width='5'/>
                <text x='{position()*10}' y='15' style='font-family:Times,serif;fill:black;font-size:12px'><xsl:value-of select='./@id'/></text>
            </xsl:for-each>
        </g>
    </svg>
</div>
    </xsl:template>
    
</xsl:stylesheet>