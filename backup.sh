#!/system/bin/sh
# will not work with marshmallow due to SDcard directory name
# works with TWRP recovery. did not try with other recovery methods.
if [ $1 = "-b" ]; then
    echo copying whatsapp files...
    mkdir -p /external_sd/backup/WhatsApp
    cp -r /sdcard/WhatsApp /external_sd/backup
    echo copying photos...
    mkdir -p /external_sd/backup/DCIM
    cp -r /sdcard/DCIM /external_sd/backup
    echo copying apps...
    mkdir /external_sd/backup/app
    cp -r /data/app /external_sd/backup
    echo done!
elif [ $1 = "-r" ]; then
    echo restoring whatsapp files...
    mkdir -p /sdcard/WhatsApp
    cp -r /external_sd/backup/WhatsApp /sdcard
    echo restoring photos...
    cp -r /external_sd/backup/DCIM /sdcard
    echo restoring apps...
    mkdir /data/app
    cp -r /external_sd/backup/app /data
    echo done!
else
    echo -b for backup and -r for restore
fi
