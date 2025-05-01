# SPDX-License-Identifier: LGPL-2.1-or-later

.PHONY: all
all: rpios-rpi64.img.gz

rpios-rpi64.img.gz: 1.20250430.tar.gz
rpios-rpi64.img.gz: rpi64.yaml
	debos $<

1.20250430.tar.gz:
%.tar.gz:
	curl -L -O https://github.com/raspberrypi/firmware/archive/1.20250430.tar.gz

.PHONY: clean
clean:
	rm -f rpios-rpi64.img.gz
