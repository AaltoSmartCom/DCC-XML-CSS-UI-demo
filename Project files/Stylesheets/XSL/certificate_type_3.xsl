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
                <link rel="stylesheet" href="../Stylesheets/CSS/certificate_type_3.css"/>

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
                                    <h2>Calibration Certificate</h2>
                                    <h4>Certificate Number: BX-10504-CAL</h4>
                                    <h4>Work Order Number: 11052000 - 035</h4>
                                </div>

                                <div class="grid-item item-3">
                                    <p class="small">CMX Version: 2.11.714.0 (2.11)</p>
                                </div>
                            </div>
                        </div>

                        <div class="admin-data">
                            <div class="grid">
                                <div class="grid-item">
                                    <h4 class="table-title">Position ID</h4>
                                    <table>
                                        <tr>
                                            <td>Position ID</td>
                                            <td>101DR-TT0021</td>
                                        </tr>
                                        <tr>
                                            <td>Name</td>
                                            <td>Dryer temperature to controller</td>
                                        </tr><tr>
                                            <td>Location</td>
                                            <td>0025 Room</td>
                                        </tr><tr>
                                            <td>Plant</td>
                                            <td>Pharmaceutical Plant/Plant 1, Finland ( BFB )/Block 1/101DR (Dryer 1)/</td>
                                        </tr>
                                    </table>
                                </div>

                                <div class="grid-item">
                                    <h4 class="table-title">Position ID</h4>
                                    <table>
                                        <tr>
                                            <td>Position ID</td>
                                            <td>101DR-TT0021</td>
                                        </tr>
                                        <tr>
                                            <td>Name</td>
                                            <td>Dryer temperature to controller</td>
                                        </tr><tr>
                                            <td>Location</td>
                                            <td>0025 Room</td>
                                        </tr><tr>
                                            <td>Plant</td>
                                            <td>Pharmaceutical Plant/Plant 1, Finland ( BFB )/Block 1/101DR (Dryer 1)/</td>
                                        </tr>
                                    </table>
                                </div>

                                <div class="grid-item">
                                    <h4 class="table-title">Position ID</h4>
                                    <table>
                                        <tr>
                                            <td>Position ID</td>
                                            <td>101DR-TT0021</td>
                                        </tr>
                                        <tr>
                                            <td>Name</td>
                                            <td>Dryer temperature to controller</td>
                                        </tr><tr>
                                            <td>Location</td>
                                            <td>0025 Room</td>
                                        </tr><tr>
                                            <td>Plant</td>
                                            <td>Pharmaceutical Plant/Plant 1, Finland ( BFB )/Block 1/101DR (Dryer 1)/</td>
                                        </tr>
                                    </table>
                                </div>

                                <div class="grid-item">
                                    <h4 class="table-title">Position ID</h4>
                                    <table>
                                        <tr>
                                            <td>Position ID</td>
                                            <td>101DR-TT0021</td>
                                        </tr>
                                        <tr>
                                            <td>Name</td>
                                            <td>Dryer temperature to controller</td>
                                        </tr><tr>
                                            <td>Location</td>
                                            <td>0025 Room</td>
                                        </tr><tr>
                                            <td>Plant</td>
                                            <td>Pharmaceutical Plant/Plant 1, Finland ( BFB )/Block 1/101DR (Dryer 1)/</td>
                                        </tr>
                                    </table>
                                </div>

                                <div class="grid-item">
                                    <h4 class="table-title">Position ID</h4>
                                    <table>
                                        <tr>
                                            <td>Position ID</td>
                                            <td>101DR-TT0021</td>
                                        </tr>
                                        <tr>
                                            <td>Name</td>
                                            <td>Dryer temperature to controller</td>
                                        </tr><tr>
                                            <td>Location</td>
                                            <td>0025 Room</td>
                                        </tr><tr>
                                            <td>Plant</td>
                                            <td>Pharmaceutical Plant/Plant 1, Finland ( BFB )/Block 1/101DR (Dryer 1)/</td>
                                        </tr>
                                    </table>
                                </div>

                                <div class="grid-item">
                                    <h4 class="table-title">Position ID</h4>
                                    <table>
                                        <tr>
                                            <td>Position ID</td>
                                            <td>101DR-TT0021</td>
                                        </tr>
                                        <tr>
                                            <td>Name</td>
                                            <td>Dryer temperature to controller</td>
                                        </tr><tr>
                                            <td>Location</td>
                                            <td>0025 Room</td>
                                        </tr><tr>
                                            <td>Plant</td>
                                            <td>Pharmaceutical Plant/Plant 1, Finland ( BFB )/Block 1/101DR (Dryer 1)/</td>
                                        </tr>
                                    </table>
                                </div>
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

                        <div class="signing">
                            <p>Calibration Note:</p>

                            <h4 class="calibrated-title">Calibrated by:</h4>
                            <div class="signatures">
                                <div class="signature">
                                    <img class="signature-img" src="../Stylesheets/images/digital_signature_signed.png" />
                                    <div>
                                        <p class="name">Sami Koskinen</p>
                                        <!-- <p class="title"></p> -->
                                        <p class="time">09/08/2019 10:25:40 (UTC +03:00)</p>

                                        <!-- Modal HTML embedded directly into document -->
                                        <div id="ex1" class="modal">
                                            <p class="name">Sami Koskinen</p>
                                            <!-- <p class="title"></p> -->
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
                            </div>
                        </div>

                    </div>
                </div>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>