async function getXMLCertificateInfo() {
    var path = window.location.pathname;
    if (!path.endsWith(".xml")) {
      return
    }
    var parser = new DOMParser();
    const page = await (await fetch(path)).text();
    var xmlDoc = parser.parseFromString(page, "text/xml");
    var x509Cert = xmlDoc.getElementsByTagName("ds:X509Certificate")[0].childNodes[0].nodeValue
    x509 = decodeCert(x509Cert)
    console.log(x509)
    document.getElementById("signature-method").innerHTML = xmlDoc.getElementsByTagName("ds:SignatureMethod")[0].getAttribute("Algorithm")
    document.getElementById("canonicalization-method").innerHTML = xmlDoc.getElementsByTagName("ds:CanonicalizationMethod")[0].getAttribute("Algorithm")
    document.getElementById("signature-timestamp").innerHTML = xmlDoc.getElementsByTagName("xades:SigningTime")[0].childNodes[0].nodeValue
    document.getElementById("signature-timestamp-utc").innerHTML = xmlDoc.getElementsByTagName("xades:SigningTime")[0].childNodes[0].nodeValue
    document.getElementById("signer-certificate").innerHTML = x509['organizationName-X520'] + " " + x509['organizationalUnitName-X520']
    document.getElementById("signer-name").innerHTML = x509['commonName-X520']
    document.getElementById("signer-name2").innerHTML = x509['commonName-X520']
    document.getElementById("signer-time").innerHTML = x509['UTCTime']
    document.getElementById("signer-time2").innerHTML = x509['UTCTime']
    document.getElementById("signer-computer-time-utc").innerHTML = xmlDoc.getElementsByTagName("xades:SigningTime")[0].childNodes[0].nodeValue
}

getXMLCertificateInfo()