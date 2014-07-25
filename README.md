# Introduction
[HTTP Header Splitting](https://www.owasp.org/index.php/HTTP_Response_Splitting) refers to a potential vulnerability
that can exist in web applications.  It is not a threat in itself but opens a web application up to other threats
such as Cross Site Scripting, Cache Poisoning, etc.

This sample application attempts to check popular Java web containers for susceptibility to HTTP Header Splitting.
It utilises Maven profiles to launch different container versions.  The following have been tested:

* Jetty 7: `mvn clean jetty:run -Pjetty7`
* Jetty 8: `mvn clean jetty:run -Pjetty8`
* Jetty 9: `mvn clean jetty:run -Pjetty9`
* Tomcat 6: `mvn clean tomcat6:run -Ptomcat6`
* Tomcat 7: `mvn clean tomcat7:run -Ptomcat7`

After running any of these commands, load the application home page in a web browser as
[http://localhost:8080](http://localhost:8080).  This application also has the following profiles that are not
working right now:

* Jetty 6: `mvn clean jetty:run -Pjetty6`
* Resin 3: `mvn clean resin:run -Presin3`
* Resin 4: `mvn clean resin:run -Presin4`

Weblogic was not tested because it uses Tomcat internally to serve web requests and Tomcat is already being
tested.  Websphere and Glassfish were not tested due to lack of time.

# Findings
None of the tested containers, that is, Jetty 7-9 and Tomcat 6/7 exhibited vulnerability to the HTTP Header
Splitting exploit.

# License
This sample application and its associated source code in its entirety is being made
available under the following licensing terms.

    Copyright (C) 2014

    Permission is hereby granted, free of charge, to any person obtaining a copy of
	this software and associated documentation files (the "Software"), to deal in the
	Software without restriction, including without limitation the rights to use, copy,
	modify, merge, publish, distribute, sublicense, and/or sell copies of the Software,
	and to permit persons to whom the Software is furnished to do so, subject to the
	following conditions:

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
	INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
	PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
	HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF
	CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE
	OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
