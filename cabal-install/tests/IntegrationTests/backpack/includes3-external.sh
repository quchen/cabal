#!/bin/sh
. ./common.sh

require_ghc_ge 801

cd includes3
mv cabal.project.external cabal.project
cabal new-build exe
dist-newstyle/build/*/*/exe-*/c/exe/build/exe/exe | fgrep "fromList [(0,2),(2,4)]"
