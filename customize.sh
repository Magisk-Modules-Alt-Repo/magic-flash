chmod 755 "$MODPATH/system/bin/magic-flash"
ln -sf ./magic-flash "$MODPATH/system/bin/flash"

if [ -d "/sbin" ] && mount | grep -q " /sbin "; then
TMPPATH=/sbin
elif mount | grep -q " /system/bin "; then
TMPPATH=/system/bin
fi

if [ ! -z "$TMPPATH" ]; then
mount -o rw,remount $TMPPATH
umount -l $TMPPATH/magic-flash
rm -rf $TMPPATH/magic-flash
echo -n >$TMPPATH/magic-flash
mount --bind "$MODPATH/system/bin/magic-flash" "$TMPPATH/magic-flash"
ln -sf ./magic-flash "$TMPPATH/flash"
fi