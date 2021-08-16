all: symlinks

symlinks: $(patsubst %.symlink,~/.%,$(wildcard *.symlink))

~/.%: %.symlink
ifeq ($(CODESPACES),true)
	ln -f ~/.dotfiles/$< $@
else
	ln -sf ~/.dotfiles/$< $@
endif

.PHONY: all symlinks
