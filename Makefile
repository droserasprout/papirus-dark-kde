# GNU make is required to run this file. To install on *BSD, run:
#   gmake PREFIX=/usr/local install

PREFIX ?= /usr
IGNORE ?= firefox
THEMES ?= aurorae color-schemes firefox konsole plasma yakuake

# excludes IGNORE from THEMES list
THEMES := $(filter-out $(IGNORE), $(THEMES))

all:

install:
	mkdir -p $(DESTDIR)$(PREFIX)/share
	cp -R $(THEMES) $(DESTDIR)$(PREFIX)/share

uninstall:
	-rm -rf $(DESTDIR)$(PREFIX)/share/aurorae/themes/PapirusPark
	-rm -r  $(DESTDIR)$(PREFIX)/share/color-schemes/PapirusDark.colors
	-rm -r  $(DESTDIR)$(PREFIX)/share/konsole/PapirusDark.colorscheme
	-rm -r  $(DESTDIR)$(PREFIX)/share/konsole/PapirusDarkSolarized.colorscheme
	-rm -rf $(DESTDIR)$(PREFIX)/share/plasma/desktoptheme/ArcColor
	-rm -rf $(DESTDIR)$(PREFIX)/share/plasma/look-and-feel/com.github.droserasprout.papirus-dark
	-rm -rf $(DESTDIR)$(PREFIX)/share/yakuake/skins/papirus-dark
