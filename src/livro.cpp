void Livro::exibirInformacoes(){
	cout << "Identificador: " << Livro::getIdLivro() << endl;
		cout << "Autor" << Livro::getAUtorLivro() << endl;
	cout << "Título: " << Livro::getNomeLivro()  << endl;
	cout << "Edição: " << Livro::getEdicaoLivro() << endl;
	cout << "Assunto: " << Livro::getAssuntoLivro() << endl;
	cout << "Quantidade Total: " << Livro::getQtdeLivro() << endl;
}
