#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:57bc83ee2f3eccd90426c19d6e589bec7dc22462; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:f5a34b9a0635e6d5d02f7beb4f2b78311250ced6 EMMC:/dev/block/bootdevice/by-name/recovery 57bc83ee2f3eccd90426c19d6e589bec7dc22462 67108864 f5a34b9a0635e6d5d02f7beb4f2b78311250ced6:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
