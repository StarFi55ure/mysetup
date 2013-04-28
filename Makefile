
.PHONY: all bashsetup myvim

SUBDIRS = bashsetup myvim

all: git-init $(SUBDIRS)
	@echo "All Done :-)"

git-init:
	git submodule update --recursive

$(SUBDIRS):
	$(MAKE) -C $@
