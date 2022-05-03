chmod 755 "$MODPATH/system/bin/magic-flash"
chmod 755 -R "$MODPATH/busybox"
ln -sf ./magic-flash "$MODPATH/system/bin/flash"
ln -sf ./magic-flash "$MODPATH/system/bin/vmshell"
api_level_arch_detect
ui_print "- Installing busybox for flashtool..."
cp "$MODPATH/busybox/busybox-$ARCH" "$MODPATH/busybox/busybox"
rm -rf "$MODPATH/busybox/busybox-"*