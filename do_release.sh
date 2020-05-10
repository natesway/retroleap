# TODO: Do something when one of these steps fails instead of just moving on.
# lf1000 surgeon
make clean
make lf1000_surgeon_defconfig
make
cp output/images/zImage release/lf1000_surgeon_zImage

# lf1000 main
make clean
make lf1000_defconfig
make
cp output/images/zImage release/lf1000_zImage
cp output/images/rootfs.tar.gz release/lf1000_rootfs.tar.gz

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


# lf3000 surgeon
make clean
make lf3000_surgeon_defconfig
make
cp output/images/zImage release/lf3000_surgeon_zImage

# lf3000 main
make clean
make lf3000_defconfig
make
cp output/images/rootfs.tar.gz release/lf3000_rootfs.tar.gz
cp output/images/uImage release/lf3000_uImage.tar.gz

