ifneq (,$(filter userdebug eng, $(TARGET_BUILD_VARIANT)))
KERNEL_DEFCONFIG := marlin-debug_defconfig
else
KERNEL_DEFCONFIG := marlin_defconfig
endif

KERNEL_DIR := kernel/google/marlin
TARGET_KERNEL_APPEND_DTB := true

include $(TOP)/$(KERNEL_DIR)/AndroidKernel.mk

.PHONY: $(PRODUCT_OUT)/kernel
$(PRODUCT_OUT)/kernel: $(TARGET_PREBUILT_KERNEL)
	cp $(TARGET_PREBUILT_KERNEL) $(PRODUCT_OUT)/kernel
