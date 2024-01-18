import 'package:clean_architecture/layers/data/repositories/get_artist_for_name_repository_imp.dart';
import 'package:clean_architecture/layers/domain/repositories/get_artist_for_name_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('nao deve retornar nulo', () {
    GetArtistForNameRepository getArtistForNameRepository = GetArtistForNameRepositoryImp();
    var test = getArtistForNameRepository('michelangelo');

  expect(test, isNotNull);
  });
  test('deve retornar "michelangelo"', () {
    GetArtistForNameRepository getArtistForNameRepository = GetArtistForNameRepositoryImp();
    var test = getArtistForNameRepository('michelangelo');

  expect(test.name, "michelangelo");
  });
}