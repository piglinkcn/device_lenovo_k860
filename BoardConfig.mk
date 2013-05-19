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
BOARD_HAS_NO_SELECT_BUTTON := true 												#使用电源键作为确认键
BOARD_HAS_LARGE_FILESYSTEM := true 												#文件系统大于2Gb时使用
TARGET_USERIMAGES_USE_EXT4 := true 												#使用EXT4文件系统
BOARD_USE_CUSTOM_RECOVERY_FONT := \"chinese/font_15x24.h\" 						#使用中文字库bootable/recovery/minui/chinese/font_15x24.h
TARGET_RECOVERY_INITRC := device/lenovo/k860/recovery.rc 						#使用自定的init.rc文件，解决UMS挂载问题
BOARD_UMS_LUNFILE := "/sys/devices/platform/s3c-usbgadget/gadget/lun%d/file" 	#此值获取方法：adb shell "find /sys/ | grep lun1/file"
BORAD_REC_LANG_CHINESE := true 													#表明CWM要使用中文字体
RECOVERY_FLAG_BLOCK := 1060 													#此偏移值由“化缘道人”指点，linkscue释放出
RECOVERY_NAME := 中文恢复系统 (by 火眼金睛) 									#这里修改Recovery显示的名称

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

