#
## Makefile for nexus 6P
#
#
## The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip

# All vendor apks needed
local-phone-apps := NfcNci PrintSpooler PacProcessor CertInstaller KeyChain \
	Stk qcrilmsgtunnel TimeService UserDictionaryProvider Bluetooth BluetoothMidiService \
	webview telresources \

local-phone-priv-apps := Shell FusedLocation ProxyHandler ExternalStorageProvider Tag \
	SharedStorageBackup InputDevices CellBroadcastReceiver BackupRestoreConfirmation \
	CMSettingsProvider \

local-modified-jars := org.cyanogenmod.platform

local-miui-modified-apps := TeleService Provision

local-density := XXXHDPI
local-target-bit := 64

include $(PORT_BUILD)/porting.mk

$(local-zip-file):
	$(hide) cat partrom/stockrom* > $@
	$(hide) touch .delete-zip-file-when-clean

pre-zip-misc:
	$(TOOLS_DIR)/post_process_props.py out/ZIP/system/build.prop metadata/build.prop
