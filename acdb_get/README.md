acdb_get
========

This binary dload the stock audio hal and dump the acdb table

WARNING: SOCs <=8974 aren't supported

 - Generate the acdb_data header
```
./generate_acdb_data.sh audio.primary.sdm845.so
```
 - Build and push this binary
 - Push stock 32bit audio hal and dependencies to /system/lib
```
cp /vendor/lib/hw/audio.primary.sdm845.so /system/lib
cp /vendor/lib/libaudio_log_utils.so /system/lib
cp /vendor/lib/libaudioroute_ext.so /system/lib
cp /vendor/lib/libtinycompress.so /system/lib
cp /system/lib/vndk-29/libaudioroute.so /system/lib
```
 - Run the binary
 - Enjoy your acdb table
