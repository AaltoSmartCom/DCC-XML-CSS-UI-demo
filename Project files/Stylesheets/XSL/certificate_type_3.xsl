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

                    </div>
                </div>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>