import 'package:calculadora_imc/calculadora_imc.dart';
import 'package:calculadora_imc/classes/calculadora.dart';
import 'package:calculadora_imc/classes/pessoa.dart';
import 'package:calculadora_imc/utils/tabelaIMC.dart';
import 'package:test/test.dart';

void main() {
  late Calculadora calculadoraIMC;
  setUp(() {
    calculadoraIMC = Calculadora();
  });
  test('Deve Retornar Magreza Grave', () {
    //Arrange
    const expected = TabelaIMC.magrezaGrave;
    final pessoa = Pessoa("Joao", 45, 2.0);

    //Act
    final result = calculadoraIMC.calculaIMC(pessoa);

    //Assert
    expect(result, expected);
  });
  test('Deve Retornar Magreza Moderada', () {
    //Arrange
    const expected = TabelaIMC.magrezaModerada;
    final pessoa = Pessoa("Carol", 64, 2.0);

    //Act
    final result = calculadoraIMC.calculaIMC(pessoa);

    //Assert
    expect(result, expected);
  });
  test('Deve Retornar Magreza Leve', () {
    //Arrange
    const expected = TabelaIMC.magrezaLeve;
    final pessoa = Pessoa("Paulo", 71, 2.0);

    //Act
    final result = calculadoraIMC.calculaIMC(pessoa);

    //Assert
    expect(result, expected);
  });
  test('Deve Retornar Saudavel', () {
    //Arrange
    const expected = TabelaIMC.saudavel;
    final pessoa = Pessoa("Matheus", 95, 2.0);

    //Act
    final result = calculadoraIMC.calculaIMC(pessoa);

    //Assert
    expect(result, expected);
  });
  test('Deve Retornar Sobrepeso', () {
    //Arrange
    const expected = TabelaIMC.sobrepeso;
    final pessoa = Pessoa("Rafael", 110, 2.0);

    //Act
    final result = calculadoraIMC.calculaIMC(pessoa);

    //Assert
    expect(result, expected);
  });
  test('Deve Retornar Obesidade Grau 1', () {
    //Arrange
    const expected = TabelaIMC.obesidadeGrau1;
    final pessoa = Pessoa("Rafael", 134, 2.0);

    //Act
    final result = calculadoraIMC.calculaIMC(pessoa);

    //Assert
    expect(result, expected);
  });
  test('Deve Retornar Obesidade Grau 2', () {
    //Arrange
    const expected = TabelaIMC.obesidadeGrau2;
    final pessoa = Pessoa("Emanuel", 156, 2.0);

    //Act
    final result = calculadoraIMC.calculaIMC(pessoa);

    //Assert
    expect(result, expected);
  });
  test('Deve Retornar Obesidade Grau 3', () {
    //Arrange
    const expected = TabelaIMC.obesidadeGrau3;
    final pessoa = Pessoa("Cesar", 190, 2.0);

    //Act
    final result = calculadoraIMC.calculaIMC(pessoa);

    //Assert
    expect(result, expected);
  });
}