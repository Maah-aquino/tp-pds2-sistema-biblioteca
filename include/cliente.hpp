#ifndef CLIENTE_H
#define CLIENTE_H

#include "livro.hpp"
#include "usuarios.hpp"
#include <list>

class Cliente : public Usuario {
  private:
	std::list<Livro *> _livrosEmprestados;
	double _multa;

  public:
	void reservarLivro(Livro *livro);
	void renovarReservar(Livro *livro);
	void pagarMulta(double multa);
	std::list<Cliente> pesquisarReserva(Livro livro);
	int getIdCliente();
	std::list<Livro *> getLivrosEmprestados();
	double getMulta();
	void setTipoUsuario(bool tipoUsuario);
	void setMulta(double multa);
}

#endif