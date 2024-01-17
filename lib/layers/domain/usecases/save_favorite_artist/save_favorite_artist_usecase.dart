import 'package:clean_architecture/layers/domain/entities/artist_entity.dart';

abstract class SaveFavoriteArtistUseCase {
   Future<bool> call(ArtistEntity artist);
}