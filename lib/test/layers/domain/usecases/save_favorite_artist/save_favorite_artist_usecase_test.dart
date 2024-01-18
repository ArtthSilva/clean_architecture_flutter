import 'package:clean_architecture/layers/data/repositories/save_favorite_artist_repository_imp.dart';
import 'package:clean_architecture/layers/domain/entities/artist_entity.dart';
import 'package:clean_architecture/layers/domain/usecases/save_favorite_artist/save_favorite_artist_usecase.dart';
import 'package:clean_architecture/layers/domain/usecases/save_favorite_artist/save_favorite_artist_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';



void main() {
  test('save the artist successfully', () async{
    SaveFavoriteArtistUseCase useCase =
        SaveFavoriteArtistUseCaseImp(SaveFavoriteArtistRepositoryImp());

    var artist = ArtistEntity(
        name: 'art',
        age: 12,
        nationality: 'brazilian',
        averageValueOfPaintings: 12);

    var result = await useCase(artist);

    expect(result, true);
  });
  test('Do not save the artist when the Average Value of paintings is less than 0', () async{
    SaveFavoriteArtistUseCase useCase =
        SaveFavoriteArtistUseCaseImp(SaveFavoriteArtistRepositoryImp());

    var artist = ArtistEntity(
        name: 'art',
        age: 12,
        nationality: 'brazilian',
        averageValueOfPaintings: -1);

    var result = await useCase(artist);

    expect(result, false);
  });
}
