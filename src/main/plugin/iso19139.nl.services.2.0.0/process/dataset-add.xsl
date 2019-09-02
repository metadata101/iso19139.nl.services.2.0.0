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

<xsl:stylesheet version="2.0"
                xmlns:gmd="http://www.isotc211.org/2005/gmd"
                xmlns:gco="http://www.isotc211.org/2005/gco"
                xmlns:gts="http://www.isotc211.org/2005/gts"
                xmlns:gml="http://www.opengis.net/gml/3.2"
                xmlns:srv="http://www.isotc211.org/2005/srv"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xlink="http://www.w3.org/1999/xlink"
                xmlns:date="http://exslt.org/dates-and-times"
                exclude-result-prefixes="#all">

  <!-- ============================================================================= -->

  <xsl:param name="uuidref"/>
  <xsl:param name="source"/>
  <xsl:param name="scopedName"/>
  <xsl:param name="siteUrl"/>
  <xsl:param name="protocol" select="'OGC:WMS'"/>
  <xsl:param name="url"/>
  <xsl:param name="desc"/>

  <!-- ============================================================================= -->

  <xsl:template match="/gmd:MD_Metadata|*[@gco:isoType='gmd:MD_Metadata']">

    <xsl:copy>
      <xsl:copy-of select="@*"/>
      <xsl:copy-of
        select="gmd:fileIdentifier|
		    gmd:language|
		    gmd:characterSet|
		    gmd:parentIdentifier|
		    gmd:hierarchyLevel|
		    gmd:hierarchyLevelName|
		    gmd:contact|
		    gmd:dateStamp|
		    gmd:metadataStandardName|
		    gmd:metadataStandardVersion|
		    gmd:dataSetURI|
		    gmd:locale|
		    gmd:spatialRepresentationInfo|
		    gmd:referenceSystemInfo|
		    gmd:metadataExtensionInfo"/>

      <!-- Check current metadata is a service metadata record
            And add the link to the dataset -->
      <xsl:choose>
        <xsl:when
          test="gmd:identificationInfo/srv:SV_ServiceIdentification|
			    			gmd:identificationInfo/*[@gco:isoType='srv:SV_ServiceIdentification']">
          <gmd:identificationInfo>
            <srv:SV_ServiceIdentification>
              <xsl:copy-of
                select="gmd:identificationInfo/srv:SV_ServiceIdentification/gmd:citation|
							gmd:identificationInfo/*[@gco:isoType='srv:SV_ServiceIdentification']/gmd:citation|
							gmd:identificationInfo/srv:SV_ServiceIdentification/gmd:abstract|
							gmd:identificationInfo/*[@gco:isoType='srv:SV_ServiceIdentification']/gmd:abstract|
							gmd:identificationInfo/srv:SV_ServiceIdentification/gmd:purpose|
							gmd:identificationInfo/*[@gco:isoType='srv:SV_ServiceIdentification']/gmd:purpose|
							gmd:identificationInfo/srv:SV_ServiceIdentification/gmd:credit|
							gmd:identificationInfo/*[@gco:isoType='srv:SV_ServiceIdentification']/gmd:credit|
							gmd:identificationInfo/srv:SV_ServiceIdentification/gmd:status|
							gmd:identificationInfo/*[@gco:isoType='srv:SV_ServiceIdentification']/gmd:status|
							gmd:identificationInfo/srv:SV_ServiceIdentification/gmd:pointOfContact|
							gmd:identificationInfo/*[@gco:isoType='srv:SV_ServiceIdentification']/gmd:pointOfContact|
							gmd:identificationInfo/srv:SV_ServiceIdentification/gmd:resourceMaintenance|
							gmd:identificationInfo/*[@gco:isoType='srv:SV_ServiceIdentification']/gmd:resourceMaintenance|
							gmd:identificationInfo/srv:SV_ServiceIdentification/gmd:graphicOverview|
							gmd:identificationInfo/*[@gco:isoType='srv:SV_ServiceIdentification']/gmd:graphicOverview|
							gmd:identificationInfo/srv:SV_ServiceIdentification/gmd:resourceFormat|
							gmd:identificationInfo/*[@gco:isoType='srv:SV_ServiceIdentification']/gmd:resourceFormat|
							gmd:identificationInfo/srv:SV_ServiceIdentification/gmd:descriptiveKeywords|
							gmd:identificationInfo/*[@gco:isoType='srv:SV_ServiceIdentification']/gmd:descriptiveKeywords|
							gmd:identificationInfo/srv:SV_ServiceIdentification/gmd:resourceSpecificUsage|
							gmd:identificationInfo/*[@gco:isoType='srv:SV_ServiceIdentification']/gmd:resourceSpecificUsage|
							gmd:identificationInfo/srv:SV_ServiceIdentification/gmd:resourceConstraints|
							gmd:identificationInfo/*[@gco:isoType='srv:SV_ServiceIdentification']/gmd:resourceConstraints|
							gmd:identificationInfo/srv:SV_ServiceIdentification/gmd:aggregationInfo|
							gmd:identificationInfo/*[@gco:isoType='srv:SV_ServiceIdentification']/gmd:aggregationInfo|
							gmd:identificationInfo/srv:SV_ServiceIdentification/srv:serviceType|
							gmd:identificationInfo/*[@gco:isoType='srv:SV_ServiceIdentification']/srv:serviceType|
							gmd:identificationInfo/srv:SV_ServiceIdentification/srv:serviceTypeVersion|
							gmd:identificationInfo/*[@gco:isoType='srv:SV_ServiceIdentification']/srv:serviceTypeVersion|
							gmd:identificationInfo/srv:SV_ServiceIdentification/srv:accessProperties|
							gmd:identificationInfo/*[@gco:isoType='srv:SV_ServiceIdentification']/srv:accessProperties|
							gmd:identificationInfo/srv:SV_ServiceIdentification/srv:restrictions|
							gmd:identificationInfo/*[@gco:isoType='srv:SV_ServiceIdentification']/srv:restrictions|
							gmd:identificationInfo/srv:SV_ServiceIdentification/srv:keywords|
							gmd:identificationInfo/*[@gco:isoType='srv:SV_ServiceIdentification']/srv:keywords|
							gmd:identificationInfo/srv:SV_ServiceIdentification/srv:extent|
							gmd:identificationInfo/*[@gco:isoType='srv:SV_ServiceIdentification']/srv:extent"/>

              <xsl:copy-of
                select="gmd:identificationInfo/srv:SV_ServiceIdentification/srv:coupledResource|gmd:identificationInfo/srv:SV_ServiceIdentification/srv:couplingType|
							gmd:identificationInfo/*[@gco:isoType='srv:SV_ServiceIdentification']/srv:couplingType|
							gmd:identificationInfo/srv:SV_ServiceIdentification/srv:containsOperations|
							gmd:identificationInfo/*[@gco:isoType='srv:SV_ServiceIdentification']/srv:containsOperations|
							gmd:identificationInfo/srv:SV_ServiceIdentification/srv:operatesOn[@uuidref!=$source]|
							gmd:identificationInfo/*[@gco:isoType='srv:SV_ServiceIdentification']/srv:operatesOn[@uuidref!=$source]"/>

              <!-- Handle operatesOn

                            // TODO : it looks like the dataset identifier and not the
                            // metadata UUID should be set in the operatesOn element of
                            // the service metadata record.
                            -->
              <srv:operatesOn uuidref="{$uuidref}"
                              xlink:href="{$siteUrl}csw?service=CSW&amp;request=GetRecordById&amp;version=2.0.2&amp;outputSchema=http://www.isotc211.org/2005/gmd&amp;elementSetName=full&amp;id={$uuidref}#MD_DataIdentification"/>

            </srv:SV_ServiceIdentification>
          </gmd:identificationInfo>
        </xsl:when>
        <xsl:otherwise>
          <!-- Probably a dataset metadata record -->
          <xsl:copy-of select="gmd:identificationInfo"/>
        </xsl:otherwise>
      </xsl:choose>

      <xsl:copy-of
        select="gmd:contentInfo|gmd:distributionInfo|gmd:dataQualityInfo|
			gmd:portrayalCatalogueInfo|
			gmd:metadataConstraints|
			gmd:applicationSchemaInfo|
			gmd:metadataMaintenance|
			gmd:series|
			gmd:describes|
			gmd:propertyType|
			gmd:featureType|
			gmd:featureAttribute"/>


    </xsl:copy>
  </xsl:template>


</xsl:stylesheet>
