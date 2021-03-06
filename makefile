#
# Makefile for nypone
#
# The original zip file, MUST be specified by each product

local-zip-file     := stockrom.zip

# The output zip file of MIUI rom, the default is porting_miui.zip if not specified
local-out-zip-file := MIUI_`date '+%d.%b.%Y-%H.%M.%S'`_nypon.zip

# the location for local-ota to save target-file
# local-previous-target-dir := ~/workspace/ota_base/nypone_4.1

# All apps from original ZIP, but has smali files chanded
local-modified-apps :=

local-modified-jars :=

# All apks from MIUI
local-miui-removed-apps := MediaProvider Bluetooth

local-miui-modified-apps := Settings Mms ThemeManager

# Config density for co-developers to use the aaps with HDPI or XHDPI resource,
# Default configrations are HDPI for ics branch and XHDPI for jellybean branch
local-density := HDPI

include phoneapps.mk

# To include the local targets before and after zip the final ZIP file, 
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := 
local-after-zip:= 

# The local targets after the zip file is generated, could include 'zip2sd' to 
# deliver the zip file to phone, or to customize other actions
export PORT_ROOT=/home/sijav/patchrom
export PORT_TOOLS=/home/sijav/patchrom/tools
include $(PORT_BUILD)/porting.mk

# To define any local-target
