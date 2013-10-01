
.PHONY: all zshsetup

SUBDIRS = zshsetup

all: $(SUBDIRS)
	@echo "All Done :-)"

$(SUBDIRS):
	$(MAKE) -C $@
