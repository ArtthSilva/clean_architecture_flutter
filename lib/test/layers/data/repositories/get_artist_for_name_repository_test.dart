import 'package:clean_architecture/layers/data/datasources/get_artist_for_name_datasource.dart';
import 'package:clean_architecture/layers/data/datasources/local/get_artist_for_name_local_datasource_imp.dart';
import 'package:clean_architecture/layers/data/repositories/get_artist_for_name_repository_imp.dart';
import 'package:clean_architecture/layers/domain/repositories/get_artist_for_name_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  GetArtistForNameDataSource dataSource = GetArtistForNameLocalDataSourceImp();
    GetArtistForNameRepository repository = GetArtistForNameRepositoryImp(
      getArtistForNameDataSource: dataSource,
    );

  test('should not return null', () {
    var test = repository('michelangelo');

    expect(test, isNotNull);
  });
  test('should return "michelangelo"', () {
    var test = repository('michelangelo');

    expect(test.name, "michelangelo");
  });
}
