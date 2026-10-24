all: symlinks

symlinks: $(patsubst %.symlink,~/.%,$(wildcard *.symlink)) $(patsubst claude/%,~/.claude/%,$(wildcard claude/*))

~/.claude/%: claude/%
	mkdir -p $(@D)
	ln -sf $(CURDIR)/$< $@

~/.%: %.symlink
	ln -sf $(CURDIR)/$< $@

.PHONY: all symlinks
