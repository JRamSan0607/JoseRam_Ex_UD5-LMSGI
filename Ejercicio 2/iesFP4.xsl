<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
    <html>
        <body>
            <text>Nombre y Apellidos: José Ramírez Sánchez</text>
        </body>
    </html>
        <ol>
            <xsl:for-each select="ies/ciclos/ciclo">
                <xsl:sort select="nombre" order="descending" />
                <li>"<xsl:value-of select="nombre" />" ( <xsl:value-of select="grado" /> )</li>
            </xsl:for-each>
        </ol>
    
    </xsl:template>
    
</xsl:stylesheet>
