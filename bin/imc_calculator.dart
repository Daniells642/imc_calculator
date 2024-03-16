import 'package:imc_calculator/classes/pessoa.dart';
import 'package:imc_calculator/funcoes/funcoes.dart';

void main(List<String> arguments) {
  var Pessoa1 = Pessoa();

  Pessoa1.setNome(lerConsoleStringComTexto("Digite seu nome:"));
  Pessoa1.setPeso(lerIntComTexto("Digite seu peso: "));
  Pessoa1.setAltura(lerDoubleComTexto("Digite sua altura: "));

  print("Calculando IMC ...");

  print("Olá,  ${Pessoa1.getNome()}");
  print(calcularImc(Pessoa1.getPeso(), Pessoa1.getAltura()).toStringAsFixed(2));
  }
