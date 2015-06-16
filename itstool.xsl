<?xml version='1.0' encoding='UTF-8'?><!-- -*- indent-tabs-mode: nil -*- -->
<!--
This program is free software; you can redistribute it and/or modify it under
the terms of the GNU Lesser General Public License as published by the Free
Software Foundation; either version 2 of the License, or (at your option) any
later version.

This program is distributed in the hope that it will be useful, but WITHOUT
ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
details.

You should have received a copy of the GNU Lesser General Public License
along with this program; see the file COPYING.LGPL.  If not, write to the
Free Software Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA
02111-1307, USA.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:mal="http://projectmallard.org/1.0/"
                xmlns="http://www.w3.org/1999/xhtml"
                exclude-result-prefixes="mal"
                version="1.0">

<xsl:template name="html.head.custom">
  <link href="http://fonts.googleapis.com/css?family=Lato:400,700" rel="stylesheet" type="text/css"/>
  <link href="http://fonts.googleapis.com/css?family=Bitter:400,700" rel="stylesheet" type="text/css"/>
  <link href="http://fonts.googleapis.com/css?family=Special+Elite" rel="stylesheet" type="text/css"/>
</xsl:template>

<xsl:template name="html.css.custom">
<xsl:text>
div.top {
  max-width: 960px;
  margin: 0 auto;
  text-align: center;
}
div.logo {
  font-family: Lato;
  font-weight: bold;
  font-size: 48px;
}
div.logo img {
  margin-right: 10px;
  vertical-align: bottom;
}
div.logo a {
  border-bottom: none;
}
div.navbar {
}
div.navbar ul {
  display: block;
  margin: 0; padding: 0;
}
div.navbar li {
  display: inline-block;
  margin: 0;
  padding: 4px 8px;
}
div.page {
  max-width: 960px;
  border: none;
}
</xsl:text>
</xsl:template>

<xsl:template name="html.js.content.custom">
</xsl:template>

<xsl:template name="html.top.custom">
  <xsl:param name="node" select="."/>
  <xsl:variable name="rootlink">
    <xsl:if test="$mal.link.extension != ''">
      <xsl:text>index</xsl:text>
      <xsl:value-of select="$mal.link.extension"/>
    </xsl:if>
  </xsl:variable>
  <div class="top">
    <div class="logo">
      <a href="{$mal.site.root}{$rootlink}">
        <img>
          <xsl:attribute name="src">
            <xsl:value-of select="$mal.site.root"/>
            <xsl:text>itstool.png</xsl:text>
          </xsl:attribute>
        </img>
        <xsl:text>ITS Tool</xsl:text>
      </a>
    </div>
    <div class="navbar">
      <ul>
        <li><a href="{$mal.site.root}{$rootlink}">Home</a></li>
        <li><a href="{$mal.site.root}contribute{$mal.link.extension}">Contribute</a></li>
        <li><a href="{$mal.site.root}documentation/{$rootlink}">Documentation</a></li>
        <li><a href="{$mal.site.root}download{$mal.link.extension}">Download</a></li>
      </ul>
    </div>
  </div>
</xsl:template>

<xsl:template name="html.bottom.custom">
</xsl:template>

</xsl:stylesheet>
