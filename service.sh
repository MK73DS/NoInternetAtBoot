#!/system/bin/sh

# We don't know when the wifi and data services will start working during the boot process
# Therefore, we try to disable them every second until the wifi and phone processes are up and running
while [ "$(/system/bin/cmd wifi)" == "" ] || [ "$(/system/bin/cmd phone)" == "" ]
do
 sleep 1
done

/system/bin/cmd wifi set-wifi-enabled disabled
/system/bin/cmd phone data disable
