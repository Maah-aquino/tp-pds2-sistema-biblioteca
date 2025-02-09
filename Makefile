CC := g++
FLAGS := -I include/ -Wall
LFLAGS := -lm
BUILDDIR := build
SRCDIR := src
TARGET := main.out


all: clean main
	$(CC) $(FLAGS) $(LFLAGS) $(BUILDDIR)/*.o -o $(TARGET)

main: menu usuarios cliente bibliotecario estante prateleira livro
	$(CC) $(FLAGS) -c $(SRCDIR)/main.cpp -o $(BUILDDIR)/main.o

menu:
	$(CC) $(FLAGS) -c $(SRCDIR)/menu.cpp -o $(BUILDDIR)/menu.o

usuarios:
	$(CC) $(FLAGS) -c $(SRCDIR)/usuarios.cpp -o $(BUILDDIR)/usuarios.o

cliente:
	$(CC) $(FLAGS) -c $(SRCDIR)/cliente.cpp -o $(BUILDDIR)/cliente.o

bibliotecario:
	$(CC) $(FLAGS) -c $(SRCDIR)/bibliotecario.cpp -o $(BUILDDIR)/bibliotecario.o

estante:
	$(CC) $(FLAGS) -c $(SRCDIR)/estante.cpp -o $(BUILDDIR)/estante.o

prateleira:
	$(CC) $(FLAGS) -c $(SRCDIR)/prateleira.cpp -o $(BUILDDIR)/prateleira.o

livro:
	$(CC) $(FLAGS) -c $(SRCDIR)/livro.cpp -o $(BUILDDIR)/livro.o

clean:
	rm -rf build/*.o
	rm -rf $(TARGET)
