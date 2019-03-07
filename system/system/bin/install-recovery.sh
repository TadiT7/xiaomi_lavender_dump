#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:7f445067db5e89b9600208d31c387b5f146fa4a8; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:7b1d4ea9d45c7ef5322a892a96b71bc8cb97724c EMMC:/dev/block/bootdevice/by-name/recovery 7f445067db5e89b9600208d31c387b5f146fa4a8 67108864 7b1d4ea9d45c7ef5322a892a96b71bc8cb97724c:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
