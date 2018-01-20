HOSTNAME := $(shell hostname)


default: $(HOSTNAME)
	@echo "stow $@"


fry: common laptop
	@echo "stow $@"

lili: common laptop
	@echo "stow $@"

isaac: common server
	@echo "stow $@"

tati: common server
	@echo "stow $@"

abraham: common server
	@echo "stow $@"



common:
	@echo "stow $@"
	@stow bin
	@stow emacs
	@stow git
	@stow nano
	@stow neovim
	@stow tmux
	@stow zsh

laptop:
	@echo "stow $@"
	@stow firefox
	@stow homePage
	@stow mpv
	@stow wallpaper
	@stow xcompose
	@stow zathura
	@ln -sf "${HOME}/.tmux.conf.laptop" "${HOME}/.tmux.conf"

server:
	@echo "stow $@"
	@ln -sf "${HOME}/.tmux.conf.rpi" "${HOME}/.tmux.conf"
