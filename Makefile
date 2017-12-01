# vim: set noexpandtab
#
# @project su-git
# @author  yannoff
# @license MIT
#
all:
	@sh ./install.sh
	@echo "\nNow you can run:\nsudo make install\n"

install:
	@cp -rv man/* /usr/share/man/
	@cp -v bin/* /usr/bin/
	@cp -v bash_completion/* /usr/share/bash-completion/completions/
