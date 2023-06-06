import 'package:calculadora_imc/classes/pessoa.dart';
import 'package:calculadora_imc/utils/exceptions.dart';
import 'package:test/test.dart';

void main() {
  test('Criar pessoa', () {
    const expnome = 'Jose';
    const expaltura = 1.82;
    const exppeso = 82.0;

    //Act
    final pessoa = Pessoa(expnome, exppeso, expaltura);

    //Assert
    expect(pessoa.getNome(), expnome);
    expect(pessoa.getPeso(), exppeso);
    expect(pessoa.getAltura(), expaltura);
  });
  test('PessoaExpection', () {
    //Arrange
    const expectedException = TypeMatcher<PessoaException>();

    //Assert
    expect(() => Pessoa("", 0.0, 0.0), throwsA(expectedException));
  });
  test('Novo nome', () {
    //Arrange
    const expectedNewNome = "weskley";
    final pessoa = Pessoa("juan", 70, 1.7);
    //Act
    pessoa.setNome(expectedNewNome);

    expect(pessoa.getNome(), expectedNewNome);
  });

  test('NomeVazioException', () {
    //Arrange
    const newNome = "";
    const expectedException = TypeMatcher<NomeNuloException>();
    final pessoa = Pessoa("Paulo", 70, 1.7);

    //Act
    expect(() => pessoa.setNome(newNome), throwsA(expectedException));
  });
 

}
