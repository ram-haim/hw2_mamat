# Welcomre to Mamat, 044101
#
# This is the project's Makefile. It contains the instructions for compiling
# the projects C files, and then link the generated objects into an executable.
# This simple file will compile "main.c" to "main.o" and then link it (with C
# runtime library) to the executable "prog.exe".
#
# To compile, open the terminal in the folder that contains
# this file and run "make".
#
# To clean, open the terminal in the folder that contains
# this file and run "make clean".
#
# All eclipse projects in this machine are under /home/mamat/Documents/

CC = gcc
CFLAGS = -Wall -g -std=c99
CCLINK = $(CC)
OBJS = main.o  file0.o file1.o file2.o file3.o file4.o
EXEC = prog.exe
RM  = rm -rf
all :	$(OBJS)
	$(CCLINK)	$(OBJS) -o $(EXEC)
file0.o: file0.c file0.h file3.h file4.h
	$(CC)	$(CFLAGS) -c file0.c
file1.o: file1.c file1.h file3.h
	$(CC)	$(CFLAGS) -c file1.c
file2.o: file2.c file2.h file0.h file1.h file4.h
	$(CC)	$(CFLAGS) -c file2.c
file3.o: file3.c file0.h file3.h 
	$(CC)	$(CFLAGS) -c file3.c
file4.o: file4.c file4.h file1.h file2.h file3.h 
	$(CC)	$(CFLAGS) -c file4.c

clean:
	$(RM) *.o *.exe
