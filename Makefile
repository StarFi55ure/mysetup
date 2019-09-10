
.PHONY: all zshsetup

SUBDIRS = zshsetup

all: $(SUBDIRS)
	@echo "All Done :-)"

bootstrap:
	$(MAKE) -C zshsetup bootstrap
	@echo "Bootstrap done"
	

$(SUBDIRS):
	$(MAKE) -C $@

