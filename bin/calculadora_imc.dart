import 'dart:convert';
import 'dart:io';

import 'package:calculadora_imc/classes/calculadora.dart';
import 'package:calculadora_imc/classes/pessoa.dart';

void main(List<String> arguments) {
  Calculadora calculadoraIMC = Calculadora();

  final nomePessoa = leEntradaNomeValido(
      "Digite o seu nome: ",
      "Nome inválido"
          "nulo");
  final pesoPessoa = leEntradaDouble(
      "Digite o seu peso em Quilos, exemplo 70: ",
      "O peso precisa ser maior "
          "ou igual a 1",
      valorMinimo: 1);
  final alturaPessoa = leEntradaDouble(
      "Digite a sua altura em metros, exemplo 1.80: ",
      "A sua altura precisa ser maior ou igual a 0.1",
      valorMinimo: 0.1);
  var pessoa = Pessoa(nomePessoa, pesoPessoa, alturaPessoa);
  print(pessoa);
  print(calculadoraIMC.calculaIMC(pessoa));
}

double leEntradaDouble(String mensagem, String mensagemEntradaInvalida,
    {double? valorMinimo, double? valorMaximo}) {
  late double? valor;
  do {
    print(mensagem);
    var input = stdin.readLineSync(encoding: utf8);
    valor = double.tryParse(input ?? "");
    if (valor == null ||
        (valorMinimo != null && valor < valorMinimo) ||
        (valorMaximo != null && valor > valorMaximo)) {
      valor = null;
      print(mensagemEntradaInvalida);
    }
  } while (valor == null);
  return valor;
}

String leEntradaNomeValido(String mensagem, String mensagemEntradaInvalida) {
  String? valor;
  do {
    print(mensagem);
    valor = stdin.readLineSync(encoding: utf8);
    if (valor == null || !somenteNomeEspacos(valor)) {
      valor = null;
      print(mensagemEntradaInvalida);
    }
  } while (valor == null);
  return valor;
}

bool somenteNomeEspacos(String nome) {
  String regex = r"[a-zA-Zá-úÁ-Ú ]*";
  RegExp exp = RegExp(regex);
  RegExpMatch? match = exp.firstMatch(nome);
  if (match == null) {
    return false;
  } else {
    if (match[0]!.compareTo(nome) == 0) {
      return true;
    }
  }
  return false;
}
