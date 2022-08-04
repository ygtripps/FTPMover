#!/bin/bash
basedir="/path/to/base/upload"
remotedir="/path/to/remote/upload"

inotifywait -m -r -q --format '%f' ${basedir} | while read -r file
do
    if [[ "$file" = "*.png" ]]; then # Does the file end with .xml?
        mv "${basedir}/${file}" "${remotedir}/${file}"
        chown -R www-data:www-data ${remotedir}
    elif [[ "$file" = "*.jpg" ]]; then 
        mv "${basedir}/${file}" "${remotedir}/${file}"
        chown -R www-data:www-data ${remotedir}
    fi
done
