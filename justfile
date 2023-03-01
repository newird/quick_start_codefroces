start target:
	#!/usr/bin/env fish 
	if ! test -d {{target}}  
		mkdir {{target}}
	end
	cp justfile {{target}}/justfile
	cp template.cc {{target}}/A.cc;
	cp template.cc {{target}}/B.cc;
	cp template.cc {{target}}/C.cc;
	cp template.cc {{target}}/D.cc;
	cp template.cc {{target}}/E.cc;
A: buildA testA
testA:
	./A.out
buildA:
	g++ -std=c++11 -o A.out A.cc

B: buildB testB
testB:
	./B.out
buildB:
	g++ -std=c++11 -o B.out B.cc
C: buildC testC
testC:
	./C.out
buildC:
	g++ -std=c++11 -o C.out C.cc
D: buildD testD
testD:
	./D.out
buildD:
	g++ -std=c++11 -o D.out D.cc
E: buildE testE
testE:
	./E.out
buildE:
	g++ -std=c++11 -o D.out D.cc
