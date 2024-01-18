import 'package:clean_architecture/layers/data/datasources/get_artist_for_name_datasource.dart';
import 'package:clean_architecture/layers/data/datasources/local/get_artist_for_name_local_datasource_imp.dart';
import 'package:clean_architecture/layers/data/repositories/get_artist_for_name_repository_imp.dart';
import 'package:clean_architecture/layers/domain/entities/artist_entity.dart';
import 'package:clean_architecture/layers/domain/usecases/get_artist_for_name/get_artist_for_name_usecase.dart';
import 'package:clean_architecture/layers/domain/usecases/get_artist_for_name/get_artist_for_name_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  GetArtistForNameDataSource dataSource = GetArtistForNameLocalDataSourceImp();
  test('must return an instance of artist entity', () {
    GetArtistForNameUseCase useCase = GetArtistForNameUseCaseImp(
        getArtistForNameRepository: GetArtistForNameRepositoryImp(
            getArtistForNameDataSource: dataSource));

    var result = useCase('test');

    expect(result, isInstanceOf<ArtistEntity>());
  });

  test('must return Italian nationality when parameter is "michelangelo"', () {
    GetArtistForNameUseCase useCase = GetArtistForNameUseCaseImp(
        getArtistForNameRepository: GetArtistForNameRepositoryImp(
            getArtistForNameDataSource: dataSource));

    var result = useCase('michelangelo');

    expect(result.nationality, 'italian');
  });

  test('must return "arthur" with any parameter except "michelangelo"', () {
    GetArtistForNameUseCase useCase = GetArtistForNameUseCaseImp(
        getArtistForNameRepository: GetArtistForNameRepositoryImp(
            getArtistForNameDataSource: dataSource));

    var result = useCase('asdadad');

    expect(result.name, 'arthur');
  });
}
