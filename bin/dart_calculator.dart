import 'dart:convert';
import 'dart:io';

var n1;
var n2;
var result;
var typeExpression;
var typeExpressionToInt = 0;
double n1ToDouble = 0;
double n2ToDouble = 0;

// Functions
void choiceMathOperation() {
  print(
      "Digite a numeração da sua escolha:\n1- Soma\n2- Subtração\n3- Divisão\n4- Multiplicação");

  typeExpression = stdin.readLineSync(encoding: utf8);

  try {
    typeExpressionToInt = int.parse(typeExpression);
  } catch (e) {
    print('Essa opção não existe. Tente novamente.');
    choiceMathOperation();
  }

  if (typeExpressionToInt == 1 ||
      typeExpressionToInt == 2 ||
      typeExpressionToInt == 3 ||
      typeExpressionToInt == 4) {
  } else {
    print('Essa opção não existe. Tente novamente.');
    choiceMathOperation();
  }
}

void choiceFirstNumber() {
  print("Digite o primeiro número:");
  var n1 = stdin.readLineSync(encoding: utf8);

  try {
    n1ToDouble = double.parse(n1 ?? "0.0");
  } catch (e) {
    print("Apenas números são permitidos, tente novamente.");
    choiceFirstNumber();
  }
}

void choiceSecondNumber() {
  print("Digite o segundo número:");
  var n2 = stdin.readLineSync(encoding: utf8);

  try {
    n2ToDouble = double.parse(n2 ?? "0.0");
  } catch (e) {
    print("Apenas números são permitidos, tente novamente.");
    choiceFirstNumber();
  }
}

sum(number1, number2) {
  result = "O resultado da soma é ${number1 + number2}";
  return result;
}

sub(number1, number2) {
  result = "O resultado da subtração é ${number1 - number2}";
  return result;
}

mult(number1, number2) {
  result = "O resultado da multiplicação é ${number1 * number2}";
  return result;
}

div(number1, number2) {
  result = "O resultado da divisão é ${number1 / number2}";
  return result;
}

void main(List<String> arguments) {
  print("Bem vindo a calculadora Dart");
  print("Que tipo de operação você deseja fazer com 2 números?");

  choiceMathOperation();

  choiceFirstNumber();

  choiceSecondNumber();

  switch (typeExpressionToInt) {
    case 1:
      sum(n1ToDouble, n2ToDouble);
      break;
    case 2:
      sub(n1ToDouble, n2ToDouble);
      break;
    case 3:
      div(n1ToDouble, n2ToDouble);
      break;
    case 4:
      mult(n1ToDouble, n2ToDouble);
      break;
  }

  print("-----------------------------------");
  print(result);
}
