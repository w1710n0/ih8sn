ifneq ($(TARGET_BUILD_VARIANT), eng)
PRODUCT_PACKAGES += \
    ih8sn

ifneq ("$(wildcard $(LOCAL_PATH)/system/etc/ih8sn.conf.$(subst lineage_,,$(TARGET_PRODUCT)))","")
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/system/etc/ih8sn.conf.$(subst lineage_,,$(TARGET_PRODUCT)):$(TARGET_COPY_OUT_SYSTEM)/etc/ih8sn.conf
else
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/system/etc/ih8sn.conf:$(TARGET_COPY_OUT_SYSTEM)/etc/ih8sn.conf
endif

PRODUCT_ARTIFACT_PATH_REQUIREMENT_ALLOWED_LIST += \
    system/bin/ih8sn \
    system/etc/ih8sn.conf \
    system/etc/init/ih8sn.rc
endif
