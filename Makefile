all: symlinks

symlinks: $(patsubst %.symlink,~/.%,$(wildcard *.symlink))

~/.%: %.symlink
	ln -sf $(CURDIR)/$< $@

.PHONY: all symlinks
