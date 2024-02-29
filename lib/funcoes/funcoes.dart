import 'dart:convert';
import 'dart:io';

String lerConsole(){
    var line = stdin.readLineSync(encoding: utf8);
    return line ?? "0";// se o valor for nulo, vai ser convertido para 0.
}

int lerConsoleInt(){
    var line = stdin.readLineSync(encoding: utf8);
    var lineInt = int.parse(line ?? "0");// se o valor for nulo, vai ser convertido para 0.
    return lineInt;
}

double lerConsoleDouble(){
    var line = stdin.readLineSync(encoding: utf8);
    var lineDouble = double.parse(line ?? "0");// se o valor for nulo, vai ser convertido para 0.
    return lineDouble;
}
double calcularImc(int peso, double altura) {

  double imc = 0;

  imc = peso / (altura * altura);


  switch (imc) {
    case < 16:
      print('Classificação: Magreza grave');
      break;
    case < 17:
      print('Classificação: Magreza moderada');
      break;
    case < 18.5:
      print('Classificação: Magreza leve');
      break;
    case < 25:
      print('Classificação: Magreza saudável');
      break;
    case < 30:
      print('Classificação: Sobrepeso');
      break;
      case < 35:
      print('Classificação: Obesidade Grau I');
      break;
      case < 40:
      print('Classificação: Obesidade Grau II');
      break;
      case >= 40:
      print('Classificação: Obesidade Grau III');
      break;
    default:
      print('Operação inválida');
  }
  return imc;

}