import 'package:calculadora_imc/classes/pessoa.dart';

class Calculadora {
  String calculaIMC(Pessoa pessoa) {
    final imc = pessoa.getPeso() / (pessoa.getAltura() * 2);
    if (imc < 16) {
      return 'Magreza Grave';
    } else if (imc >= 16 && imc < 17) {
      return 'Magreza Moderada';
    } else if (imc >= 17 && imc < 18.5) {
      return 'Magreza Leve';
    } else if (imc >= 18.5 && imc < 25) {
      return 'saudavel';
    } else if (imc >= 25 && imc <= 30) {
      return 'sobrepeso';
    } else if (imc >= 30 && imc < 35) {
      return 'Obesidade Grau 1';
    } else if (imc >= 35 && imc < 40) {
      return 'Obesidade Grau 2';
    } else {
      return 'Obesidade Grau 3';
    }
  }
}
