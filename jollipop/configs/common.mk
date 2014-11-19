# Brand
PRODUCT_BRAND ?= jollipop

# Local path for prebuilts
LOCAL_PATH:= vendor/jollipop/prebuilts/common/system

# Common build prop overrides 
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.gms \
    ro.setupwizard.enterprise_mode=1 \
    keyguard.no_require_sim=true \
    ro.facelock.black_timeout=400 \
    ro.facelock.det_timeout=1500 \
    ro.facelock.rec_timeout=2500 \
    ro.facelock.lively_timeout=2500 \
    ro.facelock.est_max_time=600 \
    ro.facelock.use_intro_anim=false

# Common overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/jollipop/overlays/common

# Embed SuperUser
SUPERUSER_EMBEDDED := true

# Required packages
PRODUCT_PACKAGES += \
    Superuser \
    su

#####Add in Google Apps#####

# Add /app
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/app/Calendar/Calendar.apk:system/app/Calendar/Calendar.apk \
	$(LOCAL_PATH)/app/Chrome/Chrome.apk:system/app/Chrome/Chrome.apk \
	$(LOCAL_PATH)/app/Chrome/lib/arm/libchrome.1847.114.so:system/app/Chrome/lib/arm/libchrome.1847.114.so \
	$(LOCAL_PATH)/app/Chrome/lib/arm/libchrome.1916.122.so:system/app/Chrome/lib/arm/libchrome.1916.122.so \
	$(LOCAL_PATH)/app/Chrome/lib/arm/libchrome.1916.138.so:system/app/Chrome/lib/arm/libchrome.1916.138.so \
	$(LOCAL_PATH)/app/Chrome/lib/arm/libchrome.1916.141.so:system/app/Chrome/lib/arm/libchrome.1916.141.so \
	$(LOCAL_PATH)/app/Chrome/lib/arm/libchrome.1985.122.so:system/app/Chrome/lib/arm/libchrome.1985.122.so \
	$(LOCAL_PATH)/app/Chrome/lib/arm/libchrome.1985.128.so:system/app/Chrome/lib/arm/libchrome.1985.128.so \
	$(LOCAL_PATH)/app/Chrome/lib/arm/libchrome.1985.131.so:system/app/Chrome/lib/arm/libchrome.1985.131.so \
	$(LOCAL_PATH)/app/Chrome/lib/arm/libchrome.1985.135.so:system/app/Chrome/lib/arm/libchrome.1985.135.so \
	$(LOCAL_PATH)/app/Chrome/lib/arm/libchrome.2062.117.so:system/app/Chrome/lib/arm/libchrome.2062.117.so \
	$(LOCAL_PATH)/app/Chrome/lib/arm/libchrome.2125.114.so:system/app/Chrome/lib/arm/libchrome.2125.114.so \
	$(LOCAL_PATH)/app/Chrome/lib/arm/libchromium_android_linker.so:system/app/Chrome/lib/arm/libchromium_android_linker.so \
	$(LOCAL_PATH)/app/CloudPrint2/CloudPrint2.apk:system/app/CloudPrint2/CloudPrint2.apk \
	$(LOCAL_PATH)/app/ConfigUpdater/ConfigUpdater.apk:system/app/ConfigUpdater/ConfigUpdater.apk \
	$(LOCAL_PATH)/app/Exchange3/Exchange3.apk:system/app/Exchange3/Exchange3.apk \
	$(LOCAL_PATH)/app/Gmail2/Gmail2.apk:system/app/Gmail2/Gmail2.apk \
	$(LOCAL_PATH)/app/GoogleCalendarSyncAdapter/GoogleCalendarSyncAdapter.apk:system/app/GoogleCalendarSyncAdapter/GoogleCalendarSyncAdapter.apk \
	$(LOCAL_PATH)/app/GoogleCamera/GoogleCamera.apk:system/app/GoogleCamera/GoogleCamera.apk \
	$(LOCAL_PATH)/app/GoogleCamera/lib/arm/libgcam.so:system/app/GoogleCamera/lib/arm/libgcam.so \
	$(LOCAL_PATH)/app/GoogleCamera/lib/arm/libgcam_swig_jni.so:system/app/GoogleCamera/lib/arm/libgcam_swig_jni.so \
	$(LOCAL_PATH)/app/GoogleCamera/lib/arm/libjni_jpegutil.so:system/app/GoogleCamera/lib/arm/libjni_jpegutil.so \
	$(LOCAL_PATH)/app/GoogleCamera/lib/arm/libjni_tinyplanet.so:system/app/GoogleCamera/lib/arm/libjni_tinyplanet.so \
	$(LOCAL_PATH)/app/GoogleCamera/lib/arm/libjpeg.so:system/app/GoogleCamera/lib/arm/libjpeg.so \
	$(LOCAL_PATH)/app/GoogleCamera/lib/arm/liblightcycle.so:system/app/GoogleCamera/lib/arm/liblightcycle.so \
	$(LOCAL_PATH)/app/GoogleCamera/lib/arm/libnativehelper_compat_libc++.so:system/app/GoogleCamera/lib/arm/libnativehelper_compat_libc++.so \
	$(LOCAL_PATH)/app/GoogleCamera/lib/arm/librefocus.so:system/app/GoogleCamera/lib/arm/librefocus.so \
	$(LOCAL_PATH)/app/GoogleCamera/lib/arm/librs.layered_filter_f32.so:system/app/GoogleCamera/lib/arm/librs.layered_filter_f32.so \
	$(LOCAL_PATH)/app/GoogleCamera/lib/arm/librs.layered_filter_fast_f32.so:system/app/GoogleCamera/lib/arm/librs.layered_filter_fast_f32.so \
	$(LOCAL_PATH)/app/GoogleCamera/lib/arm/librsjni.so:system/app/GoogleCamera/lib/arm/librsjni.so \
	$(LOCAL_PATH)/app/GoogleCamera/lib/arm/libRSSupport.so:system/app/GoogleCamera/lib/arm/libRSSupport.so \
	$(LOCAL_PATH)/app/GoogleContactsSyncAdapter/GoogleContactsSyncAdapter.apk:system/app/GoogleContactsSyncAdapter/GoogleContactsSyncAdapter.apk \
	$(LOCAL_PATH)/app/GoogleHome/GoogleHome.apk:system/app/GoogleHome/GoogleHome.apk \
	$(LOCAL_PATH)/app/GoogleTTS/GoogleTTS.apk:system/app/GoogleTTS/GoogleTTS.apk \
	$(LOCAL_PATH)/app/GoogleTTS/lib/arm/libpatts_engine_jni_api.so:system/app/GoogleTTS/lib/arm/libpatts_engine_jni_api.so \
	$(LOCAL_PATH)/app/GoogleTTS/lib/arm/libspeexwrapper.so:system/app/GoogleTTS/lib/arm/libspeexwrapper.so \
	$(LOCAL_PATH)/app/LatinImeGoogle/LatinImeGoogle.apk:system/app/LatinImeGoogle/LatinImeGoogle.apk \
	$(LOCAL_PATH)/app/Maps/Maps.apk:system/app/Maps/Maps.apk \
	$(LOCAL_PATH)/app/Maps/lib/arm/libcrashreporter.so:system/app/Maps/lib/arm/libcrashreporter.so \
	$(LOCAL_PATH)/app/Maps/lib/arm/libgmm-jni.so:system/app/Maps/lib/arm/libgmm-jni.so \
	$(LOCAL_PATH)/app/Music2/Music2.apk:system/app/Music2/Music2.apk \
	$(LOCAL_PATH)/app/PlusOne/PlusOne.apk:system/app/PlusOne/PlusOne.apk \
	$(LOCAL_PATH)/app/PlusOne/lib/arm/libcrashreporter.so:system/app/PlusOne/lib/arm/libcrashreporter.so \
	$(LOCAL_PATH)/app/PlusOne/lib/arm/libcronet.so:system/app/PlusOne/lib/arm/libcronet.so \
	$(LOCAL_PATH)/app/PlusOne/lib/arm/libfilterframework_jni.so:system/app/PlusOne/lib/arm/libfilterframework_jni.so \
	$(LOCAL_PATH)/app/PlusOne/lib/arm/libmoviemaker-jni.so:system/app/PlusOne/lib/arm/libmoviemaker-jni.so \
	$(LOCAL_PATH)/app/PlusOne/lib/arm/libphotoeditor_native.so:system/app/PlusOne/lib/arm/libphotoeditor_native.so \
	$(LOCAL_PATH)/app/PlusOne/lib/arm/libwebp_android.so:system/app/PlusOne/lib/arm/libwebp_android.so \
	$(LOCAL_PATH)/app/Keep/Keep.apk:system/app/Keep/Keep.apk \
	$(LOCAL_PATH)/app/Street/Street.apk:system/app/Street/Street.apk \
	$(LOCAL_PATH)/app/YouTube/YouTube.apk:system/app/YouTube/YouTube.apk \
	$(LOCAL_PATH)/app/YouTube/lib/arm/libcronet.so:system/app/YouTube/lib/arm/libcronet.so \
	$(LOCAL_PATH)/app/YouTube/lib/arm/libm2ts_player.so:system/app/YouTube/lib/arm/libm2ts_player.so

# Add /etc
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/etc/g.prop:system/etc/g.prop \
	$(LOCAL_PATH)/etc/permissions/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
	$(LOCAL_PATH)/etc/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml \
	$(LOCAL_PATH)/etc/permissions/com.google.widevine.software.drm.xml:system/etc/permissions/com.google.widevine.software.drm.xml

# Add /framework
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/framework/com.google.android.maps.jar:system/framework/com.google.android.maps.jar \
	$(LOCAL_PATH)/framework/com.google.android.media.effects.jar:system/framework/com.google.android.media.effects.jar \
	$(LOCAL_PATH)/framework/com.google.widevine.software.drm.jar:system/framework/com.google.widevine.software.drm.jar

# Add /lib
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/lib/libfilterpack_facedetect.so:system/lib/libfilterpack_facedetect.so \
	$(LOCAL_PATH)/lib/libjni_latinimegoogle.so:system/lib/libjni_latinimegoogle.so

# Add /priv-app
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/priv-app/GmsCore/GmsCore.apk:system/priv-app/GmsCore/GmsCore.apk \
	$(LOCAL_PATH)/priv-app/GmsCore/lib/arm/libAppDataSearch.so:system/priv-app/GmsCore/lib/arm/libAppDataSearch.so \
	$(LOCAL_PATH)/priv-app/GmsCore/lib/arm/libconscrypt_gmscore_jni.so:system/priv-app/GmsCore/lib/arm/libconscrypt_gmscore_jni.so \
	$(LOCAL_PATH)/priv-app/GmsCore/lib/arm/libgames_rtmp_jni.so:system/priv-app/GmsCore/lib/arm/libgames_rtmp_jni.so \
	$(LOCAL_PATH)/priv-app/GmsCore/lib/arm/libgcastv2_base.so:system/priv-app/GmsCore/lib/arm/libgcastv2_base.so \
	$(LOCAL_PATH)/priv-app/GmsCore/lib/arm/libgcastv2_support.so:system/priv-app/GmsCore/lib/arm/libgcastv2_support.so \
	$(LOCAL_PATH)/priv-app/GmsCore/lib/arm/libgms-ocrclient.so:system/priv-app/GmsCore/lib/arm/libgms-ocrclient.so \
	$(LOCAL_PATH)/priv-app/GmsCore/lib/arm/libgmscore.so:system/priv-app/GmsCore/lib/arm/libgmscore.so \
	$(LOCAL_PATH)/priv-app/GmsCore/lib/arm/libjgcastservice.so:system/priv-app/GmsCore/lib/arm/libjgcastservice.so \
	$(LOCAL_PATH)/priv-app/GmsCore/lib/arm/libWhisper.so:system/priv-app/GmsCore/lib/arm/libWhisper.so \
	$(LOCAL_PATH)/priv-app/GoogleBackupTransport/GoogleBackupTransport.apk:system/priv-app/GoogleBackupTransport/GoogleBackupTransport.apk \
	$(LOCAL_PATH)/priv-app/GoogleFeedback/GoogleFeedback.apk:system/priv-app/GoogleFeedback/GoogleFeedback.apk \
	$(LOCAL_PATH)/priv-app/GoogleLoginService/GoogleLoginService.apk:system/priv-app/GoogleLoginService/GoogleLoginService.apk \
	$(LOCAL_PATH)/priv-app/GoogleOneTimeInitializer/GoogleOneTimeInitializer.apk:system/priv-app/GoogleOneTimeInitializer/GoogleOneTimeInitializer.apk \
	$(LOCAL_PATH)/priv-app/GooglePartnerSetup/GooglePartnerSetup.apk:system/priv-app/GooglePartnerSetup/GooglePartnerSetup.apk \
	$(LOCAL_PATH)/priv-app/GoogleServicesFramework/GoogleServicesFramework.apk:system/priv-app/GoogleServicesFramework/GoogleServicesFramework.apk \
	$(LOCAL_PATH)/priv-app/Messenger/Messenger.apk:system/priv-app/Messenger/Messenger.apk \
	$(LOCAL_PATH)/priv-app/Phonesky/Phonesky.apk:system/priv-app/Phonesky/Phonesky.apk \
	$(LOCAL_PATH)/priv-app/SetupWizard/SetupWizard.apk:system/priv-app/SetupWizard/SetupWizard.apk \
	$(LOCAL_PATH)/priv-app/talkback/talkback.apk:system/priv-app/talkback/talkback.apk \
	$(LOCAL_PATH)/priv-app/Velvet/Velvet.apk:system/priv-app/Velvet/Velvet.apk \
	$(LOCAL_PATH)/priv-app/Velvet/lib/arm/libgoogle_hotword_jni.so:system/priv-app/Velvet/lib/arm/libgoogle_hotword_jni.so \
	$(LOCAL_PATH)/priv-app/Velvet/lib/arm/libgoogle_recognizer_jni_l.so:system/priv-app/Velvet/lib/arm/libgoogle_recognizer_jni_l.so \
	$(LOCAL_PATH)/priv-app/Velvet/lib/arm/libvcdecoder_jni.so:system/priv-app/Velvet/lib/arm/libvcdecoder_jni.so

# Add /usr
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/usr/srec/en-US/c_fst:system/usr/srec/en-US/c_fst \
	$(LOCAL_PATH)/usr/srec/en-US/clg:system/usr/srec/en-US/clg \
	$(LOCAL_PATH)/usr/srec/en-US/commands.abnf:system/usr/srec/en-US/commands.abnf \
	$(LOCAL_PATH)/usr/srec/en-US/compile_grammar.config:system/usr/srec/en-US/compile_grammar.config \
	$(LOCAL_PATH)/usr/srec/en-US/contacts.abnf:system/usr/srec/en-US/contacts.abnf \
	$(LOCAL_PATH)/usr/srec/en-US/dict:system/usr/srec/en-US/dict \
	$(LOCAL_PATH)/usr/srec/en-US/dictation.config:system/usr/srec/en-US/dictation.config \
	$(LOCAL_PATH)/usr/srec/en-US/dnn:system/usr/srec/en-US/dnn \
	$(LOCAL_PATH)/usr/srec/en-US/endpointer_dictation.config:system/usr/srec/en-USendpointer_dictation.config/ \
	$(LOCAL_PATH)/usr/srec/en-US/endpointer_voicesearch.config:system/usr/srec/en-US/endpointer_voicesearch.config \
	$(LOCAL_PATH)/usr/srec/en-US/ep_acoustic_model:system/usr/srec/en-US/ep_acoustic_model \
	$(LOCAL_PATH)/usr/srec/en-US/g2p_fst:system/usr/srec/en-US/g2p_fst \
	$(LOCAL_PATH)/usr/srec/en-US/grammar.config:system/usr/srec/en-US/grammar.config \
	$(LOCAL_PATH)/usr/srec/en-US/hclg_shotword:system/usr/srec/en-US/hclg_shotword \
	$(LOCAL_PATH)/usr/srec/en-US/hmm_symbols:system/usr/srec/en-US/hmm_symbols \
	$(LOCAL_PATH)/usr/srec/en-US/hmmlist:system/usr/srec/en-US/hmmlist \
	$(LOCAL_PATH)/usr/srec/en-US/hotword_classifier:system/usr/srec/en-US/hotword_classifier \
	$(LOCAL_PATH)/usr/srec/en-US/hotword_normalizer:system/usr/srec/en-US/hotword_normalizer \
	$(LOCAL_PATH)/usr/srec/en-US/hotword_prompt.txt:system/usr/srec/en-US/hotword_prompt.txt \
	$(LOCAL_PATH)/usr/srec/en-US/hotword_word_symbols:system/usr/srec/en-US/hotword_word_symbols \
	$(LOCAL_PATH)/usr/srec/en-US/hotword.config:system/usr/srec/en-US/hotword.config \
	$(LOCAL_PATH)/usr/srec/en-US/metadata:system/usr/srec/en-US/metadata \
	$(LOCAL_PATH)/usr/srec/en-US/norm_fst:system/usr/srec/en-US/norm_fst \
	$(LOCAL_PATH)/usr/srec/en-US/normalizer:system/usr/srec/en-US/normalizer \
	$(LOCAL_PATH)/usr/srec/en-US/offensive_word_normalizer:system/usr/srec/en-US/offensive_word_normalizer \
	$(LOCAL_PATH)/usr/srec/en-US/phone_state_map:system/usr/srec/en-US/phone_state_map \
	$(LOCAL_PATH)/usr/srec/en-US/phonelist:system/usr/srec/en-US/phonelist \
	$(LOCAL_PATH)/usr/srec/en-US/rescoring_lm:system/usr/srec/en-US/rescoring_lm \
	$(LOCAL_PATH)/usr/srec/en-US/wordlist:system/usr/srec/en-US/wordlist

# Enable sip+voip on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Blobs for media effects
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/vendor/media/LMspeed_508.emd:system/vendor/media/LMspeed_508.emd \
    $(LOCAL_PATH)/vendor/media/PFFprec_600.emd:system/vendor/media/PFFprec_600.emd

# Backuptool support
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/addon.d/50-jollipop.sh:system/addon.d/50-jollipop.sh \
    $(LOCAL_PATH)/bin/backuptool.functions:system/bin/backuptool.functions \
    $(LOCAL_PATH)/bin/backuptool.sh:system/bin/backuptool.sh

# Bootanimation support
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/media/bootanimation.zip:system/media/bootanimation.zip