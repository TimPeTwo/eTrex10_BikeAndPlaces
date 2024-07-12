#!/bin/bash
# Erzeugt aus den Ordner mystyle10-base-orte-name eine Zip Datei 
# Anschließend wird mit mkmap geprüft, obe es einen Syntaxfehler in dem Style gibt.
zip -r mystyle10-base-orte-name.zip mystyle10-base-orte-name
mkgmap --style-file=./mystyle10-base-orte-name.zip --list-styles