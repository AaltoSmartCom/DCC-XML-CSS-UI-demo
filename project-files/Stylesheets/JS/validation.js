'use strict'
const imagePath = "../Stylesheets/images/";

async function validate() {
  var path = window.location.pathname;
  var filename = "";
  if (path.endsWith(".xml")) {
    filename = path.split("/").pop().toString();
  } else {
    //fullpath = "../../XML/DCC_BX-10504-CAL.xml";
  }
  const page = await (await fetch(path)).text();
  document.getElementById("validationImage").src = imagePath + "uncertain.png"
  let base64encode = utoa(page);
  
  let data = JSON.parse("{\r\n  \"signedDocument\" : {\r\n    \"bytes\" : \""+ base64encode +"\",\r\n    \"digestAlgorithm\" : null,\r\n    \"name\" : \""+ filename +"\"\r\n  },\r\n  \"policy\" : null,\r\n  \"signatureId\" : null\r\n}");
  let validationReport = await (await fetch("http://localhost:8080/services/rest/validation/validateSignature", {
    method: 'POST',
    mode: 'cors',
    cache: 'no-cache',
    credentials: 'same-origin', 
    headers: {
      'Content-Type': 'application/json',
    },
    redirect: 'follow',
    referrerPolicy: 'no-referrer',
    body: JSON.stringify(data)
  })).text();
  console.log(JSON.parse(validationReport));
  var report = checkReport(JSON.parse(validationReport));
  if (report[0] && report[1]) {
    document.getElementById("validationImage").src = imagePath + "digital_signature_signed.png";
    document.getElementById("validateButton").innerHTML = "Revalidate";
  } else {
    document.getElementById("validationImage").src = imagePath + "failed.png";
  }
}

function checkReport(Parsedjson) {
    let signatureReport = Parsedjson["DiagnosticData"]["Signature"][0]
    let structure = signatureReport["StructuralValidation"]["Valid"]
    let signature = signatureReport["BasicSignature"]["SignatureIntact"] && signatureReport["BasicSignature"]["SignatureValid"]
    return [structure, signature];
}

/**
 * Unicode to ASCII (encode data to Base64)
 * @param {string} data
 * @return {string}
 */
function utoa(data) {
  return btoa(unescape(encodeURIComponent(data)));
}

/**
 * ASCII to Unicode (decode Base64 to original data)
 * @param {string} b64
 * @return {string}
 */
function atou(b64) {
  return decodeURIComponent(escape(atob(b64)));
}

validate()

