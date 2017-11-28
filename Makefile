# vim: set noexpandtab
all:
	echo "Nothing to compile, you can directly run:\nsudo make install\n"

install:
	cp -rv man/* /usr/share/man/
	cp -v bin/* /usr/bin/
