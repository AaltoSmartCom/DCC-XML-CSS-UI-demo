# DCC-XML-CSS-UI-demo

A CSS based User Interface demonstration for Digital Calibration Certificates (DCC)
The demo requires you to have an eIDAS-validation server running, to automate this you can use our Docker-compose file(instructions below).

### Prequisites

* [Docker](https://www.docker.com/get-started)
* Modern web-browser

## Building

To start the eIDAS-server and make the DCC XMLs more easily available you can just run the command below.

```console
docker-compose build && docker-compose up
```

Then you can navigate to the web server at ```http://127.0.0.1:10001/```
You will just see a test index page.

## Viewing xml

To view the XML file: navigate to ```http://127.0.0.1:10001/XML/<XMLNAME.xml>```
The full list of XML files can be viewed [here](./project-files/XML).

*Validation* demo can be found at path ```http://127.0.0.1:10001/XML/DCC-signed.xml```

## Demo gif
Below you can first see a correct validation and then the result when the .xml file have been tampered with.

![example](https://user-images.githubusercontent.com/41044502/79562522-ed7b3f00-80b3-11ea-8a56-8138c209b2c9.gif)

