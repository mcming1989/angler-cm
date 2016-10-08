#
## Makefile for nexus 6P
#
#
## The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip

# All vendor apks needed
local-phone-apps := NfcNci PrintSpooler PacProcessor CertInstaller KeyChain \
	Stk qcrilmsgtunnel TimeService UserDictionaryProvider Bluetooth BluetoothMidiService \
	webview \

local-phone-priv-apps := Shell FusedLocation ProxyHandler ExternalStorageProvider Tag \
	SharedStorageBackup InputDevices CellBroadcastReceiver BackupRestoreConfirmation \
	CMSettingsProvider \

local-density := XXXHDPI
local-target-bit := 64

include $(PORT_BUILD)/porting.mk

pre-zip-misc:
