#!/bin/sh
java -jar signapk.jar testkey.x509.pem testkey.pk8  $1  ./out/$1
