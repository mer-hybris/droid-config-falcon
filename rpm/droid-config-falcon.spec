# These and other macros are documented in
# ../droid-configs-device/droid-configs.inc
%define device falcon
%define vendor motorola
%define vendor_pretty Motorola
%define device_pretty Moto-G (2013)
%define dcd_path ./
# Adjust this for your device
%define pixel_ratio 1.33

# We assume most devices will
%define have_modem 1

Provides: bluez-configs
Conflicts: bluez-configs-sailfish
Obsoletes: bluez-configs-sailfish

Provides: obexd-configs
Conflicts: obexd-configs-sailfish
Obsoletes: obexd-configs-sailfish
 
%include droid-configs-device/droid-configs.inc
