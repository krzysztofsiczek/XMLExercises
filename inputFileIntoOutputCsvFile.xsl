<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://example.net/library/1.0">

	<xsl:output method="text" />

	<xsl:variable name="delimiter" select="', '" />

	<xsl:template match="/">
		<xsl:text>AUTHOR, TITLE, PUBLISHED</xsl:text>
		<xsl:text>&#xa;</xsl:text>
		<xsl:for-each select="xs:library/xs:books/xs:book">
			<xsl:variable name="authorId" select="@author-id" />
			<xsl:value-of select="//xs:author[@id=$authorId]/xs:name" />
			<xsl:text>&#160;</xsl:text>
			<xsl:value-of select="//xs:author[@id=$authorId]/xs:surname" />
			<xsl:value-of select="$delimiter" />
			<xsl:value-of select="xs:title" />
			<xsl:value-of select="$delimiter" />
			<xsl:value-of select="xs:published" />
			<xsl:text>&#xa;</xsl:text>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>

