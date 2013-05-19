USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/lenovo/k860/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := false
TARGET_BOARD_PLATFORM := exynos4
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_BOOTLOADER_BOARD_NAME := smdk4x12

# repack image
BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048

# kernel
BOARD_USES_DEPRECATED_TOOLCHAIN := true
TARGET_PREBUILT_KERNEL := device/lenovo/k860/kernel
BOARD_CUSTOM_BOOTIMG_MK := device/lenovo/k860/shbootimg.mk

# recovery
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"chinese/font_15x24.h\"
TARGET_RECOVERY_INITRC := device/lenovo/k860/recovery.rc
BOARD_UMS_LUNFILE := "/sys/devices/platform/s3c-usbgadget/gadget/lun%d/file"
BORAD_REC_LANG_CHINESE := true
RECOVERY_FLAG_BLOCK := 1060
RECOVERY_NAME := 中文恢复系统 (by 火眼金睛)

#TWRP
DEVICE_RESOLUTION := 720x1280
#In addition to the resolution, we have the following build flags:
RECOVERY_GRAPHICS_USE_LINELENGTH := true 		#-- fixes slanty looking graphics on some devices

#The below is how you can add custom / special partitions to the list of partitions available for backup. 
#The SP1_NAME must match the name of a partition defined in recovery.fstab. 
#The SP1_DISPLAY_NAME is the name displayed on the backup page if it needs to be different than SP1_NAME. 
#SP1_BACKUP_METHOD defines how the partition should be backed up (files or image). 
#And SP1_MOUNTABLE determines if the partition can be mounted.
#指定厂商提供的特殊分区，比如华为有cust分区，联想有preload分区；
SP1_NAME := "preload"
SP1_BACKUP_METHOD := files
SP1_MOUNTABLE := 1
#SP2_NAME := "osh"
#SP2_DISPLAY_NAME := "Webtop"
#SP2_BACKUP_METHOD := files
#SP2_MOUNTABLE := 1
#SP3_NAME := "preinstall"
#SP3_BACKUP_METHOD := image
#SP3_MOUNTABLE := 0
#RECOVERY_SDCARD_ON_DATA := true -- this enables proper handling of /data/media on devices that have this folder for storage (most Honeycomb and devices that originally shipped with ICS like Galaxy Nexus)
#BOARD_HAS_NO_REAL_SDCARD := true -- disables things like sdcard partitioning
#TW_INCLUDE_DUMLOCK := true -- includes HTC Dumlock for devices that need it

#This is how you would define dual storage for devices that have dual storage devices. For devices that have internal storage we usually define that as /emmc. Note that the mount point must match something in the recovery.fstab
TW_INTERNAL_STORAGE_PATH := "/sdcard"
TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"

TW_NO_BATT_PERCENT := false 			#-- disables the display of the battery percentage for devices that dont support it properly
TW_CUSTOM_POWER_BUTTON := 107 			#-- custom maps the power button for the lockscreen:映射电源键以锁屏；
TW_NO_REBOOT_BOOTLOADER := true 		#-- removes the reboot bootloader button from the reboot menu；重启菜单中删除reboot bootloader;
TW_NO_REBOOT_RECOVERY := false 			#-- removes the reboot recovery button from the reboot menu；重启菜单中删除reboot recovery; 
TW_NO_USB_STORAGE := false 				#-- removes the USB storage button on devices that dont support USB storage
RECOVERY_TOUCHSCREEN_SWAP_XY := true 	#-- swaps the mapping of touches between the X and Y axis
RECOVERY_TOUCHSCREEN_FLIP_Y := true 	#-- flips y axis touchscreen values
RECOVERY_TOUCHSCREEN_FLIP_X := true 	#-- flips x axis touchscreen values
TW_ALWAYS_RMRF := false					#-- forces the rm -rf option to always be on (needed for some Motorola devices)
TW_NEVER_UNMOUNT_SYSTEM := false 		#-- never unmount system (needed for some Motorola devices)
#TW_INCLUDE_INJECTTWRP := true 			#-- adds ability to inject TWRP into some Samsung boot images for Samsung devices that have recovery as a second ramdisk in the boot image
TW_DEFAULT_EXTERNAL_STORAGE := true 	#-- defaults to external storage instead of internal on dual storage devices
TWRP_EVENT_LOGGING := true 				#-- enables touch event logging to help debug touchscreen issues (dont leave this on for a release - it will fill up your logfile very quickly)

#Heres some flags that may help you, but are not specific to TWRP (works in CWM too):
#This flag has multiple options, but can be used to set different graphics modes that may be need to correct color space issues on some devices:
#TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
#TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
#TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"

#BOARD_HAS_FLIPPED_SCREEN := true -- flips the screen upside down for screens that were mounted upside-down
#TARGET_PREBUILT_RECOVERY_KERNEL := path/to/kernel -- use to specify a kernel specifically for building recovery
# BOARD_TOUCH_RECOVERY := true

#Vold
#TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/msm_hsusb/gadget/lun%d/file"

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072


