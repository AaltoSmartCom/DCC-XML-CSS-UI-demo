# DCC-XML-CSS-UI-demo

A CSS based User Interface demonstration for Digital Calibration Certificates (DCC)

# Using

To use this demo, you need to copy this repository to your local machine and
then open any of the XML files in `Project Files/XML` in your browsers.  Some
browsers have security policies that affect the behaviour; see below.

To copy the files, either use `git` (if you know how to) or click the
`Clone or download` button and then click `Download ZIP`.  Once you have
the `.zip` file, expand it, navigate to `Project Files/XML`, and open any
of the XML files with your browser.

# Using Chrome

By default, the Google Chrome browser security policy forbids XSLT
formatting of XML files, when the XML files are loaded from a local
file.  This can be changed with a command line option `--allow-file-access-from-files`.

On OS X: from `Terminal.app` run

```
   /Applications/Google\ Chrome.app/contents/MacOS/Google\ Chrome --allow-file-access-from-files &
```

On Windows: from the command prompt run
```
   %LOCALAPPDATA%\Google\Chrome\Application\chrome.exe --allow-file-access-from-files
```

Note: You will first have to quit Chrome, if it is currently running.

# Using Edge

In some versions of Windows, Edge by default does not open XML files
but delegates that to Internet Explorer, which in turn doesn't
properly understand modern CSS.

If you want to change your Windows so that in the future Edge will
open XML files directly, from the command prompt run
```
   ftype xmlfile=microsoft-edge:file:///%1
```

Please note that the command requires Admin rights.

Note: You will first have to quit Edge and then restart it, if it is currently running.

# Using Safari

With Safari, you can just open the XML files and they will work.

# Using Opera or Brave

At this point, we don't know how to make the XML to work with Opera or
Brave.  Most probably they have a similar local security policy
problem that Chrome has.  You may try similar approaches as for Chrome.
