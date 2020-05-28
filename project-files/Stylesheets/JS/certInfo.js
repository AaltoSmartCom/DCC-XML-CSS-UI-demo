/**
 * Given a x509 String value it decodes the linked list type data structure into
 * a clean json dict.
 * @param {*} cert 
 */

function decodeCert(cert) {
    der = atob(cert);
    asn1 = ASN1.decode(der);
    certDump = function (e, append) {
      let s = append; t = e.typeName(); added = false;
      let content = t != 'NULL' ? String(e.content()).toString() : "NULL"

      if (t == 'SEQUENCE') {
        added = true;
      } else if (t == 'SET') {
        added = false;
      } else if (String(t).match('\[[0-9]\]')) {
      } else if (t == 'NULL') {
      } else if (t == 'BIT_STRING') {
      } else if (t == 'INTEGER') {
        s.push(content);
        added = true;
      } else if (t == 'OBJECT_IDENTIFIER') {
        let temp = content.split('.').join("").toString();
        temp = temp.split(" ")
        s.push(temp[2] + "-" + temp[4]); // may need to be shifted
        added = true;
      } else if (t == 'OCTET_STRING') {
        if (content != "(1 elem)") {
          s.push(content)
        }
      } else if (t == 'UTF8String') {
        s.push(content);
        added = true;
      } else if (t == 'PrintableString') {
        s.push(content);
        added = true;
      } else if (t == 'IA5String') {
        s.push(content);
        added = true;
      } else if (t == 'UTCTime') {
        s.push([String("UTCTime").toString(), content]);
        added = true;
      } else {
        s.push(content + "  " + t + " " + t.length)
        added = true;
      }

      if (e.sub) e.sub.forEach(function (e1) {
        if (added) {
          certDump(e1, s)
        }
        else {
          s.push(certDump(e1, []));
        }
      });
      return s;
    };

  listDump = certDump(asn1, []);
  //console.log(listDump)
  listE = [];

  for (let i = 0; i < listDump.length; i++) {
    if (Array.isArray(listDump[i])) {
      if (listDump[i].length == 2 && !listDump[i][0].startsWith("(2048 bit)")) { // strip cert binary value
        let dict = {};
        dict[listDump[i][0]] = listDump[i][1];
        listE.push(dict);
      } else if ((listDump[i].length == 7)) { // unecesssary boolean strip.
        let dict = {};
        dict[listDump[i][0]] = listDump[i][1][0];
        listE.push(dict);
      }
    } else if (String(listDump[i]).startsWith("sha")) {
      let dict = {};
      let algoString = "encryptionAlgo";
      dict[algoString] = listDump[i];
      listE.push(dict);
    }
  }

  // Move list one dimension up so we get the object structure benefits.
  let result = {};
  for (let i = 0; i < listE.length; i++) {
    result[Object.keys(listE[i])[0]] = listE[i][Object.keys(listE[i])[0]];
  }
  return result;
}

async function getXMLCertificateInfo() {
  let path = window.location.pathname;
  if (!path.endsWith(".xml")) {
    return;
  }
  let parser = new DOMParser();
  const page = await (await fetch(path)).text();
  let xmlDoc = parser.parseFromString(page,"text/xml");
  let x509Cert = xmlDoc.getElementsByTagName("ds:X509Certificate")[0].childNodes[0].nodeValue;
  x509 = decodeCert(x509Cert);
  console.log(x509);
  document.getElementById("signature-method").innerHTML = xmlDoc.getElementsByTagName("ds:SignatureMethod")[0].getAttribute("Algorithm");
  document.getElementById("canonicalization-method").innerHTML = xmlDoc.getElementsByTagName("ds:CanonicalizationMethod")[0].getAttribute("Algorithm");
  document.getElementById("signature-timestamp").innerHTML = xmlDoc.getElementsByTagName("xades:SigningTime")[0].childNodes[0].nodeValue;
  document.getElementById("signature-timestamp-utc").innerHTML = xmlDoc.getElementsByTagName("xades:SigningTime")[0].childNodes[0].nodeValue;
  document.getElementById("signer-certificate").innerHTML = x509['organizationName-X520'] + " "+  x509['organizationalUnitName-X520'];
  document.getElementById("signer-name").innerHTML = x509['commonName-X520'];
  document.getElementById("signer-name2").innerHTML = x509['commonName-X520'];
  document.getElementById("signer-time").innerHTML = x509['UTCTime'];
  document.getElementById("signer-time2").innerHTML = x509['UTCTime'];
  document.getElementById("signer-computer-time-utc").innerHTML = xmlDoc.getElementsByTagName("xades:SigningTime")[0].childNodes[0].nodeValue;
}
getXMLCertificateInfo()