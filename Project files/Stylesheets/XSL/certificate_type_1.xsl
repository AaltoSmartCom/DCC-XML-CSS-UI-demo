<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xsi:schemaLocation="https://ptb.de/dcc https://ptb.de/dcc/v2.1.1/dcc.xsd"
xmlns:dcc="https://ptb.de/dcc"
xmlns:si="https://ptb.de/si">

<xsl:template match="/">
<html>
    <head>
        <title>Calibration Certificate No: <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:coreData/dcc:uniqueIdentifier"/></title>
        <link rel="stylesheet" href="../Stylesheets/CSS/certificate_type_1.css"/>
    </head>
    <body>

        <div class="pages">

            <div class="page cover">
                <div class="content">
                    <div class="grid">
                        <div class="grid-item">
                            <div class="manufacturer">
                                <h3><xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:calibrationLaboratory/dcc:contact/dcc:name/dcc:content"/></h3>
                                <p>
                                    <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:calibrationLaboratory/dcc:contact/dcc:location/dcc:street"/><xsl:text> </xsl:text><xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:calibrationLaboratory/dcc:contact/dcc:location/dcc:streetNo"/><br/>
                                    <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:calibrationLaboratory/dcc:contact/dcc:location/dcc:countryCode"/><span class="from-template">-</span><xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:calibrationLaboratory/dcc:contact/dcc:location/dcc:postCode"/><xsl:text> </xsl:text><xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:calibrationLaboratory/dcc:contact/dcc:location/dcc:city"/><br/>
                                    <span class="not-in-xml-file">Finland</span><br/>
                                    <span class="from-template">Tel. </span><span class="not-in-xml-file">+358 10 550 5000</span><br/>
                                    <span class="from-template">Fax. </span><span class="not-in-xml-file">+358 10 550 5404</span>
                                </p>
                                <p>
                                    <a class="not-in-xml-file" href="http://www.beamex.com" target="_blank">www.beamex.com</a>
                                </p>
                            </div>
                            <div class="certificate">
                                <h5 class="from-template">Certificate of Calibration No</h5>
                                <h2><xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:coreData/dcc:uniqueIdentifier"/></h2>
                                <h1><xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:items/dcc:item/dcc:model"/></h1>
                                <h3><span  class="from-template">S/N: </span><xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:items/dcc:item/dcc:identifications/dcc:identification/dcc:value"/></h3>
                            </div>
                        </div>

                        <div class="grid-item logo">
                            <img src="../Stylesheets/images/calibration_logo.jpg" alt="Calibration Certificate"/>
                        </div>

                        <div class="grid-item">
                            <!-- just for empty space -->
                        </div>
                    </div>
                </div>
            </div>

            <div class="page signature">
                <div class="header">
                    <div class="grid">
                        <div class="grid-item item-1">
                            <img src="../Stylesheets/images/beamex-logo.jpg" alt="Beamex"/>
                        </div>

                        <div class="grid-item item-2">
                            <h3><xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:calibrationLaboratory/dcc:contact/dcc:location/dcc:further/dcc:content"/></h3>
                        </div>

                        <div class="grid-item item-3">
                            <h3>
                                <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:calibrationLaboratory/dcc:contact/dcc:name/dcc:content"/><br/>
                                <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:calibrationLaboratory/dcc:contact/dcc:location/dcc:further/dcc:content[2]"/>
                            </h3>
                            <p>
                                <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:calibrationLaboratory/dcc:contact/dcc:location/dcc:street"/><xsl:text> </xsl:text><xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:calibrationLaboratory/dcc:contact/dcc:location/dcc:streetNo"/><br/>
                                <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:calibrationLaboratory/dcc:contact/dcc:location/dcc:countryCode"/><span class="not-in-xml-file">-</span><xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:calibrationLaboratory/dcc:contact/dcc:location/dcc:postCode"/><xsl:text> </xsl:text><xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:calibrationLaboratory/dcc:contact/dcc:location/dcc:city"/><br/>
                                <span class="not-in-xml-file">Finland</span><br/>
                                <span class="from-template">Tel. </span><span class="not-in-xml-file">+358 10 550 5000</span><br/>
                                <span class="from-template">Fax. </span><span class="not-in-xml-file">+358 10 550 5404</span>
                            </p>
                        </div>

                        <div class="grid-item item-4">
                            <img src="../Stylesheets/images/finas-logo.jpg" alt="Finas"/>
                            <img src="../Stylesheets/images/ilac-mra-logo.jpg" alt="ilac-MRA"/>
                        </div>
                        <div class="grid-item item-5"></div>
                    </div>
                </div>

                <div class="content">
                    <div class="grid">
                        <div class="grid-item title">
                            <h2><span class="from-template">Certificate of Calibration No </span><xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:coreData/dcc:uniqueIdentifier"/></h2>
                        </div>

                        <div class="grid-item">
                            <h3 class="from-template">Customer</h3>
                        </div>

                        <div class="grid-item">
                            <p>
                                <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:customer/dcc:name/dcc:content"/><br/>
                                <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:customer/dcc:location/dcc:street"/><xsl:text> </xsl:text><xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:customer/dcc:location/dcc:streetNo"/><br/>
                                <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:customer/dcc:location/dcc:postCode"/><xsl:text> </xsl:text><xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:customer/dcc:location/dcc:city"/><br/>
                                <span class="not-in-xml-file">Finland</span>
                            </p>
                        </div>

                        <div class="grid-item">
                            <h3 class="from-template">Customer No</h3>
                        </div>

                        <div class="grid-item">
                            <p class="not-in-xml-file">1000</p>
                        </div>

                        <div class="grid-item">
                            <h3 class="from-template">Item</h3>
                        </div>

                        <div class="grid-item">
                            <p><xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:items/dcc:item/dcc:name/dcc:content"/></p>
                        </div>

                        <div class="grid-item">
                            <h3 class="from-template">Model</h3>
                        </div>

                        <div class="grid-item">
                            <p><xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:items/dcc:item/dcc:model"/></p>
                        </div>

                        <div class="grid-item">
                            <h3 class="from-template">Manufactured by</h3>
                        </div>

                        <div class="grid-item">
                            <p><xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:items/dcc:item/dcc:manufacturer/dcc:name/dcc:content"/></p>
                        </div>
                        <div class="grid-item">
                            <h3 class="from-template">Serial Number</h3>
                        </div>

                        <div class="grid-item">
                            <p><xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:items/dcc:item/dcc:identifications/dcc:identification/dcc:value"/></p>
                        </div>

                        <div class="grid-item">
                            <h3 class="from-template">Date</h3>
                        </div>

                        <div class="grid-item">
                            <p class="not-in-xml-file">Nov 01, 2017</p>
                        </div>

                        <div class="grid-item">
                            <h3 class="from-template">Signatures</h3>
                        </div>

                        <div class="grid-item">
                            <p></p>
                        </div>

                        <div class="grid-item">
                            <h3 class="from-template">Documents Attached</h3>
                        </div>

                        <div class="grid-item">
                            <p></p>
                        </div>
                    </div>
                </div>

                <div class="footer">
                    <p>
                        <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:statements/dcc:statement[3]/dcc:declaration/dcc:content"/>
                    </p>
                    <img class="barcode" src="../Stylesheets/images/barcode.jpg" alt="barcode"/>
                </div>
            </div>

            <div class="page results">
                <div class="header">
                    <div class="grid">
                        <div class="grid-item item-1">
                            <img src="../Stylesheets/images/beamex-logo.jpg" alt="Beamex"/>
                        </div>

                        <div class="grid-item item-2">
                            <h3><span class="from-template">Calibration Certificate No: </span><xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:coreData/dcc:uniqueIdentifier"/></h3>
                        </div>
                    </div>
                </div>

                <div class="grid-item title">
                    <h3><xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:items/dcc:item/dcc:model"/><span class="from-template">, S/N: </span><xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:items/dcc:item/dcc:identifications/dcc:identification/dcc:value"/><span class="from-template">. Measurement Section (IN), S/N: </span><span class="not-in-xml-file">21091.</span></h3>
                </div>

                <!-- Table loop start -->
                <xsl:for-each select="dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:results/dcc:result">

                <div class="content">
                    <div class="grid">
                        <div class="grid-item left">
                            <h4><xsl:value-of select="dcc:name/dcc:content"/></h4>
                            <p><xsl:value-of select="dcc:description/dcc:content"/></p>
                        </div>

                        <div class="grid-item right not-in-xml-file">
                            <span class="from-template">Calibrated By: </span><span class="not-in-xml-file">Duyanh Luong</span><br/>
                            <span class="from-template">Calibration Date: </span><span class="not-in-xml-file">Oct 31, 2017</span>
                        </div>

                        <div class="grid-item table">

                                <xsl:variable name="cols" select="dcc:data/dcc:list/dcc:quantity" />
                                <xsl:variable name="col" select="$cols[1]" />
                                <xsl:variable name="rows" select="$col/si:list/si:real" />

                            <table>
                                <tr class="table-title">

                                    <xsl:for-each select="$cols">
                                        <th><xsl:value-of select="dcc:name/dcc:content" /></th>
                                        <xsl:if test="dcc:name/dcc:content = 'Difference'">
                                            <th>Expanded Uncertainty (k=2)</th>
                                        </xsl:if>
                                    </xsl:for-each>

                                </tr>
                                <tr class="table-unit">

                                    <xsl:for-each select="$cols">
                                        <th>
                                            <xsl:apply-templates select="si:list/si:listUnit" />
                                        </th>
                                        <xsl:if test="dcc:name/dcc:content = 'Difference'">
                                            <th><xsl:apply-templates select="si:list/si:listUnit" /></th>
                                        </xsl:if>
                                    </xsl:for-each>

                                </tr>

                                    <xsl:for-each select="$rows">
                                        <xsl:variable name="index" select="position()" />
                                        <tr>

                                            <xsl:for-each select="$cols">
                                                <xsl:variable name="col-index" select="position()" />

                                                <td><xsl:value-of select="$cols[$col-index]/si:list/si:real[$index]/si:value" /></td>

                                                <xsl:if test="dcc:name/dcc:content = 'Difference'">
                                                    <td>± <xsl:value-of select="$cols[$col-index - 1]/si:list/si:real[$index]/si:expandedUnc/si:uncertainty" /></td>
                                                </xsl:if>

                                            </xsl:for-each>

                                        </tr>
                                    </xsl:for-each>

                            </table>
                        </div>

                        <xsl:if test="dcc:description/dcc:content[2]">
                        <div class="grid-item table-footer">
                            <p><xsl:value-of select="dcc:description/dcc:content[2]"/></p>
                        </div>
                        </xsl:if>
                    </div>
                </div>

                </xsl:for-each>
                <!-- Table loop end -->

            </div>

            <div class="page equipments">
                <div class="header">
                    <div class="grid">
                        <div class="grid-item item-1">
                            <img src="../Stylesheets/images/beamex-logo.jpg" alt="Beamex"/>
                        </div>

                        <div class="grid-item item-2">
                            <h3><span class="from-template">Calibration Certificate No: </span><xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:coreData/dcc:uniqueIdentifier"/></h3>
                        </div>
                    </div>
                </div>

                <div class="content">
                    <div class="title">
                        <h3><xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:items/dcc:item/dcc:name/dcc:content"/><xsl:text> </xsl:text><xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:items/dcc:item/dcc:model"/></h3>
                        <h3><span class="from-template">Serial No: </span><xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:items/dcc:item/dcc:identifications/dcc:identification/dcc:value"/></h3>
                    </div>

                    <h3><xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:usedMethods/dcc:usedMethod/dcc:description/dcc:content"/></h3>
                    <p><xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:usedMethods/dcc:usedMethod/dcc:description[2]/dcc:content"/></p>

                    <h3><xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:usedMethods/dcc:usedMethod/dcc:description[3]/dcc:content"/></h3>
                    <p><xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:usedMethods/dcc:usedMethod/dcc:description[4]/dcc:content"/></p>

                    <div class="equipment-table">
                        <h3 class="table-title from-template">Calibration Equipment Used</h3>
                        <table>
                            <tr>
                                <th class="not-in-xml-file">Equipment</th>
                                <th class="not-in-xml-file">Model</th>
                                <th class="not-in-xml-file">Serial No.</th>
                                <th class="not-in-xml-file">Cert. No.</th>
                                <th class="not-in-xml-file">Calibrated</th>
                            </tr>

                            <!-- Table row loop start -->
                            <xsl:for-each select="dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:measuringEquipments/dcc:measuringEquipment">
                            <tr>
                                <td><xsl:value-of select="dcc:name/dcc:content"/></td>
                                <td><xsl:value-of select="dcc:model"/></td>
                                <td><xsl:value-of select="dcc:identifications/dcc:identification/dcc:value"/></td>
                                <td><xsl:value-of select="dcc:certificate/dcc:referenceID"/></td>
                                <td><xsl:value-of select="dcc:description/dcc:content"/></td>
                            </tr>
                            </xsl:for-each>
                            <!-- Table row loop end -->

                        </table>
                        <p><xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:usedMethods/dcc:usedMethod/dcc:description[5]"/></p>
                    </div>

                    <h3><xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:usedMethods/dcc:usedMethod[2]/dcc:name/dcc:content"/></h3>
                    <p><xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:usedMethods/dcc:usedMethod[2]/dcc:description/dcc:content"/></p>

                    <h3><xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:influenceConditions/dcc:influenceCondition/dcc:name/dcc:content"/></h3>
                    <p><xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:influenceConditions/dcc:influenceCondition/dcc:data/dcc:list/dcc:name/dcc:content"/></p>

                </div>
            </div>
        </div>

    </body>
</html>
</xsl:template>

<xsl:template match="si:listUnit">
[
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
        <xsl:otherwise>
            <xsl:value-of select="."/>
        </xsl:otherwise>
    </xsl:choose> ]
</xsl:template>

</xsl:stylesheet>