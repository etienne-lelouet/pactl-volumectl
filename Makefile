# dwm - dynamic window manager
# See LICENSE file for copyright and license details.

include config.mk
install: all
	mkdir -p ${DESTDIR}${PREFIX}/bin

	cp -f scripts/dwmcustom-getsink ${DESTDIR}${PREFIX}/bin
	chmod 755 ${DESTDIR}${PREFIX}/bin/dwmcustom-getsink

	cp -f scripts/dwmcustom-getvolume ${DESTDIR}${PREFIX}/bin
	chmod 755 ${DESTDIR}${PREFIX}/bin/dwmcustom-getvolume

	cp -f scripts/dwmcustom-volumectl ${DESTDIR}${PREFIX}/bin
	chmod 755 ${DESTDIR}${PREFIX}/bin/dwmcustom-volumectl

uninstall:
	rm -f ${DESTDIR}${MANPREFIX}/bin/dwmcustom-getsink\
		${DESTDIR}${MANPREFIX}/bin/dwmcustom-getvolume
		${DESTDIR}${MANPREFIX}/bin/dwmcustom-volumectl


.PHONY: all install uninstall
