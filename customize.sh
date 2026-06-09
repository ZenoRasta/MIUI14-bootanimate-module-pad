# MIUI14 开机动画模块 v2.0 (小米平板6 Pro 适配版)
# 让 Magisk/KernelSU/SukiSU 自动对 system/ 执行 magic mount
# 主路径: /system/product/media/bootanimation0{1..4}.zip (HyperOS / MIUI 平板读取路径)

ui_print " "
ui_print "*******************************"
ui_print "  MIUI14开机动画模块 v2.0-pad"
ui_print "*******************************"
ui_print " "
ui_print "- 设备: $(getprop ro.product.model)"
ui_print "- 系统: $(getprop ro.build.version.incremental)"
ui_print "- Android: $(getprop ro.build.version.release)"
ui_print " "
ui_print "- 挂载方式: Magic Mount (systemless)"
ui_print "- 平板方向映射: 01=270°  02=0°  03=90°CW  04=180°"
ui_print " "
ui_print "- 安装完成，重启后生效"
ui_print " "
