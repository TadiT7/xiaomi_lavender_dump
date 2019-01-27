#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:34438a0404fb47c8766b48f1e45324a257d84076; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:c8b2846a4041372b70c063e780086f9534c1f389 EMMC:/dev/block/bootdevice/by-name/recovery 34438a0404fb47c8766b48f1e45324a257d84076 67108864 c8b2846a4041372b70c063e780086f9534c1f389:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
