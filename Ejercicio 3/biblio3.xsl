<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <body>
                <text>Nombre y Apellidos: José Ramírez Sánchez</text>
            </body>
            <style>
            table, th, td 
            {
            border: 2px solid black;
            padding: 2px;
            }
            
            th 
            {
            background-color: white;
            }
            </style>
        </html>

        <table>
            <xsl:for-each select="bib/libro">
                <tr>
                    <td>
                        <xsl:value-of select="precio" />
                    </td>
                    <td>
                        <xsl:value-of select="titulo"/>
                    </td>
                    <td>
                        <xsl:value-of select="@año"/>
                    </td>
                </tr>
            </xsl:for-each>
        </table>
    </xsl:template>

</xsl:stylesheet>