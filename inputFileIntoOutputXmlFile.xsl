<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://example.net/books/1.0"
	xmlns:a="http://example.net/author/1.0" xmlns:xs="http://example.net/library/1.0"
	exclude-result-prefixes="xs">

	<xsl:output method="xml" encoding="utf-8" indent="yes" />

	<xsl:template match="/">
		<books>
			<xsl:for-each select="xs:library/xs:books/xs:book">
				<xsl:variable name="authorId" select="@author-id" />
				<book>
					<a:author>
						<a:name>
							<xsl:value-of select="//xs:author[@id=$authorId]/xs:name" />
						</a:name>
						<a:surname>
							<xsl:value-of select="//xs:author[@id=$authorId]/xs:surname" />
						</a:surname>
					</a:author>
					<title>
						<xsl:value-of select="xs:title" />
					</title>
				</book>
			</xsl:for-each>
		</books>
	</xsl:template>
</xsl:stylesheet>
