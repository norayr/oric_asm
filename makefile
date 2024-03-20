ORIC="/u/inky/src/not_mine/c/oricutron/oricutron"

all:
	ca65 -o test.o src/test.s
	cl65 -t atmos -o test.tap test.o

tests:
	$(ORIC) -t test.tap
