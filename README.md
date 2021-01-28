# PULSE-VOLUMECTL

Command line utilities to get and modify volume of a running pulseaudio server. 

- `pactl-getsink` gets the firsk running sink, or the first sink returned if none are running
- `pactl-getvolume` returns the volume or the mute status of the sink returned by getsink
- `pactl-volumectl` modified the volume or the mute status of the sink returned by getsink

## TODO

- Add a cmd line argument to `pactl-getvolume` and `pactl-volumectl` to target a specific sink, let the one returned by `pactl-getsink` be a default value
- your idea goes there