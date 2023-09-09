import 'dart:io';

void main() {
  stdout.write("Digite o seu peso (em kg): ");
  String pesoInput = stdin.readLineSync()!;
  double peso = double.parse(pesoInput);

  stdout.write("Digite a sua altura (em metros): ");
  String alturaInput = stdin.readLineSync()!;
  double altura = double.parse(alturaInput);

  double imc = calcularIMC(peso, altura);

  imprimirResultado(imc);
}

double calcularIMC(double peso, double altura) {
  return peso / (altura * altura);
}

void imprimirResultado(double imc) {
  print("Seu IMC é: $imc");

  if (imc < 18.5) {
    print("Você está abaixo do peso.");
  } else if (imc < 24.9) {
    print("Seu peso está saudável.");
  } else if (imc < 29.9) {
    print("Você está com sobrepeso.");
  } else if (imc < 34.9) {
    print("Você está com obesidade grau 1.");
  } else if (imc < 39.9) {
    print("Você está com obesidade grau 2.");
  } else {
    print("Você está com obesidade grau 3 (obesidade mórbida).");
  }
}
