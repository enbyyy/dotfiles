all:
	chmod +x ./scripts/*
	cp -f -R ./dotfiles/.* ~/
	doas cp -f ./bg/cozy_house.png /usr/share/hyprland/wall0.png
	doas cp -f ./scripts/* /usr/local/bin
