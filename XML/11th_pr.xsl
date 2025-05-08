<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>
  
  <xsl:template match="/">
    <html>
      <head>
        <title>Student Directory</title>
        <style>
          body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 20px;
          }
          h1 {
            text-align: center;
            color: #333;
          }
          .student-container {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            justify-content: center;
            margin-top: 30px;
          }
          .student-card {
            background-color: #ffffff;
            border: 2px solid #9acd32;
            border-radius: 10px;
            padding: 20px;
            width: 280px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
          }
          .student-card h2 {
            margin-top: 0;
            color: #2e8b57;
          }
          .student-card p {
            margin: 8px 0;
            color: #444;
          }
        </style>
      </head>

      <body>
        <h1>Student Directory</h1>
        <div class="student-container">
          <xsl:for-each select="students/student">
            <div class="student-card">
              <h2><xsl:value-of select="name"/></h2>
              <p><strong>ID:</strong> <xsl:value-of select="id"/></p>
              <p><strong>Age:</strong> <xsl:value-of select="age"/></p>
              <p><strong>Department:</strong> <xsl:value-of select="department"/></p>
              <p><strong>Email:</strong> <xsl:value-of select="email"/></p>
            </div>
          </xsl:for-each>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
