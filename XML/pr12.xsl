<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html"/>
  <xsl:template match="/">
    <html>
      <head>
      </head>
      <body>
        <h2>My CP Collection</h2>
        <div class="card-container">
          <xsl:for-each select="company/cp">
            <div class="card">
              <h3><xsl:value-of select="Name"/></h3>
              <p><strong>Location:</strong> <xsl:value-of select="Locations"/></p>
            </div>
          </xsl:for-each>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
