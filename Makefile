SAVEDCONF ?= /etc/portage/savedconfig
PATCHES ?= /etc/portage/patches

all:
	chmod +x ./scripts/*
	cp -f -R ./dotfiles/.* ~/
	feh --bg-scale ./bg/purple_city.png
	doas cp -f ./scripts/* /usr/local/bin
	doas mkdir -p $(SAVEDCONF)/x11-terms
	doas mkdir -p $(SAVEDCONF)/x11-wm
	doas mkdir -p $(PATCHES)/x11-terms/st
	doas mkdir -p $(PATCHES)/x11-wm/dwm
	doas cp -f ./st/st-0.9  $(SAVEDCONF)/x11-terms
	doas cp -f ./dwm/dwm-6.4 $(SAVEDCONF)/x11-wm
	doas cp -f ./st/patches/* $(PATCHES)/x11-terms/st
	doas cp -f ./dwm/patches/* $(PATCHES)/x11-wm/dwm
