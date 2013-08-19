FILES := vimrc gvimrc

INSTALL_DIR := ${HOME}

LINKS := $(addprefix ${INSTALL_DIR}/., ${FILES})

.PHONY: install
install: $(LINKS)

${INSTALL_DIR}/.% : %
	ln -s $(PWD)/$< $@

.PHONY: clean
clean:
	rm -rf $(LINKS)
