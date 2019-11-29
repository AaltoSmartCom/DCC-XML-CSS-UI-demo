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
        <link rel="stylesheet" href="../Stylesheets/CSS/certificate_type_2.css"/>

        <!-- Remember to include jQuery :) -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>

        <!-- jQuery Modal -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
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
                    <div class="grid-item signatures">
                        <div class="signature">
                            <img class="signature-img" src="../Stylesheets/images/digital_signature_signed.png" />
                            <div>
                                <p class="name">Juho Salminen</p>
                                <p class="title">Tutkija</p>

                                <!-- Modal HTML embedded directly into document -->
                                <div id="ex1" class="modal">
                                    <p class="name">Juho Salminen</p>
                                    <p class="title">Tutkija</p>
                                    <p class="validation">Signature is valid</p>

                                    <table class="detail-table">
                                        <tr>
                                            <td>Signer's Certificate issuer</td>
                                            <td>KLASS3-SK 2016</td>
                                        </tr>
                                        <tr>
                                            <td>Signer's Certificate</td>
                                            <td>Metrosert AS digitaaline kiinnitus</td>
                                        </tr>
                                        <tr>
                                            <td>Signature ethod</td>
                                            <td>http://www.w3.org/2001/04/xmldsig-more#rsa-sha256</td>
                                        </tr>
                                        <tr>
                                            <td>Container format</td>
                                            <td>application/vnd.etsi.asic-e+zip</td>
                                        </tr>
                                        <tr>
                                            <td>Signature format</td>
                                            <td>BES/time-stamp</td>
                                        </tr>
                                        <tr>
                                            <td>Signed file count</td>
                                            <td>1</td>
                                        </tr>
                                        <tr>
                                            <td>Signature timestamp</td>
                                            <td>13.09.2019 14:00:25 +03:00</td>
                                        </tr>
                                        <tr>
                                            <td>Signature timestamp (UTC)</td>
                                            <td>13.09.2019 11:00:25 +00:00</td>
                                        </tr>
                                        <tr>
                                            <td>Hash value of signature</td>
                                            <td>30 31 30 0D 06 09 60 86 48 01 65 03 04 02 0</td>
                                        </tr>
                                        <tr>
                                            <td>TS Certificate issuer</td>
                                            <td>EE Certification Centre Root CA</td>
                                        </tr>
                                        <tr>
                                            <td>TS Certificate</td>
                                            <td>SK TIMESTAMPING AUTHORITY 2019</td>
                                        </tr>
                                        <tr>
                                            <td>OCSP Certificate issuer</td>
                                            <td>EE Certification Centre Root CA</td>
                                        </tr>
                                        <tr>
                                            <td>OCSP Certificate</td>
                                            <td>SK OCSP RESPONDER 2011</td>
                                        </tr>
                                        <tr>
                                            <td>OCSP time</td>
                                            <td>13.09.2019 14:00:30 +03:00</td>
                                        </tr>
                                        <tr>
                                            <td>OCSP time (UTC)</td>
                                            <td>13.09.2019 11:00:30 +00:00</td>
                                        </tr>
                                        <tr>
                                            <td>Signer's computer time (UTC)</td>
                                            <td>13.09.2019 11:00:23 +00:00</td>
                                        </tr>

                                    </table>
                                </div>

                                <!-- Link to open the modal -->
                                <a class="click" href="#ex1" rel="modal:open">Click for signature details</a>

                            </div>
                        </div>

                        <div class="signature">
                            <img class="signature-img" src="../Stylesheets/images/digital_signature_signed.png" />
                            <div>
                                <p class="name">Sari Saxholm</p>
                                <p class="title">Erikoistutkija</p>

                                <!-- Modal HTML embedded directly into document -->
                                <div id="ex2" class="modal">
                                    <p class="name">Sari Saxholm</p>
                                    <p class="title">Erikoistutkija</p>
                                    <p class="validation">Signature is valid</p>

                                    <table class="detail-table">
                                        <tr>
                                            <td>Signer's Certificate issuer</td>
                                            <td>KLASS3-SK 2016</td>
                                        </tr>
                                        <tr>
                                            <td>Signer's Certificate</td>
                                            <td>Metrosert AS digitaaline kiinnitus</td>
                                        </tr>
                                        <tr>
                                            <td>Signature ethod</td>
                                            <td>http://www.w3.org/2001/04/xmldsig-more#rsa-sha256</td>
                                        </tr>
                                        <tr>
                                            <td>Container format</td>
                                            <td>application/vnd.etsi.asic-e+zip</td>
                                        </tr>
                                        <tr>
                                            <td>Signature format</td>
                                            <td>BES/time-stamp</td>
                                        </tr>
                                        <tr>
                                            <td>Signed file count</td>
                                            <td>1</td>
                                        </tr>
                                        <tr>
                                            <td>Signature timestamp</td>
                                            <td>13.09.2019 14:10:25 +03:00</td>
                                        </tr>
                                        <tr>
                                            <td>Signature timestamp (UTC)</td>
                                            <td>13.09.2019 11:10:25 +00:00</td>
                                        </tr>
                                        <tr>
                                            <td>Hash value of signature</td>
                                            <td>20 54 24 0F 16 08 20 81 F2 75 52 36 41 A5 0</td>
                                        </tr>
                                        <tr>
                                            <td>TS Certificate issuer</td>
                                            <td>EE Certification Centre Root CA</td>
                                        </tr>
                                        <tr>
                                            <td>TS Certificate</td>
                                            <td>SK TIMESTAMPING AUTHORITY 2019</td>
                                        </tr>
                                        <tr>
                                            <td>OCSP Certificate issuer</td>
                                            <td>EE Certification Centre Root CA</td>
                                        </tr>
                                        <tr>
                                            <td>OCSP Certificate</td>
                                            <td>SK OCSP RESPONDER 2011</td>
                                        </tr>
                                        <tr>
                                            <td>OCSP time</td>
                                            <td>13.09.2019 14:10:30 +03:00</td>
                                        </tr>
                                        <tr>
                                            <td>OCSP time (UTC)</td>
                                            <td>13.09.2019 11:10:30 +00:00</td>
                                        </tr>
                                        <tr>
                                            <td>Signer's computer time (UTC)</td>
                                            <td>13.09.2019 11:10:23 +00:00</td>
                                        </tr>

                                    </table>
                                </div>

                                <!-- Link to open the modal -->
                                <a class="click"  href="#ex2" rel="modal:open">Click for signature details</a>

                            </div>
                        </div>
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
                    <img src="../Stylesheets/images/mikes-logo.jpg"/>
                    <img src="../Stylesheets/images/cipm-mra-logo.jpg"/>
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
                    </xsl:for-each>

                    <xsl:for-each select="dcc:measurementResults/dcc:measurementResult/dcc:influenceConditions/dcc:influenceCondition/dcc:data/dcc:list">
                    <div class="grid"> <!-- haettu suoraan templateen -->
                        <xsl:for-each select="dcc:quantity[1]">
                        <div class="grid-item ">
                            <xsl:value-of select="dcc:name/dcc:content"/>
                        </div>

                        <div class="grid-item">
                            <xsl:value-of select="dcc:noQuantity/dcc:content"/>
                        </div>
                        </xsl:for-each>

                        <xsl:for-each select="dcc:quantity[2]">
                        <div class="grid-item ">
                            <xsl:value-of select="dcc:name/dcc:content"/>
                        </div>

                        <div class="grid-item">
                            <xsl:value-of select="dcc:noQuantity/dcc:content"/>
                        </div>
                        </xsl:for-each>

                        <xsl:for-each select="dcc:quantity[3]">
                        <div class="grid-item ">
                            <xsl:value-of select="dcc:name/dcc:content"/>
                        </div>

                        <div class="grid-item">
                            <xsl:value-of select="dcc:noQuantity/dcc:content"/>
                        </div>
                        </xsl:for-each>

                        <xsl:for-each select="dcc:quantity[4]">
                        <div class="grid-item ">
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
                            <xsl:value-of select="si:real/si:value"/><xsl:text> </xsl:text><xsl:apply-templates select="si:real/si:unit" /><span class="from-template"> ± </span><xsl:value-of select="si:real/si:expandedUnc/si:uncertainty"/><xsl:text> </xsl:text><xsl:apply-templates select="si:real/si:unit"/>
                        </div>
                        </xsl:for-each>

                        <xsl:for-each select="dcc:quantity[6]">
                        <div class="grid-item">
                            <xsl:value-of select="dcc:name/dcc:content"/>
                        </div>

                        <div class="grid-item">
                            <xsl:value-of select="si:real/si:value"/><xsl:text> </xsl:text><xsl:apply-templates select="si:real/si:unit" /><span class="from-template"> ± </span><xsl:value-of select="si:real/si:expandedUnc/si:uncertainty"/><xsl:text> </xsl:text><xsl:apply-templates select="si:real/si:unit"/>
                        </div>
                        </xsl:for-each>

                        <xsl:for-each select="dcc:quantity[7]">
                        <div class="grid-item">
                            <xsl:value-of select="dcc:name/dcc:content"/>
                        </div>

                        <div class="grid-item">
                            <xsl:value-of select="si:real/si:value"/><xsl:text> </xsl:text><xsl:apply-templates select="si:real/si:unit" /><span class="from-template"> ± </span><xsl:value-of select="si:real/si:expandedUnc/si:uncertainty"/><xsl:text> </xsl:text><xsl:apply-templates select="si:real/si:unit"/>
                        </div>
                        </xsl:for-each>

                        <xsl:for-each select="dcc:quantity[8]">
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
                    <p class="not-in-xml-file">Kalibroinnin tuloksena saadut lämpötilaa 20 °C vastaavat mäntä-sylinteriyhdistelmän tehollisen pinta-ala arvot ovat.</p>

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
                                <xsl:for-each select="dcc:data/dcc:list/dcc:list">
                                <xsl:choose>
                                    <xsl:when test="dcc:list[1]">
                                    <tr>
                                        <th class="bolded">
                                            <xsl:value-of select="dcc:name/dcc:content"/>
                                        </th>
                                        <xsl:for-each select="dcc:quantity">
                                        <th class="bolded text-align-center">
                                            <xsl:value-of select="dcc:noQuantity/dcc:content"/>
                                        </th>
                                        </xsl:for-each>
                                    </tr>
                                    </xsl:when>

                                    <xsl:otherwise>
                                    <tr>
                                        <td>
                                            <xsl:value-of select="dcc:name/dcc:content"/>
                                        </td>
                                        <xsl:for-each select="dcc:quantity">
                                        <td class="text-align-center">
                                            <xsl:value-of select="si:real/si:value"/>
                                        </td>
                                        </xsl:for-each>
                                    </tr>
                                    </xsl:otherwise>
                                </xsl:choose>
                                </xsl:for-each>
                            </table>
                        </div>

                        <p><xsl:value-of select="dcc:description/dcc:content"/></p>
                    </div>
                    </xsl:for-each>

                    <xsl:for-each select="dcc:result[4]">
                    <div class="result">
                        <h4><xsl:value-of select="dcc:name/dcc:content"/></h4>
                        <p>Mittausdata tähän halutussa muodossa. Taulukko, kaavio yms.</p>
                    </div>
                    </xsl:for-each>

                    <xsl:for-each select="dcc:result[5]">
                    <div class="result">
                        <h4><xsl:value-of select="dcc:name/dcc:content"/></h4>
                        <p>Mittausdata tähän halutussa muodossa. Taulukko, kaavio yms.</p>
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