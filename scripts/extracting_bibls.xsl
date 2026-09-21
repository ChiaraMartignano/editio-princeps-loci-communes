<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:tei="http://www.tei-c.org/ns/1.0"
  xmlns="http://www.tei-c.org/ns/1.0"
  exclude-result-prefixes="tei">
  
  <xsl:output method="xml" indent="yes" encoding="UTF-8"/>
  
  <xsl:template match="/">
    <TEI>
      <teiHeader>
        <fileDesc>
          <titleStmt>
            <title>Elenco delle fonti estratte (Uniche e Ordinate)</title>
          </titleStmt>
          <publicationStmt>
            <p>Documento generato automaticamente.</p>
          </publicationStmt>
          <sourceDesc>
            <p>Estratto dal file TEI sorgente.</p>
          </sourceDesc>
        </fileDesc>
      </teiHeader>
      <text>
        <body>
          <listBibl>
            <!-- 
                          1. Raggruppa i nodi tei:abbr contenuti in tei:choice dentro bibl[@type='source']
                             in base al loro valore testuale normalizzato (group-by).
                        -->
            <xsl:for-each-group 
              select="//tei:bibl[@type='source']/tei:choice/tei:abbr" 
              group-by="normalize-space(.)">
              
              <!-- 3. Ordina alfabeticamente i gruppi ottenuti -->
              <xsl:sort select="current-grouping-key()" order="ascending" data-type="text"/>
              
              <!-- 2. Genera un singolo elemento <bibl> per ogni valore unico -->
              <bibl>
                <xsl:value-of select="current-grouping-key()"/>
              </bibl>
              
            </xsl:for-each-group>
          </listBibl>
        </body>
      </text>
    </TEI>
  </xsl:template>
  
</xsl:stylesheet>