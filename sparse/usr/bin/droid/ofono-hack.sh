#!/usr/bin/env bash
MAXTRIES=25

seq 1 $MAXTRIES | while read i ; do
    dbus-send --system --type=method_call --print-reply --dest=org.ofono /ril_0 org.ofono.Modem.SetProperty string:Online variant:boolean:true

    if [ $? == 0 ] ; then
        echo "Success"
        exit 0
    fi
    echo "Retrying..."
    sleep 2
    if [ $i == $MAXTRIES ] ; then
        # must have gotten through all our retries, fail
        echo "Failure"
        exit 1
    fi
done
