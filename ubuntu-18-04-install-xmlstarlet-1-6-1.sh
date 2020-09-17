#!/usr/bin/env bash

#これやばいちょーべんり
#http://xmlstar.sourceforge.net/doc/xmlstarlet.pdf
#http://xmlstar.sourceforge.net/download.php
cd /usr/local/src

tar xvf xmlstarlet-1.6.1.tar.gz

cd xmlstarlet-1.6.1

apt install -y libxml2-dev libxslt1-dev apt-utils

#./configure && \
#make -j12 && \
#make -j12 install
#
#which xml
#/usr/local/bin/xml

#$ xml --help
#XMLStarlet Toolkit: Command line utilities for XML
#Usage: xml [<options>] <command> [<cmd-options>]
#where <command> is one of:
#  ed    (or edit)      - Edit/Update XML document(s)
#  sel   (or select)    - Select data or query XML document(s) (XPATH, etc)
#  tr    (or transform) - Transform XML document(s) using XSLT
#  val   (or validate)  - Validate XML document(s) (well-formed/DTD/XSD/RelaxNG)
#  fo    (or format)    - Format XML document(s)
#  el    (or elements)  - Display element structure of XML document
#  c14n  (or canonic)   - XML canonicalization
#  ls    (or list)      - List directory as XML
#  esc   (or escape)    - Escape special XML characters
#  unesc (or unescape)  - Unescape special XML characters
#  pyx   (or xmln)      - Convert XML into PYX format (based on ESIS - ISO 8879)
#  p2x   (or depyx)     - Convert PYX into XML
#<options> are:
#  -q or --quiet        - no error output
#  --doc-namespace      - extract namespace bindings from input doc (default)
#  --no-doc-namespace   - don't extract namespace bindings from input doc
#  --version            - show version
#  --help               - show help
#Wherever file name mentioned in command help it is assumed
#that URL can be used instead as well.
#
#Type: xml <command> --help <ENTER> for command help
#
#XMLStarlet is a command line toolkit to query/edit/check/transform
#XML documents (for more information see http://xmlstar.sourceforge.net/)
#
#
#$ xml el --help
#XMLStarlet Toolkit: Display element structure of XML document
#Usage: xml el [<options>] <xml-file>
#where
#  <xml-file> - input XML document file name (stdin is used if missing)
#  <options> is one of:
#  -a    - show attributes as well
#  -v    - show attributes and their values
#  -u    - print out sorted unique lines
#  -d<n> - print out sorted unique lines up to depth <n>
#
#XMLStarlet is a command line toolkit to query/edit/check/transform
#XML documents (for more information see http://xmlstar.sourceforge.net/)
