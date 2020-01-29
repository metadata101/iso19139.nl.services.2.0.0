<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
	<sch:ns uri="http://www.isotc211.org/2005/gmd" prefix="gmd"/>
	<sch:ns uri="http://www.isotc211.org/2005/gco" prefix="gco"/>
	<sch:ns uri="http://www.isotc211.org/2005/srv" prefix="srv"/>
	<sch:ns uri="http://www.isotc211.org/2005/gmx" prefix="gmx"/>
	<sch:ns uri="http://www.w3.org/1999/xlink" prefix="xlink"/>
	<sch:ns uri="http://www.w3.org/2004/02/skos/core#" prefix="skos"/>
	<sch:ns uri="http://www.opengis.net/gml" prefix="gml"/>
	<sch:ns uri="http://www.w3.org/2001/XMLSchema-instance" prefix="xsi"/>
	<sch:ns uri="http://www.fao.org/geonetwork" prefix="geonet" />

	<sch:let name="lowercase" value="'abcdefghijklmnopqrstuvwxyz'"/>
	<sch:let name="uppercase" value="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'"/>

	<sch:pattern id="Waarschuwingen bij validatie tegen het Nederlands metadata profiel op ISO 19119">
		<sch:title>Waarschuwingen bij validatie tegen het Nederlands metadata profiel op ISO 19119 voor services v 2.0.0</sch:title>

		<sch:rule id="Waarschuwingen_-_Codelijst_protocol" etf_name="Waarschuwingen - Codelijst protocol" context="//gmd:distributionInfo/gmd:MD_Distribution/gmd:transferOptions/gmd:MD_DigitalTransferOptions/gmd:onLine[1]/gmd:CI_OnlineResource/gmd:protocol/gmx:Anchor[text() = 'OGC:CSW' or text() = 'OGC:WMS' or text() = 'OGC:WMTS' or text() = 'OGC:WFS' or text() = 'OGC:WCS' or text() = 'OGC:WCTS' or text() = 'OGC:WPS' or text() = 'UKST' or text() = 'INSPIRE Atom' or text() = 'OGC:WFS-G' or text() = 'OGC:SOS' or text() = 'OGC:SPS' or text() = 'OGC:SAS' or text() = 'OGC:WNS' or text() = 'OGC:ODS' or text() = 'OGC:OGS' or text() = 'OGC:OUS' or text() = 'OGC:OPS' or text() = 'OGC:ORS' or text() = 'OGC:SensorThings' or text() = 'W3C:SPARQL' or text() = 'OASIS:OData' or text() = 'OAS' or text() = 'landingpage'  or text() = 'dataset' or text() = 'application' or text() = 'UKST']">

			<sch:let name="anchorUri" value="normalize-space(@xlink:href)"/>
			<sch:let name="txt" value="normalize-space(text())"/>
			<sch:let name="combination" value="concat($anchorUri, '=', $txt)"/>
			<sch:let name="codelist" value="'http://www.opengeospatial.org/standards/cat=OGC:CSW, http://www.opengeospatial.org/standards/wms=OGC:WMS, http://www.opengeospatial.org/standards/wmts=OGC:WMTS, http://www.opengeospatial.org/standards/wfs=OGC:WFS, http://www.opengeospatial.org/standards/wcs=OGC:WCS, http://www.opengeospatial.org/standards/sos=OGC:SOS, =INSPIRE Atom, http://www.opengis.net/def/serviceType/ogc/csw=OGC:CSW, http://www.opengis.net/def/serviceType/ogc/wms=OGC:WMS, http://www.opengis.net/def/serviceType/ogc/wmts=OGC:WMTS, http://www.opengis.net/def/serviceType/ogc/wfs=OGC:WFS, http://www.opengis.net/def/serviceType/ogc/wcs=OGC:WCS, http://www.opengis.net/def/serviceType/ogc/sos=OGC:SOS, https://tools.ietf.org/html/rfc4287=INSPIRE Atom, http://www.opengeospatial.org/standards/=OGC:WCTS, http://www.opengeospatial.org/standards/wps=OGC:WPS, =OGC:WFS-G, http://www.opengeospatial.org/standards/sps=OGC:SPS, http://www.ogcnetwork.net/SAS=OGC:SAS, =OGC:WNS, http://www.opengeospatial.org/standards/ols#ODS=OGC:ODS, http://www.opengeospatial.org/standards/ols#OGS=OGC:OGS, http://www.opengeospatial.org/standards/ols#OUS=OGC:OUS, http://www.opengeospatial.org/standards/ols#OPS=OGC:OPS, http://www.opengeospatial.org/standards/ols#ORS=OGC:ORS, http://www.opengeospatial.org/standards/sensorthings=OGC:SensorThings, https://www.w3.org/TR/rdf-sparql-query/=W3C:SPARQL, https://www.oasis-open.org/committees/odata=OASIS:OData, https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md=OAS, =landingpage, =application, =dataset, =UKST'" />

			<sch:let name="codelistNew" value="'http://www.opengis.net/def/serviceType/ogc/csw=OGC:CSW, http://www.opengis.net/def/serviceType/ogc/wms=OGC:WMS, http://www.opengis.net/def/serviceType/ogc/wmts=OGC:WMTS, http://www.opengis.net/def/serviceType/ogc/wfs=OGC:WFS, http://www.opengis.net/def/serviceType/ogc/wcs=OGC:WCS, http://www.opengis.net/def/serviceType/ogc/sos=OGC:SOS, https://tools.ietf.org/html/rfc4287=INSPIRE Atom'" />
			<sch:let name="codelistNewServiceTypes" value="'OGC:CSW, OGC:WMS, OGC:WFS, OGC:WMTS, OGC:SOS, OGC:WCS, INSPIRE Atom'"/>
			<!-- <sch:assert id="Codelijst_protocol_oude_URI_in_gebruik" etf_name="Codelijst protocol: er zijn nog codes voor protocol in gebruik uit de codelijst protocol die gaan vervallen" test="contains($codelist, $combination)">De combinatie van de URI '<sch:value-of select="$anchorUri"/>' en waarde '<sch:value-of select="$txt"/>' komt binnenkort te vervallen uit de codelijst https://docs.geostandaarden.nl/md/mdprofiel-iso19115/#codelist-protocol. Zie http://inspire.ec.europa.eu/metadata-codelist/ProtocolValue voor de codes die gebruikt gaan worden</sch:assert> -->
			<sch:assert id="Waarschuwing_Codelijst_protocol_combinatie_van_URI_en_waarde_oud" etf_name="Waarschuwing - Codelijst protocol: geldige combinatie van URI en waarde INSPIRE codelist protocol" test="contains($codelistNew, $combination) or not(contains($codelistNewServiceTypes, $txt))">De combinatie van de URI '<sch:value-of select="$anchorUri"/>' en waarde '<sch:value-of select="$txt"/>' is binnenkort geen geldige combinatie meer. De codelijst http://inspire.ec.europa.eu/metadata-codelist/ProtocolValue bevat de nieuwe codes voor Protocol voor de service types: <sch:value-of select="$codelistNewServiceTypes"/>. Advies is om de nieuwe URI te gebruiken uit de codelist http://inspire.ec.europa.eu/metadata-codelist/ProtocolValue.</sch:assert>

		</sch:rule>

		<sch:rule id="Waarschuwingen_-_Algemene_metadata_regels" etf_name="Waarschuwingen - Algemene metadata regels" context="/gmd:MD_Metadata">
			<sch:let name="conformity_Spec_Title1" value="normalize-space(string-join(//gmd:MD_Metadata/gmd:dataQualityInfo/gmd:DQ_DataQuality/gmd:report[1]/gmd:DQ_DomainConsistency/gmd:result/gmd:DQ_ConformanceResult/gmd:specification/gmd:CI_Citation/gmd:title[gco:CharacterString or gmx:Anchor]//text(), ''))"/>
			<sch:let name="conformity_Spec_Title2" value="normalize-space(string-join(//gmd:MD_Metadata/gmd:dataQualityInfo/gmd:DQ_DataQuality/gmd:report[2]/gmd:DQ_DomainConsistency/gmd:result/gmd:DQ_ConformanceResult/gmd:specification/gmd:CI_Citation/gmd:title[gco:CharacterString or gmx:Anchor]//text(), ''))"/>
			<sch:let name="conformity_Spec_Title3" value="normalize-space(string-join(//gmd:MD_Metadata/gmd:dataQualityInfo/gmd:DQ_DataQuality/gmd:report[3]/gmd:DQ_DomainConsistency/gmd:result/gmd:DQ_ConformanceResult/gmd:specification/gmd:CI_Citation/gmd:title[gco:CharacterString or gmx:Anchor]//text(), ''))"/>
			<sch:let name="conformity_Spec_Title4" value="normalize-space(string-join(//gmd:MD_Metadata/gmd:dataQualityInfo/gmd:DQ_DataQuality/gmd:report[4]/gmd:DQ_DomainConsistency/gmd:result/gmd:DQ_ConformanceResult/gmd:specification/gmd:CI_Citation/gmd:title[gco:CharacterString or gmx:Anchor]//text(), ''))"/>
			<sch:let name="conformity_Spec_Title5" value="normalize-space(string-join(//gmd:MD_Metadata/gmd:dataQualityInfo/gmd:DQ_DataQuality/gmd:report[5]/gmd:DQ_DomainConsistency/gmd:result/gmd:DQ_ConformanceResult/gmd:specification/gmd:CI_Citation/gmd:title[gco:CharacterString or gmx:Anchor]//text(), ''))"/>
			<sch:let name="conformity_Spec_Title6" value="normalize-space(string-join(//gmd:MD_Metadata/gmd:dataQualityInfo/gmd:DQ_DataQuality/gmd:report[6]/gmd:DQ_DomainConsistency/gmd:result/gmd:DQ_ConformanceResult/gmd:specification/gmd:CI_Citation/gmd:title[gco:CharacterString or gmx:Anchor]//text(), ''))"/>
			<sch:let name="conformity_Spec_Title7" value="normalize-space(string-join(//gmd:MD_Metadata/gmd:dataQualityInfo/gmd:DQ_DataQuality/gmd:report[7]/gmd:DQ_DomainConsistency/gmd:result/gmd:DQ_ConformanceResult/gmd:specification/gmd:CI_Citation/gmd:title[gco:CharacterString or gmx:Anchor]//text(), ''))"/>
			<sch:let name="conformity_Spec_Title8" value="normalize-space(string-join(//gmd:MD_Metadata/gmd:dataQualityInfo/gmd:DQ_DataQuality/gmd:report[8]/gmd:DQ_DomainConsistency/gmd:result/gmd:DQ_ConformanceResult/gmd:specification/gmd:CI_Citation/gmd:title[gco:CharacterString or gmx:Anchor]//text(), ''))"/>

			<sch:let name="conformity_Spec_Title_All" value="concat(string($conformity_Spec_Title1),string($conformity_Spec_Title2),string($conformity_Spec_Title3),string($conformity_Spec_Title4),string($conformity_Spec_Title5),string($conformity_Spec_Title6),string($conformity_Spec_Title7),string($conformity_Spec_Title8))"/>

			<sch:let name="conformity_Spec_Title_Interoperability_Exsists" value="contains($conformity_Spec_Title_All,'VERORDENING (EU) Nr. 1089/2010 VAN DE COMMISSIE van 23 november 2010 ter uitvoering van Richtlijn 2007/2/EG van het Europees Parlement en de Raad betreffende de interoperabiliteit van verzamelingen ruimtelijke gegevens en van diensten met betrekking tot ruimtelijke gegevens')"/>
			<sch:let name="conformity_Spec_Title_Network_Exsists" value="contains($conformity_Spec_Title_All,'VERORDENING (EG) Nr. 976/2009 VAN DE COMMISSIE van 19 oktober 2009 tot uitvoering van Richtlijn 2007/2/EG van het Europees Parlement en de Raad wat betreft de netwerkdiensten')"/>
			<sch:let name="resourceLocatorString" value="normalize-space(gmd:distributionInfo/*/gmd:transferOptions/*/gmd:onLine[1]/gmd:CI_OnlineResource/gmd:linkage/gmd:URL)"/>
			<sch:let name="conformity_Spec_Title_SDS_Exsists" value="(contains($conformity_Spec_Title_All,'invocable') or contains($conformity_Spec_Title_All,'interoperable') or contains($conformity_Spec_Title_All,'harmonised'))"/>

			<sch:assert id="Resource_locator_URL_getCapabilities" etf_name="Resource locator URL getCapabilities" test="not($conformity_Spec_Title_SDS_Exsists) or ($conformity_Spec_Title_SDS_Exsists and contains(translate($resourceLocatorString, $lowercase, $uppercase),'GETCAPABILITIES'))">URL naar de service moet een getCapabilities request bevatten, conformity_Spec_Title_SDS_Exsists: <sch:value-of select="$conformity_Spec_Title_SDS_Exsists"/> URL: <sch:value-of select="$resourceLocatorString"/></sch:assert>

		</sch:rule>
		
	</sch:pattern>
</sch:schema>