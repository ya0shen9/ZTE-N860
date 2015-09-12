ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/zte/Tn860/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full_base.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

DEVICE_PACKAGE_OVERLAYS += device/zte/Tn860/overlay

# Publish that we support the live wallpaper feature.
PRODUCT_COPY_FILES += \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# use high-density artwork where available
PRODUCT_LOCALES += hdpi


PRODUCT_PACKAGES += \
    librs_jni \
    abtfilt \
    gralloc.msm7x30 \
    lights.msm7x30 \
    copybit.msm7x30 \
    overlay.msm7x30 \
    gps.msm7x30 \
    libOmxCore \
    libOmxVenc \
    libOmxVdec \
    com.android.future.usb.accessory

# Hardware properties
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/base/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml

# Boot init
PRODUCT_COPY_FILES += \
    device/zte/Tn860/root/init:/root/init \
    device/zte/Tn860/root/init.Tn860.rc:/root/init.Tn860.rc \
    device/zte/Tn860/root/init.goldfish.rc:/root/init.goldfish.rc \
    device/zte/Tn860/root/initlogo.rle:/root/initlogo.rle \
    device/zte/Tn860/root/init.qcom.rc:/root/init.qcom.rc \
    device/zte/Tn860/root/init.qcom.sh:/root/init.qcom.sh \
    device/zte/Tn860/root/init.rc:/root/init.rc \
    device/zte/Tn860/root/logo.bmp:/root/logo.bmp \
    device/zte/Tn860/root/ueventd.rc:/root/ueventd.rc \
    device/zte/Tn860/root/ueventd.Tn860.rc:/root/ueventd.Tn860.rc \
    device/zte/Tn860/root/ueventd.goldfish.rc:/root/ueventd.goldfish.rc \
    device/zte/Tn860/root/sbin/diagftmtest:/root/sbin/diagftmtest \
    device/zte/Tn860/root/sbin/hci_qcomm_init:/root/sbin/hci_qcomm_init \
    device/zte/Tn860/root/sbin/iwmulticall:/root/sbin/iwmulticall \
    device/zte/Tn860/root/sbin/iwpriv:/root/sbin/iwpriv \
    device/zte/Tn860/root/sbin/ptt_socket_app:/root/sbin/ptt_socket_app \
    device/zte/Tn860/root/sbin/rmt_storage:/root/sbin/rmt_storage \
    device/zte/Tn860/root/sbin/usbconfig:/root/sbin/usbconfig


# Recovery init
PRODUCT_COPY_FILES += \
    device/zte/Tn860/recovery/root/init:/recovery/root/init \
    device/zte/Tn860/recovery/root/init.rc:/recovery/root/init.rc \
    device/zte/Tn860/recovery/root/ueventd.rc:/recovery/root/ueventd.rc \
    device/zte/Tn860/recovery/root/ueventd.goldfish.rc:/recovery/root/ueventd.goldfish.rc \
    device/zte/Tn860/recovery/root/sbin/diagftmtest:/recovery/root/sbin/diagftmtest \
    device/zte/Tn860/recovery/root/sbin/hci_qcomm_init:/recovery/root/sbin/hci_qcomm_init \
    device/zte/Tn860/recovery/root/sbin/iwmulticall:/recovery/root/sbin/iwmulticall \
    device/zte/Tn860/recovery/root/sbin/iwpriv:/recovery/root/sbin/iwpriv \
    device/zte/Tn860/recovery/root/sbin/ptt_socket_app:/recovery/root/sbin/ptt_socket_app \
    device/zte/Tn860/recovery/root/sbin/rmt_storage_recovery:/recovery/root/sbin/rmt_storage_recovery \
    device/zte/Tn860/recovery/root/sbin/usbconfig:/recovery/root/sbin/usbconfig

#Adreno
PRODUCT_COPY_FILES +=\
    device/zte/Tn860/prebuilt/lib/egl/egl.cfg:system/lib/egl/egl.cfg \
    device/zte/Tn860/prebuilt/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    device/zte/Tn860/prebuilt/lib/egl/libGLES_android.so:system/lib/egl/libGLES_android.so \
    device/zte/Tn860/prebuilt/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    device/zte/Tn860/prebuilt/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    device/zte/Tn860/prebuilt/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
    device/zte/Tn860/prebuilt/lib/libC2D2.so:system/lib/libC2D2.so \
    device/zte/Tn860/prebuilt/lib/libOpenVG.so:system/lib/libOpenVG.so



#GPU Firmware Files 
PRODUCT_COPY_FILES +=\
    device/zte/Tn860/prebuilt/etc/firmware/vidc_720p_command_control.fw:system/etc/firmware/vidc_720p_command_control.fw \
    device/zte/Tn860/prebuilt/etc/firmware/vidc_720p_h263_dec_mc.fw:system/etc/firmware/vidc_720p_h263_dec_mc.fw \
    device/zte/Tn860/prebuilt/etc/firmware/vidc_720p_h264_dec_mc.fw:system/etc/firmware/vidc_720p_h264_dec_mc.fw \
    device/zte/Tn860/prebuilt/etc/firmware/vidc_720p_h264_enc_mc.fw:system/etc/firmware/vidc_720p_h264_enc_mc.fw \
    device/zte/Tn860/prebuilt/etc/firmware/vidc_720p_mp4_dec_mc.fw:system/etc/firmware/vidc_720p_mp4_dec_mc.fw \
    device/zte/Tn860/prebuilt/etc/firmware/vidc_720p_mp4_enc_mc.fw:system/etc/firmware/vidc_720p_mp4_enc_mc.fw \
    device/zte/Tn860/prebuilt/etc/firmware/vidc_720p_vc1_dec_mc.fw:system/etc/firmware/vidc_720p_vc1_dec_mc.fw \
    device/zte/Tn860/prebuilt/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    device/zte/Tn860/prebuilt/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw 

# SD Card
PRODUCT_COPY_FILES += \
    device/zte/Tn860/prebuilt/etc/vold.fstab:system/etc/vold.fstab

#Input
PRODUCT_COPY_FILES += \
    device/zte/Tn860/prebuilt/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/zte/Tn860/prebuilt/usr/keylayout/Tn860_keypad.kl:system/usr/keylayout/Tn860_keypad.kl \
    device/zte/Tn860/prebuilt/usr/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    device/zte/Tn860/prebuilt/usr/keylayout/fluid-keypad.kl:system/usr/keylayout/fluid-keypad.kl \
    device/zte/Tn860/prebuilt/usr/keylayout/msm_tma300_ts.kl:system/usr/keylayout/msm_tma300_ts.kl \
    device/zte/Tn860/prebuilt/usr/keychars/Tn860_keypad_numeric.kcm.bin:system/usr/keychars/Tn860_keypad_numeric.kcm.bin \
    device/zte/Tn860/prebuilt/usr/keychars/Tn860_keypad_qwerty.kcm.bin:system/usr/keylayout/keychars/Tn860_keypad_qwerty.kcm.bin


#RIL
PRODUCT_COPY_FILES+= \
    device/zte/Tn860/prebuilt/bin/port-bridge:system/bin/port-bridge \
    device/zte/Tn860/prebuilt/bin/rild:system/bin/rild \
    device/zte/Tn860/prebuilt/lib/libdiag.so:system/lib/libdiag.so \
    device/zte/Tn860/prebuilt/lib/libreference-ril.so:system/lib/libreference-ril.so \
    device/zte/Tn860/prebuilt/lib/libreference-cdma-sms.so:system/lib/libreference-cdma-sms.so \
    device/zte/Tn860/prebuilt/lib/libril.so:system/lib/libril.so \
    device/zte/Tn860/prebuilt/lib/libril-qc-1.so:system/lib/libril-qc-1.so \
    device/zte/Tn860/prebuilt/lib/libril-qc-qmi-1.so:system/lib/libril-qc-qmi-1.so \
    device/zte/Tn860/prebuilt/lib/libril-qcril-hook-oem.so:system/lib/libril-qcril-hook-oem.so \
    device/zte/Tn860/prebuilt/lib/libnv.so:system/lib/libnv.so

#APN
PRODUCT_COPY_FILES+= \
    device/zte/Tn860/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml

#GPS
PRODUCT_COPY_FILES+= \
    device/zte/Tn860/prebuilt/lib/libgps.so:system/lib/libgps.so \
    device/zte/Tn860/prebuilt/lib/libloc_api-rpc-qc.so:system/lib/libloc_api-rpc-qc.so \
    device/zte/Tn860/prebuilt/lib/libloc_ext.so:system/lib/libloc_ext.so \
    device/zte/Tn860/prebuilt/lib/libloc-rpc.so:system/lib/libloc-rpc.so \
    device/zte/Tn860/prebuilt/lib/liboncrpc.so:system/lib/liboncrpc.so \
    device/zte/Tn860/prebuilt/lib/hw/gps.default.so:system/lib/hw/gps.default.so \
    device/zte/Tn860/prebuilt/bin/loc_api_app:system/bin/loc_api_app

#WiFi
PRODUCT_COPY_FILES += \
    device/zte/Tn860/prebuilt/lib/modules/libra.ko:system/lib/modules/libra.ko \
    device/zte/Tn860/prebuilt/lib/modules/libra_ftm.ko:system/lib/modules/libra_ftm.ko \
    device/zte/Tn860/prebuilt/lib/modules/librasdioif.ko:system/lib/modules/librasdioif.ko \
    device/zte/Tn860/prebuilt/etc/firmware/wlan/cfg.dat:system/etc/firmware/wlan/cfg.dat \
    device/zte/Tn860/prebuilt/etc/firmware/wlan/qcom_cfg.ini:system/etc/firmware/wlan/qcom_cfg.ini \
    device/zte/Tn860/prebuilt/etc/firmware/wlan/qcom_fw.bin:system/etc/firmware/wlan/qcom_fw.bin \
    device/zte/Tn860/prebuilt/etc/firmware/wlan/qcom_wapi_fw.bin:system/etc/firmware/wlan/qcom_wapi_fw.bin \
    device/zte/Tn860/prebuilt/etc/firmware/wlan/qcom_wlan_nv.bin:system/etc/firmware/wlan/qcom_wlan_nv.bin \
    device/zte/Tn860/prebuilt/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/zte/Tn860/prebuilt/bin/wpa_supplicant:system/bin/wpa_supplicant \
    device/zte/Tn860/prebuilt/bin/iprenew:system/lib/bin/iprenew


#Hostapd
PRODUCT_COPY_FILES+= \
    device/zte/Tn860/prebuilt/bin/hostapd:system/bin/hostapd \
    device/zte/Tn860/prebuilt/bin/hostapd_cli:system/bin/hostapd_cli \
    device/zte/Tn860/prebuilt/hostapd/hostapd.accept:system/hostapd/hostapd.accept \
    device/zte/Tn860/prebuilt/hostapd/hostapd.deny:system/hostapd/hostapd.deny \
    device/zte/Tn860/prebuilt/hostapd/hostapd.conf:system/hostapd/hostapd.conf \
    device/zte/Tn860/prebuilt/lib/libQWiFiSoftApCfg.so:system/lib/libQWiFiSoftApCfg.so \
    device/zte/Tn860/prebuilt/qcom/softap/hostapd_default.conf:system/qcom/softap/hostapd_default.conf

#Bluetoothe
PRODUCT_COPY_FILES += \
    device/zte/Tn860/prebuilt/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    device/zte/Tn860/prebuilt/etc/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
    device/zte/Tn860/prebuilt/bin/bt_testmode.sh:system/bin/bt_testmode.sh \
    device/zte/Tn860/prebuilt/bin/sdptool:system/bin/sdptool \
    device/zte/Tn860/prebuilt/bin/init.btprop.sh:system/bin/init.btprop.sh

#Other Stuff called in the init.Tn860.rc and stuff
PRODUCT_COPY_FILES+= \
    device/zte/Tn860/prebuilt/bin/at-daemon:system/bin/at-daemon \
    device/zte/Tn860/prebuilt/bin/qmuxd:system/bin/qmuxd \
    device/zte/Tn860/prebuilt/bin/netmgrd:system/bin/netmgrd \
    device/zte/Tn860/prebuilt/etc/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
    device/zte/Tn860/prebuilt/etc/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
    device/zte/Tn860/prebuilt/bin/getlogtofile:system/bin/getlogtofile \
    device/zte/Tn860/prebuilt/bin/CKPD-daemon:system/bin/CKPD-daemon \
    device/zte/Tn860/prebuilt/bin/hdmid:system/bin/hdmid \
    device/zte/Tn860/prebuilt/bin/ds_fmc_appd:system/bin/ds_fmc_appd \
    device/zte/Tn860/prebuilt/bin/sprintdiag:system/bin/sprintdiag \
    device/zte/Tn860/prebuilt/bin/sdlog:system/bin/sdlog \
    device/zte/Tn860/prebuilt/app/Sdlog.apk:system/app/Sdlog.apk \
    device/zte/Tn860/prebuilt/app/Sdlog.odex:system/app/Sdlog.odex \
    device/zte/Tn860/prebuilt/bin/DrmHost:system/bin/DrmHost


#Sensors
PRODUCT_COPY_FILES+= \
    device/zte/Tn860/prebuilt/bin/proximity.init:system/bin/proximity.init \
    device/zte/Tn860/prebuilt/bin/akmd8962:system/bin/akmd8962 \
    device/zte/Tn860/prebuilt/bin/thermald:system/bin/thermald \
    device/zte/Tn860/prebuilt/etc/thermald.conf:system/etc/thermald.conf \
    device/zte/Tn860/prebuilt/lib/hw/sensors.default.so:system/lib/hw/sensors.default.so


#Boot Animation
PRODUCT_COPY_FILES +=\
    device/zte/Tn860/prebuilt/media/bootanimation.zip:system/media/bootanimation.zip


PRODUCT_NAME := ZTE_Warp
PRODUCT_BRAND := ZTE
PRODUCT_DEVICE := Tn860
PRODUCT_MODEL := N860
PRODUCT_MANUFACTURER := ZTE
