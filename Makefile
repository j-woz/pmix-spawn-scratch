
PMIX = $(HOME)/sfw/openpmix

INCLUDES = -I $(HOME)/proj/prrte/examples \
           -I $(PMIX)/include

CPPFLAGS = $(INCLUDES)

LIBS = -L $(PMIX)/lib -lpmix

# CC = pcc
CC = mpicc

%.x: %.o
	$(CC) -o $(@) $(<) $(LIBS)

clean:
	rm -fv *.o *.x
