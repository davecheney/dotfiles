all: symlinks

symlinks: $(patsubst %.symlink,~/.%,$(wildcard *.symlink))

~/.%: %.symlink
ifeq ($(CODESPACES),true)
	ln -f $(CURDIR)/$< $@
else
	ln -sf $(CURDIR)/$< $@
endif

.PHONY: all symlinks
