all:
	chmod +x ./scripts/*
	cp -f -R ./dotfiles/.* ~/
	doas cp -f ./scripts/* /usr/local/bin
