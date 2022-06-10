
PMIX = $(HOME)/sfw/openpmix

INCLUDES = -I $(HOME)/proj/prrte/examples \
           -I $(PMIX)/include

CPPFLAGS = $(INCLUDES)

LIBS = -L $(PMIX)/lib -lpmix

# CC = pcc
CC = mpicc

workflow-1.x: workflow-1.o
	pcc -o $(@) $(<)

workflow-2.x: workflow-2.o
	mpicc -o $(@) $(<) $(LIBS) -Wl,-rpath -Wl,

mpi-1.x: mpi-1.o
	mpicc -o $(@) $(<) $(LIBS)

clean:
	rm -fv *.o *.x
