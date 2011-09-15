
.PHONY: all bashsetup myvim

SUBDIRS = bashsetup myvim
all: $(SUBDIRS)
	@echo "All Done :-)"

$(SUBDIRS):
	$(MAKE) -C $@
