SAVEDCONFPATH ?= /etc/portage/savedconfig
PATCHESPATH ?= /etc/portage/patches

all:
	cp -f -R ./dotfiles/.* ~/
	chmod +x ./scripts/*
	doas cp -f ./scripts/* /usr/local/bin

	doas mkdir -p $(SAVEDCONFPATH)/x11-terms
	doas mkdir -p $(SAVEDCONFPATH)/x11-wm
	doas mkdir -p $(PATCHESPATH)/x11-terms/st
	doas mkdir -p $(PATCHESPATH)/x11-wm/dwm

	doas cp -f ./st/st-0.9  $(SAVEDCONFPATH)/x11-terms
	doas cp -f ./dwm/dwm-6.5 $(SAVEDCONFPATH)/x11-wm
	doas cp -f ./st/patches/* $(PATCHESPATH)/x11-terms/st
	doas cp -f ./dwm/patches/* $(PATCHESPATH)/x11-wm/dwm