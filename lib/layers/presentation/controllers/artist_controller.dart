import 'package:clean_architecture/layers/domain/entities/artist_entity.dart';
import 'package:clean_architecture/layers/domain/usecases/get_artist_for_name/get_artist_for_name_usecase.dart';
import 'package:clean_architecture/layers/domain/usecases/save_favorite_artist/save_favorite_artist_usecase.dart';

class ArtistController {
  final GetArtistForNameUseCase _getArtistForNameUseCase;
  final SaveFavoriteArtistUseCase _saveFavoriteArtistUseCase;

  ArtistController(this._getArtistForNameUseCase, this._saveFavoriteArtistUseCase){
    getArtistForName('michelangelo');
  }

  late ArtistEntity artist;

  getArtistForName(String name) {
    artist = _getArtistForNameUseCase(name);
  }

  saveFavoriteArtist(ArtistEntity artistEntity) async {
    var result = await _saveFavoriteArtistUseCase(artistEntity);
  }
}
