# lf2000 surgeon
make clean
make lf2000_surgeon_defconfig
make
cp output/images/zImage release/lf2000_surgeon_zImage

# lf2000 main
make clean
make lf2000_defconfig
make
cp output/images/uImage release/lf2000_uImage
cp output/images/rootfs.tar.gz release/lf2000_rootfs.tar.gz
