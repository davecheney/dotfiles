all: symlinks

symlinks: $(patsubst %.symlink,~/.%,$(wildcard *.symlink))

~/.%: %.symlink
	ln -sf ~/.dotfiles/$< $@

.PHONY: all symlinks
