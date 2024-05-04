
# DRY RUN OPTION
# sudo rsync -av --dry-run --exclude '.Spotlight*' /Volumes/DragonSin_4TB/ /Volumes/BEST_MEDIA1/
#
# ACTUAL RUN

# variable: FROM and TO
FROM=/media/nextcloud
TO=/media/mediabackup

# # DRY RUN
# sudo rsync -av --dry-run --exclude '.Spotlight*' $FROM/ $TO/

# REAL RUN
#rsync -av --delete --exclude '.Spotlight*' $FROM/ $TO/
rsync -av --exclude '.Spotlight*' $FROM/PiCloud $TO/nextcloud

# Hinzufügen einer Datei, die das Datum und die Uhrzeit des Backups enthält
echo "Backup durchgeführt am $(date)" > $TO/backup_timestamp_nextcloud.txt
echo "Backup durchgeführt am $(date)" > $FROM/backup_timestamp_nextcloud.txt

