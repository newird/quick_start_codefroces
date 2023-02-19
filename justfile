start target:
	#!/usr/bin/env fish 
	if ! test -d {{target}}  
		mkdir {{target}}
	end
	set -U   CPWD $(pwd)/{{target}}
	cp template.cc {{target}}/A.cc;
	cp template.cc {{target}}/B.cc;
	cp template.cc {{target}}/C.cc;
	cp template.cc {{target}}/D.cc;
	cp template.cc {{target}}/E.cc;
A: buildA testA
testA:
	#!/usr/bin/env fish 
	$CPWD/A.out
buildA:
	#!/usr/bin/env fish 
	echo $CPWD
	cd $CPWD
	g++ -std=c++11 -o A.out A.cc

B: buildB testB
testB:
	#!/usr/bin/env fish 
	$CPWD/B.out
buildB:
	#!/usr/bin/env fish 
	echo $CPWD
	cd $CPWD
	g++ -std=c++11 -o B.out B.cc
C: buildC testC
testC:
	#!/usr/bin/env fish 
	$CPWD/C.out
buildC:
	#!/usr/bin/env fish 
	echo $CPWD
	cd $CPWD
	g++ -std=c++11 -o C.out C.cc
D: buildD testD
testD:
	#!/usr/bin/env fish 
	$CPWD/D.out
buildD:
	#!/usr/bin/env fish 
	echo $CPWD
	cd $CPWD
	g++ -std=c++11 -o D.out D.cc
E: buildE testE
testE:
	#!/usr/bin/env fish 
	$CPWD/E.out
buildE:
	#!/usr/bin/env fish 
	echo $CPWD
	cd $CPWD
	g++ -std=c++11 -o D.out D.cc
