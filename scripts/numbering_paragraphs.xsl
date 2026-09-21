<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
   xmlns:tei="http://www.tei-c.org/ns/1.0"
   xmlns="http://www.tei-c.org/ns/1.0"
   version="2.0"
   exclude-result-prefixes="tei">
   
   <!-- Copia tutto inalterato di default -->
   <xsl:template match="@*|node()">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()"/>
      </xsl:copy>
   </xsl:template>
   
   <!-- Regola specifica per i paragrafi dentro i capitoli -->
   <xsl:template match="tei:div[@type='chapter']/tei:p">
      <xsl:variable name="chapId" select="ancestor::tei:div[@type='chapter']/@xml:id"/>
      <xsl:variable name="pNum" select="count(preceding-sibling::tei:p) + 1"/>
      
      <xsl:copy>
         <xsl:attribute name="xml:id" select="concat($chapId, '_p', $pNum)"/>
         <xsl:attribute name="n" select="$pNum"/>
         <xsl:apply-templates select="@*[name() != 'xml:id' and name() != 'n']"/>
         <xsl:apply-templates select="node()"/>
      </xsl:copy>
   </xsl:template>
</xsl:stylesheet>