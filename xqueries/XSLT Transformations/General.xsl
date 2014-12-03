<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs"
    xmlns="http://www.w3.org/2000/svg" version="2.0">
    <xsl:output method="xml" indent="yes"/>
    <xsl:variable name="XSpacing" select="40" as="xs:integer"/>
    <xsl:variable name="barWidth" select="25" as="xs:integer"/>
    <xsl:variable name="XLength" select="$XSpacing * count(//ref)"/>
    <xsl:variable name="YScale" select="5" as="xs:integer"/>
    <xsl:variable name="maxHeight" select="max(//ref) * $YScale" as="xs:double"/>
    <xsl:template match="/">
        <svg width="200%" height="{$maxHeight + 100}">
            <g transform="translate(40,{$maxHeight + 50})">
                <rect x="0" y="-{$maxHeight + 100}" width="{$XLength}" height="{$maxHeight + 100}"
                    fill="pink"/>
                <xsl:for-each select="1 to max(//ref) idiv 10">
                    <line x1="0" y1="-{. * $YScale * 10}" x2="{$XLength}" y2="-{. * $YScale * 10}"
                        stroke="magenta" stroke-width="1"/>
                    <text x="-20" y="-{. * $YScale * 10 - 5}" text-align="right">
                        <xsl:value-of select=". * 10"/>
                    </text>
                </xsl:for-each>
                <line x1="0" y1="0" x2="{$XLength}" y2="0" stroke="black" stroke-width="2"/>
                <line x1="0" y1="0" x2="0" y2="-{$maxHeight}" stroke="black" stroke-width="2"/>
                <xsl:apply-templates select="//ref"/>
            </g>
        </svg>
    </xsl:template>
    <xsl:template match="ref">
        <xsl:variable name="XPosition" select="(position() - 1) * $XSpacing" as="xs:integer"/>
        <xsl:variable name="height" select=". * $YScale"/>
        <rect x="{$XPosition}" y="-{$height}" height="{$height}" width="{$barWidth}" fill="blue"/>
        <text x="{$XPosition + $barWidth div 2}" y="20" text-anchor="middle">
            <xsl:value-of select="@actor"/>
        </text>
        <text x="{$XPosition + $barWidth div 2}" y="-{$height + 5}" text-anchor="middle">
            <xsl:value-of select="."/>
        </text>
    </xsl:template>
</xsl:stylesheet>