# Path
CRYPTO_PATH := device/mediatek/decrypt

# MT6833
ifeq ($(TARGET_BOARD_PLATFORM),mt6833)
  PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,$(CRYPTO_PATH)/mt6833,recovery/root)
endif

# MT6768
ifeq ($(TARGET_BOARD_PLATFORM),mt6768)
  PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,$(CRYPTO_PATH)/mt6768,recovery/root)
endif

# Additional binaries & libraries needed for recovery
TARGET_RECOVERY_DEVICE_MODULES += \
    libkeymaster4 \
    libkeymaster41 \
    libpuresoftkeymasterdevice

# Decryption
TW_RECOVERY_ADDITIONAL_RELINK_LIBRARY_FILES += \
    $(TARGET_OUT_SHARED_LIBRARIES)/libkeymaster4.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libkeymaster41.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libpuresoftkeymasterdevice.so
