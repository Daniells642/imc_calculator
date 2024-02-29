class Pessoa {
    String _nome = "";
    int _peso = 0;
    double _altura = 0.0;


void setNome(String nome) {
    _nome = nome;
  }

  String getNome() {
    return _nome;
  }

  void setPeso(int peso) {
    _peso = peso;
  }

  int getPeso() {
    return _peso;
  }

  void setAltura(double altura) {
    _altura = altura;
  }

  double getAltura() {
    return _altura;
  }

  @override
  String toString() {
    return {
      "Nome": _nome,
      "Peso": _peso,
      "Altura": _altura
    }.toString();
  }

}