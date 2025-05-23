include $(AUDIO_HAL_DIR)/configs/anorak/audio-modules.mk
include $(AUDIO_HAL_DIR)/configs/audio-generic-modules.mk
include vendor/qcom/opensource/audio-kernel/audio_kernel_modules.mk


.PHONY: audio_tp audio_tp_hal audio_tp_dlkm

audio_tp: audio_tp_hal audio_tp_dlkm

audio_tp_hal: $(AUDIO_MODULES) $(AUDIO_GENERIC_MODULES)

audio_tp_dlkm: $(AUDIO_KERNEL_MODULES)
