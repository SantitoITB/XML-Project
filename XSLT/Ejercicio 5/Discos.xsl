<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>

<xsl:variable
name="muse"
select="/discos/group[@id='muse']/name/text()">
</xsl:variable> 

<xsl:variable
name="feeder"
select="/discos/group[@id='feeder']/name/text()">
</xsl:variable> 

    <xsl:template match="discos">
        <lista>
            <xsl:for-each select="disco">
                <disco>
                    <xsl:value-of select="title"/> interpretado por <xsl:value-of select="interpreter/@id"/>
                    <xsl:copy-of select="{concat('$',interpreter/@id)}" />
                </disco>
            </xsl:for-each>
        </lista>
    </xsl:template>
</xsl:stylesheet> 