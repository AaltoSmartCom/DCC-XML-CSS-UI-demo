<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xsi:schemaLocation="https://ptb.de/dcc https://ptb.de/dcc/v2.1.1/dcc.xsd"
xmlns:dcc="https://ptb.de/dcc"
xmlns:si="https://ptb.de/si">

<xsl:template match="dcc:digitalCalibrationCertificate">
<html>
    <head>
        <title>Kalibrointitodistus Nro: <xsl:value-of select="dcc:administrativeData/dcc:coreData/dcc:uniqueIdentifier"/></title>
        <link rel="stylesheet" href="M-16P013.css"/>
    </head>
    <body>
        <div id="document">
            <header>
                <h1 class="document-title">
                    <xsl:value-of select="dcc:administrativeData/dcc:calibrationLaboratory/dcc:contact/dcc:location/dcc:further/dcc:content[3]"/>
                </h1>
            </header>

            <div id="signature">
                <div class="grid">
                    <div class="grid-item">
                        <h4 class="from-template">Nro</h4>
                    </div>
                    <div class="grid-item">
                        <p><xsl:value-of select="dcc:administrativeData/dcc:coreData/dcc:uniqueIdentifier"/></p>
                    </div>

                    <xsl:for-each select="dcc:administrativeData/dcc:customer">
                    <div class="grid-item">
                        <h4 class="from-template">Tilaaja</h4>
                    </div>
                    <div class="grid-item">
                        <p>
                            <xsl:value-of select="dcc:name"/><br/>
                            <xsl:value-of select="dcc:location/dcc:street"/><xsl:text> </xsl:text><xsl:value-of select="dcc:location/dcc:streetNo"/><br/>
                            <xsl:value-of select="dcc:location/dcc:postCode"/><xsl:text> </xsl:text><xsl:value-of select="dcc:location/dcc:city"/>
                        </p>
                    </div>
                    </xsl:for-each>

                    <xsl:for-each select="dcc:administrativeData/dcc:items">
                    <div class="grid-item">
                        <h4 class="from-template">Kalibroitu laite</h4>
                    </div>
                    <div class="grid-item">
                        <p>
                            <xsl:for-each select="dcc:item/dcc:name">
                                <xsl:value-of select="dcc:content"/><br/>
                            </xsl:for-each>
                        </p>
                    </div>

                    <div class="grid-item">
                        <h4 class="from-template">Valmistaja</h4>
                    </div>
                    <div class="grid-item">
                        <p>
                            <xsl:for-each select="dcc:item/dcc:manufacturer/dcc:name">
                                <xsl:value-of select="dcc:content"/><br/>
                            </xsl:for-each>
                        </p>
                    </div>

                    <div class="grid-item">
                        <h4 class="from-template">Tyyppi</h4>
                    </div>
                    <div class="grid-item">
                        <p>
                            <xsl:for-each select="dcc:item">
                                <xsl:value-of select="dcc:model"/><br/>
                            </xsl:for-each>
                        </p>
                    </div>

                    <div class="grid-item">
                        <h4 class="from-template">Sarjanumero</h4>
                    </div>
                    <div class="grid-item">
                        <p>
                            <xsl:for-each select="dcc:item/dcc:identifications/dcc:identification">
                                <xsl:value-of select="dcc:value"/><br/>
                            </xsl:for-each>
                        </p>
                    </div>
                    </xsl:for-each>

                    <div class="grid-item">
                        <h4 class="from-template">Kalibrointipäivä</h4>
                    </div>
                    <div class="grid-item">
                        <p><xsl:value-of select="dcc:administrativeData/dcc:coreData/dcc:endPerformanceDate"/></p>
                    </div>

                    <div class="grid-item">
                        <h4 class="from-template">Päiväys</h4>
                    </div>
                    <div class="grid-item">
                        <p class="not-in-xml-file">11.02.2016</p>
                    </div>

                    <div class="grid-item">
                        <h4 class="from-template">Allekirjoitukset</h4>
                    </div>
                    <div class="grid-item">
                        <p></p>
                    </div>

                    <div class="grid-item">
                        <h4 class="from-template">Liitteitä</h4>
                    </div>
                    <div class="grid-item">
                        <p class="not-in-xml-file">-</p>
                    </div>

                </div>
            </div>

            <div id="laboratory-info">
                <xsl:for-each select="dcc:administrativeData/dcc:calibrationLaboratory">
                <div class="logos">
                    <img src="images/mikes-logo.jpg"/>
                    <img src="images/cipm-mra-logo.jpg"/>
                </div>
                <p>
                    <xsl:value-of select="dcc:contact/dcc:name/dcc:content"/>, <xsl:value-of select="dcc:contact/dcc:location/dcc:street"/><xsl:text> </xsl:text><xsl:value-of select="dcc:contact/dcc:location/dcc:streetNo"/>, <xsl:value-of select="dcc:contact/dcc:location/dcc:countryCode"/>-<xsl:value-of select="dcc:contact/dcc:location/dcc:postCode"/><xsl:text> </xsl:text><xsl:value-of select="dcc:contact/dcc:location/dcc:city"/>, <span class="not-in-xml-file">FINLAND, </span><span class="from-template">tel </span><span class="not-in-xml-file">+358 20 722 111</span><br/>
                    <a class="not-in-xml-file" href="http://www.mikes.fi" target="_blank">www.mikes.fi</a>
                </p>
                </xsl:for-each>
            </div>

            <div id="calibration">
                <xsl:for-each select="dcc:measurementResults/dcc:measurementResult/dcc:usedMethods/dcc:usedMethod">
                <div class="method">
                    <h3><xsl:value-of select="dcc:name/dcc:content"/></h3>
                    <p><xsl:value-of select="dcc:description/dcc:content"/></p>
                    <xsl:if test="dcc:description[2]">
                        <h4><xsl:value-of select="dcc:description[2]/dcc:content"/></h4>
                        <p><span class="not-in-xml-file">Tulosten laskennan alla olevat tekstit puuttuvat XML-datasta</span><xsl:value-of select="dcc:description[3]/dcc:content"/></p>
                    </xsl:if>
                </div>
                </xsl:for-each>

                <div class="condition">
                    <xsl:for-each select="dcc:measurementResults/dcc:measurementResult/dcc:influenceConditions/dcc:influenceCondition">
                    <h3><xsl:value-of select="dcc:name/dcc:content"/></h3>
                    <div class="grid"> <!-- tehty loopilla -->
                        <xsl:for-each select="dcc:data/dcc:list/dcc:quantity">
                        <div class="grid-item">
                            <xsl:value-of select="dcc:name/dcc:content"/>
                        </div>
                        <div class="grid-item">
                            <xsl:value-of select="si:real/si:value"/><xsl:text> </xsl:text><xsl:apply-templates select="si:real/si:unit" /><span class="from-template"> ± </span><xsl:value-of select="si:real/si:expandedUnc/si:uncertainty"/><xsl:text> </xsl:text><xsl:apply-templates select="si:real/si:unit" />
                        </div>
                        </xsl:for-each>
                    </div>
                    </xsl:for-each>

                    <xsl:for-each select="dcc:measurementResults/dcc:measurementResult/dcc:influenceConditions/dcc:influenceCondition/dcc:data/dcc:list">
                    <div class="grid"> <!-- haettu suoraan templateen -->
                        <div class="grid-item not-in-xml-file">
                            Mittaaja
                        </div>

                        <div class="grid-item not-in-xml-file">
                            Sari Saxholm
                        </div>

                        <div class="grid-item not-in-xml-file">
                            Mittauspaikka
                        </div>

                        <div class="grid-item not-in-xml-file">
                            MIKES 060PAI ja MIKES 061PAI
                        </div>

                        <div class="grid-item not-in-xml-file">
                            Mittauspäivä
                        </div>

                        <div class="grid-item not-in-xml-file">
                            8.2.2016 ja 3.2.2016
                        </div>

                        <xsl:for-each select="dcc:quantity[1]">
                        <div class="grid-item">
                            <xsl:value-of select="dcc:name/dcc:content"/>
                        </div>

                        <div class="grid-item">
                            <xsl:value-of select="si:real/si:value"/><xsl:text> </xsl:text><xsl:apply-templates select="si:real/si:unit" /><span class="from-template"> ± </span><xsl:value-of select="si:real/si:expandedUnc/si:uncertainty"/><xsl:text> </xsl:text><xsl:apply-templates select="si:real/si:unit"/>
                        </div>
                        </xsl:for-each>

                        <xsl:for-each select="dcc:quantity[2]">
                        <div class="grid-item">
                            <xsl:value-of select="dcc:name/dcc:content"/>
                        </div>

                        <div class="grid-item">
                            <xsl:value-of select="si:real/si:value"/><xsl:text> </xsl:text><xsl:apply-templates select="si:real/si:unit" /><span class="from-template"> ± </span><xsl:value-of select="si:real/si:expandedUnc/si:uncertainty"/><xsl:text> </xsl:text><xsl:apply-templates select="si:real/si:unit"/>
                        </div>
                        </xsl:for-each>

                        <xsl:for-each select="dcc:quantity[3]">
                        <div class="grid-item">
                            <xsl:value-of select="dcc:name/dcc:content"/>
                        </div>

                        <div class="grid-item">
                            <xsl:value-of select="si:real/si:value"/><xsl:text> </xsl:text><xsl:apply-templates select="si:real/si:unit" /><span class="from-template"> ± </span><xsl:value-of select="si:real/si:expandedUnc/si:uncertainty"/><xsl:text> </xsl:text><xsl:apply-templates select="si:real/si:unit"/>
                        </div>
                        </xsl:for-each>

                        <xsl:for-each select="dcc:quantity[4]">
                        <div class="grid-item">
                            <xsl:value-of select="dcc:name/dcc:content"/>
                        </div>

                        <div class="grid-item">
                            <xsl:value-of select="si:real/si:value"/><xsl:text> </xsl:text><xsl:apply-templates select="si:real/si:unit" /><span class="from-template"> ± </span><xsl:value-of select="si:real/si:expandedUnc/si:uncertainty"/><xsl:text> </xsl:text><xsl:apply-templates select="si:real/si:unit"/>
                        </div>
                        </xsl:for-each>

                        <xsl:for-each select="dcc:quantity[5]">
                        <div class="grid-item">
                            <xsl:value-of select="dcc:name/dcc:content"/>
                        </div>

                        <div class="grid-item">
                            <xsl:value-of select="dcc:noQuantity/dcc:content"/>
                        </div>
                        </xsl:for-each>
                    </div>
                    </xsl:for-each>
                </div>

                <xsl:for-each select="dcc:measurementResults/dcc:measurementResult/dcc:results">
                <div class="results">
                    <h3 class="not-in-xml-file">Kalibrointitulokset ja mittausepävarmuus</h3>

                    <!-- Loop --> <div class="loop">
                    <xsl:for-each select="dcc:result">
                    <div class="result">
                        <p>
                            <span class="bolded"><xsl:value-of select="dcc:name/dcc:content"/><span class="from-template">:</span></span><br/>
                            <span class="bolded"><span class="from-template">S(20,p) = </span><xsl:value-of select="dcc:data/dcc:quantity/si:real/si:value"/><xsl:text> </xsl:text><xsl:apply-templates select="dcc:data/dcc:quantity/si:real/si:unit" /><span class="from-template"> ± </span><xsl:value-of select="dcc:data/dcc:quantity/si:real/si:expandedUnc/si:uncertainty"/><xsl:text> </xsl:text><xsl:apply-templates select="dcc:data/dcc:quantity/si:real/si:unit" /></span><br/>
                            <span class="from-template">(k = </span><xsl:value-of select="dcc:data/dcc:quantity/si:real/si:expandedUnc/si:coverageFactor"/><span class="from-template">, </span><xsl:value-of select="dcc:description/dcc:content"/><span class="from-template">)</span>
                        </p>
                    </div>
                    </xsl:for-each>
                    <p class="not-in-xml-file">
                        Mainituilla painealueillla tehollisen pinta-alan arvoja voidaan pitää paineesta riippumattomina, samoin riippumattomina männän pyörimissuunnasta.
                    </p>
                    <!-- /Loop --> </div>

                    <!-- Fixed -->
                    <xsl:for-each select="dcc:result[1]">
                    <div class="result">
                        <p>
                            <span class="bolded"><xsl:value-of select="dcc:name/dcc:content"/><span class="from-template">:</span></span><br/>
                            <span class="bolded"><span class="from-template">S(20,p) = </span><xsl:value-of select="dcc:data/dcc:quantity/si:real/si:value"/><xsl:text> </xsl:text><xsl:apply-templates select="dcc:data/dcc:quantity/si:real/si:unit" /><span class="from-template"> ± </span><xsl:value-of select="dcc:data/dcc:quantity/si:real/si:expandedUnc/si:uncertainty"/><xsl:text> </xsl:text><xsl:apply-templates select="dcc:data/dcc:quantity/si:real/si:unit" /></span><br/>
                            <span class="from-template">(k = </span><xsl:value-of select="dcc:data/dcc:quantity/si:real/si:expandedUnc/si:coverageFactor"/><span class="from-template">, </span><xsl:value-of select="dcc:description/dcc:content"/><span class="from-template">)</span>
                        </p>
                    </div>
                    </xsl:for-each>

                    <xsl:for-each select="dcc:result[2]">
                    <div class="result">
                        <p>
                            <span class="bolded"><xsl:value-of select="dcc:name/dcc:content"/><span class="from-template">:</span></span><br/>
                            <span class="bolded"><span class="from-template">S(20,p) = </span><xsl:value-of select="dcc:data/dcc:quantity/si:real/si:value"/><xsl:text> </xsl:text><xsl:apply-templates select="dcc:data/dcc:quantity/si:real/si:unit" /><span class="from-template"> ± </span><xsl:value-of select="dcc:data/dcc:quantity/si:real/si:expandedUnc/si:uncertainty"/><xsl:text> </xsl:text><xsl:apply-templates select="dcc:data/dcc:quantity/si:real/si:unit" /></span><br/>
                            <span class="from-template">(k = </span><xsl:value-of select="dcc:data/dcc:quantity/si:real/si:expandedUnc/si:coverageFactor"/><span class="from-template">, </span><xsl:value-of select="dcc:description/dcc:content"/><span class="from-template">)</span>
                        </p>
                    </div>
                    </xsl:for-each>

                    <p class="not-in-xml-file">
                        Mainituilla painealueillla tehollisen pinta-alan arvoja voidaan pitää paineesta riippumattomina, samoin riippumattomina männän pyörimissuunnasta.
                    </p>

                    <xsl:for-each select="dcc:result[3]">
                    <div class="result">
                        <div class="uncertainty-table">
                            <table>
                                <tr>
                                    <th>
                                        <span class="not-in-xml-file">Epävarmuuden osatekijä</span>
                                    </th>
                                    <th class="text-align-center">
                                        <span class="not-in-xml-file">Suhteellinen epävarmuus (1s) miljoonasosina (ppm) Matalapainealue</span>
                                    </th>
                                    <th class="text-align-center">
                                        <span class="not-in-xml-file">Suhteellinen epävarmuus (1s) miljoonasosina (ppm) Korkeapainealue</span>
                                    </th>
                                </tr>

                                <xsl:for-each select="dcc:data/dcc:list/dcc:list">
                                <tr>
                                    <td>
                                        <xsl:value-of select="dcc:name/dcc:content"/>
                                    </td>
                                    <td class="text-align-center">
                                        <xsl:value-of select="dcc:quantity[1]/si:real/si:value"/>
                                    </td>
                                    <td class="text-align-center">
                                        <xsl:value-of select="dcc:quantity[2]/si:real/si:value"/>
                                    </td>
                                </tr>
                                 </xsl:for-each>

                            </table>
                        </div>

                        <p><xsl:value-of select="dcc:description/dcc:content"/></p>
                    </div>
                    </xsl:for-each>
                    <!-- /Fixed -->

                </div>
                </xsl:for-each>

                <div class="remarks">
                    <h3 class="not-in-xml-file">Huomautukset</h3>
                    <p class="not-in-xml-file">
                        Esitetty kalibrointitulos ja epävarmuuslaskelma vastaavat painevaa'an kuntoa kalibrointihetkellä. 
                        Niissä ei ole otettu huomioon 
                        mahdollisia ajan mittaan tapahtuvia muutoksia.
                    </p>
                </div>
            </div>

            <footer>
                <div class="statement">
                    <p><xsl:value-of select="dcc:administrativeData/dcc:statements/dcc:statement[2]/dcc:declaration/dcc:content"/></p>
                </div>

                <div class="statement">
                    <p><xsl:value-of select="dcc:administrativeData/dcc:statements/dcc:statement[3]/dcc:declaration/dcc:content"/></p>
                </div>
            </footer>

        </div>
    </body>
</html>
</xsl:template>

<xsl:template match="si:unit">
    <xsl:choose>
        <xsl:when test=". = '\volt'">
            <span>V</span>
        </xsl:when>
        <xsl:when test=". = '\degreeCelsius'">
            <span>°C</span>
        </xsl:when>
        <xsl:when test=". = '\milli\ampere'">
            <span>µA</span>
        </xsl:when>
        <xsl:when test=". = '\milli\volt'">
            <span>µV</span>
        </xsl:when>
        <xsl:when test=". = '\kilo\pascal'">
            <span>kPa</span>
        </xsl:when>
        <xsl:when test=". = '\ohm'">
            <span>Ω</span>
        </xsl:when>
        <xsl:when test=". = '\hertz'">
            <span>Hz</span>
        </xsl:when>
        <xsl:when test=". = '\hecto\pascal'">
            <span>hPa</span>
        </xsl:when>
        <xsl:when test=". = '\percent'">
            <span>%</span>
        </xsl:when>
        <xsl:when test=". = '\metre\second\tothe{-2}'">
            <span>m/s²</span>
        </xsl:when>
        <xsl:when test=". = '\milli\metre\tothe{2}'">
            <span>mm²</span>
        </xsl:when>
        <xsl:otherwise>
            <xsl:value-of select="."/>
        </xsl:otherwise>
    </xsl:choose>
</xsl:template>

</xsl:stylesheet>