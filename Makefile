
INCLUDES = -I $(HOME)/proj/prrte/examples

CPPFLAGS = $(INCLUDES)

CC = pcc

workflow-1.x: workflow-1.o
	pcc -o $(@) $(<)
