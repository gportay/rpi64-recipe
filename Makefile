# SPDX-License-Identifier: LGPL-2.1-or-later

.PHONY: all
all: rpios-rpi64.img.gz

rpios-rpi64.img.gz: rpi64.yaml
	debos $<

.PHONY: clean
clean:
	rm -f rpios-rpi64.img.gz
