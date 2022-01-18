# PULSE-VOLUMECTL

Command line utilities to get and modify volume of a running pulseaudio server. 

- `pactl-getsink` gets the first available sink, or if the -n flag is passed the description of the sink whose id is stored in /tmp/pactl-volumectl-sink
- `pactl-getvolume` returns the volume or the mute status of the sink whose id is stored in /tmp/pactl-volumectl-sink
- `pactl-volumectl` modifies the volume or the mute status of the sink whose id is stored in /tmp/pactl-volumectl-sink, or changes that sink

Running `pactl-volumectl` with the `-d` flag will send a notification containing the updated volume through dbus.

## TODO

- Make the sink toggle work on more than two sinks (required having more state, as for now the sink is selected by `pactl-getsink | grep -v \[the current sinks\] | sed -n '1p'`
