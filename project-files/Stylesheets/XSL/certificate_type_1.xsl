<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="https://ptb.de/dcc https://ptb.de/dcc/v2.1.1/dcc.xsd"
    xmlns:dcc="https://ptb.de/dcc"
    xmlns:si="https://ptb.de/si">

    <xsl:template match="/">
        <html>
            <head>
                <title>Calibration Certificate No: <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:coreData/dcc:uniqueIdentifier"/>
                </title>
                <link rel="stylesheet" href="../Stylesheets/CSS/certificate_type_1.css"/>

                <!-- Remember to include jQuery :) -->
                <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>

                <!-- jQuery Modal -->
                <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
            </head>
            <body>

                <div class="pages">

                    <div class="page cover">
                        <div class="content">
                            <div class="grid">
                                <div class="grid-item">
                                    <div class="manufacturer">
                                        <h3>
                                            <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:calibrationLaboratory/dcc:contact/dcc:name/dcc:content"/>
                                        </h3>
                                        <p>
                                            <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:calibrationLaboratory/dcc:contact/dcc:location/dcc:street"/>
                                            <xsl:text> </xsl:text>
                                            <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:calibrationLaboratory/dcc:contact/dcc:location/dcc:streetNo"/>
                                            <br/>
                                            <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:calibrationLaboratory/dcc:contact/dcc:location/dcc:countryCode"/>
                                            <span class="from-template">-</span>
                                            <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:calibrationLaboratory/dcc:contact/dcc:location/dcc:postCode"/>
                                            <xsl:text> </xsl:text>
                                            <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:calibrationLaboratory/dcc:contact/dcc:location/dcc:city"/>
                                            <br/>
                                            <span class="not-in-xml-file">Finland</span>
                                            <br/>
                                            <span class="from-template">Tel. </span>
                                            <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:calibrationLaboratory/dcc:contact/dcc:phone"/>
                                            <br/>
                                            <span class="from-template">Fax. </span>
                                            <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:calibrationLaboratory/dcc:contact/dcc:fax"/>
                                        </p>
                                        <p>
                                            <a class="not-in-xml-file" href="http://www.beamex.com" target="_blank">www.beamex.com</a>
                                        </p>
                                    </div>
                                    <div class="certificate">
                                        <h5 class="from-template">Certificate of Calibration No</h5>
                                        <h2>
                                            <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:coreData/dcc:uniqueIdentifier"/>
                                        </h2>
                                        <h1>
                                            <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:items/dcc:item/dcc:model"/>
                                        </h1>
                                        <h3>
                                            <span class="from-template">S/N: </span>
                                            <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:items/dcc:item/dcc:identifications/dcc:identification/dcc:value"/>
                                        </h3>
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
                                    <h3>
                                        <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:calibrationLaboratory/dcc:contact/dcc:location/dcc:further/dcc:content"/>
                                    </h3>
                                </div>

                                <div class="grid-item item-3">
                                    <h3>
                                        <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:calibrationLaboratory/dcc:contact/dcc:name/dcc:content"/>
                                        <br/>
                                        <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:calibrationLaboratory/dcc:contact/dcc:location/dcc:further/dcc:content[2]"/>
                                    </h3>
                                    <p>
                                        <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:calibrationLaboratory/dcc:contact/dcc:location/dcc:street"/>
                                        <xsl:text> </xsl:text>
                                        <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:calibrationLaboratory/dcc:contact/dcc:location/dcc:streetNo"/>
                                        <br/>
                                        <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:calibrationLaboratory/dcc:contact/dcc:location/dcc:countryCode"/>
                                        <span class="not-in-xml-file">-</span>
                                        <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:calibrationLaboratory/dcc:contact/dcc:location/dcc:postCode"/>
                                        <xsl:text> </xsl:text>
                                        <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:calibrationLaboratory/dcc:contact/dcc:location/dcc:city"/>
                                        <br/>
                                        <span class="not-in-xml-file">Finland</span>
                                        <br/>
                                        <span class="from-template">Tel. </span>
                                        <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:calibrationLaboratory/dcc:contact/dcc:phone"/>
                                        <br/>
                                        <span class="from-template">Fax. </span>
                                        <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:calibrationLaboratory/dcc:contact/dcc:fax"/>
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
                                    <h2>
                                        <span class="from-template">Certificate of Calibration No </span>
                                        <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:coreData/dcc:uniqueIdentifier"/>
                                    </h2>
                                </div>

                                <div class="grid-item">
                                    <h3 class="from-template">Customer</h3>
                                </div>

                                <div class="grid-item">
                                    <p>
                                        <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:customer/dcc:name/dcc:content"/>
                                        <br/>
                                        <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:customer/dcc:location/dcc:street"/>
                                        <xsl:text> </xsl:text>
                                        <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:customer/dcc:location/dcc:streetNo"/>
                                        <br/>
                                        <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:customer/dcc:location/dcc:postCode"/>
                                        <xsl:text> </xsl:text>
                                        <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:customer/dcc:location/dcc:city"/>
                                        <br/>
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
                                    <p>
                                        <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:items/dcc:item/dcc:name/dcc:content"/>
                                    </p>
                                </div>

                                <div class="grid-item">
                                    <h3 class="from-template">Model</h3>
                                </div>

                                <div class="grid-item">
                                    <p>
                                        <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:items/dcc:item/dcc:model"/>
                                    </p>
                                </div>

                                <div class="grid-item">
                                    <h3 class="from-template">Manufactured by</h3>
                                </div>

                                <div class="grid-item">
                                    <p>
                                        <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:items/dcc:item/dcc:manufacturer/dcc:name/dcc:content"/>
                                    </p>
                                </div>
                                <div class="grid-item">
                                    <h3 class="from-template">Serial Number</h3>
                                </div>

                                <div class="grid-item">
                                    <p>
                                        <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:items/dcc:item/dcc:identifications/dcc:identification/dcc:value"/>
                                    </p>
                                </div>

                                <div class="grid-item">
                                    <h3 class="from-template">Date</h3>
                                </div>

                                <div class="grid-item">
                                    <p><xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:coreData/dcc:receiptDate"/></p>
                                </div>

                                <div class="grid-item">
                                    <h3 class="from-template">Signatures</h3>
                                </div>

                                <div class="grid-item signatures">
                                    <div class="signature">
                                        <img class="signature-img" src="../Stylesheets/images/digital_signature_signed.png" />
                                        <div>
                                            <p class="name">Duyanh Luong</p>
                                            <p class="title">Service Technician</p>

                                            <!-- Modal HTML embedded directly into document -->
                                            <div id="ex1" class="modal">
                                                <p class="name">Duyanh Luong</p>
                                                <p class="title">Service Technician</p>
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
                                            <p class="name">Jari Kivelä</p>
                                            <p class="title">Calibration Engineer</p>

                                            <!-- Modal HTML embedded directly into document -->
                                            <div id="ex2" class="modal">
                                                <p class="name">Jari Kivelä</p>
                                                <p class="title">Calibration Engineer</p>
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
                                    <h3>
                                        <span class="from-template">Calibration Certificate No: </span>
                                        <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:coreData/dcc:uniqueIdentifier"/>
                                    </h3>
                                </div>
                            </div>
                        </div>

                        <div class="grid-item title">
                            <h3>
                                <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:items/dcc:item/dcc:model"/>
                                <span class="from-template">, S/N: </span>
                                <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:items/dcc:item/dcc:identifications/dcc:identification/dcc:value"/> <span class="from-template">. </span>
                                <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:results/dcc:result/dcc:name/dcc:content[2]"/>
                            </h3>
                        </div>

                        <!-- Table loop start -->
                        <xsl:for-each select="dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:results/dcc:result">

                            <xsl:variable name="headers" select="dcc:name/dcc:content[@lang='en']" />
                            <xsl:variable name="description" select="dcc:description/dcc:content[@lang='en']" />

                            <div class="content">
                                <div class="grid">
                                    <div class="grid-item left">

                                        <xsl:for-each select="$headers">
                                            <h4>
                                                <xsl:value-of select="."/>
                                            </h4>
                                        </xsl:for-each>
                                        <p>
                                            <xsl:value-of select="$description[1]"/>
                                        </p>
                                    </div>

                                    <div class="grid-item right">
                                        <xsl:value-of select="$description[2]"/>
                                        <br/>
                                        <xsl:value-of select="$description[3]"/>
                                    </div>

                                    <div class="grid-item table">
                                        <xsl:variable name="cols" select="dcc:data/dcc:list/dcc:quantity" />
                                        <xsl:variable name="col" select="$cols[1]" />
                                        <xsl:variable name="rows" select="$col/si:list/si:real" />
                                        <table>
                                            <tr class="table-title">

                                                <xsl:for-each select="$cols">
                                                    <th>
                                                        <xsl:value-of select="dcc:name/dcc:content" />
                                                    </th>
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
                                                        <th>
                                                            <xsl:apply-templates select="si:list/si:listUnit" />
                                                        </th>
                                                    </xsl:if>
                                                </xsl:for-each>

                                            </tr>

                                            <xsl:for-each select="$rows">
                                                <xsl:variable name="index" select="position()" />
                                                <tr>

                                                    <xsl:for-each select="$cols">
                                                        <xsl:variable name="col-index" select="position()" />

                                                        <xsl:choose>
                                                            <xsl:when test="dcc:name/dcc:content = 'Status'">
                                                                <xsl:choose>
                                                                    <xsl:when test="$cols[$col-index]/si:list/si:real[$index]/si:value = '1'">
                                                                        <td>PASS</td>
                                                                    </xsl:when>
                                                                    <xsl:otherwise>
                                                                        <td>FAIL</td>
                                                                    </xsl:otherwise>
                                                                </xsl:choose>

                                                            </xsl:when>
                                                            <xsl:otherwise>
                                                                <td>
                                                                    <xsl:value-of select="$cols[$col-index]/si:list/si:real[$index]/si:value" />
                                                                </td>
                                                            </xsl:otherwise>
                                                        </xsl:choose>

                                                        <xsl:if test="dcc:name/dcc:content = 'Difference'">
                                                            <td>±
                                                                <xsl:value-of select="$cols[$col-index - 1]/si:list/si:real[$index]/si:expandedUnc/si:uncertainty" />
                                                            </td>
                                                        </xsl:if>

                                                    </xsl:for-each>

                                                </tr>
                                            </xsl:for-each>

                                        </table>
                                    </div>
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
                                    <h3>
                                        <span class="from-template">Calibration Certificate No: </span>
                                        <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:coreData/dcc:uniqueIdentifier"/>
                                    </h3>
                                </div>
                            </div>
                        </div>

                        <div class="content">
                            <div class="title">
                                <h3>
                                    <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:items/dcc:item/dcc:name/dcc:content"/>
                                    <xsl:text> </xsl:text>
                                    <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:items/dcc:item/dcc:model"/>
                                </h3>
                                <h3>
                                    <span class="from-template">Serial No: </span>
                                    <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:items/dcc:item/dcc:identifications/dcc:identification/dcc:value"/>
                                </h3>
                            </div>

                            <xsl:for-each select="dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:usedMethods/dcc:usedMethod">

                                <div>

                                    <xsl:variable name="headers" select="dcc:name/dcc:content[@lang='en']" />
                                    <xsl:variable name="description" select="dcc:description/dcc:content[@lang='en']" />

                                    <xsl:for-each select="$headers">
                                        <h3>
                                            <xsl:value-of select="."/>
                                        </h3>
                                    </xsl:for-each>
                                    <xsl:for-each select="$description">
                                        <p>
                                            <xsl:value-of select="."/>
                                        </p>
                                    </xsl:for-each>

                                </div>

                            </xsl:for-each>



                            <!-- <h3>
                                <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:usedMethods/dcc:usedMethod/dcc:description/dcc:content"/>
                            </h3>
                            <xsl:variable name="lang" select="dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:usedMethods/dcc:usedMethod/dcc:description[2]/dcc:content/@lang" />
                            <p data-lang="{$lang}">
                                <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:usedMethods/dcc:usedMethod/dcc:description[2]/dcc:content"/>
                            </p>

                            <h3>
                                <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:usedMethods/dcc:usedMethod/dcc:description[3]/dcc:content"/>
                            </h3>
                            <p>
                                <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:usedMethods/dcc:usedMethod/dcc:description[4]/dcc:content"/>
                            </p> -->

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
                                            <td>
                                                <xsl:value-of select="dcc:name/dcc:content"/>
                                            </td>
                                            <td>
                                                <xsl:value-of select="dcc:model"/>
                                            </td>
                                            <td>
                                                <xsl:value-of select="dcc:identifications/dcc:identification/dcc:value"/>
                                            </td>
                                            <td>
											<xsl:choose>
												<xsl:when test="dcc:certificate/dcc:referenceID = 'K026-17P4654'">
													<a href="./DCC_K026-17P4654.xml"><xsl:value-of select="dcc:certificate/dcc:referenceID"/></a>
												</xsl:when>
												<xsl:when test="dcc:certificate/dcc:referenceID = 'M-16P013'">
													<a href="./DCC_M-16P013.xml"><xsl:value-of select="dcc:certificate/dcc:referenceID"/></a>
												</xsl:when>
												<xsl:otherwise>
													<xsl:value-of select="dcc:certificate/dcc:referenceID"/>
												</xsl:otherwise>
											</xsl:choose>
                                            </td>
                                            <td>
                                                <xsl:value-of select="dcc:description/dcc:content"/>
                                            </td>
                                        </tr>
                                    </xsl:for-each>
                                    <!-- Table row loop end -->

                                </table>
                                <p>
                                    <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:usedMethods/dcc:usedMethod/dcc:description[5]"/>
                                </p>
                            </div>

                            <xsl:for-each select="dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:influenceConditions/dcc:influenceCondition">

                                <div>

                                    <xsl:variable name="headers" select="dcc:name/dcc:content[@lang='en']" />
                                    <xsl:variable name="description" select="dcc:description/dcc:content[@lang='en']" />
                                    <xsl:variable name="listdesc" select="dcc:data/dcc:list/dcc:name/dcc:content[@lang='en']" />

                                    <xsl:for-each select="$headers">
                                        <h3>
                                            <xsl:value-of select="."/>
                                        </h3>
                                    </xsl:for-each>
                                    <xsl:for-each select="$description">
                                        <p>
                                            <xsl:value-of select="."/>
                                        </p>
                                    </xsl:for-each>
                                    <xsl:for-each select="$listdesc">
                                        <p>
                                            <xsl:value-of select="."/>
                                        </p>
                                    </xsl:for-each>

                                </div>

                            </xsl:for-each>

                            <!-- <h3>
                                <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:usedMethods/dcc:usedMethod[2]/dcc:name/dcc:content"/>
                            </h3>
                            <p>
                                <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:usedMethods/dcc:usedMethod[2]/dcc:description/dcc:content"/>
                            </p>

                            <h3>
                                <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:influenceConditions/dcc:influenceCondition/dcc:name/dcc:content"/>
                            </h3>
                            <p>
                                <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:influenceConditions/dcc:influenceCondition/dcc:data/dcc:list/dcc:name/dcc:content"/>
                            </p> -->

                        </div>
                    </div>
                </div>

                <script src="../Stylesheets/JS/styling.js"></script>

            </body>
        </html>
    </xsl:template>

    <xsl:template match="si:listUnit">
        <xsl:choose>
            <xsl:when test=". = '\volt'">
                <span>[ V ]</span>
            </xsl:when>
            <xsl:when test=". = '\degreeCelsius'">
                <span>[ °C ]</span>
            </xsl:when>
            <xsl:when test=". = '\milli\ampere'">
                <span>[ µA ]</span>
            </xsl:when>
            <xsl:when test=". = '\milli\volt'">
                <span>[ µV ]</span>
            </xsl:when>
            <xsl:when test=". = '\kilo\pascal'">
                <span>[ kPa ]</span>
            </xsl:when>
            <xsl:when test=". = '\ohm'">
                <span>[ Ω ]</span>
            </xsl:when>
            <xsl:when test=". = '\hertz'">
                <span>[ Hz ]</span>
            </xsl:when>
            <xsl:when test=". = '\kilo\Pascal'">
                <span>[ kPa ]</span>
            </xsl:when>
            <xsl:when test=". = '\percent'">
                <span>[ % ]</span>
            </xsl:when>
            <xsl:when test=". = '\one'">

            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="."/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

</xsl:stylesheet>
