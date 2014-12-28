all:
	echo `uname -a`
	ghc --version
	cabal --version
	ghc -o travis scripts/travis-build.hs
	./travis install
	./travis configure --enable-tests
	./travis build
	./travis test --show-details=failures
	./travis sdist