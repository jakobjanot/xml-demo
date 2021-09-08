<?xml version="1.0"?>
<xsl:stylesheet version="3.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/2005/xpath-functions">
    
    <xsl:output method="text"/>

    <xsl:template match="restaturant">
        <map>
            <xsl:apply-templates />
        </map>
    </xsl:template>

    <xsl:template match="menu">
        <array>
            <xsl:apply-templates/>
        </array>
    </xsl:template>

    <xsl:template match="pizza">
        <map>
            <xsl:apply-templates />
        </map>
    </xsl:template>

    <xsl:template match="price">
        <string key="string">
            <xsl:value-of select="concat(@currency, .)"/>
        </string>
    </xsl:template>

    <xsl:template match="*">
        <string key="{local-name()}">
            <xsl:value-of select="."/>
        </string>
    </xsl:template>
</xsl:stylesheet>