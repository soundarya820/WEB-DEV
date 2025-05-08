<?xml version="1.0" encoding="UTF-8"?> 
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html"/>
  <xsl:template match="/"> 
    <html> 
      <body> 
        <h2>Students Scoring Above 90</h2> 
        <ul style="font-family: Arial, sans-serif;">
          <xsl:for-each select="class/student"> 
            <xsl:if test="marks > 90"> 
              <li style="margin-bottom: 10px;">
                <strong>Roll No:</strong> <xsl:value-of select="@rollno"/> | 
                <strong>Name:</strong> <xsl:value-of select="firstname"/> <xsl:value-of select="lastname"/> | 
                <strong>Marks:</strong> <xsl:value-of select="marks"/>
              </li>
            </xsl:if> 
          </xsl:for-each> 
        </ul> 
      </body> 
    </html> 
  </xsl:template>  
</xsl:stylesheet>
