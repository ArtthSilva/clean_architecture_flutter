import 'package:clean_architecture/layers/domain/entities/artist_entity.dart';
import 'package:clean_architecture/layers/domain/repositories/save_favorite_artist_repository.dart';

class SaveFavoriteArtistRepositoryImp implements SaveFavoriteArtistRepository {
  @override
  Future<bool> call(ArtistEntity artist) async {
    return artist.averageValueOfPaintings > 0;
  }
}