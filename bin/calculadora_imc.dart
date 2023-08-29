import 'dart:io';

void main() {
  print("Bem-vindo a calculadora de IMC");

  print("Digite o seu nome:");
  String nome = stdin.readLineSync()!;

  print("Digita o seu peso em quilogramas");
  double peso = double.parse(stdin.readLineSync()!);

  print("Digite a sua altura em metros");
  double altura = double.parse(stdin.readLineSync()!);

  double calcularIMC(double peso, double altura) {
    return peso / (altura * altura);
  }

  double imc = calcularIMC(peso, altura);

  String interpretarIMC(double imc) {
    if (imc < 16.0) {
      return "Magreza grave";
    } else if (imc < 16.9) {
      return "Magreza moderada";
    } else if (imc < 18.4) {
      return "Magreza leve";
    } else if (imc < 24.9) {
      return "Saudável";
    } else if (imc < 29.9) {
      return "Sobrepeso";
    } else if (imc < 34.9) {
      return "Obesidade grau I";
    } else if (imc < 39.9) {
      return "Obesidade grau II";
    } else {
      return "Obesidade grau III";
    }
  }

  String interpretacao = interpretarIMC(imc);

  print(
      '${nome.toString().toUpperCase()} sua altura é ${altura.toString()} e seu peso é ${peso.toString()}Kg, avaliando esses dados você está $interpretacao');
}
