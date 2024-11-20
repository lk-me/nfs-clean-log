PRJ=nfs-clean-log
PWD=$(shell pwd)

install-file:
	@mkdir -p  ${DESTDIR}/etc/systemd/system/
	@cp -f ${PWD}/cleanup_logs.service   ${DESTDIR}/etc/systemd/system/
	@mkdir -p  ${DESTDIR}/usr/sbin
	@cp -f ${PWD}/cleanup_logs.sh   ${DESTDIR}/usr/sbin

install: install-file


clean:
