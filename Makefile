all:
	chmod +x ./scripts/*
	cp -f -R ./dotfiles/.* ~/
	feh --bg-scale ./bg/cozy_house.png
	doas cp -f ./scripts/* /usr/local/bin
