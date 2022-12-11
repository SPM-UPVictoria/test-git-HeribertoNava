# Codigo numero 56

## ¿como funciona?
El primer código crea un document.db en su computadora que contiene varios documentos. Luego puede buscar personas con ciertos caracteres en otro código.

```bash

#!/bin/bash
baseURL="http://www.city-data.com/zips"

/bin/echo -n "ZIP code $1 is in "

   curl -s -dump "$baseURL/$1.html" | \
   grep -i '<title>' | \
   cut -d\( -f2 | cut -d\) -f1

   exit 0
