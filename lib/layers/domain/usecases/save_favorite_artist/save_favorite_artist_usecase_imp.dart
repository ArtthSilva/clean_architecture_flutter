import 'package:clean_architecture/layers/domain/entities/artist_entity.dart';
import 'package:clean_architecture/layers/domain/repositories/save_favorite_artist_repository.dart';
import 'package:clean_architecture/layers/domain/usecases/save_favorite_artist/save_favorite_artist_usecase.dart';

class SaveFavoriteArtistUseCaseImp implements SaveFavoriteArtistUseCase {
  final SaveFavoriteArtistRepository _saveFavoriteArtistRepository;

  SaveFavoriteArtistUseCaseImp(this._saveFavoriteArtistRepository);

  @override
  Future<bool> call(ArtistEntity artist) async{
    artist.valueOfPaintings;
   return await _saveFavoriteArtistRepository(artist);
  }
}
