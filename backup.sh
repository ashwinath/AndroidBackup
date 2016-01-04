#!/sbin/sh
# put all backup files into one tar file.
# unsure if /data/data actually backs up app data
# unsure if copying all of /data/data is harmful

if [[ $1 = "-b" ]]; then
    echo backing up...
    if [[ -ne /external_sd/backup ]]; then
        mkdir -p /external_sd/backup
    fi
    tar -c -f /external_sd/backup/backup.tar /data/data /data/app /sdcard/DCIM /sdcard/WhatsApp
    echo done!
elif [[ $1 = "-r" ]]; then
    echo restoring...
    tar -xf /external_sd/backup/backup.tar
    echo done!
else
    echo -b for backup
    echo -r for restore
fi
