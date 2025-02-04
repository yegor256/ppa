a.out: lex.yy.c
	gcc -o a.out foo.tab.c lex.yy.c

lex.yy.c: foo.tab.h
	flex foo.x

foo.tab.h:
	bison -d foo.y
