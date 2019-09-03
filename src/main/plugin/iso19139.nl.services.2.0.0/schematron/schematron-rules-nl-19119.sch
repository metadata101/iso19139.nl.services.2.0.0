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
	<sch:ns prefix="geonet" uri="http://www.fao.org/geonetwork"/>

	<sch:let name="lowercase" value="'abcdefghijklmnopqrstuvwxyz'"/>
	<sch:let name="uppercase" value="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'"/>
	<sch:pattern id="Validatie tegen het Nederlands metadata profiel op ISO 19119">
		<sch:title>Validatie tegen het Nederlands metadata profiel op ISO 19119 voor services v 2.0.0</sch:title>
		<!-- INSPIRE Thesaurus en Conformiteit-->
		<sch:let name="thesaurus1" value="normalize-space(string-join(/gmd:MD_Metadata/gmd:identificationInfo/*/gmd:descriptiveKeywords[1]/gmd:MD_Keywords/gmd:thesaurusName/gmd:CI_Citation/gmd:title[gco:CharacterString or gmx:Anchor]//text(), ''))"/>
		<sch:let name="thesaurus2" value="normalize-space(string-join(/gmd:MD_Metadata/gmd:identificationInfo/*/gmd:descriptiveKeywords[2]/gmd:MD_Keywords/gmd:thesaurusName/gmd:CI_Citation/gmd:title[gco:CharacterString or gmx:Anchor]//text(), ''))"/>
		<sch:let name="thesaurus3" value="normalize-space(string-join(/gmd:MD_Metadata/gmd:identificationInfo/*/gmd:descriptiveKeywords[3]/gmd:MD_Keywords/gmd:thesaurusName/gmd:CI_Citation/gmd:title[gco:CharacterString or gmx:Anchor]//text(), ''))"/>
		<sch:let name="thesaurus4" value="normalize-space(string-join(/gmd:MD_Metadata/gmd:identificationInfo/*/gmd:descriptiveKeywords[4]/gmd:MD_Keywords/gmd:thesaurusName/gmd:CI_Citation/gmd:title[gco:CharacterString or gmx:Anchor]//text(), ''))"/>
		<sch:let name="thesaurus" value="concat(string($thesaurus1),string($thesaurus2),string($thesaurus3),string($thesaurus4))"/>
		<sch:let name="thesaurus_INSPIRE_Exsists" value="contains($thesaurus,'GEMET - INSPIRE themes, version 1.0')"/>
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
	    <sch:let name="conformity_Spec_Title_SDS_Exsists" value="(contains($conformity_Spec_Title_All,'invocable') or contains($conformity_Spec_Title_All,'interoperable') or contains($conformity_Spec_Title_All,'harmonised'))"/>

		<sch:let name="conformity_Spec_Title_SDS_Invoc" value="contains($conformity_Spec_Title_All,'invocable')"/>
		<sch:let name="conformity_Spec_Title_SDS_Interop" value="contains($conformity_Spec_Title_All,'interoperable')"/>
		<sch:let name="conformity_Spec_Title_SDS_Harmo" value="contains($conformity_Spec_Title_All,'harmonised')"/>

		<sch:rule id="Algemene_metadata_regels" etf_name="Algemene metadata regels" context="/gmd:MD_Metadata">

		<!--  fileIdentifier -->
			<sch:let name="fileIdentifier" value="normalize-space(gmd:fileIdentifier/gco:CharacterString)"/>
       	<!-- Metadata taal
			https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#taal-van-de-metadata
			-->
 			<sch:let name="mdLanguage" value="(gmd:language/*/@codeListValue = 'dut' or gmd:language/*/@codeListValue = 'eng')"/>
            <sch:let name="mdLanguage_value" value="string(gmd:language/*/@codeListValue)"/>
		<!-- Metadata hiërarchieniveau -->
			<sch:let name="hierarchyLevel" value="gmd:hierarchyLevel[1]/*/@codeListValue = 'service'"/>
			<sch:let name="hierarchyLevel_value" value="string(gmd:hierarchyLevel[1]/*/@codeListValue)"/>
			<sch:let name="hierarchyLevelName" value="string(gmd:hierarchyLevelName[1]/gco:CharacterString)"/>

		<!-- Metadata verantwoordelijke organisatie (name) https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#verantwoordelijke-organisatie-metadata -->
			<sch:let name="mdResponsibleParty_OrganisationString" value="normalize-space(string-join(gmd:contact[1]/gmd:CI_ResponsibleParty/gmd:organisationName[gco:CharacterString or gmx:Anchor]//text(), ''))"/>
			<sch:let name="mdResponsibleParty_OrganisationURI" value="normalize-space(gmd:contact[1]/gmd:CI_ResponsibleParty/gmd:organisationName/gmx:Anchor/@xlink:href)"/>

		<!-- Metadata verantwoordelijke organisatie (role) INSPIRE in combi met INSPIRE specificatie-->
			<sch:let name="mdResponsibleParty_Role_INSPIRE" value="gmd:contact[1]/*/gmd:role/*/@codeListValue = 'pointOfContact'"/>

		<!-- Metadata verantwoordelijke organisatie (role) NL profiel -->
			<sch:let name="mdResponsibleParty_Role" value="gmd:contact[1]/gmd:CI_ResponsibleParty/gmd:role/*/@codeListValue = 'resourceProvider' or gmd:contact/gmd:CI_ResponsibleParty/gmd:role/*/@codeListValue = 'custodian' or gmd:contact/gmd:CI_ResponsibleParty/gmd:role/*/@codeListValue = 'owner' or gmd:contact/gmd:CI_ResponsibleParty/gmd:role/*/@codeListValue = 'user' or gmd:contact/gmd:CI_ResponsibleParty/gmd:role/*/@codeListValue = 'distributor' or gmd:contact/gmd:CI_ResponsibleParty/gmd:role/*/@codeListValue = 'owner' or gmd:contact/gmd:CI_ResponsibleParty/gmd:role/*/@codeListValue = 'originator' or gmd:contact/gmd:CI_ResponsibleParty/gmd:role/*/@codeListValue = 'pointOfContact' or gmd:contact/gmd:CI_ResponsibleParty/gmd:role/*/@codeListValue = 'principalInvestigator' or gmd:contact/gmd:CI_ResponsibleParty/gmd:role/*/@codeListValue = 'processor' or gmd:contact/gmd:CI_ResponsibleParty/gmd:role/*/@codeListValue = 'publisher' or gmd:contact/gmd:CI_ResponsibleParty/gmd:role/*/@codeListValue = 'author'"/>

		<!-- Metadata verantwoordelijke organisatie (url) -->
			<sch:let name="mdResponsibleParty_Mail" value="normalize-space(gmd:contact[1]/*/gmd:contactInfo/*/gmd:address/*/gmd:electronicMailAddress[1]/gco:CharacterString)"/>
         <!-- Metadata datum -->
			<sch:let name="dateStamp" value="normalize-space(string(gmd:dateStamp/gco:Date))"/>
		<!-- Metadatastandaard naam -->
			<sch:let name="metadataStandardName" value="translate(normalize-space(gmd:metadataStandardName/gco:CharacterString), $lowercase, $uppercase)"/>
		<!-- Versie metadatastandaard naam -->
			<sch:let name="metadataStandardVersion" value="translate(normalize-space(gmd:metadataStandardVersion/gco:CharacterString), $lowercase, $uppercase)"/>
		<!-- Metadata karakterset -->
			<sch:let name="metadataCharacterset" value="string(gmd:characterSet/*/@codeListValue)"/>
			<sch:let name="metadataCharacterset_value" value="gmd:characterSet/*[@codeListValue ='ucs2' or @codeListValue ='ucs4' or @codeListValue ='utf7' or @codeListValue ='utf8' or @codeListValue ='utf16' or @codeListValue ='8859part1' or @codeListValue ='8859part2' or @codeListValue ='8859part3' or @codeListValue ='8859part4' or @codeListValue ='8859part5' or @codeListValue ='8859part6' or @codeListValue ='8859part7' or @codeListValue ='8859part8' or @codeListValue ='8859part9' or @codeListValue ='8859part10' or @codeListValue ='8859part11' or  @codeListValue ='8859part12' or @codeListValue ='8859part13' or @codeListValue ='8859part14' or @codeListValue ='8859part15' or @codeListValue ='8859part16' or @codeListValue ='jis' or @codeListValue ='shiftJIS' or @codeListValue ='eucJP' or @codeListValue ='usAscii' or @codeListValue ='ebcdic' or @codeListValue ='eucKR' or @codeListValue ='big5' or @codeListValue ='GB2312']"/>



		<!-- rules and assertions -->
			<sch:assert id="Metadata_ID_ISO_nr_2" etf_name="Metadata ID (ISO nr. 2)" test="$fileIdentifier">Metadata ID (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#metadata-unieke-identifier) ontbreekt of heeft een verkeerde waarde.</sch:assert>
			<sch:report id="Metadata_ID_ISO_nr_2_info" etf_name="Metadata ID (ISO nr. 2) info" test="$fileIdentifier">Metadata ID: <sch:value-of select="$fileIdentifier"/>
			</sch:report>
			<sch:assert id="De_metadata_taal_ISO_nr_3" etf_name="De metadata taal (ISO nr. 3)" test="$mdLanguage">De metadata taal (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#taal-van-de-metadata) ontbreekt of heeft een verkeerde waarde. Dit hoort een waarde en verwijzing naar de codelijst te zijn.</sch:assert>
			<sch:report id="De_metadata_taal_ISO_nr_3_info" etf_name="De metadata taal (ISO nr. 3) info" test="$mdLanguage">Metadata taal (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#taal-van-de-metadata) voldoet
			</sch:report>
			<sch:assert id="Hierarchieniveau_ISO_nr_6" etf_name="Hierarchieniveau (ISO nr. 6)" test="$hierarchyLevel">Hierarchieniveau (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#hi%C3%ABrarchieniveau) ontbreekt of heeft een verkeerde waarde</sch:assert>
			<sch:report id="Hierarchieniveau_ISO_nr_6_info" etf_name="Hierarchieniveau (ISO nr. 6) info" test="$hierarchyLevel">Hierarchieniveau (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#hi%C3%ABrarchieniveau) voldoet
			</sch:report>
			<sch:assert id="Hierarchieniveau_naam" etf_name="Hierarchieniveau naam" test="$hierarchyLevelName">Hierarchieniveau naam (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#hi%C3%ABrarchieniveaunaam) ontbreekt</sch:assert>
			<sch:report id="Hierarchieniveau_naam" etf_name="Hierarchieniveau naam" test="$hierarchyLevelName">Hierarchieniveau naam (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#hi%C3%ABrarchieniveaunaam) voldoet
			</sch:report>

			<sch:assert id="Naam_organisatie_metadata_ISO_nr_376" etf_name="Naam organisatie metadata (ISO nr. 376)" test="$mdResponsibleParty_OrganisationString or $mdResponsibleParty_OrganisationURI">Naam organisatie metadata (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#verantwoordelijke-organisatie-metadata) ontbreekt</sch:assert>
			<sch:report id="Naam_organisatie_metadata_ISO_nr_376_info" etf_name="Naam organisatie metadata (ISO nr. 376) info" test="$mdResponsibleParty_OrganisationString or $mdResponsibleParty_OrganisationURI">Naam organisatie metadata (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#verantwoordelijke-organisatie-metadata): <sch:value-of select="$mdResponsibleParty_OrganisationString"/> <sch:value-of select="$mdResponsibleParty_OrganisationURI"/>
			</sch:report>

			<sch:assert id="Rol_organisatie_metadata_ISO_nr_379" etf_name="Rol organisatie metadata (ISO nr. 379)" test="$mdResponsibleParty_Role">Rol organisatie metadata (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#verantwoordelijke-organisatie-metadata:-rol) ontbreekt of heeft een verkeerde waarde</sch:assert>
			<sch:report id="Rol_organisatie_metadata_ISO_nr_379_info" etf_name="Rol organisatie metadata (ISO nr. 379) info" test="$mdResponsibleParty_Role">Rol organisatie metadata (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#verantwoordelijke-organisatie-metadata:-rol) <sch:value-of select="$mdResponsibleParty_Role"/>
			</sch:report>

		<!-- INSPIRE in combi met specificatie INSPIRE -->
			<sch:assert id="INSPIRE_Rol_organisatie_metadata_ISO_nr_379" etf_name="INSPIRE Rol organisatie metadata (ISO nr. 379)" test="not($conformity_Spec_Title_Interoperability_Exsists) or ($conformity_Spec_Title_Interoperability_Exsists and $mdResponsibleParty_Role_INSPIRE)">Rol organisatie metadata (ISO nr. 379) ontbreekt of heeft een verkeerde waarde, deze dient voor INSPIRE contactpunt te zijn</sch:assert>

		<!-- eind INSPIRE in combi met specificatie INSPIRE -->
			<sch:assert id="E-mail_organisatie_metadata_ISO_nr_386" etf_name="E-mail organisatie metadata (ISO nr. 386)" test="$mdResponsibleParty_Mail">E-mail organisatie metadata (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#verantwoordelijke-organisatie-metadata:-e-mail) ontbreekt</sch:assert>
			<sch:report id="E-mail_organisatie_metadata_ISO_nr_386_info" etf_name="E-mail organisatie metadata (ISO nr. 386) info" test="$mdResponsibleParty_Mail">E-mail organisatie metadata (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#verantwoordelijke-organisatie-metadata:-e-mail): <sch:value-of select="$mdResponsibleParty_Mail"/>
			</sch:report>
			<sch:assert id="Metadata_datum_ISO_nr_9" etf_name="Metadata datum (ISO nr. 9)" test="((number(substring(substring-before($dateStamp,'-'),1,4)) &gt; 1000 ))">Metadata datum (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#metadatadatum) ontbreekt of heeft het verkeerde formaat (YYYY-MM-DD)</sch:assert>
			<sch:report id="Metadata_datum_ISO_nr_9_info" etf_name="Metadata datum (ISO nr. 9) info" test="$dateStamp">Metadata datum (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#metadatadatum): <sch:value-of select="$dateStamp"/>
			</sch:report>
			<sch:assert id="Metadatastandaard_naam_ISO_nr_10" etf_name="Metadatastandaard naam (ISO nr. 10)" test="contains($metadataStandardName, 'ISO 19119')">Metadatastandaard naam (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#metadata-standaard-naam) is niet correct ingevuld, Metadatastandaard naam dient de waarde 'ISO 19119' te hebben</sch:assert>
			<sch:report id="Metadatastandaard_naam_ISO_nr_10_info" etf_name="Metadatastandaard naam (ISO nr. 10) info" test="$metadataStandardName">Metadatastandaard naam (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#metadata-standaard-naam): <sch:value-of select="$metadataStandardName"/>
			</sch:report>
			<sch:assert id="Versie_metadatastandaard__ISO_nr_11" etf_name="Versie metadatastandaard  (ISO nr. 11)" test="contains($metadataStandardVersion, 'PROFIEL OP ISO 19119')">Versie metadatastandaard (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#metadatastandaard-versie) is niet correct ingevuld, Metadatastandaard versie dient de waarde 'Nederlands metadata profiel op ISO 19119 voor services 2.0' te bevatten</sch:assert>
			<sch:report id="Versie_metadatastandaard__ISO_nr_11_info" etf_name="Versie metadatastandaard  (ISO nr. 11) info" test="contains($metadataStandardVersion, 'PROFIEL OP ISO 19119')">Versie metadatastandaard (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#metadatastandaard-versie): <sch:value-of select="$metadataStandardVersion"/>
			</sch:report>

			<sch:assert id="Metadata_karakterset_ISO_nr_4" etf_name="Metadata karakterset (ISO nr. 4)" test="not($metadataCharacterset) or $metadataCharacterset_value">Metadata karakterset (ISO nr. 4) ontbreekt of heeft een verkeerde waarde</sch:assert>
			<sch:report id="Metadata_karakterset_ISO_nr_4_info" etf_name="Metadata karakterset (ISO nr. 4) info" test="not($metadataCharacterset) or $metadataCharacterset_value">Metadata karakterset (ISO nr. 4) voldoet</sch:report>

	 	<!-- alle regels over elementen binnen gmd:identificationInfo -->
		<!-- service titel -->
		<!-- https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#titel-van-de-bron -->
			<sch:let name="serviceTitle" value="normalize-space(gmd:identificationInfo[1]/*/gmd:citation/*/gmd:title/gco:CharacterString)"/>
		 <!-- Service referentie datum -->
			<!-- https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#datum-van-de-bron en https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#datum-type-van-de-bron -->

			<sch:let name="date" value="string(gmd:identificationInfo[1]/*/gmd:citation/*/gmd:date[1]/*/gmd:date/gco:Date)"/>
			<sch:let name="dateYear" value="((number(substring(substring-before($date,'-'),1,4)) &gt; 1000 ))"/>

			<sch:let name="publicationDateString" value="string(gmd:identificationInfo[1]/*/gmd:citation/*/gmd:date[./*/gmd:dateType/*/@codeListValue='publication']/*/gmd:date/gco:Date)"/>
			<sch:let name="creationDateString" value="string(gmd:identificationInfo[1]/*/gmd:citation/*/gmd:date[./*/gmd:dateType/*/@codeListValue='creation']/*/gmd:date/gco:Date)"/>
			<sch:let name="revisionDateString" value="string(gmd:identificationInfo[1]/*/gmd:citation/*/gmd:date[./*/gmd:dateType/*/@codeListValue='revision']/*/gmd:date/gco:Date)"/>
			<sch:let name="publicationDate" value="((number(substring(substring-before($publicationDateString,'-'),1,4)) &gt; 1000 ))"/>
			<sch:let name="creationDate" value="((number(substring(substring-before($creationDateString,'-'),1,4)) &gt; 1000 ))"/>
			<sch:let name="revisionDate" value="((number(substring(substring-before($revisionDateString,'-'),1,4)) &gt; 1000 ))"/>

		<!-- Samenvatting
	https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#samenvatting -->
			<sch:let name="abstract" value="normalize-space(gmd:identificationInfo[1]/*/gmd:abstract/gco:CharacterString)"/>
		 <!--  Verantwoordelijke organisatie bron -->
			<sch:let name="responsibleParty_Organisation" value="normalize-space(gmd:identificationInfo[1]/*/gmd:pointOfContact[1]/*/gmd:organisationName/gco:CharacterString)"/>
			<sch:let name="responsibleParty_OrganisationString" value="normalize-space(gmd:identificationInfo/*/gmd:pointOfContact[1]/*/gmd:organisationName/gco:CharacterString)"/>
			<sch:let name="responsibleParty_OrganisationURI" value="normalize-space(gmd:identificationInfo/*/gmd:pointOfContact[1]/*/gmd:organisationName/gmx:Anchor/@xlink:href)"/>
			<sch:let name="responsibleParty_OrganisationAnchor" value="normalize-space(gmd:identificationInfo/*/gmd:pointOfContact[1]/*/gmd:organisationName/gmx:Anchor)"/>

		 <!-- Verantwoordelijke organisatie bron: e-mail https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#verantwoordelijke-organisatie-bron-email -->
 			<sch:let name="responsibleParty_Mail" value="normalize-space(gmd:identificationInfo/*/gmd:pointOfContact[1]/gmd:CI_ResponsibleParty/gmd:contactInfo/gmd:CI_Contact/gmd:address[1]/gmd:CI_Address/gmd:electronicMailAddress[1]/gco:CharacterString)"/>

 		<!-- Verantwoordelijke organisatie bron rol, https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#verantwoordelijke-organisatie-bron:-rol -->
 			<sch:let name="responsibleParty_Role" value="gmd:identificationInfo/*/gmd:pointOfContact[1]/gmd:CI_ResponsibleParty/gmd:role/*[@codeListValue = 'resourceProvider' or @codeListValue = 'custodian' or @codeListValue = 'owner' or @codeListValue = 'user' or @codeListValue = 'distributor' or @codeListValue = 'owner' or @codeListValue = 'originator' or @codeListValue = 'pointOfContact' or @codeListValue = 'principalInvestigator' or @codeListValue = 'processor' or @codeListValue = 'publisher' or @codeListValue = 'author']"/>

		 <!-- Trefwoorden  voor INSPIRE -->
			<sch:let name="keyword_INSPIRE" value="normalize-space((gmd:identificationInfo[1]/*/gmd:descriptiveKeywords/*/gmd:keyword[1][gco:CharacterString or gmx:Anchor]/*
			[text() = 'infoFeatureAccessService'
			or text() = 'infoMapAccessService'
			or text() = 'infoCoverageAccessService'
			or text() = 'infoSensorDescriptionService'
			or text() = 'infoFeatureTypeService'
			or text() = 'infoProductAccessService'
			or text() = 'infoCatalogueService'
			or text() = 'infoGazetteerService'
			or text() = 'humanGeographicViewer'])[1])"/>

 		<!--  eind Trefwoorden  voor INSPIRE-->

		<!-- Trefwoorden NL profie -->

			<sch:let name="keyword" value="normalize-space(string-join(gmd:identificationInfo[1]/*/gmd:descriptiveKeywords[1]/*/gmd:keyword[1][gco:CharacterString or gmx:Anchor]//text(), ''))"/>

		<!-- eind Trefwoorden NL profiel  -->
		<!-- Als  de GEMET INSPIRE themes thesaurus voorkomt, is verwijzing naar inspire specificatie verplicht -->


		    <sch:assert id="INSPIRE_Specificaties_ISO_nr_360" etf_name="INSPIRE Specificaties (ISO nr. 360)" test="not($thesaurus_INSPIRE_Exsists) or ($thesaurus_INSPIRE_Exsists and ($conformity_Spec_Title_Interoperability_Exsists or $conformity_Spec_Title_Network_Exsists))">Specificatie (ISO nr. 360) mist de verplichte waarden voor INSPIRE services. Als dit geen INSPIRE service is verwijder dan de thesaurus GEMET -INSPIRE themes. Voor INSPIRE service in specificatie opnemen: ofwel voor Netwerk Services 'VERORDENING (EG) Nr. 976/2009 VAN DE COMMISSIE van 19 oktober 2009 tot uitvoering van Richtlijn 2007/2/EG van het Europees Parlement en de Raad wat betreft de netwerkdiensten' of voor SDS 'VERORDENING (EU) Nr. 1089/2010 VAN DE COMMISSIE van 23 november 2010 ter uitvoering van Richtlijn 2007/2/EG van het Europees Parlement en de Raad betreffende de interoperabiliteit van verzamelingen ruimtelijke gegevens en van diensten met betrekking tot ruimtelijke gegevens'</sch:assert>

		<!-- eind	-->

		<!-- Unieke Identifier van de bron -->
			<sch:let name="identifier" value="normalize-space(gmd:identificationInfo[1]/*/gmd:citation/*/gmd:identifier/*/gmd:code/gco:CharacterString)"/>
		<!-- Gebruiksbeperkingen -->
		<!-- Gebruiksbeperkingen, https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#gebruiksbeperkingen -->
		<sch:let name="useLimitation" value="normalize-space(gmd:identificationInfo/*/gmd:resourceConstraints/gmd:MD_Constraints/gmd:useLimitation[1]/gco:CharacterString)"/>

		<!-- Overige beperkingen https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#overige-beperkingen -->
		<!-- Tests of een waarde of label is opgegeven
		Bij Anchors: of het element ook een xlink:href heeft
		-->
		<sch:let name="otherConstraint1" value="normalize-space(string-join(gmd:identificationInfo/*/gmd:resourceConstraints[2]/gmd:MD_LegalConstraints/gmd:otherConstraints[1][gco:CharacterString or gmx:Anchor/@xlink:href]//text(), ''))"/>
		<sch:let name="otherConstraint2" value="normalize-space(string-join(gmd:identificationInfo/*/gmd:resourceConstraints[2]/gmd:MD_LegalConstraints/gmd:otherConstraints[2][gco:CharacterString or gmx:Anchor/@xlink:href]//text(), ''))"/>

		<sch:let name="otherConstraints" value="concat($otherConstraint1,$otherConstraint2)"/>

		<!-- Aanname: dit is altijd het 2e blok resourceConstraints. Of beter per definitie het blok waarin NIET de codelijst http://inspire.ec.europa.eu/metadata-codelist/LimitationsOnPublicAccess zit? -->
		<sch:let name="otherConstraintURI1" value="gmd:identificationInfo/*/gmd:resourceConstraints[2]/gmd:MD_LegalConstraints/gmd:otherConstraints[1]/gmx:Anchor"/>
		<sch:let name="otherConstraintURI2" value="gmd:identificationInfo/*/gmd:resourceConstraints[2]/gmd:MD_LegalConstraints/gmd:otherConstraints[2]/gmx:Anchor"/>

		<sch:let name="nrMDLegalConstraints" value="count(gmd:identificationInfo/*/gmd:resourceConstraints/gmd:MD_LegalConstraints)"/>

		<!-- Thijs Brentjens add the URI to the test as well -->
		<!-- Moet van de codelijst de waarde of de beschrijving gebruikt worden? Op basis van de inhoud van kolom beschrijving vermoed ik dat het die is (maar bij andere codelijsten was het juist de kolom waarde) Voor nu wel de waarde laten staan omdat hiermee onderscheid te maken is.
		-->
		<sch:let name="otherConstraintIsCodelistdatalicense" value="($otherConstraint1='Geen beperkingen' and (contains($otherConstraintURI1/@xlink:href,'://creativecommons.org/publicdomain/mark/') or contains($otherConstraint2,'://creativecommons.org/publicdomain/mark/'))) or ($otherConstraint1='Geen beperkingen' and (contains($otherConstraintURI1/@xlink:href,'://creativecommons.org/publicdomain/zero/') or contains($otherConstraint2,'://creativecommons.org/publicdomain/zero/'))) or (contains($otherConstraint1,'Naamsvermelding verplicht, ') and (contains($otherConstraintURI1/@xlink:href,'://creativecommons.org/licenses/by/') or contains($otherConstraint2,'://creativecommons.org/licenses/by/'))) or (contains($otherConstraint1, 'Gelijk Delen, Naamsvermelding verplicht, ') and (contains($otherConstraintURI1/@xlink:href,'://creativecommons.org/licenses/by-sa/') or contains($otherConstraint2,'://creativecommons.org/licenses/by-sa/'))) or (contains($otherConstraint1, 'Niet Commercieel, Naamsvermelding verplicht, ') and (contains($otherConstraintURI1/@xlink:href,'://creativecommons.org/licenses/by-nc/') or contains($otherConstraint2,'://creativecommons.org/licenses/by-nc/'))) or (contains($otherConstraint1, 'Niet Commercieel, Gelijk Delen, Naamsvermelding verplicht, ') and (contains($otherConstraintURI1/@xlink:href,'://creativecommons.org/licenses/by-nc-sa/') or contains($otherConstraint2,'://creativecommons.org/licenses/by-nc-sa/'))) or (contains($otherConstraint1, 'Geen Afgeleide Werken, Naamsvermelding verplicht, ') and (contains($otherConstraintURI1/@xlink:href,'://creativecommons.org/licenses/by-nd/') or contains($otherConstraint2,'://creativecommons.org/licenses/by-nd/'))) or (contains($otherConstraint1, 'Niet Commercieel, Geen Afgeleide Werken, Naamsvermelding verplicht, ') and (contains($otherConstraintURI1/@xlink:href,'://creativecommons.org/licenses/by-nc-nd/') or contains($otherConstraint2,'://creativecommons.org/licenses/by-nc-nd/'))) or ($otherConstraint1='Geo Gedeeld licentie' and (starts-with($otherConstraintURI1/@xlink:href,'http') or starts-with($otherConstraint2,'http')) ) or ($otherConstraint2='Geen beperkingen' and (contains($otherConstraintURI2/@xlink:href,'://creativecommons.org/publicdomain/mark/') or contains($otherConstraint1,'://creativecommons.org/publicdomain/mark/'))) or ($otherConstraint2='Geen beperkingen' and (contains($otherConstraintURI2/@xlink:href,'://creativecommons.org/publicdomain/zero/') or contains($otherConstraint1,'://creativecommons.org/publicdomain/zero/'))) or (contains($otherConstraint2, 'Naamsvermelding verplicht, ') and (contains($otherConstraintURI2/@xlink:href,'://creativecommons.org/licenses/by/') or contains($otherConstraint1,'://creativecommons.org/licenses/by/')) ) or (contains($otherConstraint2, 'Gelijk Delen, Naamsvermelding verplicht, ') and (contains($otherConstraintURI2/@xlink:href,'://creativecommons.org/licenses/by-sa/') or contains($otherConstraint1,'://creativecommons.org/licenses/by-sa/'))) or (contains($otherConstraint2, 'Niet Commercieel, Naamsvermelding verplicht, ') and (contains($otherConstraintURI2/@xlink:href,'://creativecommons.org/licenses/by-nc/') or contains($otherConstraint1,'://creativecommons.org/licenses/by-nc/'))) or (contains($otherConstraint2, 'Niet Commercieel, Gelijk Delen, Naamsvermelding verplicht, ') and (contains($otherConstraintURI2/@xlink:href,'://creativecommons.org/licenses/by-nc-sa/') or contains($otherConstraint1,'://creativecommons.org/licenses/by-nc-sa/'))) or (contains($otherConstraint2, 'Geen Afgeleide Werken, Naamsvermelding verplicht, ') and (contains($otherConstraintURI2/@xlink:href,'://creativecommons.org/licenses/by-nd/') or contains($otherConstraint1,'://creativecommons.org/licenses/by-nd/'))) or (contains($otherConstraint2, 'Niet Commercieel, Geen Afgeleide Werken, Naamsvermelding verplicht, ') and (contains($otherConstraintURI2/@xlink:href,'://creativecommons.org/licenses/by-nc-nd/') or contains($otherConstraint1,'://creativecommons.org/licenses/by-nc-nd/'))) or ($otherConstraint2='Geo Gedeeld licentie' and (starts-with($otherConstraintURI2/@xlink:href,'http') or starts-with($otherConstraint1,'http')))" />


		<!-- test op bestaande URI in een van de codelijsten: https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#codelist-datalicenties, https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#Codelijst-INSPIRE-ConditionsApplyingToAccessAndUse of  https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#Codelijst-INSPIRE-LimitationsOnPublicAccess
		inhoudelijk niet mogelijk, want de laatste rij van https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#codelist-datalicenties is:
		"Verwijzing naar een geldige URL van de licentie" . Dit is te algemeen, niet testbaar als waarde in een codelijst
		-->

		<!-- (Juridische) toegangsrestricties -->
		<!-- aanscherping om public domein CC0 of Geogedeeld te gebruiken -->
		<!-- waarde moet in dat geval otherRestrictions zijn -->
		<!-- Voor INSPIRE is otherRestrictions ook verplicht -->
		<!-- TODO: Docs: Altijd de 2e set elementen van resourceConstraints, want useLimitation is de 1e (overgenomen uit profiel 1.3) -->
		<sch:let name="accessConstraints_value" value="normalize-space(gmd:identificationInfo/*/gmd:resourceConstraints[2]/gmd:MD_LegalConstraints/gmd:accessConstraints/*[@codeListValue = 'otherRestrictions']/@codeListValue)"/>

			<!-- Ruimtelijk referentiesysteem https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#codereferentiesysteem -->
			<sch:let name="referenceSystemInfo" value="gmd:referenceSystemInfo"/>

		<!-- Locatie algemeen -->
			<sch:let name="geographicLocation" value="normalize-space(gmd:identificationInfo[1]/*/srv:extent/*/gmd:geographicElement[1])"/>
		<!-- Omgrenzende rechthoek https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#omgrenzende-rechthoek -->
			<sch:let name="west" value="number(gmd:identificationInfo[1]/*/srv:extent/*/gmd:geographicElement/*/gmd:westBoundLongitude[1]/gco:Decimal)"/>
			<sch:let name="east" value="number(gmd:identificationInfo[1]/*/srv:extent/*/gmd:geographicElement/*/gmd:eastBoundLongitude[1]/gco:Decimal)"/>
			<sch:let name="north" value="number(gmd:identificationInfo[1]/*/srv:extent/*/gmd:geographicElement/*/gmd:northBoundLatitude[1]/gco:Decimal)"/>
			<sch:let name="south" value="number(gmd:identificationInfo[1]/*/srv:extent/*/gmd:geographicElement/*/gmd:southBoundLatitude[1]/gco:Decimal)"/>
		<!-- Temporele dekking begin -->
			<sch:let name="begin_beginPosition" value="normalize-space(gmd:identificationInfo/*/srv:extent/*/gmd:temporalElement/*/gmd:extent/*/gml:beginPosition[1])"/>
			<sch:let name="begin_begintimePosition" value="normalize-space(gmd:identificationInfo/*/srv:extent/*/gmd:temporalElement/*/gmd:extent/*/gml:begin/*/gml:timePosition[1])"/>
			<sch:let name="begin_timePosition" value="normalize-space(gmd:identificationInfo/*/srv:extent/*/gmd:temporalElement/*/gmd:extent/*/gml:timePosition[1])"/>
			<sch:let name="begin" value="$begin_beginPosition or $begin_begintimePosition or $begin_timePosition"/>

		<!-- rules and assertions -->

			<sch:assert id="Service_titel_ISO_nr_360" etf_name="Service titel (ISO nr. 360)" test="$serviceTitle">Service titel (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#titel-van-de-bron) ontbreekt</sch:assert>
			<sch:report id="Service_titel_ISO_nr_360_info" etf_name="Service titel (ISO nr. 360) info" test="$serviceTitle">Service titel (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#titel-van-de-bron): <sch:value-of select="$serviceTitle"/>
		    	</sch:report>
			<sch:assert id="Datum_van_de_bron_ISO_nr_394" etf_name="Datum van de bron (ISO nr. 394)" test="$dateYear">Datum van de bron (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#datum-van-de-bron) ontbreekt of heeft het verkeerde formaat (YYYY-MM-DD)</sch:assert>
			<sch:report id="Datum_van_de_bron_ISO_nr_394_info" etf_name="Datum van de bron (ISO nr. 394) info" test="$dateYear">Tenminste 1 Datum van de bron  (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#datum-van-de-bron) is gevonden
		    	</sch:report>
			<sch:assert id="Datumtype_van_de_bron_ISO_nr_395" etf_name="Datumtype van de bron (ISO nr. 395)" test="($publicationDate or $creationDate or $revisionDate)">Datumtype van de bron (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#datumtype-van-de-bron) ontbreekt</sch:assert>

			<!-- https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#samenvatting -->
			<sch:assert id="Samenvatting_ISO_nr_25" etf_name="Samenvatting (ISO nr. 25)" test="$abstract">Samenvatting (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#samenvatting) ontbreekt</sch:assert>
			<sch:report id="Samenvatting_ISO_nr_25_info" etf_name="Samenvatting (ISO nr. 25) info" test="$abstract">Samenvatting (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#samenvatting): <sch:value-of select="$abstract"/>
		    	</sch:report>

			<!-- https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#verantwoordelijke-organisatie-bron -->
			<sch:assert id="Verantwoordelijke_organisatie_bron_ISO_nr_376" etf_name="Verantwoordelijke organisatie bron (ISO nr. 376)" test="$responsibleParty_OrganisationString or $responsibleParty_OrganisationURI">Verantwoordelijke organisatie bron (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#verantwoordelijke-organisatie-bron) ontbreekt</sch:assert>
			<sch:report id="Verantwoordelijke_organisatie_bron_ISO_nr_376_info" etf_name="Verantwoordelijke organisatie bron (ISO nr. 376) info" test="$responsibleParty_OrganisationString or $responsibleParty_OrganisationURI">Verantwoordelijke organisatie bron (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#verantwoordelijke-organisatie-bron): <sch:value-of select="$responsibleParty_OrganisationString"/> <sch:value-of select="$responsibleParty_OrganisationAnchor"/> (URI: <sch:value-of select="$responsibleParty_OrganisationURI"/>)
			</sch:report>

			<sch:assert id="Rol_verantwoordelijke_organisatie_bron_ISO_nr_379" etf_name="Rol verantwoordelijke organisatie bron (ISO nr. 379)" test="$responsibleParty_Role">Rol verantwoordelijke organisatie bron (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#verantwoordelijke-organisatie-bron:-rol) ontbreekt of heeft een verkeerde waarde</sch:assert>
			<sch:report id="Rol_verantwoordelijke_organisatie_bron_ISO_nr_379_info" etf_name="Rol verantwoordelijke organisatie bron (ISO nr. 379) info" test="$responsibleParty_Role">Rol verantwoordelijke organisatie bron (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#verantwoordelijke-organisatie-bron:-rol) voldoet
			</sch:report>
			<sch:assert id="E-mail_verantwoordelijke_organisatie_bron_ISO_nr_386" etf_name="E-mail verantwoordelijke organisatie bron (ISO nr. 386)" test="$responsibleParty_Mail">E-mail verantwoordelijke organisatie bron (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#verantwoordelijke-organisatie-bron-email) ontbreekt</sch:assert>
			<sch:report id="E-mail_verantwoordelijke_organisatie_bron_ISO_nr_386_info" etf_name="E-mail verantwoordelijke organisatie bron (ISO nr. 386) info" test="$responsibleParty_Mail">E-mail verantwoordelijke organisatie bron (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#verantwoordelijke-organisatie-bron-email): <sch:value-of select="$responsibleParty_Mail"/>
			</sch:report>

			<sch:assert id="Trefwoorden_ISO_nr_53" etf_name="Trefwoorden (ISO nr. 53)" test="$keyword">Trefwoorden (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#trefwoord) ontbreken</sch:assert>
			<sch:report id="Trefwoorden_ISO_nr_53_info" etf_name="Trefwoorden (ISO nr. 53) info" test="$keyword">Tenminste 1 trefwoord (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#trefwoord) is gevonden (<sch:value-of select="$keyword"/>)
			</sch:report>

		<!-- INSPIRE in combi met SDS interop INSPIRE -->
			<sch:assert id="Rol_organisatie_SDSISO_nr_379" etf_name="Rol organisatie SDS(ISO nr. 379)" test="not($conformity_Spec_Title_SDS_Interop) or ($conformity_Spec_Title_SDS_Interop and contains($responsibleParty_Role, 'custodian'))">Rol organisatie (ISO nr. 379) ontbreekt of heeft een verkeerde waarde, voor INSPIRE interoperable SDS in ieder geval de rol beheerder opnemen</sch:assert>
			<sch:assert id="Rol_organisatie_SDS_harmoISO_nr_379" etf_name="Rol organisatie SDS harmo(ISO nr. 379)" test="not($conformity_Spec_Title_SDS_Harmo) or ($conformity_Spec_Title_SDS_Harmo and contains($responsibleParty_Role, 'custodian'))">Rol organisatie (ISO nr. 379) ontbreekt of heeft een verkeerde waarde, voor INSPIRE harmonised SDS in ieder geval de rol beheerder opnemen</sch:assert>
			<sch:report id="Rol_organisatie_SDSISO_nr_379_info" etf_name="Rol organisatie SDS(ISO nr. 379) info" test="$conformity_Spec_Title_SDS_Interop">Rol verantwoordelijke organisatie (ISO nr. 379): <sch:value-of select="$conformity_Spec_Title_SDS_Interop"/>
			</sch:report>
		<!-- eind INSPIRE in combi met SDS INSPIRE -->

			<sch:assert id="Gebruiksbeperkingen_ISO_nr_68" etf_name="Gebruiksbeperkingen (ISO nr. 68)" test="$useLimitation">Gebruiksbeperkingen (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#gebruiksbeperkingen) ontbreken</sch:assert>
			<sch:report id="Gebruiksbeperkingen_ISO_nr_68_info" etf_name="Gebruiksbeperkingen (ISO nr. 68) info" test="$useLimitation">Gebruiksbeperkingen (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#gebruiksbeperkingen): <sch:value-of select="$useLimitation"/>
			</sch:report>
			<sch:assert id="Overige_beperkingen_1_Anchor_URI_aanwezig" etf_name="Overige beperkingen 1 Anchor URI aanwezig" test="not($otherConstraintURI1) or ($otherConstraintURI1 and $otherConstraintURI1/@xlink:href)">Overige beperkingen eerste element: de URI (xlink:href) dient ingevuld te zijn</sch:assert>
			<sch:assert id="Overige_beperkingen_2_Anchor_URI_aanwezig" etf_name="Overige beperkingen 2 Anchor URI aanwezig" test="not($otherConstraintURI2) or ($otherConstraintURI2 and $otherConstraintURI2/@xlink:href)">Overige beperkingen tweede element: de URI (xlink:href) dient ingevuld te zijn</sch:assert>

			<sch:assert id="Juridische_toegangsrestricties_ISO_nr_70_en_Overige_beperkingen_ISO_nr_72" etf_name="(Juridische) toegangsrestricties (ISO nr. 70) en Overige beperkingen (ISO nr 72)" test="$accessConstraints_value and $otherConstraints ">(Juridische) toegangsrestricties (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#juridische-toegangsrestricties) en Overige beperkingen (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#overige-beperkingen) dienen ingevuld te zijn</sch:assert>
			<sch:assert id="Juridische_toegangsrestricties_ISO_nr_70" etf_name="(Juridische) toegangsrestricties (ISO nr. 70)" test="$accessConstraints_value">(Juridische) toegangsrestricties (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#juridische-toegangsrestricties) dient de waarde 'anders' ('otherRestrictions') te hebben in combinatie met een publiek domein, CC0 of GeoGedeeld licentie bij overige beperkingen (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#overige-beperkingen)</sch:assert>

			<!-- Voor NL GI-beraad moet accessConstraints_value aanwezig zijn -->
			<sch:assert id="Juridische_toegangsrestricties_verplicht_met_'otherRestrictions'_aanwezig" etf_name="Juridische toegangsrestricties verplicht met 'otherRestrictions' aanwezig" test="$accessConstraints_value">Het element Juridische toegangsrestricties met de waarde 'otherRestrictions' is niet aanwezig, maar is wel verplicht voor organisaties die zich conformeren aan afspraken in het GI-beraad (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#juridische-toegangsrestricties).</sch:assert>

			<!-- Als er maar 1 otherConstraint is, moet het een Anchor + label zijn. Melding ook aanpassen: of een Anchor met label. Moet ook bij dataset metadata (alle validators, check INSPIRE). -->
			<sch:assert id="Overige_beperkingen_ISO_nr_72" etf_name="Overige beperkingen (ISO nr 72)" test="not($accessConstraints_value = 'otherRestrictions') or ($accessConstraints_value = 'otherRestrictions' and $otherConstraint1 and $otherConstraint2) or ($accessConstraints_value = 'otherRestrictions' and $otherConstraintURI1 and $otherConstraintURI1/@xlink:href)">Het element overige beperkingen (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#overige-beperkingen) dient twee maal binnen dezelfde toegangsrestricties voor te komen; één met de beschrijving en één met de URL, in 2 elementen of in 1 Anchor. De URL moet verwijzen naar de publiek domein, CC0 of GeoGedeeld licentie,als (juridische) toegangsrestricties (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#juridische-toegangsrestricties) de waarde 'anders' heeft</sch:assert>
			<sch:report id="Overige_beperkingen_ISO_nr_72_1_info" etf_name="Overige beperkingen (ISO nr 72) 1 info" test="$otherConstraint1">Overige beperkingen (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#overige-beperkingen) 1: <sch:value-of select="$otherConstraint1"/>
			</sch:report>
			<sch:report id="Overige_beperkingen_ISO_nr_72_2_info" etf_name="Overige beperkingen (ISO nr 72) 2 info" test="$otherConstraint2">Overige beperkingen (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#overige-beperkingen) 2: <sch:value-of select="$otherConstraint2"/>
			</sch:report>

			<sch:report id="Juridische_toegangsrestricties_ISO_nr_70_info" etf_name="(Juridische) toegangsrestricties (ISO nr. 70) info"  test="$accessConstraints_value">(Juridische) toegangsrestricties (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#juridische-toegangsrestricties) aanwezig: <sch:value-of select="$accessConstraints_value"/>
			</sch:report>

			<!-- Thijs Brentjens: nieuwe controle op codelijst https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#codelist-datalicenties -->
			<sch:assert id="Overige_beperkingen_en_codelijst_Datalicenties" etf_name="Overige beperkingen en codelijst Datalicenties" test="not($accessConstraints_value = 'otherRestrictions') or ($accessConstraints_value = 'otherRestrictions' and $otherConstraintIsCodelistdatalicense)">Als het element juridische toegangsrestricties de waarde otherRestrictions bevat dient een link uit de codelijst https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#codelist-datalicenties naar de licentie en de bijbehorende beschrijving opgenomen te worden. Opgenomen informatie: <sch:value-of select="$otherConstraint1"/> met licentie: <sch:value-of select="normalize-space($otherConstraintURI1/@xlink:href)"/> <sch:value-of select="$otherConstraint2"/> en <sch:value-of select="$otherConstraint2"/> <sch:value-of select="normalize-space($otherConstraintURI2/@xlink:href)"/> <sch:value-of select="$otherConstraint1"/></sch:assert>


		    <!-- 5.2.17 Voor INSPIRE moet 2 maal MD_LegalConstraints aanwezig zijn -->
		    <!-- <sch:assert id="Juridische_toegangsrestricties:_het_element__MD_LegalConstraints_moet_2_maal_aanwezig_zijn" etf_name="Juridische toegangsrestricties: het element MD_LegalConstraints moet 2 maal aanwezig zijn" test="$nrMDLegalConstraints = 2">Het element MD_LegalConstraints moet 2 maal aanwezig zijn, maar is dat niet (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#juridische-toegangsrestricties).</sch:assert>
 -->

			<!-- optional / conditional: test verwijderen -->
			<!-- <sch:assert id="Code_referentiesysteem_ISO_nr_207" etf_name="Code referentiesysteem (ISO nr. 207)" test="$referenceSystemInfo">Code referentiesysteem (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#codereferentiesysteem) ontbreekt</sch:assert> -->

		<!-- service -->
		<!-- https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#url -->

			<sch:let name="dcp_value" value="normalize-space(string(gmd:identificationInfo[1]/*/srv:containsOperations[1]/*/srv:DCP/*/@codeListValue))"/>

			<!-- Operatie naam https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#operatie-naam -->
			<sch:let name="operationName" value="normalize-space(gmd:identificationInfo[1]/*/srv:containsOperations[1]/*/srv:operationName/gco:CharacterString)"/>

			<!-- Nieuw, Parameter naam.check wat er aan assertions nodig is voor: https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#parameter-naam  -->

			<!-- Connectie URL: -->
			<sch:let name="connectPointString" value="normalize-space(gmd:identificationInfo[1]/*/srv:containsOperations[1]/*/srv:connectPoint/*/gmd:linkage/gmd:URL)"/>
			<sch:let name="connectPoint" value="normalize-space(substring-before($connectPointString,'?'))"/>

			<!-- ResourceLocator is de URL van https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#url -->
			<sch:let name="resourceLocatorString" value="normalize-space(gmd:distributionInfo/*/gmd:transferOptions/*/gmd:onLine[1]/gmd:CI_OnlineResource/gmd:linkage/gmd:URL)"/>
			<sch:let name="resourceLocator" value="normalize-space(substring-before($resourceLocatorString,'?'))"/>

		<!-- Protocol -->
		<!-- https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#protocol -->
			<sch:let name="transferOptions_Protocol" value="gmd:distributionInfo/gmd:MD_Distribution/gmd:transferOptions/gmd:MD_DigitalTransferOptions/gmd:onLine[1]/gmd:CI_OnlineResource/gmd:protocol/*[normalize-space(text()) = 'OGC:CSW' or normalize-space(text()) = 'OGC:WMS' or normalize-space(text()) = 'OGC:WMTS' or normalize-space(text()) = 'OGC:WFS' or normalize-space(text()) = 'OGC:WCS' or normalize-space(text()) = 'OGC:WCTS' or normalize-space(text()) = 'OGC:WPS' or normalize-space(text()) = 'UKST' or normalize-space(text()) = 'INSPIRE Atom' or normalize-space(text()) = 'OGC:WFS-G' or normalize-space(text()) = 'OGC:SOS' or normalize-space(text()) = 'OGC:SPS' or normalize-space(text()) = 'OGC:SAS' or normalize-space(text()) = 'OGC:WNS' or normalize-space(text()) = 'OGC:ODS' or normalize-space(text()) = 'OGC:OGS' or normalize-space(text()) = 'OGC:OUS' or normalize-space(text()) = 'OGC:OPS' or normalize-space(text()) = 'OGC:ORS' or normalize-space(text()) = 'OGC:SensorThings' or normalize-space(text()) = 'W3C:SPARQL' or normalize-space(text()) = 'OASIS:OData' or normalize-space(text()) = 'OAS' or normalize-space(text()) = 'landingpage'  or normalize-space(text()) = 'dataset' or normalize-space(text()) = 'application' or normalize-space(text()) = 'UKST' ]" />

			<sch:let name="transferOptions_Protocol_isOGCService" value="gmd:distributionInfo/gmd:MD_Distribution/gmd:transferOptions/gmd:MD_DigitalTransferOptions/gmd:onLine[1]/gmd:CI_OnlineResource/gmd:protocol/*[normalize-space(text()) = 'OGC:WMS' or normalize-space(text()) = 'OGC:WFS' or normalize-space(text()) = 'OGC:WCS']"/>

			<sch:let name="transferOptions_MediaType" value="gmd:distributionInfo/gmd:MD_Distribution/gmd:transferOptions/gmd:MD_DigitalTransferOptions/gmd:onLine[1]/gmd:CI_OnlineResource/gmd:protocol/*[normalize-space(text()) = 'gml' or normalize-space(text()) = 'kml' or normalize-space(text()) = 'geojson' or normalize-space(text()) = 'gpkg' or normalize-space(text()) = 'json' or normalize-space(text()) = 'jsonld' or normalize-space(text()) = 'rdf-xml' or normalize-space(text()) = 'xml' or normalize-space(text()) = 'zip' or normalize-space(text()) = 'png' or normalize-space(text()) = 'png' or normalize-space(text()) = 'gif' or normalize-space(text()) = 'jp2' or normalize-space(text()) = 'tiff' or normalize-space(text()) = 'csv' or normalize-space(text()) = 'mapbox-vector-tile']"/>

			<!-- https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#omschrijving -->
			<sch:let name="transferOptions_Description_Value" value="normalize-space(string-join(gmd:distributionInfo/gmd:MD_Distribution/gmd:transferOptions/gmd:MD_DigitalTransferOptions/gmd:onLine[1]/gmd:CI_OnlineResource/gmd:description[./gco:CharacterString or ./gmx:Anchor]//text(), ''))"/>

			<!-- https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#service-type -->
		   	<sch:let name="serviceType_value" value="gmd:identificationInfo[1]/*/srv:serviceType/*/text()"/>
		   	<sch:let name="serviceType" value="gmd:identificationInfo[1]/*/srv:serviceType/*[text() = 'view'
		   	or text() = 'download'
		   	or text() = 'discovery'
		   	or text() = 'transformation'
		   	 or text() = 'invoke'
		   	 or text() = 'other']"/>
			<sch:let name="serviceType_Networkservice" value="normalize-space(gmd:identificationInfo[1]/*/srv:serviceType/*[text() = 'view'
				or text() = 'download'
				or text() = 'discovery'])"/>
			<sch:let name="serviceType_Other" value="normalize-space(gmd:identificationInfo[1]/*/srv:serviceType/*[text() = 'other'])"/>
			<sch:let name="serviceTypeVersion" value="normalize-space(gmd:identificationInfo[1]/*/srv:serviceTypeVersion/gco:CharacterString)"/>

			<!--Koppel type: https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#koppel-type -->
		   	<sch:let name="couplingType_value" value="string(gmd:identificationInfo[1]/*/srv:couplingType/*/@codeListValue)"/>
		    <sch:let name="couplingType" value="gmd:identificationInfo[1]/*/srv:couplingType/*/@codeListValue[. ='tight' or . ='mixed' or . ='loose']"/>

			<!-- Gekoppelde bron https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#gekoppelde-bron -->
			<sch:let name="coupledResourceXlink" value="normalize-space(string(gmd:identificationInfo[1]/srv:SV_ServiceIdentification/srv:operatesOn[1]/@xlink:href))"  />
			<sch:let name="coupledResourceUUID" value="normalize-space(string(gmd:identificationInfo[1]/srv:SV_ServiceIdentification/srv:operatesOn[1]/@uuidref))"  />

		<!-- assertions and reports -->
		<!-- dcp -->
			<sch:assert id="DCP" etf_name="DCP" test="$dcp_value = 'WebServices' or $dcp_value = 'XML' or $dcp_value = 'CORBA' or $dcp_value = 'JAVA' or $dcp_value = 'COM' or $dcp_value = 'SQL'">DCP ontbreekt of heeft de verkeerde waarde </sch:assert>
			<sch:report id="DCP_info" etf_name="DCP info" test="$dcp_value">DCP: <sch:value-of select="$dcp_value"/></sch:report>
		<!-- operationName -->
			<sch:assert id="Operatie_naam" etf_name="Operatie naam" test="$operationName">Operatie naam (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#operatie-naam) ontbreekt of heeft de verkeerde waarde.</sch:assert>
			<sch:report id="Operatie_naam_info" etf_name="Operatie naam info" test="$operationName">Operatie naam: <sch:value-of select="$operationName"/></sch:report>
		<!-- connectPoint https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#connectie-url -->
			<sch:assert id="Connectie_URL" etf_name="Connectie URL" test="$connectPointString">De connectie URL (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#connectie-url) ontbreekt of heeft de verkeerde waarde </sch:assert>
			<sch:report id="Connectie_URL_info" etf_name="Connectie URL info" test="$connectPointString">Connectie URL: <sch:value-of select="$connectPointString"/></sch:report>

		 <!-- resourceLocator -->
			<sch:assert id="URL_en_connectpoint_Linkage_1" etf_name="URL en connectpoint Linkage 1" test="not((not($connectPoint) and not($resourceLocator)) and not($resourceLocatorString=$connectPointString))">URL (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#url) heeft niet dezelfde waarde als de connectie URL (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#connectie-url)</sch:assert>
			<sch:assert id="URL_en_connectpoint_Linkage_2" etf_name="URL en connectpoint Linkage 2" test="not(($connectPoint and not($resourceLocator)) and not($resourceLocatorString=$connectPoint))">URL (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#url) heeft niet dezelfde waarde als de connectie URL (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#connectie-url)</sch:assert>
			<sch:assert id="URL_en_connectpoint_Linkage_3" etf_name="URL en connectpoint Linkage 3" test="not(($resourceLocator and not($connectPoint)) and not($resourceLocator=$connectPointString))">URL (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#url) heeft niet dezelfde waarde als de connectie URL (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#connectie-url)</sch:assert>
			<sch:assert id="URL_en_connectpoint_Linkage_4" etf_name="URL en connectpoint Linkage 4" test="not(($connectPoint and $resourceLocator) and not($resourceLocator=$connectPoint))">URL (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#url) heeft niet dezelfde waarde als de connectie URL (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#connectie-url)</sch:assert>

			<sch:assert id="URL" etf_name="URL" test="$resourceLocatorString">De URL (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#url) is verplicht als er een link is naar de service</sch:assert>
			<sch:report id="URL_info" etf_name="URL info" test="$resourceLocatorString">URL: <sch:value-of select="$resourceLocatorString"/>
			</sch:report>

	   	 <!-- protocol: https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#protocol -->
			<sch:assert id="Protocol_ISO_nr_398" etf_name="Protocol (ISO nr. 398)" test="not($resourceLocatorString) or ($resourceLocatorString and $transferOptions_Protocol)">Protocol (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#protocol) is verplicht als URL is ingevuld.</sch:assert>
			<sch:report id="Protocol_ISO_nr_398_info" etf_name="Protocol (ISO nr. 398) info" test="$transferOptions_Protocol">Protocol (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#protocol): <sch:value-of select="normalize-space(gmd:identificationInfo[1]/*/gmd:transferOptions[1]/*/gmd:onLine/*/gmd:protocol/*/text())"/>
			</sch:report>

			<!-- URL omschrijving: controleer of die is opgegeven: als een URL is opgegeven -->
			<sch:assert id="Omschrijving_Bij_URL" etf_name="Omschrijving bij URL" test="not($resourceLocatorString) or $transferOptions_Description_Value">De omschrijving (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#omschrijving) is verplicht als er een URL is naar de service</sch:assert>

			<!-- Thijs Brentjens: nieuwe assertion. Als de URL een endpoint is, moet de codelijst https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#codelist-mediatypes gebruikt worden. Bij een accessPoint de codelijst https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#codelist-protocol -->
			<sch:assert id="Bij_een_URL_endPoint_moet_een_waarde_uit_de_codelijst_mediatype_opgegeven_zijn" etf_name="Bij een URL endPoint moet een waarde uit de codelijst mediatype opgegeven zijn" test="not($transferOptions_Description_Value = 'endPoint') or ($transferOptions_Description_Value = 'endPoint' and $transferOptions_MediaType)">Protocol (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#protocol) moet een waarde uit de codelijst media types (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#codelist-mediatypes) bevatten als de URL omschrijving (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#Codelist-INSPIRE-OnLineDescriptionCode) een endPoint is.</sch:assert>

			<sch:assert id="Bij_een_URL_accessPoint_moet_een_waarde_uit_de_codelijst_protocol_opgegeven_zijn" etf_name="Bij een URL accessPoint moet een waarde uit de codelijst protocol opgegeven zijn" test="not($transferOptions_Description_Value = 'accessPoint') or ($transferOptions_Description_Value = 'accessPoint' and $transferOptions_Protocol)">Protocol (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#protocol) moet een waarde uit de codelijst protocol (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#codelist-protocol) bevatten als de URL omschrijving (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#Codelist-INSPIRE-OnLineDescriptionCode) een accessPoint is.</sch:assert>


		<!-- service type -->
			<sch:assert id="Service_type" etf_name="Service type" test="$serviceType">Service type (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#service-type) ontbreekt of heeft de verkeerde waarde, gebruik view of download voor services die aan betreffende specificaties van INSPIRE voldoen, in andere gevallen de waarde other.</sch:assert>
			<sch:report id="Service_type_info" etf_name="Service type info" test="$serviceType">Service type: <sch:value-of select="$serviceType_value"/></sch:report>

	<!-- INSPIRE service type -->
			<sch:assert id="Service_type_en_network_specificatie" etf_name="Service type en network specificatie" test="not($conformity_Spec_Title_Network_Exsists) or ($conformity_Spec_Title_Network_Exsists and $serviceType_Networkservice)">Service type ontbreekt of heeft de verkeerde waarde, gebruik view of download voor services die aan betreffende specificaties van INSPIRE voldoen.</sch:assert>
			<sch:assert id="Service_type_en_SDS_specificatie" etf_name="Service type en SDS specificatie" test="not($conformity_Spec_Title_SDS_Exsists) or ($conformity_Spec_Title_SDS_Exsists and $serviceType_Other)">Service type ontbreekt of heeft de verkeerde waarde, gebruik de waarde other voor INSPIRE services die geen INSPIRE view of INSPIRE download service zijn</sch:assert>

	<!-- alleen INSPIRE specificatie in combi met servicetype alleen bij INSPIRE ckecken-->
	<!--
			<sch:assert id="Network_specificatie_en_Service_type" etf_name="Network specificatie en Service type" test="not($serviceType_Networkservice) or ($serviceType_Networkservice and $conformity_Spec_Title_Network_Exsists)">Specificatie ontbreekt of heeft de verkeerde waarde, bij servicetype view of download bij INSPIRE services in specificatie verwijzen naar VERORDENING (EG) Nr. 976/2009 VAN DE COMMISSIE van 19 oktober 2009 tot uitvoering van Richtlijn 2007/2/EG van het Europees Parlement en de Raad wat betreft de netwerkdiensten.</sch:assert>
			<sch:assert id="SDS_specificatie_en_Service_type" etf_name="SDS specificatie en Service type" test="not($serviceType_Other) or ($serviceType_Other and $conformity_Spec_Title_SDS_Exsists)">Specificatie ontbreekt of heeft de verkeerde waarde, bij servicetype other voor INSPIRE services in specificatie verwijzen naar invocable, interoperable of harmonised als de service een INSPIRE dataset gebruikt.</sch:assert>
			<sch:report id="SDS_specificatie_en_Service_type_info" etf_name="SDS specificatie en Service type info" test="$conformity_Spec_Title_All">conformity spec title all: <sch:value-of select="$conformity_Spec_Title_All"/></sch:report>
	-->
	<!-- eind alleen INSPIRE specificatie in combi met servicetype -->
		<!-- INSPIRE SDS -->
			<sch:assert id="Beschrijving" etf_name="Beschrijving" test="not($conformity_Spec_Title_SDS_Exsists) or ($conformity_Spec_Title_SDS_Exsists and $transferOptions_Description_Value = 'accessPoint')">beschrijving ontbreekt of heeft de verkeerde waarde, gebruik voor INSPIRE SDS de waarde accessPoint</sch:assert>
			<sch:report id="Beschrijving_info" etf_name="Beschrijving info" test="$transferOptions_Description_Value">Service type: <sch:value-of select="$transferOptions_Description_Value"/></sch:report>

	<!-- eind  INSPIRE	SDS-->
			<!-- couplingType -->
			<sch:assert id="Coupling_type" etf_name="Koppel type" test="$couplingType">Koppel type ontbreekt of heeft de verkeerde waarde</sch:assert>
			<sch:report id="Coupling_type_info" etf_name="Koppel type info" test="$couplingType">Koppel type: <sch:value-of select="$couplingType_value"/>
		   	</sch:report>


		<!-- Koppel type is niet nodig
		    	<sch:assert id="coupling_type" etf_name="Koppel type" test="not($couplingType_value='loose')">'Koppel type' heeft de verkeerde waarde; loose is alleen mogelijk als er geen data aan de service gekoppeld is</sch:assert>
		    	<sch:report id="coupling_type_info" etf_name="Koppel type info" test="not($couplingType_value='loose')">'Koppel type' : <sch:value-of select="$couplingType_value"/>
		    	</sch:report>
		-->

		<!-- Gekoppelde bron afhankelijk van data koppeling, https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#gekoppelde-bron
		Bij tight en mixed moet er een xlink opgenomen zijn
		-->
			<sch:assert id="coupledResource_met_xlink" etf_name="coupledResource met xlink" test="not($couplingType_value='tight' or $couplingType_value='mixed') or (($couplingType_value='tight' or $couplingType_value='mixed') and $coupledResourceXlink)">Gekoppelde bron (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#gekoppelde-bron) met xlink is verplicht indien data aan de service is gekoppeld (Gekoppelde bron 'tight' of 'mixed').</sch:assert>

			<sch:assert id="coupledResource_met_xlink_MD_DataIdentification" etf_name="coupledResource met xlink naar MD_DataIdentification" test="not($coupledResourceXlink) or contains(translate($coupledResourceXlink, $lowercase, $uppercase),'MD_DATAIDENTIFICATION')">Gekoppelde bron (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#gekoppelde-bron) met xlink naar MD_DataIdentification is verplicht.</sch:assert>


		<!-- extent https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#omgrenzende-rechthoek -->
		<!-- Opgave Ine (28 novmeber 2018): altijd checken op omgrenzende rechthoek, ook al is dat conditioneel -->
			<sch:assert id="Omgrenzende_rechthoek" etf_name="Omgrenzende rechthoek" test="$geographicLocation">Omgrenzende rechthoek is verplicht indien data aan de service is gekoppeld.</sch:assert>
			<sch:report id="Omgrenzende_rechthoek_info" etf_name="Omgrenzende rechthoek info" test="$geographicLocation">Omgrenzende rechthoek: <sch:value-of select="$geographicLocation"/>
			</sch:report>

			<sch:assert id="Minimum_x-coordinaat_ISO_nr_344" etf_name="Minimum x-coordinaat (ISO nr. 344)"  test="(-180.00 &lt; $west) and ( $west &lt; 180.00) or ( $west = 0.00 ) or ( $west = -180.00 ) or ( $west = 180.00 )">Minimum x-coördinaat (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#omgrenzende-rechthoek) ontbreekt of heeft een verkeerde waarde</sch:assert>
			<sch:report id="Minimum_x-coordinaat_ISO_nr_344_info" etf_name="Minimum x-coordinaat (ISO nr. 344) info" test="(-180.00 &lt; $west) and ( $west &lt; 180.00) or ( $west = 0.00 ) or ( $west = -180.00 ) or ( $west = 180.00 )">Minimum x-coördinaat (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#omgrenzende-rechthoek): <sch:value-of select="$west"/>
			</sch:report>
			<sch:assert id="Maximum_x-coordinaat_ISO_nr_345" etf_name="Maximum x-coordinaat (ISO nr. 345)"  test="(-180.00 &lt; $east) and ($east &lt; 180.00) or ( $east = 0.00 ) or ( $east = -180.00 ) or ( $east = 180.00 )">Maximum x-coördinaat (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#omgrenzende-rechthoek) ontbreekt of heeft een verkeerde waarde</sch:assert>
			<sch:report id="Maximum_x-coordinaat_ISO_nr_345_info" etf_name="Maximum x-coordinaat (ISO nr. 345) info"  test="(-180.00 &lt; $east) and ($east &lt; 180.00) or ( $east = 0.00 ) or ( $east = -180.00 ) or ( $east = 180.00 )">Maximum x-coördinaat (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#omgrenzende-rechthoek): <sch:value-of select="$east"/>
			</sch:report>
			<sch:assert id="Minimum_y-coordinaat_ISO_nr_346" etf_name="Minimum y-coordinaat (ISO nr. 346)" test="(-90.00 &lt; $south) and ($south &lt; $north) or (-90.00 = $south) or ($south = $north)">Minimum y-coördinaat (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#omgrenzende-rechthoek) ontbreekt of heeft een verkeerde waarde</sch:assert>
			<sch:report id="Minimum_y-coordinaat_ISO_nr_346_info" etf_name="Minimum y-coordinaat (ISO nr. 346) info" test="(-90.00 &lt; $south) and ($south &lt; $north) or (-90.00 = $south) or ($south = $north)">Minimum y-coördinaat (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#omgrenzende-rechthoek): <sch:value-of select="$south"/>
			</sch:report>
			<sch:assert id="Maximum_y-coordinaat_ISO_nr_347" etf_name="Maximum y-coordinaat (ISO nr. 347)" test="($south &lt; $north) and ($north &lt; 90.00) or ($south = $north) or ($north = 90.00)">Maximum y-coördinaat (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#omgrenzende-rechthoek) ontbreekt of heeft een verkeerde waarde</sch:assert>
			<sch:report id="Maximum_y-coordinaat_ISO_nr_347_info" etf_name="Maximum y-coordinaat (ISO nr. 347) info" test="($south &lt; $north) and ($north &lt; 90.00) or ($south = $north) or ($north = 90.00)">Maximum y-coördinaat (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#omgrenzende-rechthoek): <sch:value-of select="$north"/>
			</sch:report>

		<!-- alle regels over elementen binnen gmd:dataQualityInfo -->
			<sch:let name="dataQualityInfo" value="gmd:dataQualityInfo/gmd:DQ_DataQuality"/>
			<sch:let name="level" value="string($dataQualityInfo/gmd:scope/gmd:DQ_Scope/gmd:level/*/@codeListValue[. = 'service'])"/>

			<!-- TODO: check xpath in respec doc: lijkt niet te kloppen. Klopt dit onderstaande pad wel? Met namespaces etc? -->
			<sch:let name="levelDescription" value="string($dataQualityInfo/gmd:scope/gmd:DQ_Scope/gmd:levelDescription/*/gmd:other)"/>

			<!-- https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#niveau-kwaliteitsbeschrijving-naam -->
		<!-- rules and assertions -->
			<sch:assert id="Niveau_kwaliteitsbeschrijving_ISO_nr139" etf_name="Niveau kwaliteitsbeschrijving (ISO nr.139)" test="$level">Niveau kwaliteitsbeschrijving (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#niveau-kwaliteitsbeschrijving) ontbreekt of heeft een verkeerde waarde. Alleen 'service' is toegestaan</sch:assert>
			<sch:report id="Niveau_kwaliteitsbeschrijving_ISO_nr139_info" etf_name="Niveau kwaliteitsbeschrijving (ISO nr.139) info" test="$level">Niveau kwaliteitsbeschrijving (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#niveau-kwaliteitsbeschrijving): <sch:value-of select="$level"/>
			</sch:report>

			<sch:assert id="Niveau_kwaliteitsbeschrijving_naam" etf_name="Niveau kwaliteitsbeschrijving naam" test="$levelDescription">Niveau kwaliteitsbeschrijving naam (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#niveau-kwaliteitsbeschrijving-naam) ontbreekt of heeft een verkeerde waarde.</sch:assert>
			<sch:report id="Niveau_kwaliteitsbeschrijving_naam_info" etf_name="Niveau kwaliteitsbeschrijving naam info" test="$levelDescription">Niveau kwaliteitsbeschrijving naam (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#niveau-kwaliteitsbeschrijving-naam): <sch:value-of select="$level"/>
			</sch:report>

		</sch:rule>

		<!--  Conformiteitindicatie meerdere specificaties -->
		<sch:rule id="Conformiteit_specificaties" etf_name="Conformiteit specificaties" context="//gmd:MD_Metadata/gmd:dataQualityInfo[1]/gmd:DQ_DataQuality/gmd:report/gmd:DQ_DomainConsistency/gmd:result/gmd:DQ_ConformanceResult">
		<!-- Specificatie title, https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#specificatie -->
			<sch:let name="conformity_SpecTitle" value="normalize-space(string-join(gmd:specification/gmd:CI_Citation/gmd:title[./gco:CharacterString or ./gmx:Anchor]//text(), ''))"/>
			<sch:let name="conformity_SpecTitleString" value="normalize-space(gmd:specification/gmd:CI_Citation/gmd:title/gco:CharacterString)"/>
			<sch:let name="conformity_SpecTitleURI" value="normalize-space(gmd:specification/gmd:CI_Citation/gmd:title/gmx:Anchor/@xlink:href)"/>
		<!-- Verklaring https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#verklaring -->
			<sch:let name="conformity_Explanation" value="normalize-space(gmd:explanation/gco:CharacterString)"/>

		<!-- Specificatie date https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#specificatiedatum	-->
			<sch:let name="conformity_DateString" value="string(gmd:specification/gmd:CI_Citation/gmd:date/gmd:CI_Date/gmd:date/gco:Date)"/>
			<sch:let name="conformity_Date" value="((number(substring(substring-before($conformity_DateString,'-'),1,4)) &gt; 1000 ))"/>

			<!-- Specificatiedatum type https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#specificatiedatum-type -->
			<!-- Codelijst: https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#codelist-datetypecode -->
			<sch:let name="conformity_Datetype" value="gmd:specification/gmd:CI_Citation/gmd:date/gmd:CI_Date/gmd:dateType/*[@codeListValue='creation' or @codeListValue='publication' or @codeListValue='revision']"/>
			<sch:let name="conformity_SpecCreationDate" value="gmd:specification/gmd:CI_Citation/gmd:date[./gmd:CI_Date/gmd:dateType/*/@codeListValue='creation']/*/gmd:date/gco:Date"/>
			<sch:let name="conformity_SpecPublicationDate" value="gmd:specification/gmd:CI_Citation/gmd:date[./gmd:CI_Date/gmd:dateType/*/@codeListValue='publication']/*/gmd:date/gco:Date"/>
			<sch:let name="conformity_SpecRevisionDate" value="gmd:specification/gmd:CI_Citation/gmd:date[./gmd:CI_Date/gmd:dateType/*/@codeListValue='revision']/*/gmd:date/gco:Date"/>

			<!-- Conformiteit indicatie met de specificatie https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#conformiteit-indicatie-met-de-specificatie -->
			<sch:let name="conformity_Pass" value="normalize-space(gmd:pass/gco:Boolean)"/>

		<!-- Specificatie alleen voor INSPIRE-->
			<!--
			<sch:assert id="INSPIRE_Specificatie_ISO_nr_360_" etf_name="INSPIRE Specificatie (ISO nr. 360 )" test="$conformity_SpecTitle">Specificatie (ISO nr. 360 ) ontbreekt.</sch:assert>
			<sch:assert id="INSPIRE_Verklaring_ISO_nr_131" etf_name="INSPIRE Verklaring (ISO nr. 131)" test="$conformity_Explanation">Verklaring (ISO nr. 131) ontbreekt.</sch:assert>
			<sch:assert id="INSPIRE_Specificatie_datum_ISO_nr_394" etf_name="INSPIRE Specificatie datum (ISO nr. 394" test="$conformity_Date">Specificatie datum (ISO nr. 394) ontbreekt.</sch:assert>
			<sch:assert id="INSPIRE_Specificatiedatum_type_ISO_nr_395" etf_name="INSPIRE Specificatiedatum type (ISO nr. 395)" test="$conformity_Datetype">Specificatiedatum type (ISO nr. 395) ontbreekt.</sch:assert>
			<sch:assert id="INSPIRE_Conformiteitindicatie_met_de_specificatie__ISO_nr_132" etf_name="INSPIRE Conformiteitindicatie met de specificatie  (ISO nr. 132)" test="$conformity_Pass">Conformiteitindicatie met de specificatie  (ISO nr. 132) ontbreekt.</sch:assert>
		-->
		<!-- eind Specificatie alleen voor INSPIRE-->

		<!-- Voor niet INSPIRE data als title is ingevuld, moeten date, datetype, explanation en pass ingevuld zijn -->

			<sch:assert id="Verklaring_ISO_nr_131_en_Specificatie_ISO_nr_360" etf_name="Verklaring (ISO nr. 131) en Specificatie (ISO nr. 360)" test="not($conformity_SpecTitle) or ($conformity_SpecTitle and $conformity_Explanation)">Verklaring (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#verklaring) is verplicht als een specificatie (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#specificatie) is opgegeven.</sch:assert>
			<sch:assert id="Datum_ISO_nr_394_en_Specificatie_ISO_nr_360" etf_name="Datum (ISO nr. 394) en Specificatie (ISO nr. 360)" test="not($conformity_SpecTitle and not($conformity_Date))">Datum (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#specificatiedatum) is verplicht als een specificatie (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#specificatie) is opgegeven. </sch:assert>
			<sch:assert id="Datumtype_ISO_nr_395__en_Specificatie_ISO_nr_360" etf_name="Datumtype (ISO nr. 395)  en Specificatie (ISO nr. 360)" test="not($conformity_SpecTitle and not($conformity_Datetype))">Datumtype (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#specificatiedatum-type) is verplicht als een specificatie (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#specificatie) is opgegeven. </sch:assert>
			<sch:assert id="Conformiteit_ISO_nr_132__en_Specificatie_ISO_nr_360" etf_name="Conformiteit (ISO nr. 132)  en Specificatie (ISO nr. 360)" test="not($conformity_SpecTitle) or ($conformity_SpecTitle and $conformity_Pass)">Conformiteit (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#conformiteit-indicatie-met-de-specificatie) is verplicht als een specificatie (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#specificatie) is opgegeven.</sch:assert>


		<!-- als er geen titel is ingevuld, moeten date, datetype explanation en pass leeg zijn -->
			<sch:assert id="Verklaring_ISO_nr_131" etf_name="Verklaring (ISO nr. 131)" test="not($conformity_Explanation) or ($conformity_Explanation and $conformity_SpecTitle)">Verklaring (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#verklaring) hoort leeg te zijn als geen specificatie is opgegeven</sch:assert>
			<sch:assert id="Datum_ISO_nr_394" etf_name="Datum (ISO nr. 394)" test="not($conformity_Date and not($conformity_SpecTitle))">Datum (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#specificatiedatum) hoort leeg te zijn als geen specificatie is opgegeven. </sch:assert>
			<sch:assert id="Datumtype_ISO_nr_395" etf_name="Datumtype (ISO nr. 395)" test="not($conformity_Datetype and not($conformity_SpecTitle))">Datumtype (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#specificatiedatum-type) hoort leeg te zijn als geen specificatie is opgegeven.</sch:assert>
			<sch:assert id="Conformiteit_ISO_nr_132" etf_name="Conformiteit (ISO nr. 132" test="not($conformity_Pass) or ($conformity_Pass and $conformity_SpecTitle)">Conformiteit (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#conformiteit-indicatie-met-de-specificatie) hoort leeg te zijn als geen specificatie is opgegeven.</sch:assert>

			<sch:report id="Verklaring_ISO_nr_131_info" etf_name="Verklaring (ISO nr. 131) info" test="$conformity_Explanation">Verklaring (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#verklaring): <sch:value-of select="$conformity_Explanation"/>
			</sch:report>
			<sch:report id="Conformiteitindicatie_met_de_specificatie_ISO_nr_132_info" etf_name="Conformiteitindicatie met de specificatie (ISO nr. 132) info" test="$conformity_Pass">Conformiteitindicatie met de specificatie (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#conformiteit-indicatie-met-de-specificatie): <sch:value-of select="$conformity_Pass"/>
			</sch:report>
			<sch:report id="Specificatie_ISO_nr_360_info" etf_name="Specificatie (ISO nr. 360) info" test="$conformity_SpecTitleString or $conformity_SpecTitleURI">Specificatie (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#specificatie): <sch:value-of select="$conformity_SpecTitleString"/><sch:value-of select="$conformity_SpecTitleURI"/>
			</sch:report>
			<sch:report id="Datum_ISO_nr_394_en_datum_type_ISO_nr_395_info" etf_name="Datum (ISO nr. 394) en datum type (ISO nr. 395) info" test="$conformity_SpecCreationDate or $conformity_SpecPublicationDate or $conformity_SpecRevisionDate">Datum (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#specificatiedatum) en datum type (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#specificatiedatum-type) zijn aanwezig voor specificatie.</sch:report>
		</sch:rule>

		<!-- INSPIRE specification titel -->

		<sch:rule id="alle_INSPIRE_specificaties" etf_name="alle INSPIRE specificaties" context="//gmd:MD_Metadata/gmd:dataQualityInfo/gmd:DQ_DataQuality/gmd:report/gmd:DQ_DomainConsistency/gmd:result/gmd:DQ_ConformanceResult/gmd:specification/gmd:CI_Citation">

		    <sch:let name="all_conformity_Spec_Titles" value="ancestor::gmd:dataQualityInfo/gmd:DQ_DataQuality/gmd:report/gmd:DQ_DomainConsistency/gmd:result/gmd:DQ_ConformanceResult/gmd:specification/gmd:CI_Citation/gmd:title"/>
			<sch:let name="all_conformity_Spec_Titles_join" value="normalize-space(string-join(($all_conformity_Spec_Titles), ','))"/>
			<sch:let name="INSPIRE_SDS_Spec_Title_exists" value="contains($all_conformity_Spec_Titles_join, 'invocable') or contains($all_conformity_Spec_Titles_join, 'interoperable') or contains($all_conformity_Spec_Titles_join, 'harmonised')"/>
			<sch:let name="INSPIRE_network_Spec_Title_exists" value="$all_conformity_Spec_Titles[normalize-space(*/text()) =  'VERORDENING (EG) Nr. 976/2009 VAN DE COMMISSIE van 19 oktober 2009 tot uitvoering van Richtlijn 2007/2/EG van het Europees Parlement en de Raad wat betreft de netwerkdiensten']"/>
			<sch:let name="INSPIRE_interop_Spec_Title_exists" value="$all_conformity_Spec_Titles[normalize-space(*/text()) =  'VERORDENING (EU) Nr. 1089/2010 VAN DE COMMISSIE van 23 november 2010 ter uitvoering van Richtlijn 2007/2/EG van het Europees Parlement en de Raad betreffende de interoperabiliteit van verzamelingen ruimtelijke gegevens en van diensten met betrekking tot ruimtelijke gegevens']"/>

			<sch:let name="INSPIRE_network_Spec_Title" value="'VERORDENING (EG) Nr. 976/2009 VAN DE COMMISSIE van 19 oktober 2009 tot uitvoering van Richtlijn 2007/2/EG van het Europees Parlement en de Raad wat betreft de netwerkdiensten'"/>
			<sch:let name="INSPIRE_interop_Spec_Title" value="'VERORDENING (EU) Nr. 1089/2010 VAN DE COMMISSIE van 23 november 2010 ter uitvoering van Richtlijn 2007/2/EG van het Europees Parlement en de Raad betreffende de interoperabiliteit van verzamelingen ruimtelijke gegevens en van diensten met betrekking tot ruimtelijke gegevens'"/>
			<sch:let name="INSPIRE_SDS_invoc" value="'invocable'"/>
			<sch:let name="INSPIRE_SDS_interop" value="'interoperable'"/>
			<sch:let name="INSPIRE_SDS_harmo" value="'harmonised'"/>

		<!-- alleen INSPIRE interoperable titel moet aanwezig zijn-->
		<!--
			<sch:assert id="INSPIRE_Specificatie_ISO_nr_360_titel_interoperabiliteit" etf_name="INSPIRE Specificatie (ISO nr. 360) titel interoperabiliteit" test="$INSPIRE_interop_Spec_Title_exists">Specificatie (ISO nr. 360) ontbreekt of heeft de verkeerde waarde,verwijzen naar de VERORDENING (EU) Nr. 1089/2010 VAN DE COMMISSIE van 23 november 2010 ter uitvoering van Richtlijn 2007/2/EG van het Europees Parlement en de Raad betreffende de interoperabiliteit van verzamelingen ruimtelijke gegevens en van diensten met betrekking tot ruimtelijke gegevens</sch:assert>
		-->
		<!-- INSPIRE SDS titel of titel netwerk  moet aanwezig zijn, niet beide-->
		<!--
				<sch:assert id="INSPIRE_Specificatie_ISO_nr_360_titel_SDS_of_netwerkdienst" etf_name="INSPIRE Specificatie (ISO nr. 360) titel SDS of netwerkdienst" test="$INSPIRE_SDS_Spec_Title_exists or $INSPIRE_network_Spec_Title_exists">Specificatie (ISO nr. 360) heeft geen verwijzingen naar of de verordening voor netwerkdiensten of een verwijzing naar SDS invocable, interoperable of harmonised. Vul één van deze in.</sch:assert>
			<sch:assert id="INSPIRE_Specificatie_ISO_nr_360_titel_SDS_en_netwerkdienst" etf_name="INSPIRE Specificatie (ISO nr. 360) titel SDS en netwerkdienst" test="not($INSPIRE_SDS_Spec_Title_exists and $INSPIRE_network_Spec_Title_exists)">Specificatie (ISO nr. 360) verwijzingen naar of de verordening voor netwerkdiensten of een verwijzing naar SDS invocable, interoperable of harmonised. Niet beide.</sch:assert>
		-->
		<!-- eind alleen INSPIRE interoperable titel moet aanwezig zijn-->

		<!-- daarnaast moet voor SDS een TG  titel  moet aanwezig zijn, dus minimaal een derde naast  inspire interop exists en network of SDS exists-->

		<!-- alleen INSPIRE  SDS een TG (derde) titel aanwezig zijn -->
		<!--
			<sch:assert id="INSPIRE_Specificatie_ISO_nr_360_titel_technische_specificatie" etf_name="INSPIRE Specificatie (ISO nr. 360) titel technische specificatie" test="not($conformity_Spec_Title_SDS_Exsists) or ($conformity_Spec_Title_SDS_Exsists and count(($all_conformity_Spec_Titles_join))lt 3)">Specificatie (ISO nr. 360) verwijzing naar een technische specificatie van de service ontbreekt: <sch:value-of select="$all_conformity_Spec_Titles_join"/></sch:assert>
			<sch:report id="test_all_spec_titels_info" etf_name="test all spec titels info" test="$all_conformity_Spec_Titles_join">Aanwezige Specificatie titels: <sch:value-of select="$all_conformity_Spec_Titles_join"/>
			</sch:report>
		-->
		</sch:rule>
		<!-- eind INSPIRE specification titel -->

		<!-- Parameter elements:
			https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#parameter-naam
			https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#parameter-optionaliteit
			https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#parameter-herhaalbaarheid
		-->
		<sch:rule id="Parameter_elementen" etf_name="Parameter elementen" context="//gmd:MD_Metadata/gmd:identificationInfo/*/srv:containsOperations/*/srv:parameters/srv:SV_Parameter">
			<!-- Naam https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#parameter-naam -->
			<sch:let name="parameterName" value="normalize-space(srv:name/*/gco:CharacterString)"/>
			<!-- optionaliteit https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#parameter-optionaliteit -->
			<sch:let name="parameterOptionality" value="normalize-space(srv:optionality/gco:CharacterString)"/>
			<!-- herhaalbaarheid https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#parameter-herhaalbaarheid -->
			<sch:let name="parameterRepeatability" value="normalize-space(srv:repeatability/gco:Boolean)"/>

			<sch:assert id="Parameter_naam" etf_name="Parameter naam" test="$parameterName">Parameter naam (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#parameter-naam) is niet beschreven</sch:assert>
			<sch:assert id="Parameter_optionaliteit" etf_name="Parameter optionaliteit" test="$parameterOptionality">Parameter optionaliteit (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#parameter-optionaliteit) is niet beschreven</sch:assert>
			<sch:assert id="Parameter_herhaalbaarheid" etf_name="Parameter herhaalbaarheid" test="$parameterRepeatability">Parameter herhaalbaarheid (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#parameter-herhaalbaarheid) is niet beschreven</sch:assert>
		</sch:rule>

		<!-- Operates on-->
		<sch:rule id="Relatie_met_de_dataset" etf_name="Relatie met de dataset" context="//gmd:MD_Metadata/gmd:identificationInfo/srv:SV_ServiceIdentification/srv:operatesOn">
			<!-- <sch:assert id="Coupled_resource_uuidref_attribuut" etf_name="Gekoppelde bron uuidref attribuut" test="string(normalize-space(@uuidref))">Gekoppelde bron heeft geen uuidref attribuut bij het element operatesOn </sch:assert> -->
			<sch:assert id="Coupled_resource_xlink:href_attribuut" etf_name="Gekoppelde bron xlink:href attribuut" test="string(normalize-space(@xlink:href))">Gekoppelde bron heeft geen xlink:href attribuut bij het element operatesOn</sch:assert>
		</sch:rule>

		<!-- INSPIRE interop interoperabele servicekwaliteit  -->
		<sch:rule id="INSPIRE_interoperabele_service_-_service_kwaliteit" etf_name="INSPIRE interoperabele service - service kwaliteit" context="//gmd:MD_Metadata/gmd:dataQualityInfo/gmd:DQ_DataQuality[gmd:report/gmd:DQ_ConceptualConsistency]">
			<!-- anchor verplicht -->
			<sch:let name="interoperableSDS" value="contains(//gmd:MD_Metadata/gmd:dataQualityInfo/gmd:DQ_DataQuality/gmd:report/gmd:DQ_DomainConsistency/gmd:result/gmd:DQ_ConformanceResult/gmd:specification/gmd:CI_Citation/gmd:title/gmx:Anchor[@xlink:href='http://inspire.ec.europa.eu/id/ats/metadata/2.0/sds-interoperable'],'interoperable')"/>
			<sch:let name="harmonisedSDS" value="contains(//gmd:MD_Metadata/gmd:dataQualityInfo/gmd:DQ_DataQuality/gmd:report/gmd:DQ_DomainConsistency/gmd:result/gmd:DQ_ConformanceResult/gmd:specification/gmd:CI_Citation/gmd:title/gmx:Anchor[@xlink:href='http://inspire.ec.europa.eu/id/ats/metadata/2.0/sds-harmonised'],'harmonised')"/>

			<sch:let name="qosRequired" value="$harmonisedSDS or $interoperableSDS"/>

			<sch:let name="quality_name_Of_Measure_Availability" value="normalize-space(gmd:report/gmd:DQ_ConceptualConsistency/gmd:nameOfMeasure/gmx:Anchor[@xlink:href='http://inspire.ec.europa.eu/metadata-codelist/QualityOfServiceCriteriaCode/availability'])"/>
			<sch:let name="quality_name_Of_Measure_Performance" value="normalize-space(gmd:report/gmd:DQ_ConceptualConsistency/gmd:nameOfMeasure/gmx:Anchor[@xlink:href='http://inspire.ec.europa.eu/metadata-codelist/QualityOfServiceCriteriaCode/performance'])"/>
			<sch:let name="quality_name_Of_Measure_Capacity" value="normalize-space(gmd:report/gmd:DQ_ConceptualConsistency/gmd:nameOfMeasure/gmx:Anchor[@xlink:href='http://inspire.ec.europa.eu/metadata-codelist/QualityOfServiceCriteriaCode/capacity'])"/>

			<sch:let name="quality_measure_Description_Availability" value="normalize-space(gmd:report/gmd:DQ_ConceptualConsistency/gmd:measureDescription[../gmd:nameOfMeasure/gmx:Anchor/@xlink:href='http://inspire.ec.europa.eu/metadata-codelist/QualityOfServiceCriteriaCode/availability']/gco:CharacterString)"/>
			<sch:let name="quality_measure_Description_Performance" value="normalize-space(gmd:report/gmd:DQ_ConceptualConsistency/gmd:measureDescription[../gmd:nameOfMeasure/gmx:Anchor/@xlink:href='http://inspire.ec.europa.eu/metadata-codelist/QualityOfServiceCriteriaCode/performance']/gco:CharacterString)"/>
			<sch:let name="quality_measure_Description_Capacity" value="normalize-space(gmd:report/gmd:DQ_ConceptualConsistency/gmd:measureDescription[../gmd:nameOfMeasure/gmx:Anchor/@xlink:href='http://inspire.ec.europa.eu/metadata-codelist/QualityOfServiceCriteriaCode/capacity']/gco:CharacterString)"/>

			<!-- https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#criteria-waarde -->
			<sch:let name="quality_result_Availability" value="normalize-space(gmd:report/gmd:DQ_ConceptualConsistency/gmd:result[../gmd:nameOfMeasure/gmx:Anchor/@xlink:href='http://inspire.ec.europa.eu/metadata-codelist/QualityOfServiceCriteriaCode/availability']/gmd:DQ_QuantitativeResult/gmd:value/gco:Record)"/>
			<sch:let name="quality_result_Performance" value="normalize-space(gmd:report/gmd:DQ_ConceptualConsistency/gmd:result[../gmd:nameOfMeasure/gmx:Anchor/@xlink:href='http://inspire.ec.europa.eu/metadata-codelist/QualityOfServiceCriteriaCode/performance']/gmd:DQ_QuantitativeResult/gmd:value/gco:Record)"/>
			<sch:let name="quality_result_Capacity" value="normalize-space(gmd:report/gmd:DQ_ConceptualConsistency/gmd:result[../gmd:nameOfMeasure/gmx:Anchor/@xlink:href='http://inspire.ec.europa.eu/metadata-codelist/QualityOfServiceCriteriaCode/capacity']/gmd:DQ_QuantitativeResult/gmd:value/gco:Record)"/>

			<sch:let name="quality_value_unit_Availability" value="normalize-space(gmd:report/gmd:DQ_ConceptualConsistency/gmd:result[../gmd:nameOfMeasure/gmx:Anchor/@xlink:href='http://inspire.ec.europa.eu/metadata-codelist/QualityOfServiceCriteriaCode/availability']/gmd:DQ_QuantitativeResult/gmd:valueUnit/@xlink:href)"/>
			<sch:let name="quality_value_unit_Performance" value="normalize-space(gmd:report/gmd:DQ_ConceptualConsistency/gmd:result[../gmd:nameOfMeasure/gmx:Anchor/@xlink:href='http://inspire.ec.europa.eu/metadata-codelist/QualityOfServiceCriteriaCode/performance']/gmd:DQ_QuantitativeResult/gmd:valueUnit/@xlink:href)"/>
			<sch:let name="quality_value_unit_Capacity" value="normalize-space(gmd:report/gmd:DQ_ConceptualConsistency/gmd:result[../gmd:nameOfMeasure/gmx:Anchor/@xlink:href='http://inspire.ec.europa.eu/metadata-codelist/QualityOfServiceCriteriaCode/capacity']/gmd:DQ_QuantitativeResult/gmd:valueUnit/@xlink:href)"/>

			<sch:assert id="INSPIRE_interoperabele_service_kwaliteit_beschikbaarheid" etf_name="INSPIRE interoperabele service kwaliteit beschikbaarheid" test="not($qosRequired) or $quality_name_Of_Measure_Availability">De beschikbaarheid van de service is niet beschreven (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#criteria), maar is wel verplicht voor een INSPIRE interoperabele service</sch:assert>
			<sch:assert id="INSPIRE_interoperabele_service_kwaliteit_performance" etf_name="INSPIRE interoperabele service kwaliteit performance" test="not($qosRequired) or $quality_name_Of_Measure_Performance">De performance van de service is niet beschreven (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#criteria), maar is wel verplicht voor een INSPIRE interoperabele service</sch:assert>
			<sch:assert id="INSPIRE_interoperabele_service_kwaliteit_capaciteit" etf_name="INSPIRE interoperabele service kwaliteit capaciteit" test="not($qosRequired) or $quality_name_Of_Measure_Capacity">De capaciteit van de service is niet beschreven (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#criteria), maar is wel verplicht voor een INSPIRE interoperabele service</sch:assert>

			<sch:assert id="INSPIRE_interoperabele_service_kwaliteit_beschikbaarheid_beschrijving" etf_name="INSPIRE interoperabele service kwaliteit beschikbaarheid beschrijving" test="not($qosRequired) or $quality_measure_Description_Availability">De criterium beschrijving van de beschikbaarheid van de service is niet opgegeven (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#criteria-beschrijving), maar is wel verplicht voor een INSPIRE interoperabele service</sch:assert>
			<sch:assert id="INSPIRE_interoperabele_service_kwaliteit_performance_beschrijving" etf_name="INSPIRE interoperabele service kwaliteit performance beschrijving" test="not($qosRequired) or $quality_measure_Description_Performance">De criterium beschrijving van de performance van de service is niet opgegeven (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#criteria-beschrijving), maar is wel verplicht voor een INSPIRE interoperabele service</sch:assert>
			<sch:assert id="INSPIRE_interoperabele_service_kwaliteit_capaciteit_beschrijving" etf_name="INSPIRE interoperabele service kwaliteit capaciteit beschrijving" test="not($qosRequired) or $quality_measure_Description_Capacity">De criterium beschrijving van de capaciteit van de service is niet opgegeven (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#criteria-beschrijving), maar is wel verplicht voor een INSPIRE interoperabele service</sch:assert>

			<sch:assert id="INSPIRE_interoperabele_service_kwaliteit_beschikbaarheid_type_waarde" etf_name="INSPIRE interoperabele service kwaliteit beschikbaarheid type waarde" test="not($qosRequired) or $quality_value_unit_Availability='urn:ogc:def:uom:OGC::percent'">Het type waarde voor de beschikbaarheid van de service is niet correct opgegeven (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#criteria-type-waarde), maar is wel verplicht voor een INSPIRE interoperabele service. Het moet zijn: 'urn:ogc:def:uom:OGC::percent', maar '<sch:value-of select="$quality_value_unit_Availability"/>' is opgegeven.</sch:assert>
			<sch:assert id="INSPIRE_interoperabele_service_kwaliteit_performance_type_waarde" etf_name="INSPIRE interoperabele service kwaliteit performance type waarde" test="not($qosRequired) or $quality_value_unit_Performance='http://www.opengis.net/def/uom/SI/second'">Het type waarde voor de performance van de service is niet correct opgegeven (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#criteria-type-waarde), maar is wel verplicht voor een INSPIRE interoperabele service. Het moet zijn: 'http://www.opengis.net/def/uom/SI/second', maar '<sch:value-of select="$quality_value_unit_Performance"/>' is opgegeven.</sch:assert>
			<sch:assert id="INSPIRE_interoperabele_service_kwaliteit_capaciteit_type_waarde" etf_name="INSPIRE interoperabele service kwaliteit capaciteit type waarde" test="not($qosRequired) or $quality_value_unit_Capacity='http://www.opengis.net/def/uom/OGC/1.0/unity'">Het type waarde voor de capaciteit van de service is niet correct opgegeven (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#criteria-type-waarde), maar is wel verplicht voor een INSPIRE interoperabele service. Het moet zijn: 'http://www.opengis.net/def/uom/OGC/1.0/unity', maar '<sch:value-of select="$quality_value_unit_Performance"/>' is opgegeven.</sch:assert>

			<sch:assert id="INSPIRE_interoperabele_service_kwaliteit_beschikbaarheid_waarde" etf_name="INSPIRE interoperabele service kwaliteit beschikbaarheid waarde" test="not($qosRequired) or $quality_result_Availability">De meetwaarde voor de beschikbaarheid van de service is niet correct opgegeven (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#criteria-waarde), maar is wel verplicht voor een INSPIRE interoperabele service.</sch:assert>
			<sch:assert id="INSPIRE_interoperabele_service_kwaliteit_performance_waarde" etf_name="INSPIRE interoperabele service kwaliteit performance waarde" test="not($qosRequired) or $quality_result_Performance">De meetwaarde voor de performance van de service is niet correct opgegeven (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#criteria-waarde), maar is wel verplicht voor een INSPIRE interoperabele service.</sch:assert>
			<sch:assert id="INSPIRE_interoperabele_service_kwaliteit_capaciteit_waarde" etf_name="INSPIRE interoperabele service kwaliteit capaciteit waarde" test="not($qosRequired) or $quality_result_Capacity">De meetwaarde voor de capaciteit van de service is niet correct opgegeven (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#criteria-waarde), maar is wel verplicht voor een INSPIRE interoperabele service.</sch:assert>

		</sch:rule>

		<!-- eind INSPIRE interop interoperabele servicekwaliteit  -->

		<!-- INSPIRE interop SDS Referentiesysteem
		-->
		<!-- Referentiesysteem  -->
		<sch:rule id="Referentiesysteem" etf_name="Referentiesysteem" context="//gmd:MD_Metadata/gmd:referenceSystemInfo/gmd:MD_ReferenceSystem">
			<!--  Ruimtelijk referentiesysteem  https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#codereferentiesysteem -->
			<!-- Oud commentaar: geen RS_Identifier meer, maar alleen een MD_Identifier -->
			<!-- N.a.v. test 21 november 2018 beide toestaan -->
			<sch:let name="referenceSystemInfo_CodeString" value="normalize-space(gmd:referenceSystemIdentifier/*/gmd:code/gco:CharacterString)"/>
			<sch:let name="referenceSystemInfo_CodeURI" value="normalize-space(gmd:referenceSystemIdentifier/*/gmd:code/gmx:Anchor/@xlink:href)"/>

			<sch:assert id="Code_referentiesysteem_ISO_nr_207" etf_name="Code referentiesysteem (ISO nr. 207)" test="$referenceSystemInfo_CodeString or $referenceSystemInfo_CodeURI">Code referentiesysteem (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#codereferentiesysteem) ontbreekt</sch:assert>
			<sch:report id="Code_referentiesysteem_ISO_nr_207_info" etf_name="Code referentiesysteem (ISO nr. 207) info" test="$referenceSystemInfo_CodeString or $referenceSystemInfo_CodeURI">Code referentiesysteem (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#codereferentiesysteem): <sch:value-of select="$referenceSystemInfo_CodeString"/> <sch:value-of select="$referenceSystemInfo_CodeURI"/>
			</sch:report>

			<sch:assert id="Code_referentiesysteem_ISO_nr_207_is_een_URI" etf_name="Code referentiesysteem (ISO nr. 207) is een URI" test="starts-with($referenceSystemInfo_CodeString,'http') or starts-with($referenceSystemInfo_CodeURI,'http')">Code referentiesysteem (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#codereferentiesysteem) moet een URI zijn, maar is dat niet. Opgegeven waarde: <sch:value-of select="$referenceSystemInfo_CodeString"/> <sch:value-of select="$referenceSystemInfo_CodeURI"/></sch:assert>

		</sch:rule>

		<!-- eind INSPIRE SDS Referentiesysteem  -->
        		<!-- Controlled originating vocabulary -->
				<sch:rule id="Thesaurus" etf_name="Thesaurus" context="//gmd:MD_Metadata/gmd:identificationInfo/*/gmd:descriptiveKeywords/*/gmd:thesaurusName/gmd:CI_Citation">

					<!-- 5.2.14 Thesaurus title, https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#thesaurus -->

					<!-- all_thesaurus_Titles: niet gebruikt, dus uitgecommentarieerd voor nu -->
					<!-- <sch:let name="all_thesaurus_Titles" value="ancestor::*/gmd:descriptiveKeywords/gmd:MD_Keywords/gmd:thesaurusName/gmd:CI_Citation/gmd:title"/> -->

					<sch:let name="thesaurus_TitleString" value="normalize-space(gmd:title/gco:CharacterString)"/>
					<sch:let name="thesaurus_TitleURI" value="normalize-space(gmd:title/gmx:Anchor/@xlink:href)"/>
					<sch:let name="thesaurus_TitleProvided" value="string-length($thesaurus_TitleString) > 0 or string-length($thesaurus_TitleURI) > 0 "/>

					<!-- 5.2.15 Thesaurusdatum https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#thesaurusdatum -->
					<sch:let name="thesaurus_publicationDateString" value="string(gmd:date[./gmd:CI_Date/gmd:dateType/*/@codeListValue='publication']/*/gmd:date/gco:Date)"/>
					<sch:let name="thesaurus_creationDateString" value="string(gmd:date[./gmd:CI_Date/gmd:dateType/*/@codeListValue='creation']/*/gmd:date/gco:Date)"/>
					<sch:let name="thesaurus_revisionDateString" value="string(gmd:date[./gmd:CI_Date/gmd:dateType/*/@codeListValue='revision']/*/gmd:date/gco:Date)"/>
					<sch:let name="thesaurus_PublicationDate" value="((number(substring(substring-before($thesaurus_publicationDateString,'-'),1,4)) &gt; 1000 ))"/>
					<sch:let name="thesaurus_CreationDate" value="((number(substring(substring-before($thesaurus_creationDateString,'-'),1,4)) &gt; 1000 ))"/>
					<sch:let name="thesaurus_RevisionDate" value="((number(substring(substring-before($thesaurus_revisionDateString,'-'),1,4)) &gt; 1000 ))"/>

		            <!-- Thesaurus titel alleen voor INSPIRE -->
					<!--
					<sch:assert id="INSPIRE_Thesaurus_title_ISO_nr_360" etf_name="INSPIRE Thesaurus title (ISO nr. 360)" test="$all_thesaurus_Titles[normalize-space(*/text()) = 'GEMET - INSPIRE themes, version 1.0']">Thesaurus title (ISO nr. 360) ontbreekt of heeft de verkeerde waarde. Eén Thesaurus titel dient de waarde 'GEMET - INSPIRE themes, version 1.0 ' te bevatten.</sch:assert>
					 <sch:report id="INSPIRE_Thesaurus_title_ISO_nr_360_info" etf_name="INSPIRE Thesaurus title (ISO nr. 360) info" test="$thesaurus_Title">Thesaurus title (ISO nr. 360) is: <sch:value-of select="$thesaurus_Title"/></sch:report>
					-->
		        	<!-- Eind Thesaurus titel alleen voor INSPIRE-->
					<sch:assert id="Thesaurus_titel" etf_name="Thesaurus titel is opgegeven" test="$thesaurus_TitleProvided">De Thesaurus titel is niet ingevuld (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#thesaurus)</sch:assert>

		        	<!-- Thesaurus datum en datumtype 5.2.15 Thesaurusdatum https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#thesaurusdatum en
					 5.2.16 Thesaurusdatum type https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#thesaurusdatum-type -->
					<sch:assert id="thesaurus_datum_ISO_nr394_en_datumtype_ISO_nr_395" etf_name="thesaurus datum (ISO nr.394) en datumtype (ISO nr. 395)" test="($thesaurus_TitleString or $thesaurus_TitleURI) and ($thesaurus_CreationDate or $thesaurus_PublicationDate or $thesaurus_RevisionDate)">Een thesaurus datum (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#thesaurusdatum) en datumtype (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#thesaurusdatum-type) is verplicht als Thesaurus title (https://docs.geostandaarden.nl/md/mdprofiel-iso19119/#thesaurus) is opgegeven. Datum formaat moet YYYY-MM-DD zijn. (Thesaurus: <sch:value-of select="$thesaurus_TitleString"/><sch:value-of select="$thesaurus_TitleURI"/>) </sch:assert>

				</sch:rule>


        		<!-- Controlled originating vocabulary -   -->
		<sch:rule id="INSPIRE_Thesaurus_trefwoorden" etf_name="INSPIRE Thesaurus trefwoorden" context="//gmd:MD_Metadata/gmd:identificationInfo[1]/*/gmd:descriptiveKeywords
			[normalize-space(gmd:MD_Keywords/gmd:thesaurusName/gmd:CI_Citation/gmd:title) = 'GEMET - INSPIRE themes, version 1.0']
			/gmd:MD_Keywords/gmd:keyword">

			<sch:let name="quote" value="&quot;'&quot;"/>

			<sch:assert id="INSPIRE_Trefwoorden_ISO_nr_53_uit_thesaurus" etf_name="INSPIRE Trefwoorden (ISO nr. 53) uit thesaurus" test="((normalize-space(current())='Administratieve eenheden'
)
		        or (normalize-space(current())='Adressen'
)
		        or (normalize-space(current())='Atmosferische omstandigheden'
)
		        or (normalize-space(current())='Beschermde gebieden'
)
		        or (normalize-space(current())='Biogeografische gebieden'
)
		        or (normalize-space(current())='Bodem')
		         or (normalize-space(current())='Bodemgebruik')
		         or (normalize-space(current())='Energiebronnen')
		         or (normalize-space(current())='Faciliteiten voor landbouw en aquacultuur')
		         or (normalize-space(current())='Faciliteiten voor productie en industrie')
		         or (normalize-space(current())=concat('Gebieden met natuurrisico',$quote,'s'))
		         or (normalize-space(current())='Gebiedsbeheer, gebieden waar beperkingen gelden, gereguleerde gebieden en rapportage-eenheden')
		         or (normalize-space(current())='Gebouwen')
		         or (normalize-space(current())='Geografisch rastersysteem')
		         or (normalize-space(current())='Geografische namen')
		         or (normalize-space(current())='Geologie')
		         or (normalize-space(current())='Habitats en biotopen')
		         or (normalize-space(current())='Hoogte')
		         or (normalize-space(current())='Hydrografie')
		         or (normalize-space(current())='Kadastrale percelen')
		         or (normalize-space(current())='Landgebruik')
		         or (normalize-space(current())='Menselijke gezondheid en veiligheid')
		         or (normalize-space(current())='Meteorologische geografische kenmerken')
		         or (normalize-space(current())='Milieubewakingsvoorzieningen')
		         or (normalize-space(current())='Minerale bronnen')
		         or (normalize-space(current())='Nutsdiensten en overheidsdiensten')
		         or (normalize-space(current())='Oceanografische geografische kenmerken')
		         or (normalize-space(current())='Orthobeeldvorming')
		         or (normalize-space(current())='Spreiding van de bevolking — demografie')
		         or (normalize-space(current())='Spreiding van soorten')
		         or (normalize-space(current())='Statistische eenheden')
		         or (normalize-space(current())='Systemen voor verwijzing door middel van coördinaten')
		         or (normalize-space(current())='Vervoersnetwerken')
		         or (normalize-space(current())='Zeegebieden'))">
Deze keywords  komen niet overeen met GEMET- INSPIRE themes thesaurus. gevonden keywords: <sch:value-of select="."/></sch:assert>
		<!--eind  Controlled originating vocabulary   -->

		       <!--  voor externe thesaurus
			<sch:assert id="INSPIRE_thesaurus_Trefwoorden_ISO_nr_53" etf_name="INSPIRE thesaurus Trefwoorden (ISO nr. 53)" test="$gemet-nl//skos:prefLabel[normalize-space(text()) = normalize-space(current())]">Keywords [<sch:value-of select="$gemet-nl//skos:prefLabel"/>]   moeten uit GEMET- INSPIRE themes thesaurus komen. gevonden keywords: <sch:value-of select="."/></sch:assert>
		          -->
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
