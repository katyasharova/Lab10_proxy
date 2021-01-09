<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/result">
        <html>
            <head>
                <style>
                    th:first-child {
                        border-top-left-radius: 10px;
                    }

                    th:last-child {
                        border-top-right-radius: 10px;
                        border-right: none;
                    }

                    tr:last-child td:first-child {
                        border-bottom-left-radius: 10px;
                    }

                    tr:last-child td:last-child {
                        border-bottom-right-radius: 10px;
                    }
                </style>
            </head>
            <body>
                <div class="form-io">
                        <xsl:if test="count(element)=0">
                            <b>Ошибка ввода</b>
                        </xsl:if>
                        <xsl:if test="count(element)!=0">
                            <b>Результат</b>
                            <table>
                            <tr>
                                <th>Число</th>
                                <th>Квадрат</th>
                            </tr>
                            <xsl:for-each select="element">
                                <tr>
                                <td><xsl:value-of select="value"/></td>
                                <td><xsl:value-of select="square"/></td>
                                </tr>
                            </xsl:for-each>
                            </table>
                        </xsl:if>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>