# Codigo 91: slideshow

## ¿Que hace?
Abrira todas las imagenes de una carpeta

### **Observaciones**
Simplemente necesitamos una carpeta con imagenes

```bash
#!/bin/bash

delay=2
psize="1200x900>"	

if [ $# -eq 0 ] ; then
  echo "Usage: $(basename $0) watch-directory" >&2 ; exit 1
fi

watch="$1"

if [ ! -d "$watch" ] ; then
  echo "$(basename $0): specified watch directory $watch isn't a directory" >&2 ; exit 1
fi

cd "$watch"

if [ $? -ne 0 ] ; then
  echo "$(basename $0): failed trying to cd into $watch" >&2 ; exit 1
fi

suffixes="$(file * | grep image | cut -d: -f1 | rev | cut -d. -f1 | \
   rev | sort | uniq | sed 's/^/\*./')"

if [ -z "$suffixes" ] ; then
  echo "$(basename $0): no images to display in folder $watch" >&2 ; exit 1
fi

/bin/echo -n "Displaying $(ls $suffixes | wc -l) images from $watch "
set -f ; echo with suffixes $suffixes ; set +f

display -loop 0 -delay $delay -resize $psize -backdrop $suffixes

exit 0
```
**[Anterior](https://github.com/SPM-UPVictoria/test-git-itsHaydo)**
