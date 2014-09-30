PREFIX = /usr/local
PROG = parse-nexpose-scan

all :: install

install :: ${PROG}
	mkdir -p ${DESTDIR}${PREFIX}/bin
	cp ${PROG} ${DESTDIR}${PREFIX}/bin/
	chmod 755 ${DESTDIR}${PREFIX}/bin/${PROG}

uninstall:
	rm -f ${DESTDIR}${PREFIX}/bin/${PROG}

.PHONY : all install uninstall
