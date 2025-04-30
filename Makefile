# SPDX-License-Identifier: LGPL-2.1-or-later

.PHONY: all
all: debian-rpi64.img.gz

debian-rpi64.img.gz: rpi64.yaml
	debos $<

.PHONY: clean
clean:
	rm -f debian-rpi64.img.gz
