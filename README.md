#AndroidBackup
Simple shell script that backs up and restores WhatsApp messages, apps and photos into external_sd.
Does not work in Marshmallow due to external card naming conventions.
Works in TWRP. May work in other recoveries.
Do let me know if it works in the terminals of other Android versions.

To backup:
WhatsApp>Chats and calls>Back up chats
```
sh backup.sh -b
```

To restore:
```
sh backup.sh -r
```
