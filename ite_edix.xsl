<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" media-type="text/xml"/>
<xsl:template match="/ite">
  <edix>

    <nombre>
      <xsl:value-of select="@nombre"/>
    </nombre>

    <web>
      <xsl:value-of select="@web"/>
    </web>

    <xsl:copy-of select="empresa"/>
    <xsl:copy-of select="telefono"/>
    <xsl:copy-of select="directo"/>
    <xsl:copy-of select="jefe_estudios"/>

    <profesores>
      <xsl:for-each select="profesores/profesor">
      <profesor>
        <xsl:atribute name="id">
          <xsl:value-of select="id"/>
        </xsl:atribute>
        <xsl:copy-of select="nombre"/>
      </profesor>
      </xsl:for-each>
    </profesores>

    <ciclos>
      <xsl:for-each select="ciclos/ciclo">
      <ciclo>
        <id>
          <xsl:value-of select="@ide"/>
        </id>
        <xsl:copy-of select="nombre"/>
        <xsl:copy-of select="grado"/>
        <xsl:copy-of select="decretoTitulo"/>
      </ciclo>
      </xsl:for-each>
    </ciclos>

  </edix>
</xsl:template>
</xsl:stylesheet>