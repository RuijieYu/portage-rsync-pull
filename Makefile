prefix = /usr/local
bindir = $(prefix)/bin

.PHONY: all
all: sync; 			# no-op

.PHONY: install
install: sync
	install -Dvm0755 $< $(DESTDIR)$(bindir)/portage-rsync-pull
