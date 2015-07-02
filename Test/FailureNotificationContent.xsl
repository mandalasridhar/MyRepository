<xsl:stylesheet version="1.0" xmlns="http://www.radian.biz/ClientConnectivity/zion/SysLogContent" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text"/>	
	<xsl:param name="DtTimeStamp" select="'undefined'" />
	<xsl:param name="NodeName" select="'undefined'" />
	<xsl:param name="ComponentName" select="'undefined'" />
	<xsl:param name="StructuredMessage" select="'undefined'" />
	<xsl:param name="TransactionUUID" select="'undefined'" />
	<xsl:param name="ExceptionCode" select="'undefined'" />
	<xsl:param name="Priority" select="'undefined'" />
	<xsl:param name="ExceptionName" select="'undefined'" />
	<xsl:param name="Description" select="'undefined'" />
	<xsl:param name="AdditionalInfo" select="'undefined'" />
	<xsl:param name="Severity" select="'undefined'" />
	
	<xsl:variable name="SysLogPriority">
		<xsl:choose>
			<xsl:when test="$Priority='P1'">2</xsl:when>
			<xsl:when test="$Priority='P2'">3</xsl:when>
			<xsl:when test="$Priority='P4' and $Severity='WARNING'">4</xsl:when>
			<xsl:when test="$Priority='P4' and $Severity='INFO'">6</xsl:when>
		</xsl:choose>
	</xsl:variable>
	
	<xsl:variable name="ApplicationName" select='"ZION"'/>	
	
	<xsl:template match="/">
		<xsl:value-of select="$DtTimeStamp"/><xsl:text> </xsl:text>
		<xsl:value-of select="$NodeName"/><xsl:text> </xsl:text>
		<xsl:value-of select="$ApplicationName"/><xsl:text> </xsl:text>
		<xsl:value-of select="$ComponentName"/><xsl:text> </xsl:text>
		<xsl:value-of select="$StructuredMessage"/><xsl:text> </xsl:text>
		<xsl:value-of select="$TransactionUUID"/><xsl:text> </xsl:text>
		<xsl:value-of select="$ExceptionCode"/><xsl:text> </xsl:text>
		<xsl:value-of select="$Priority"/><xsl:text> </xsl:text>
		<xsl:value-of select="$SysLogPriority"/><xsl:text> </xsl:text>
		<xsl:value-of select="$ExceptionName"/><xsl:text>;</xsl:text>
		<xsl:value-of select="$Description"/><xsl:text>;</xsl:text>
		<xsl:value-of select="$AdditionalInfo"/>		
	</xsl:template>
</xsl:stylesheet>