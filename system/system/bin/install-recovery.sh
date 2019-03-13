#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:5ff88db03ddeaead2280cd61b63450997fc049f3; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:9f9a9ad9e8678968a38ecc3b3b3ca51301cdc17a EMMC:/dev/block/bootdevice/by-name/recovery 5ff88db03ddeaead2280cd61b63450997fc049f3 67108864 9f9a9ad9e8678968a38ecc3b3b3ca51301cdc17a:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
