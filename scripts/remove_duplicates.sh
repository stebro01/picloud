#!/bin/bash

# Setzen Sie den Pfad zum Zielverzeichnis
root_dir="/media/nextcloud/PiCloud/data"

# Durchsuche das Verzeichnis und alle Unterordner nach Dateien, die " (1)." im Namen enthalten
find "$root_dir" -type f -name '*(3).*' | while read -r duplicate; do
    # Generiere den Namen der Originaldatei, indem "(1)" entfernt wird
    original="${duplicate// (3)/}"
    
    # Prüfe, ob die Originaldatei existiert
    if [ -f "$original" ]; then
        echo "Lösche Duplikat: $duplicate"
        # Lösche die Duplikatdatei, Kommentar entfernen um zu löschen
        rm "$duplicate"
    else
        echo "Original nicht gefunden für: $duplicate"
        # echo "$original" 

    fi

done
