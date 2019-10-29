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
        <title>Calibration Certificate NO: <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:coreData/dcc:uniqueIdentifier"/></title>
        <link rel="stylesheet" href="K026-17P5172.css"/>
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
                                    <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:calibrationLaboratory/dcc:contact/dcc:location/dcc:countryCode"/>-<xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:calibrationLaboratory/dcc:contact/dcc:location/dcc:postCode"/><xsl:text> </xsl:text><xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:calibrationLaboratory/dcc:contact/dcc:location/dcc:city"/><br/>
                                    Finland<br/>
                                    Tel. +358 10 550 5000<br/>
                                    Fax. +358 10 550 5404
                                </p>
                                <p>
                                    <a href="http://www.beamex.com">www.beamex.com</a>
                                </p>
                            </div>
                            <div class="certificate">
                                <h5>Certificate of Calibration No</h5>
                                <h2><xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:coreData/dcc:uniqueIdentifier"/></h2>
                                <h3><xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:items/dcc:item/dcc:model"/></h3>
                                <h3>S/N: <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:items/dcc:item/dcc:identifications/dcc:identification/dcc:value"/></h3>
                            </div>
                        </div>

                        <div class="grid-item logo">
                            <img src="images/calibration_logo.jpg" alt="Calibration Certificate"/>
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
                            <img src="images/beamex-logo.jpg" alt="Beamex"/>
                        </div>

                        <div class="grid-item item-2">
                            <h3><xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:calibrationLaboratory/dcc:contact/dcc:location/dcc:further/dcc:content"/></h3>
                        </div>

                        <div class="grid-item item-3">
                            <h3>
                                <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:calibrationLaboratory/dcc:contact/dcc:name/dcc:content"/><br/>
                                Calibration Laboratory
                            </h3>
                            <p>
                                <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:calibrationLaboratory/dcc:contact/dcc:location/dcc:street"/><xsl:text> </xsl:text><xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:calibrationLaboratory/dcc:contact/dcc:location/dcc:streetNo"/><br/>
                                <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:calibrationLaboratory/dcc:contact/dcc:location/dcc:countryCode"/>-<xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:calibrationLaboratory/dcc:contact/dcc:location/dcc:postCode"/><xsl:text> </xsl:text><xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:calibrationLaboratory/dcc:contact/dcc:location/dcc:city"/><br/>
                                Finland<br/>
                                Tel. +358 10 550 5000<br/>
                                Fax. +358 10 550 5404
                            </p>
                        </div>

                        <div class="grid-item item-4">
                            <img src="images/finas-logo.jpg" alt="Finas"/>
                            <img src="images/ilac-mra-logo.jpg" alt="ilac-MRA"/>
                        </div>
                        <div class="grid-item item-5"></div>
                    </div>
                </div>

                <div class="content">
                    <div class="grid">
                        <div class="grid-item title">
                            <h2>Certificate of Calibration No <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:coreData/dcc:uniqueIdentifier"/></h2>
                        </div>

                        <div class="grid-item">
                            <h3>Customer</h3>
                        </div>

                        <div class="grid-item">
                            <p>
                                <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:customer/dcc:name/dcc:content"/><br/>
                                <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:customer/dcc:location/dcc:street"/><xsl:text> </xsl:text><xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:customer/dcc:location/dcc:streetNo"/><br/>
                                <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:customer/dcc:location/dcc:postCode"/><xsl:text> </xsl:text><xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:customer/dcc:location/dcc:city"/><br/>
                                Finland
                            </p>
                        </div>

                        <div class="grid-item">
                            <h3>Customer No</h3>
                        </div>

                        <div class="grid-item">
                            <p>1000</p>
                        </div>

                        <div class="grid-item">
                            <h3>Item</h3>
                        </div>

                        <div class="grid-item">
                            <p><xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:items/dcc:item/dcc:name/dcc:content"/></p>
                        </div>

                        <div class="grid-item">
                            <h3>Model</h3>
                        </div>

                        <div class="grid-item">
                            <p><xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:items/dcc:item/dcc:model"/></p>
                        </div>

                        <div class="grid-item">
                            <h3>Manufactured by</h3>
                        </div>

                        <div class="grid-item">
                            <p><xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:items/dcc:item/dcc:manufacturer/dcc:name/dcc:content"/></p>
                        </div>
                        <div class="grid-item">
                            <h3>Serial Number</h3>
                        </div>

                        <div class="grid-item">
                            <p><xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:items/dcc:item/dcc:identifications/dcc:identification/dcc:value"/></p>
                        </div>

                        <div class="grid-item">
                            <h3>Date</h3>
                        </div>

                        <div class="grid-item">
                            <p>Nov 01, 2017</p>
                        </div>

                        <div class="grid-item">
                            <h3>Page</h3>
                        </div>

                        <div class="grid-item">
                            <p>1 (12)</p>
                        </div>

                        <div class="grid-item">
                            <h3>Signatures</h3>
                        </div>

                        <div class="grid-item">
                            <p></p>
                        </div>

                        <div class="grid-item">
                            <h3>Documents Attached</h3>
                        </div>

                        <div class="grid-item">
                            <p></p>
                        </div>
                    </div>
                </div>

                <div class="footer">
                    <p>
                        <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:statements/dcc:statement/dcc:declaration/dcc:content"/>
                    </p>
                    <img class="barcode" src="images/barcode.jpg" alt="barcode"/>
                </div>
            </div>

            <div class="page results">
                <div class="header">
                    <div class="grid">
                        <div class="grid-item item-1">
                            <img src="images/beamex-logo.jpg" alt="Beamex"/>
                        </div>

                        <div class="grid-item item-2">
                            <h3>Calibration Certificate NO: <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:coreData/dcc:uniqueIdentifier"/></h3>
                        </div>
                    </div>
                </div>

                <div class="grid-item title">
                    <h3><xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:items/dcc:item/dcc:model"/>, S/N: <xsl:value-of select="dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:items/dcc:item/dcc:identifications/dcc:identification/dcc:value"/>. Measurement Section (IN), S/N: 21091.</h3>
                </div>

                <!-- Table loop start -->
                <xsl:for-each select="dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:results/dcc:result">

                <div class="content">
                    <div class="grid">
                        <div class="grid-item left">
                            <h4><xsl:value-of select="dcc:name/dcc:content"/></h4>
                            <p><xsl:value-of select="dcc:description/dcc:content"/></p>
                        </div>

                        <div class="grid-item right">
                            Calibrated By: Duyanh Luong<br/>
                            Calibration Date: Oct 31, 2017
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
                                    <th>Status</th>

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
                                    <th></th>

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

                                            <td class="status">Pass</td>
                                        </tr>
                                    </xsl:for-each>

                            </table>
                        </div>
                    </div>
                </div>

                </xsl:for-each>
                <!-- Table loop end -->

                <!-- <div class="content">
                    <div class="grid">
                        <div class="grid-item left">
                            <h4>Current Measurement</h4>
                            <p>Range: ±100 mA, 1 Year Uncertainty: ±(1 µA + 0.1% RDG)</p>
                        </div>

                        <div class="grid-item right">
                            Calibrated By: Duyanh Luong<br/>
                            Calibration Date: Oct 31, 2017
                        </div>

                        <div class="grid-item table">
                            <table>
                                <tr class="table-title">
                                    <th>Input</th>
                                    <th>Indicated Value</th>
                                    <th>Difference</th>
                                    <th>Expanded Uncertainty (k=2)</th>
                                    <th>Specification Low Limit</th>
                                    <th>Specification High Limit</th>
                                    <th>Status</th>
                                </tr>
                                <tr class="table-unit">
                                    <th>[mA]</th>
                                    <th>[mA]</th>
                                    <th>[mA]</th>
                                    <th>[mA]</th>
                                    <th>[mA]</th>
                                    <th>[mA]</th>
                                    <th>[mA]</th>
                                </tr>
                                <tr>
                                    <td>-0.9999961</td>
                                    <td class="bolded">-0.9999961</td>
                                    <td>-0.9999961</td>
                                    <td>-0.9999961</td>
                                    <td>-0.9999961</td>
                                    <td>-0.9999961</td>
                                    <td class="status">Pass</td>
                                </tr>
                                <tr>
                                    <td>-0.9999961</td>
                                    <td class="bolded">-0.9999961</td>
                                    <td>-0.9999961</td>
                                    <td>-0.9999961</td>
                                    <td>-0.9999961</td>
                                    <td>-0.9999961</td>
                                    <td class="status">Pass</td>
                                </tr>
                                <tr>
                                    <td>-0.9999961</td>
                                    <td class="bolded">-0.9999961</td>
                                    <td>-0.9999961</td>
                                    <td>-0.9999961</td>
                                    <td>-0.9999961</td>
                                    <td>-0.9999961</td>
                                    <td class="status">Pass</td>
                                </tr>
                                <tr>
                                    <td>-0.9999961</td>
                                    <td class="bolded">-0.9999961</td>
                                    <td>-0.9999961</td>
                                    <td>-0.9999961</td>
                                    <td>-0.9999961</td>
                                    <td>-0.9999961</td>
                                    <td class="status">Pass</td>
                                </tr>
                                <tr>
                                    <td>-0.9999961</td>
                                    <td class="bolded">-0.9999961</td>
                                    <td>-0.9999961</td>
                                    <td>-0.9999961</td>
                                    <td>-0.9999961</td>
                                    <td>-0.9999961</td>
                                    <td class="status">Pass</td>
                                </tr>
                                <tr>
                                    <td>-0.9999961</td>
                                    <td class="bolded">-0.9999961</td>
                                    <td>-0.9999961</td>
                                    <td>-0.9999961</td>
                                    <td>-0.9999961</td>
                                    <td>-0.9999961</td>
                                    <td class="status">Pass</td>
                                </tr>
                                <tr>
                                    <td>-0.9999961</td>
                                    <td class="bolded">-0.9999961</td>
                                    <td>-0.9999961</td>
                                    <td>-0.9999961</td>
                                    <td>-0.9999961</td>
                                    <td>-0.9999961</td>
                                    <td class="status">Pass</td>
                                </tr>
                                <tr>
                                    <td>-0.9999961</td>
                                    <td class="bolded">-0.9999961</td>
                                    <td>-0.9999961</td>
                                    <td>-0.9999961</td>
                                    <td>-0.9999961</td>
                                    <td>-0.9999961</td>
                                    <td class="status">Pass</td>
                                </tr>
                                <tr>
                                    <td>-0.9999961</td>
                                    <td class="bolded">-0.9999961</td>
                                    <td>-0.9999961</td>
                                    <td>-0.9999961</td>
                                    <td>-0.9999961</td>
                                    <td>-0.9999961</td>
                                    <td class="status">Pass</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>

                <div class="content">
                    <div class="grid">
                        <div class="grid-item left">
                            <h4>Frequency Measurement</h4>
                            <p>Range: 0.0027 ... 50000 Hz, 1 Year Uncertainty: 0.0027 ... 0.5 Hz ±(0.000002 Hz + 0.002% RDG),
                                0.5 ... 5 Hz ±(0.00002 Hz + 0.002% RDG), 5 ... 50 Hz ±(0.0002 Hz + 0.002% RDG),
                                50 ... 500 Hz ±(0.002 Hz + 0.002% RDG), 500 ... 5000 Hz ±(0.02 Hz + 0.002% RDG) and
                                5000 ... 50000 Hz ±(0.2 Hz + 0.002% RDG)</p>
                        </div>

                        <div class="grid-item right">
                            Calibrated By: Duyanh Luong<br/>
                            Calibration Date: Oct 31, 2017
                        </div>

                        <div class="grid-item table">
                            <table>
                                <tr class="table-title">
                                    <th>Input</th>
                                    <th>Indicated Value</th>
                                    <th>Difference</th>
                                    <th>Expanded Uncertainty (k=2)</th>
                                    <th>Specification Low Limit</th>
                                    <th>Specification High Limit</th>
                                    <th>Status</th>
                                </tr>
                                <tr class="table-unit">
                                    <th>[Hz]</th>
                                    <th>[Hz]</th>
                                    <th>[Hz]</th>
                                    <th>[Hz]</th>
                                    <th>[Hz]</th>
                                    <th>[Hz]</th>
                                    <th>[Hz]</th>
                                </tr>
                                <tr>
                                    <td>-0.9999961</td>
                                    <td class="bolded">-0.9999961</td>
                                    <td>-0.9999961</td>
                                    <td>-0.9999961</td>
                                    <td>-0.9999961</td>
                                    <td>-0.9999961</td>
                                    <td class="status">Pass</td>
                                </tr>
                                <tr>
                                    <td>-0.9999961</td>
                                    <td class="bolded">-0.9999961</td>
                                    <td>-0.9999961</td>
                                    <td>-0.9999961</td>
                                    <td>-0.9999961</td>
                                    <td>-0.9999961</td>
                                    <td class="status">Pass</td>
                                </tr>
                                <tr>
                                    <td>-0.9999961</td>
                                    <td class="bolded">-0.9999961</td>
                                    <td>-0.9999961</td>
                                    <td>-0.9999961</td>
                                    <td>-0.9999961</td>
                                    <td>-0.9999961</td>
                                    <td class="status">Pass</td>
                                </tr>
                                <tr>
                                    <td>-0.9999961</td>
                                    <td class="bolded">-0.9999961</td>
                                    <td>-0.9999961</td>
                                    <td>-0.9999961</td>
                                    <td>-0.9999961</td>
                                    <td>-0.9999961</td>
                                    <td class="status">Pass</td>
                                </tr>
                                <tr>
                                    <td>-0.9999961</td>
                                    <td class="bolded">-0.9999961</td>
                                    <td>-0.9999961</td>
                                    <td>-0.9999961</td>
                                    <td>-0.9999961</td>
                                    <td>-0.9999961</td>
                                    <td class="status">Pass</td>
                                </tr>
                                <tr>
                                    <td>-0.9999961</td>
                                    <td class="bolded">-0.9999961</td>
                                    <td>-0.9999961</td>
                                    <td>-0.9999961</td>
                                    <td>-0.9999961</td>
                                    <td>-0.9999961</td>
                                    <td class="status">Pass</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div> -->
            </div>

            <div class="page equipments">
                <div class="header">
                    <div class="grid">
                        <div class="grid-item item-1">
                            <img src="images/beamex-logo.jpg" alt="Beamex"/>
                        </div>

                        <div class="grid-item item-2">
                            <h3>Calibration Certificate NO: K026-17P5172</h3>
                        </div>
                    </div>
                </div>

                <div class="content">
                    <div class="title">
                        <h3>Advanced Field Calibrator and Communicator MC6</h3>
                        <h3>Serial No: 601404</h3>
                    </div>

                    <h3>Calibration Procedure</h3>
                    <p>Calibration was carred out according to the internal instruction no. 7.1.4.1.49.</p>
                    <p>Before starting the calibration of the unit, the unit was allowed to stabilise to the constant laboratory conditions for 2 hours.</p>

                    <h3>Condition of the calibrated device</h3>
                    <p>The device is new and no issues were detected.</p>

                    <div class="equipment-table">
                        <h3 class="table-title">Calibration Equipment Used</h3>
                        <table>
                            <tr>
                                <th>Equipment</th>
                                <th>Model</th>
                                <th>Serial No.</th>
                                <th>Cert. No.</th>
                                <th>Calibrated</th>
                            </tr>
                            <tr>
                                <td>Pressure Controller</td>
                                <td>Ruska 7250xi</td>
                                <td>65095</td>
                                <td>K026-17P4654</td>
                                <td>Oct 02, 2017</td>
                            </tr>
                            <tr>
                                <td>Pressure Controller</td>
                                <td>Ruska 7250xi</td>
                                <td>65095</td>
                                <td>K026-17P4654</td>
                                <td>Oct 02, 2017</td>
                            </tr>
                            <tr>
                                <td>Pressure Controller</td>
                                <td>Ruska 7250xi</td>
                                <td>65095</td>
                                <td>K026-17P4654</td>
                                <td>Oct 02, 2017</td>
                            </tr>
                            <tr>
                                <td>Pressure Controller</td>
                                <td>Ruska 7250xi</td>
                                <td>65095</td>
                                <td>K026-17P4654</td>
                                <td>Oct 02, 2017</td>
                            </tr>
                            <tr>
                                <td>Pressure Controller</td>
                                <td>Ruska 7250xi</td>
                                <td>65095</td>
                                <td>K026-17P4654</td>
                                <td>Oct 02, 2017</td>
                            </tr>
                            <tr>
                                <td>Pressure Controller</td>
                                <td>Ruska 7250xi</td>
                                <td>65095</td>
                                <td>K026-17P4654</td>
                                <td>Oct 02, 2017</td>
                            </tr>
                        </table>
                        <p>Calibrations are traceable to national or international measurement standards</p>
                    </div>

                    <h3>Calibration Uncertainty</h3>
                    <p>The reported expanded uncertainty of measurement is stated as the standard uncertainty of measurement multiplied with the coverage
                        factor of k = 2, which for a normal distribution corresponds to coverage probability of approximately 95 %. The standard uncertainty
                        of measurement has been determined in accordance with EA Publication EA-4/02.</p>

                    <h3>Calibration Conditions</h3>
                    <p>The calibrations were made in controlled conditions where the temperature was 23 °C ± 1 °C / 73 °F ± 2 °F and the
                        relative humidity was 50 %RH ± 10 %RH.</p>

                </div>
            </div>
        </div>

    </body>
</html>
</xsl:template>

<xsl:template match="si:listUnit">
[
    <xsl:choose>
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