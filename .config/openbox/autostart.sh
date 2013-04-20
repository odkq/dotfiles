# This is launched by openbox each time a session is started
xinput set-int-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation" 8 1 &
xinput set-int-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Button" 8 2 &
xinput set-int-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Axes" 8 6 7 4 5 &
# Disable touchpad on the Thinpad T400 (probably in others as well)
# I disable this because i always use the trackpoint
# but sometimes i touch it by mistake
synclient TouchpadOff=1
# For volume keys and such
xbindkeys &
# Boot Jamie Zawinsky's legacy
xscreensaver &
# A panel for good times (see .config/fbpanel/default for configuration)
TZ='Europe/Madrid' fbpanel &
# What's XFree86 worth without an xterm?
xterm &
