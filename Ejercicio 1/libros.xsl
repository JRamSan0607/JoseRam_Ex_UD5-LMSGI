<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <body>
                <text>Nombre y Apellidos: José Ramírez Sánchez</text>
                <ul>
                    <xsl:apply-templates select="bib/book"/>
                </ul>
                
            </body>
        </html>
    </xsl:template>

    <xsl:template match="book">
        <li>
            <xsl:value-of select = "concat(title, ' - ', &quot; publisher, &quot; '( ', year, ' )')"/>
        </li>
    </xsl:template>

</xsl:stylesheet>