import 'dart:convert';
import 'dart:io';

void validaEntrada(String entrada){
  if (entrada.trim() == ""){
      throw ArgumentError("Por favor digite uma entrada válida.");
  }
}

String lerConsoleStringComTexto(String texto){
    print(texto);
    return lerConsoleString();
}

String lerConsoleString(){
    var entrada = stdin.readLineSync(encoding: utf8) ?? "0";// se o valor for nulo, vai ser convertido para 0.
    validaEntrada(entrada);
    return entrada;
}

int lerConsoleInt(){
  var entrada = lerConsoleString();
  validaEntrada(entrada);
  return int.parse(entrada);
}

int lerIntComTexto( String texto){
  print(texto);
  return lerConsoleInt();
    }

double lerConsoleDouble(){
    var entrada = lerConsoleString();
    validaEntrada(entrada);
    return double.parse(entrada);
  }

double lerDoubleComTexto( String texto){
  print(texto);
  return lerConsoleDouble();
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