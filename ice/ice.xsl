<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />
  <xsl:template name="iana:record_header">
  <xsl:choose>
    <xsl:when test="@id = 'options'">
      <tr>
        <th>Name</th>
        <th>Description</th>
        <th>Contact</th>
        <th>Change Controller</th>
        <th>Reference</th>
      </tr>
    </xsl:when>
    <xsl:when test="@id = 'transport-extensions'">
      <tr><th>Token</th><th>Reference</th></tr>
    </xsl:when>
  </xsl:choose>
  </xsl:template>
  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'options'">
        <tr>
          <td align="center"><xsl:value-of select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:contact"/></td>
          <td><xsl:apply-templates select="iana:controller"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'transport-extensions'">
        <tr>
          <td align="center"><xsl:value-of select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
