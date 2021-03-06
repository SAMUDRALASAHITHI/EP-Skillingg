<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/students">

		<html>
			<body>

				<h1 align="center">students Table</h1>

				<table  border="1" align="center">
					<tr><th bgcolor="yellow">stdidno</th><th bgcolor="yellow">stdname</th><th bgcolor="yellow">stdmarks</th><th bgcolor="yellow">stdemail</th><th bgcolor="yellow">stdclass</th></tr>
					<xsl:for-each select="student">
					<tr>
					<td><xsl:value-of select="idno"/></td>
					<td><xsl:value-of select="name"/></td>
					<td><xsl:value-of select="marks"/></td>
					<td><xsl:value-of select="email"/></td>
					<td><xsl:value-of select="class"/></td>            
					</tr>
					</xsl:for-each>
				</table>

			</body>


		</html>

	</xsl:template>
</xsl:stylesheet>