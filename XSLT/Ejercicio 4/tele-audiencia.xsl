<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
<xsl:template match="programacio">
<cadena>
   <nom>Un TV</nom>
   <programas>
    <xsl:for-each select="audiencia">
        <programa>
                <xsl:attribute name="hora">
                    <xsl:value-of select="hora" />
                </xsl:attribute>
            <nom-programa>
                <xsl:value-of select="cadenes/cadena[@nom='Un TV']"/>  
            </nom-programa>
            <audiencia>
            <xsl:value-of select="cadenes/cadena[@nom='Un TV']/@percentatge"/>
            </audiencia>
        </programa>
    </xsl:for-each>

  </programas>
</cadena>
</xsl:template>
</xsl:stylesheet> 
