all:
	chmod +x ./scripts/*
	cp -f -R ./dotfiles/.* ~/
	mkdir -p ~/Pix/Bg
	cp -f ./bg/cozy_house.png ~/Pix/Bg
	doas cp -f ./scripts/* /usr/local/bin
