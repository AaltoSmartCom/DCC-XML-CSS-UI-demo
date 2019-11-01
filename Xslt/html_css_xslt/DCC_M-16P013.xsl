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

                    <div class="grid-item">
                        <h4 class="from-template">Kalibroitu laite</h4>
                    </div>
                    <div class="grid-item">
                        <p class="not-in-xml-file">Painevaaka ja kaksi mäntä-sylinteriryhmää</p>
                    </div>

                    <div class="grid-item">
                        <h4 class="from-template">Valmistaja</h4>
                    </div>
                    <div class="grid-item">
                        <p class="not-in-xml-file">Ruska Instrument Corporation</p>
                    </div>

                    <div class="grid-item">
                        <h4 class="from-template">Tyyppi</h4>
                    </div>
                    <div class="grid-item">
                        <p class="not-in-xml-file">
                            Vaakarunko 2465<br/>
                            Mäntä-sylinteriyhdistelmät:<br/>
                            V korkeapainealue 0,13 MPa ... 4,1 MPa<br/>
                            TL matalapainealue 5 kPa ... 110 kPa
                        </p>
                    </div>

                    <div class="grid-item">
                        <h4 class="from-template">Sarjanumero</h4>
                    </div>
                    <div class="grid-item">
                        <p class="not-in-xml-file">
                            Vaakarunko 21035<br/>
                            Korkeapainealueen msyl.yhdistelmä V-431<br/>
                            Matalapainealueen msyl.yhdistelmä TL-1006
                        </p>
                    </div>

                    <div class="grid-item">
                        <h4 class="from-template">Kalibrointipäivä</h4>
                    </div>
                    <div class="grid-item">
                        <p class="not-in-xml-file">08.02.2016</p>
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
                <div class="method">
                    <xsl:for-each select="dcc:measurementResults/dcc:measurementResult/dcc:usedMethods/dcc:usedMethod">
                    <h3><xsl:value-of select="dcc:name/dcc:content"/></h3>
                    <p><xsl:value-of select="dcc:description/dcc:content"/></p>
                    </xsl:for-each>
                </div>

                <div class="method">
                    <xsl:for-each select="dcc:measurementResults/dcc:measurementResult/dcc:usedMethods/dcc:usedMethod[2]">
                    <h3><xsl:value-of select="dcc:name/dcc:content"/></h3>
                    <p><xsl:value-of select="dcc:description/dcc:content"/></p>

                    <h4><xsl:value-of select="dcc:description[2]/dcc:content"/></h4>
                    <p><span class="not-in-xml-file">Tästä eteenpäin puuttuu pitkät pätkät dataa</span><xsl:value-of select="dcc:description[3]/dcc:content"/></p>
                    </xsl:for-each>
                </div>

                <div class="condition">
                    <xsl:for-each select="dcc:measurementResults/dcc:measurementResult/dcc:influenceConditions/dcc:influenceCondition">
                        <h3><xsl:value-of select="dcc:name/dcc:content"/></h3>
                    </xsl:for-each>
                </div>

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

</xsl:stylesheet>