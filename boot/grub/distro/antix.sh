set icon="debian";
set vmlinuz_img="(loop)/antiX/vmlinuz";
set initrd_img="(loop)/antiX/initrd.*";
set loopiso="from=$isofile root=UUID=$devuuid";
menuentry "作为 antiX LiveCD 启动" --class $icon{
	set kcmdline="from=hd splash=v disable=lx";
	linux $vmlinuz_img $kcmdline $loopiso;
	initrd $initrd_img;
}
menuentry "作为 antiX LiveCD 启动 (安全模式)" --class $icon{
	set kcmdline="from=hd splash=v disable=lx nomodeset failsafe";
	linux $vmlinuz_img $kcmdline $loopiso;
	initrd $initrd_img;
}
menuentry "作为 antiX LiveCD 启动 (自定义模式)" {
	set kcmdline="from=hd splash=v disable=lx menus";
	linux $vmlinuz_img $kcmdline $loopiso;
	initrd $initrd_img;
}