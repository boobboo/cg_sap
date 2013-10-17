name             "SAP"
maintainer       "Michael Ducy"
maintainer_email "michael@opscode.com"
license          "Apache 2.0"
description      "Installs new SAP kernel and restarts SAP"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.1.0"


recipe "tomcat::default", "Installs new SAP kernel and restarts SAP"
