#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:abb8edf199321e4f15ec2147a3f109e1c05bf6fc; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:f9c50550a947d8d8120e9965650065b2b144cfb3 EMMC:/dev/block/bootdevice/by-name/recovery abb8edf199321e4f15ec2147a3f109e1c05bf6fc 67108864 f9c50550a947d8d8120e9965650065b2b144cfb3:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
