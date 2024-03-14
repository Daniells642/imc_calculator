import 'package:imc_calculator/classes/pessoa.dart';
import 'package:imc_calculator/funcoes/funcoes.dart';

void main(List<String> arguments) {
  var Pessoa1 = Pessoa();

  print("Digite seu nome:");
  Pessoa1.setNome(lerConsole());

  
  print("Digite seu peso:");
  Pessoa1.setPeso(lerConsoleInt());

  print("Digite seu altura:");
  Pessoa1.setAltura(lerConsoleDouble());

  print("Calculando IMC ...");

  //print(Pessoa1.getNome());
  //print(Pessoa1.getPeso());
  //print(Pessoa1.getAltura());

  print("Olá,  ${Pessoa1.getNome()}");
  print(calcularImc(Pessoa1.getPeso(), Pessoa1.getAltura()).toStringAsFixed(2));
  


}
