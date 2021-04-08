<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="https://ptb.de/dcc https://ptb.de/dcc/v2.2.0/dcc.xsd" 
    xmlns:dcc="https://ptb.de/dcc" 
    xmlns:si="https://ptb.de/si">

    <xsl:template match="dcc:digitalCalibrationCertificate">
        <html>
            <head>
                <title>Calibration Certificate No: <xsl:value-of select="dcc:administrativeData/dcc:coreData/dcc:uniqueIdentifier"/>
                </title>
                <link rel="stylesheet" href="https://aaltosmartcom.github.io/DCC-XML-CSS-UI-demo/project-files/Stylesheets/CSS/demo.css"/>
                <link rel="manifest" href="/manifest.webmanifest"></link>

                <!-- Remember to include jQuery :) -->
                <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>

                <!-- jQuery Modal -->
                <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
            </head>
            <body>
                <div class="pages">
                    <div class="page">
                        <div class="header">
                            <div class="grid">
                                <div class="grid-item item-1">

                                </div>

                                <div class="grid-item item-2">
                                    <h2 class="from-template">Calibration Certificate</h2>
                                    <h4>
                                        <span class="from-template">Certificate Number: </span>
                                        <xsl:value-of select="dcc:administrativeData/dcc:coreData/dcc:uniqueIdentifier"/>
                                    </h4>
                                    <h4>
                                        <span class="from-template">Work Order Number: </span>
                                        <span class="not-in-xml-file">11052000 - 035</span>
                                    </h4>
                                </div>

                                <div class="grid-item item-3">
                                    <p class="small">
                                        <span class="from-template">CMX Version: </span>
                                        <xsl:value-of select="dcc:administrativeData/dcc:dccSoftware/dcc:software/dcc:release"/>
                                    </p>
                                </div>
                            </div>
                        </div>

                        <div class="admin-data">
                            <div class="grid">

                                <xsl:for-each select="dcc:administrativeData/dcc:calibrationLaboratory/dcc:contact">
                                    <div class="grid-item">
                                        <h4 class="table-title from-template">Position</h4>
                                        <table>
                                            <tr>
                                                <td class="from-template">Position ID</td>
                                                <td>
                                                    <xsl:value-of select="dcc:location/dcc:further/dcc:content[1]"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="from-template">Name</td>
                                                <td>
                                                    <xsl:value-of select="dcc:name/dcc:content"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="from-template">Location</td>
                                                <td>
                                                    <xsl:value-of select="dcc:location/dcc:further/dcc:content[2]"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="from-template">Plant</td>
                                                <td>
                                                    <xsl:value-of select="dcc:location/dcc:further/dcc:content[3]"/>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </xsl:for-each>

                                <xsl:for-each select="dcc:administrativeData/dcc:items/dcc:item[1]">
                                    <div class="grid-item">
                                        <h4 class="table-title from-template">Device</h4>
                                        <table>
                                            <tr>
                                                <td>
                                                    <xsl:value-of select="dcc:identifications/dcc:identification[1]/dcc:description/dcc:content"/>
                                                </td>
                                                <td>
                                                    <xsl:value-of select="dcc:identifications/dcc:identification[1]/dcc:value"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <xsl:value-of select="dcc:identifications/dcc:identification[2]/dcc:description/dcc:content"/>
                                                </td>
                                                <td>
                                                    <xsl:value-of select="dcc:identifications/dcc:identification[2]/dcc:value"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="from-template">Manufacturer</td>
                                                <td>
                                                    <xsl:value-of select="dcc:manufacturer/dcc:name/dcc:content"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="from-template">Rangeability</td>
                                                <td>
                                                    <xsl:value-of select="dcc:description/dcc:content[4]"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="from-template">Operating Temperature</td>
                                                <td>
                                                    <xsl:value-of select="dcc:description/dcc:content[5]"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="from-template">Operating Humidity</td>
                                                <td>
                                                    <xsl:value-of select="dcc:description/dcc:content[6]"/>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </xsl:for-each>

                                <xsl:for-each select="dcc:administrativeData/dcc:items/dcc:item[1]">
                                    <div class="grid-item">
                                        <h4 class="table-title from-template">Function</h4>
                                        <table>
                                            <tr>
                                                <td class="from-template">Name</td>
                                                <td>
                                                    <xsl:value-of select="dcc:name/dcc:content"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="from-template">Transfer Function</td>
                                                <td>
                                                    <xsl:value-of select="dcc:description/dcc:content[1]"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="from-template">Range</td>
                                                <td>
                                                    <xsl:value-of select="dcc:description/dcc:content[2]"/>
,                                                    <xsl:value-of select="dcc:description/dcc:content[3]"/>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </xsl:for-each>

                                <xsl:for-each select="dcc:measurementResults/dcc:measurementResult/dcc:influenceConditions/dcc:influenceCondition/dcc:data">
                                    <div class="grid-item">
                                        <h4 class="table-title">
                                            <xsl:value-of select="../dcc:name/dcc:content"/>
                                        </h4>
                                        <table>
                                            <tr>
                                                <td>
                                                    <xsl:value-of select="dcc:list/dcc:list/dcc:quantity[1]/dcc:name/dcc:content"/>
                                                </td>
                                                <td>
                                                    <xsl:value-of select="dcc:list/dcc:list/dcc:quantity[1]/dcc:noQuantity/dcc:content"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <xsl:value-of select="dcc:list/dcc:list/dcc:quantity[2]/dcc:name/dcc:content"/>
                                                </td>
                                                <td>
                                                    <xsl:value-of select="dcc:list/dcc:list/dcc:quantity[2]/dcc:noQuantity/dcc:content"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <xsl:for-each select="dcc:list/dcc:list[2]">
                                                    <td>
                                                        <xsl:value-of select="dcc:name/dcc:content"/>
                                                    </td>
                                                    <td>
                                                        <xsl:value-of select="dcc:quantity[1]/dcc:name/dcc:content"/>
                                                        <xsl:text></xsl:text>
                                                        <xsl:value-of select="dcc:quantity[1]/si:real/si:value"/>
                                                        <xsl:text></xsl:text>
                                                        <xsl:apply-templates select="dcc:quantity[1]/si:real/si:unit"/>
                                                        <xsl:text></xsl:text>
                                                        <xsl:value-of select="dcc:quantity[2]/dcc:name/dcc:content"/>
                                                        <xsl:text></xsl:text>
                                                        <xsl:value-of select="dcc:quantity[2]/si:real/si:value"/>
                                                        <xsl:text></xsl:text>
                                                        <xsl:apply-templates select="dcc:quantity[2]/si:real/si:unit"/>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <xsl:for-each select="dcc:list/dcc:list[3]">
                                                    <td>
                                                        <xsl:value-of select="dcc:name/dcc:content"/>
                                                    </td>
                                                    <td>
                                                        <xsl:value-of select="dcc:quantity[1]/dcc:name/dcc:content"/>
                                                        <xsl:text></xsl:text>
                                                        <xsl:value-of select="dcc:quantity[1]/si:real/si:value"/>
                                                        <xsl:text></xsl:text>
                                                        <xsl:apply-templates select="dcc:quantity[1]/si:real/si:unit"/>
                                                        <xsl:value-of select="dcc:quantity[2]/dcc:name/dcc:content"/>
                                                        <xsl:text></xsl:text>
                                                        <xsl:value-of select="dcc:quantity[2]/si:real/si:value"/>
                                                        <xsl:text></xsl:text>
                                                        <xsl:apply-templates select="dcc:quantity[2]/si:real/si:unit"/>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                        </table>
                                    </div>
                                </xsl:for-each>

                                <xsl:for-each select="dcc:measurementResults/dcc:measurementResult/dcc:usedMethods/dcc:usedMethod">
                                    <div class="grid-item">
                                        <h4 class="table-title">
                                            <xsl:value-of select="dcc:name/dcc:content"/>
                                        </h4>
                                        <table>
                                            <tr>
                                                <td class="from-template">Due Date</td>
                                                <td>
                                                    <xsl:value-of select="dcc:description/dcc:content[1]"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="from-template">Interval</td>
                                                <td>
                                                    <xsl:value-of select="dcc:description/dcc:content[2]"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="from-template">Reject If Error ></td>
                                                <td>
                                                    <xsl:value-of select="dcc:description/dcc:content[3]"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="from-template">Adjust To Error ></td>
                                                <td>
                                                    <xsl:value-of select="dcc:description/dcc:content[4]"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="from-template">Classification</td>
                                                <td>
                                                    <xsl:value-of select="dcc:description/dcc:content[5]"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="from-template">Calibration Strategy</td>
                                                <td>
                                                    <xsl:value-of select="dcc:description/dcc:content[6]"/>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </xsl:for-each>

                                <xsl:for-each select="dcc:measurementResults/dcc:measurementResult/dcc:measuringEquipments">
                                    <div class="grid-item">
                                        <h4 class="table-title from-template">Calibrators</h4>
                                        <table>
                                            <tr>
                                                <td>
                                                    <xsl:value-of select="dcc:measuringEquipment[1]/dcc:name/dcc:content"/>
                                                </td>
                                                <td>
                                                    <xsl:value-of select="dcc:measuringEquipment[1]/dcc:model"/>
 :                                                    <a href="./DCC_K026-17P5172.xml">
                                                        <xsl:value-of select="dcc:measuringEquipment[1]/dcc:identifications/dcc:identification/dcc:value"/>
                                                    </a>
                                                </td>
                                                <td>
                                                    <span class="from-template">Due Date: </span>
                                                    <xsl:value-of select="dcc:measuringEquipment[1]/dcc:description/dcc:content"/>
                                                </td>
                                            </tr>

                                            <tr>
                                                <td>
                                                    <xsl:value-of select="dcc:measuringEquipment[2]/dcc:name/dcc:content"/>
                                                </td>
                                                <td>
                                                    <xsl:value-of select="dcc:measuringEquipment[2]/dcc:model"/>
 :                                                    <a href="./DCC_K026-17P5172.xml">
                                                        <xsl:value-of select="dcc:measuringEquipment[2]/dcc:identifications/dcc:identification/dcc:value"/>
                                                    </a>
                                                </td>
                                                <td>
                                                    <span class="from-template">Due Date: </span>
                                                    <xsl:value-of select="dcc:measuringEquipment[2]/dcc:description/dcc:content"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <xsl:value-of select="dcc:measuringEquipment[3]/dcc:name/dcc:content"/>
                                                </td>
                                                <td>
                                                    <xsl:value-of select="dcc:measuringEquipment[3]/dcc:model"/>
 :                                                    <a href="./DCC_K026-17P5172.xml">
                                                        <xsl:value-of select="dcc:measuringEquipment[3]/dcc:identifications/dcc:identification/dcc:value"/>
                                                    </a>
                                                </td>
                                                <td>
                                                    <span class="from-template">Due Date: </span>
                                                    <xsl:value-of select="dcc:measuringEquipment[3]/dcc:description/dcc:content"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <xsl:value-of select="dcc:measuringEquipment[4]/dcc:name/dcc:content"/>
                                                </td>
                                                <td>
                                                    <xsl:value-of select="dcc:measuringEquipment[4]/dcc:model"/>
 :                                                    <a href="./DCC_K026-17P5172.xml">
                                                        <xsl:value-of select="dcc:measuringEquipment[4]/dcc:identifications/dcc:identification/dcc:value"/>
                                                    </a>
                                                </td>
                                                <td>
                                                    <span class="from-template">Due Date: </span>
                                                    <xsl:value-of select="dcc:measuringEquipment[4]/dcc:description/dcc:content"/>
                                                </td>
                                            </tr>

                                        </table>
                                    </div>
                                </xsl:for-each>
                            </div>
                        </div>

                        <div class="results">
                            <div class="grid">
                                <div class="grid-item">
                                    <div class="graph-placeholder">
                                        <p>graph</p>
                                    </div>
                                </div>

                                <div class="grid-item">
                                    <div class="graph-placeholder">
                                        <p>Table</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
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
