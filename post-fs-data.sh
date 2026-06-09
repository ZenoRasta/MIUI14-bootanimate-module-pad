#!/system/bin/sh
# MIUI14 开机动画 v2 pad - post-fs-data 兜底脚本
# 主路径已由 magic mount 自动覆盖，此处对个别 ROM 可能的备用路径执行 bind mount。

MODDIR=${0%/*}
SRCDIR="$MODDIR/system/product/media"

for n in 01 02 03 04; do
    SRC="$SRCDIR/bootanimation${n}.zip"
    [ -f "$SRC" ] || continue
    for TARGET in \
        /system/product/media/bootanimation${n}.zip \
        /system_ext/media/bootanimation${n}.zip \
        /product/media/bootanimation${n}.zip; do
        if [ -f "$TARGET" ]; then
            mount --bind "$SRC" "$TARGET" 2>/dev/null
        fi
    done
done
