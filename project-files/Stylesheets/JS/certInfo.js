function getCertificateInfo(cert) {
  var example = "MIIEGzCCAwOgAwIBAgIUOwSIQLAeHowl6JRM3gYkUTWhSUQwDQYJKoZIhvcNAQELBQAwgZwxCzAJBgNVBAYTAkZJMRAwDgYDVQQIDAdVdXNpbWFhMREwDwYDVQQHDAhIZWxzaW5raTEZMBcGA1UECgwQQWFsdG8gVW5pdmVyc2l0eTERMA8GA1UECwwIU21hcnRjb20xFDASBgNVBAMMC0phYW5UYXBvbmVuMSQwIgYJKoZIhvcNAQkBFhVqYWFuLnRhcG9uZW5AYWFsdG8uZmkwHhcNMjAwNDE3MTIxMTM5WhcNMjEwNDE3MTIxMTM5WjCBnDELMAkGA1UEBhMCRkkxEDAOBgNVBAgMB1V1c2ltYWExETAPBgNVBAcMCEhlbHNpbmtpMRkwFwYDVQQKDBBBYWx0byBVbml2ZXJzaXR5MREwDwYDVQQLDAhTbWFydGNvbTEUMBIGA1UEAwwLSmFhblRhcG9uZW4xJDAiBgkqhkiG9w0BCQEWFWphYW4udGFwb25lbkBhYWx0by5maTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAPkSq2iCbQ69ZFNeXWPRYO9ogU7Is20JxFFP5Vi0nHh1fnHAIRLyn0dFp53RIVOQSDmqS5l4b9fqv8ms1GU8w6msnhU61X8Xgtz0fSwofUIFtHlhnKk7rgRMWq6mMvzmDHryduVbplxGxL//ZsUj8n7KTd+BWk1ALA/OPIubTJKUsF7XSEHbXhrb8ghuq/WyfQhtI56iT7lK+HxYJ8sm2rQmbGSGQAm7TpSFP3ObrDD1jTg5A1WCX5u4lenQpCe1Eo8wiZo3hjyvihswsbab/bDZM4us2qV9gUnWLq3MxyTf8jAx6eS/cga7IFaQHtU67rLEJQubBl8qz69/5npRpnECAwEAAaNTMFEwHQYDVR0OBBYEFLXUI7er1GHxQ3ZvtSsWPdGx36AMMB8GA1UdIwQYMBaAFLXUI7er1GHxQ3ZvtSsWPdGx36AMMA8GA1UdEwEB/wQFMAMBAf8wDQYJKoZIhvcNAQELBQADggEBAB0Yiym1FAlG6kyjVz0CJoQR11OGe2QJ1kEmGh3+Wh8N9C3txm9wHCBVoJwd0A1xTdbB4eu6HhUxKQOtAERQi0kjUwawu5IMwER0oskHsbKZ+lyqti4vim/oXah6DMnVS3UV7OcB3zJEZ2fFRfTJJw7xwrLgR4+KIE5ias8tQNiEYvEioP0DCU2HnY7ohZ7y+Pu5A7qmKUbcRSiMEwpGJZVWXVbBvrUe5KvlmlwBSSR0nst1x78xGlORtMYgB7lc3LD1PEKMh5jVoX/5wBDKmTupk/csfDwdMaRCEUW2fO6eY2Ryiuhg6Pt3soXwx+rAU4N+kEz6ArkPnr+q55KSiC4=",
    der = atob(example),
    asn1 = ASN1.decode(der),
    dump = function (e, append) {
      var s = append, t = e.typeName(), added = false;
      var content = t != 'NULL' ? String(e.content()).toString() : "NULL"

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
        var temp = content.split(" ")
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
          dump(e1, s)
        }
        else {
          s.push(dump(e1, []));
        }
      });
      return s;
    };

  listDump = dump(asn1, [])
  console.log(listDump)
  listE = []

  for (var i = 0; i < listDump.length; i++) {
    if (Array.isArray(listDump[i])) {
      if (listDump[i].length == 2 && !listDump[i][0].startsWith("(2048 bit)")) { //strip cert binary value
        var dict = {};
        dict[listDump[i][0]] = listDump[i][1]
        listE.push(dict)
      } else if ((listDump[i].length == 7)) { //unecesssary boolean striå
        var dict = {};
        dict[listDump[i][0]] = listDump[i][1][0]
        listE.push(dict)
      }
    } else if (String(listDump[i]).startsWith("sha")) {
      var dict = {};
      var ebin = "encryptionAlgo"
      dict[ebin] = listDump[i]
      listE.push(dict)
    }
  }

  console.log(listE)
  //convert
  var result = {};
  for (var i = 0; i < listE.length; i++) {
    result[Object.keys(listE[i])[0]] = listE[i][Object.keys(listE[i])[0]];
  }
  console.log(result)
  console.log(JSON.stringify(result))
  return result
}

getCertificateInfo("MIIEGzCCAwOgAwIBAgIUOwSIQLAeHowl6JRM3gYkUTWhSUQwDQYJKoZIhvcNAQELBQAwgZwxCzAJBgNVBAYTAkZJMRAwDgYDVQQIDAdVdXNpbWFhMREwDwYDVQQHDAhIZWxzaW5raTEZMBcGA1UECgwQQWFsdG8gVW5pdmVyc2l0eTERMA8GA1UECwwIU21hcnRjb20xFDASBgNVBAMMC0phYW5UYXBvbmVuMSQwIgYJKoZIhvcNAQkBFhVqYWFuLnRhcG9uZW5AYWFsdG8uZmkwHhcNMjAwNDE3MTIxMTM5WhcNMjEwNDE3MTIxMTM5WjCBnDELMAkGA1UEBhMCRkkxEDAOBgNVBAgMB1V1c2ltYWExETAPBgNVBAcMCEhlbHNpbmtpMRkwFwYDVQQKDBBBYWx0byBVbml2ZXJzaXR5MREwDwYDVQQLDAhTbWFydGNvbTEUMBIGA1UEAwwLSmFhblRhcG9uZW4xJDAiBgkqhkiG9w0BCQEWFWphYW4udGFwb25lbkBhYWx0by5maTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAPkSq2iCbQ69ZFNeXWPRYO9ogU7Is20JxFFP5Vi0nHh1fnHAIRLyn0dFp53RIVOQSDmqS5l4b9fqv8ms1GU8w6msnhU61X8Xgtz0fSwofUIFtHlhnKk7rgRMWq6mMvzmDHryduVbplxGxL//ZsUj8n7KTd+BWk1ALA/OPIubTJKUsF7XSEHbXhrb8ghuq/WyfQhtI56iT7lK+HxYJ8sm2rQmbGSGQAm7TpSFP3ObrDD1jTg5A1WCX5u4lenQpCe1Eo8wiZo3hjyvihswsbab/bDZM4us2qV9gUnWLq3MxyTf8jAx6eS/cga7IFaQHtU67rLEJQubBl8qz69/5npRpnECAwEAAaNTMFEwHQYDVR0OBBYEFLXUI7er1GHxQ3ZvtSsWPdGx36AMMB8GA1UdIwQYMBaAFLXUI7er1GHxQ3ZvtSsWPdGx36AMMA8GA1UdEwEB/wQFMAMBAf8wDQYJKoZIhvcNAQELBQADggEBAB0Yiym1FAlG6kyjVz0CJoQR11OGe2QJ1kEmGh3+Wh8N9C3txm9wHCBVoJwd0A1xTdbB4eu6HhUxKQOtAERQi0kjUwawu5IMwER0oskHsbKZ+lyqti4vim/oXah6DMnVS3UV7OcB3zJEZ2fFRfTJJw7xwrLgR4+KIE5ias8tQNiEYvEioP0DCU2HnY7ohZ7y+Pu5A7qmKUbcRSiMEwpGJZVWXVbBvrUe5KvlmlwBSSR0nst1x78xGlORtMYgB7lc3LD1PEKMh5jVoX/5wBDKmTupk/csfDwdMaRCEUW2fO6eY2Ryiuhg6Pt3soXwx+rAU4N+kEz6ArkPnr+q55KSiC4=")