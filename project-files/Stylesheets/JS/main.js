
if ('serviceWorker' in navigator) {
  window.addEventListener("load", () => {
    navigator.serviceWorker
      .register('/sw_cache.js')
      .then(reg => console.log("service worker: registered"))
      .catch(err => console.log(`service worker: error ${err}`))
  })
}

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

async function updateOnlineStatus() {
  let status = document.getElementById("connectionStatus");
  let validateButton = document.getElementById("validateButton");
  let connectionText = document.getElementById("connectionText");

  if (navigator.onLine) {
    validateButton.addEventListener("click", () => {
      validate()
    });
    validateButton.disabled = false;

    status.innerHTML = "ONLINE";
    status.style="color:#228B22; margin-bottom: 0px;"
    connectionText.innerHTML = "Connection to the eIDAS server has been made.";
    
  } else {
    validateButton.disabled = true;
    status.innerHTML = "OFFLINE";
    status.style="color:#CD5C5C; margin-bottom: 0px;"
    connectionText.innerHTML = "Please check your connection to the eIDAS server.";
  }
}


document.addEventListener('DOMContentLoaded', event => {
  window.addEventListener('load', () => {
    window.addEventListener('online',  updateOnlineStatus);
    window.addEventListener('offline', updateOnlineStatus);
  });
  getXMLCertificateInfo()
  updateOnlineStatus()
});

/**
 * Imported from older version of the demo
 */
/*
$('a.open-modal').click(function(event) {
  $(this).modal({
      fadeDuration: 250
  });
  return false;
});*/
