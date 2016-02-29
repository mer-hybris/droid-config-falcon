#!/usr/bin/env bash

# surfaceflinger needs to run for a bit, in order for sailfish graphics to work
# very weird, proper solution needed
/system/bin/surfaceflinger &
sleep 5
killall surfaceflinger