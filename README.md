# PULSE-VOLUMECTL

Command line utilities to get and modify volume of a running pulseaudio server. 

- `pactl-getsink` gets the firsk running sink, or the first sink returned if none are running
- `pactl-getvolume` returns the volume or the mute status of the sink returned by getsink
- `pactl-volumectl` modified the volume or the mute status of the sink returned by getsink

## TODO

- Add a cmd line argument to `pactl-getvolume` and `pactl-volumectl` to target a specific sink, let the one returned by `pactl-getsink` be a default value:
- use getopt to have proper options
- find some way to issue a warning at compile / run time if the required utilities are not installed (is it even possible for pactl to not be installed if pulseaudio is not isntalled ?) (should be done for all utilities)


