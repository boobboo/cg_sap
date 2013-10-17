Description
===========

Installs new SAP kernel and restarts SAP

Requirements
============

Platform:

* Debian, Ubuntu (OpenJDK, Oracle)
* CentOS 6+, Red Hat 6+, Fedora (OpenJDK, Oracle)


Attributes
==========

* `node["SAP"]["kernel_path"]` - The local locaiton to install the new kernel.
* `node["SAP"]["url"]` - The network location of the new kernel.

Usage
=====

Simply include the recipe where you want the SAP kernel installed and updated.




License and Author
==================

Author:: Michael Ducy (<michael@opscode.com>)


Copyright:: 2010-2013, Opscode, Inc

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
