# Codigo número 19

## ¿Cómo funciona?
document.db es la primera pieza de código que contiene la mayoría de los documentos en su computadora. Luego, con un código adicional, le permite buscar artículos con datos específicos

```bash

#!/bin/bash

#TENEMOS QUE EJECUTAR CON ROOT#

locatedb="/var/tmp/locate_19code.db"

if [ "$(whoami)" != "haydo" ] ; then
  echo "Must be root to run this command." >&2
  exit 1
fi

find / -print > $locatedb

exit 0
