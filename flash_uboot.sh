readonly G_UBOOT_NAME_FOR_EMMC='u-boot.img.mmc'
readonly G_SPL_NAME_FOR_EMMC='SPL.mmc'

# Get the absolute location of this file
readonly local SCRIPT_PATH="dirname $(readlink -e $0)"

# Set the output directory of the build script. This directory needs to match the value set over there.
readonly local LPARAM_OUTPUT_DIR="${SCRIPT_PATH}/output"
readonly local LPARAM_BLOCK_DEVICE=$1

# pr_info "Flashing U-Boot"
echo "Flashing U-Boot"
dd if=${LPARAM_OUTPUT_DIR}/${G_SPL_NAME_FOR_EMMC} of=${LPARAM_BLOCK_DEVICE} bs=1K seek=1; sync
dd if=${LPARAM_OUTPUT_DIR}/${G_UBOOT_NAME_FOR_EMMC} of=${LPARAM_BLOCK_DEVICE} bs=1K seek=69; sync
echo "DONE"
