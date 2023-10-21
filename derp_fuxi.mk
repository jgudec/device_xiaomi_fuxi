#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Configure core_64_bit.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit common DerpFest configurations
$(call inherit-product, vendor/derp/config/common_full_phone.mk)

# Inherit device configurations
$(call inherit-product, device/xiaomi/fuxi/device.mk)

## Device identifier
PRODUCT_DEVICE := fuxi
PRODUCT_NAME := derp_fuxi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 2211133G
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_SYSTEM_NAME := Xiaomi 13
PRODUCT_SYSTEM_DEVICE := Xiaomi 13

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="fuxi_global-user 13 TKQ1.220905.001 V14.0.9.0.TMCMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/fuxi_global/fuxi:13/TKQ1.220905.001/V14.0.9.0.TMCMIXM:user/release-keys

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# DerpFest flags
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_BOOT_ANIMATION_RES := 1080
EXTRA_UDFPS_ANIMATIONS := true
USE_LEGACY_BOOTANIMATION := false

PRODUCT_PROPERTY_OVERRIDES +=  \
    persist.log.tag.C2K_RIL-SIM=S \
    persist.log.tag.CarrierExpressServiceImpl=S \
    persist.log.tag.CarrierExpressServiceImplExt=S \
    persist.log.tag.ccci_mdinit=S \
    persist.log.tag.CdmaMoSms=S \
    persist.log.tag.CdmaMtSms=S \
    persist.log.tag.DCT=S \
    persist.log.tag.DataDispatcher=S \
    persist.log.tag.ECCCallHelper=S \
    persist.log.tag.ECCNumUtils=S \
    persist.log.tag.ECCRetryHandler=S \
    persist.log.tag.ECCRuleHandler=S \
    persist.log.tag.ECCSwitchPhone=S \
    persist.log.tag.GsmCallTkrHlpr=S \
    persist.log.tag.GsmCdmaConn=S \
    persist.log.tag.GsmCdmaPhone=S \
    persist.log.tag.GsmConnection=S \
    persist.log.tag.IMSRILRequest=S \
    persist.log.tag.IMS_RILA=S \
    persist.log.tag.IccCardProxy=S \
    persist.log.tag.ImsApp=S \
    persist.log.tag.ImsBaseCommands=S \
    persist.log.tag.ImsCall=S \
    persist.log.tag.ImsCallProfile=S \
    persist.log.tag.ImsCallSession=S \
    persist.log.tag.ImsManager=S \
    persist.log.tag.ImsPhone=S \
    persist.log.tag.ImsPhoneBase=S \
    persist.log.tag.ImsPhoneCall=S \
    persist.log.tag.ImsService=S \
    persist.log.tag.ImsVTProvider=S \
    persist.log.tag.IsimFileHandler=S \
    persist.log.tag.IsimRecords=S \
    persist.log.tag.MGsmSMSDisp=S \
    persist.log.tag.MSimSmsIStatus=S \
    persist.log.tag.MSmsStorageMtr=S \
    persist.log.tag.MSmsUsageMtr=S \
    persist.log.tag.MtkConSmsFwk=S \
    persist.log.tag.MtkCsimFH=S \
    persist.log.tag.MtkDupSmsFilter=S \
    persist.log.tag.MtkGsmCdmaConn=S \
    persist.log.tag.MtkGsmCdmaPhone=S \
    persist.log.tag.MtkIccSmsIntMgr=S \
    persist.log.tag.MtkImsManager=S \
    persist.log.tag.MtkImsService=S \
    persist.log.tag.MtkIsimFH=S \
    persist.log.tag.MtkPhoneNotifr=S \
    persist.log.tag.MtkPhoneNumberUtils=S \
    persist.log.tag.MtkRILJ=S \
    persist.log.tag.MtkRadioInd=S \
    persist.log.tag.MtkRadioResp=S \
    persist.log.tag.MtkRetryManager=S \
    persist.log.tag.MtkRuimFH=S \
    persist.log.tag.MtkSIMFH=S \
    persist.log.tag.MtkSIMRecords=S \
    persist.log.tag.MtkSmsCbHeader=S \
    persist.log.tag.MtkSmsManager=S \
    persist.log.tag.MtkSmsMessage=S \
    persist.log.tag.MtkSpnOverride=S \
    persist.log.tag.MtkSubCtrl=S \
    persist.log.tag.MtkUiccCardApp=S \
    persist.log.tag.MtkUiccCtrl=S \
    persist.log.tag.MtkUsimFH=S \
    persist.log.tag.Mtk_RIL_ImsSms=S \
    persist.log.tag.NetAgentService=S \
    persist.log.tag.NetAgent_IO=S \
    persist.log.tag.NetLnkEventHdlr=S \
    persist.log.tag.Phone=S \
    persist.log.tag.PhoneConfigurationSettings=S \
    persist.log.tag.PhoneFactory=S \
    persist.log.tag.PowerHalAddressUitls=S \
    persist.log.tag.PowerHalMgrImpl=S \
    persist.log.tag.PowerHalMgrServiceImpl=S \
    persist.log.tag.PowerHalWifiMonitor=S \
    persist.log.tag.PowerWrap=S \
    persist.log.tag.ProxyController=S \
    persist.log.tag.RIL-SIM=S \
    persist.log.tag.RILMUXD=S \
    persist.log.tag.RP_DAC=S \
    persist.log.tag.RP_DC=S \
    persist.log.tag.RadioManager=S \
    persist.log.tag.RetryManager=S \
    persist.log.tag.RilMalClient=S \
    persist.log.tag.RmcCdmaSimUrc=S \
    persist.log.tag.RmcOemHandler=S \
    persist.log.tag.RpMalController=S \
    persist.log.tag.RpModemMessage=S \
    persist.log.tag.RpRadioMessage=S \
    persist.log.tag.RpRilClientCtrl=S \
    persist.log.tag.RpSimController=S \
    persist.log.tag.RtcImsConference=S \
    persist.log.tag.RtcNwCtrl=S \
    persist.log.tag.RtcRadioCont=S \
    persist.log.tag.SIMRecords=S \
    persist.log.tag.SpnOverride=S \
    persist.log.tag.StNfcHal=S \
    persist.log.tag.SuppMsgMgr=S \
    persist.log.tag.thermal_repeater=S \
    persist.log.tag.TeleConfCtrler=S \
    persist.log.tag.TeleConnService=S \
    persist.log.tag.TelephonyConf=S \
    persist.log.tag.TelephonyConn=S \
    persist.log.tag.UiccCard=S \
    persist.log.tag.UiccController=S \
    persist.log.tag.UxUtility=S \
    persist.log.tag.VT=S \
    persist.log.tag.VsimAdaptor=S \
    persist.log.tag.legacy_power@2.1-impl=S \
    persist.log.tag.libPowerHal=S \
    persist.log.tag.mtkperf_client=S \
    persist.log.tag.mtkpower@1.0-impl=S \
    persist.log.tag.power@1.3-impl=S \
    persist.log.tag.powerd=S \
    persist.log.tag.GED=S \
    persist.log.tag.hwcomposer=S \
    persist.log.tag.netd=S \
    persist.log.tag.gralloc4=S \
    persist.log.tag.MDP=S \
    persist.log.tag.BufferQueueDump=S \
    persist.log.tag.BufferQueueProducer=S \
    persist.log.tag.SurfaceControl=S \
    persist.log.tag.GraphicBuffer=S

# Etar
PRODUCT_PACKAGES += \
    Etar