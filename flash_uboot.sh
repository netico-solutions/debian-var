readonly G_UBOOT_NAME_FOR_EMMC='u-boot.img.mmc'
readonly G_SPL_NAME_FOR_EMMC='SPL.mmc'

readonly local LPARAM_BLOCK_DEVICE=$1
readonly local LPARAM_OUTPUT_DIR="/home/lazar/var_som_mx6_debian/output"
# pr_info "Flashing U-Boot"
echo "Flashing U-Boot"
dd if=${LPARAM_OUTPUT_DIR}/${G_SPL_NAME_FOR_EMMC} of=${LPARAM_BLOCK_DEVICE} bs=1K seek=1; sync
dd if=${LPARAM_OUTPUT_DIR}/${G_UBOOT_NAME_FOR_EMMC} of=${LPARAM_BLOCK_DEVICE} bs=1K seek=69; sync
echo "DONE"
