#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:d7f9260caf3593693ed2d09ae0228476facadea4; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:9fcf50454862559c7b278334de18c3ae590e7e91 EMMC:/dev/block/bootdevice/by-name/recovery d7f9260caf3593693ed2d09ae0228476facadea4 67108864 9fcf50454862559c7b278334de18c3ae590e7e91:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
