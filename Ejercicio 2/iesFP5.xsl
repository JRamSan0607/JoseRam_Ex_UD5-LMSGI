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

        <h1>IES Ntra Sra de los Remedios</h1>
        <table>
            <tr>
                <th>Nombre</th>
                <th>Año</th>
            </tr>
            <xsl:for-each select="ies/ciclos/ciclo">
                <tr>
                    <td>
                        <xsl:value-of select="nombre" />
                    </td>
                    <td>
                        <xsl:value-of select="decretoTitulo/@año"/>
                    </td>
                </tr>
            </xsl:for-each>
        </table>
    </xsl:template>

</xsl:stylesheet>