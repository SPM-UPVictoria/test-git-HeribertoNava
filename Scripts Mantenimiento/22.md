# Codigo número 22
## ¿Cómo funciona?
El primer código crea recordatorios en formato de lista. Luego, con el segundo código, brinda la posibilidad de mostrar una lista o solo un número

```bash

#!/bin/bash
rememberfile="$HOME/.remember"

if [ $# -eq 0 ] ; then
  echo "Enter note, end with ^D: "
  cat - >> $rememberfile
else
  echo "$@" >> $rememberfile
fi

exit 0
