# dwm - dynamic window manager
# See LICENSE file for copyright and license details.

include config.mk
install: all
	mkdir -p ${DESTDIR}${PREFIX}/bin

	cp -f pactl-getsink ${DESTDIR}${PREFIX}/bin
	chmod 755 ${DESTDIR}${PREFIX}/bin/pactl-getsink

	cp -f pactl-getvolume ${DESTDIR}${PREFIX}/bin
	chmod 755 ${DESTDIR}${PREFIX}/bin/pactl-getvolume

	cp -f pactl-volumectl ${DESTDIR}${PREFIX}/bin
	chmod 755 ${DESTDIR}${PREFIX}/bin/pactl-volumectl

uninstall:
	rm -f ${DESTDIR}${PREFIX}/bin/dwmcustom-getsink\
		${DESTDIR}${PREFIX}/bin/dwmcustom-getvolume\
		${DESTDIR}${PREFIX}/bin/dwmcustom-volumectl


.PHONY: all install uninstall
