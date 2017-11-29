# vim: set noexpandtab
all:
	@echo "\nNothing to compile, you can directly run:\nsudo make install\n"

install:
	@cp -rv man/* /usr/share/man/
	@cp -v bin/* /usr/bin/
	@cp -v bash_completion/* /usr/share/bash-completion/completions/
