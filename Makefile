dplldfy:
	dafny /compileTarget:cs /spillTargetCode:1 /compile:2 main.dfy file_input.cs

dpllcpp: dpll.cpp dimacs.cpp dimacs.h
	g++ -Wall -O2 -o dpllcpp dpll.cpp dimacs.cpp

dpllcs:
	csc dpll.cs

clean:
	rm -f *.dll solver/*.dll *.dll.mdb solver/*.dll.mdb main.cs main.exe.mdb
