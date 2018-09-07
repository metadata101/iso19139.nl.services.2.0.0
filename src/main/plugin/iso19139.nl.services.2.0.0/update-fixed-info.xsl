<?xml version="1.0" encoding="UTF-8"?>
<!--
  ~ Copyright (C) 2001-2016 Food and Agriculture Organization of the
  ~ United Nations (FAO-UN), United Nations World Food Programme (WFP)
  ~ and United Nations Environment Programme (UNEP)
  ~
  ~ This program is free software; you can redistribute it and/or modify
  ~ it under the terms of the GNU General Public License as published by
  ~ the Free Software Foundation; either version 2 of the License, or (at
  ~ your option) any later version.
  ~
  ~ This program is distributed in the hope that it will be useful, but
  ~ WITHOUT ANY WARRANTY; without even the implied warranty of
  ~ MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
  ~ General Public License for more details.
  ~
  ~ You should have received a copy of the GNU General Public License
  ~ along with this program; if not, write to the Free Software
  ~ Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301, USA
  ~
  ~ Contact: Jeroen Ticheler - FAO - Viale delle Terme di Caracalla 2,
  ~ Rome - Italy. email: geonetwork@osgeo.org
  -->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:gco="http://www.isotc211.org/2005/gco"
                xmlns:gmd="http://www.isotc211.org/2005/gmd"
                xmlns:srv="http://www.isotc211.org/2005/srv"
                version="2.0">
  <xsl:import href="../iso19139/update-fixed-info.xsl"/>


  <!-- Dutch profile uses gco:Date instead of gco:DateTime -->
  <xsl:template match="gmd:dateStamp" priority="99">
    <xsl:choose>
      <xsl:when test="/root/env/changeDate">
        <xsl:copy copy-namespaces="no">
          <gco:Date>
            <xsl:value-of select="tokenize(/root/env/changeDate,'T')[1]" />
          </gco:Date>
        </xsl:copy>
      </xsl:when>
      <xsl:otherwise>
        <xsl:copy-of select="."  copy-namespaces="no"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="srv:operatesOn|gmd:featureCatalogueCitation" priority="99">
    <xsl:copy-of select="."  copy-namespaces="no"/>
  </xsl:template>

</xsl:stylesheet>
