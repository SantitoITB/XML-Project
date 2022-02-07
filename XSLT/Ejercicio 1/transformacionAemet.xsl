<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  <body>
    <h2>Ejercicio 1</h2>
    <table style="height: 462px;" border="solid" width="333">
        <tbody>
        <tr style="height: 26px;">
        <td style="width: 75.9289px; height: 26px;"><strong>Fecha</strong></td>
        <td style="width: 75.9289px; height: 26px;"><strong>Maxima</strong></td>
        <td style="width: 75.9289px; height: 26px;"><strong>Minima</strong></td>
        <td style="width: 77.8316px; height: 26px;"><strong>Prediccion</strong></td>
        </tr>
        <xsl:for-each select="root/prediccion/dia">
        <xsl:sort select="root/prediccion/dia/temperatura/maxima"/>
        <tr style="height: 51px;">
        <td style="width: 75.9289px; height: 51px;"><xsl:value-of select="@fecha"/></td>
        <td style="width: 75.9289px; height: 51px;"><xsl:value-of select="temperatura/maxima"/></td>
        <td style="width: 75.9289px; height: 51px;"><xsl:value-of select="temperatura/minima"/></td>
        <td style="width: 77.8316px; height: 51px;"><img width="100" height="100" src="{concat('imagenes/',estado_cielo[@periodo='00-12']/@descripcion)}.png"/></td>
        </tr>
        </xsl:for-each>
        </tbody>
        </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>

