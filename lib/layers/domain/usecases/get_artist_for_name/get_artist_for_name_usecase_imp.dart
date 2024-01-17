import 'package:clean_architecture/layers/domain/entities/artist_entity.dart';
import 'package:clean_architecture/layers/domain/usecases/get_artist_for_name/get_artist_for_name_usecase.dart';

class GetArtistForNameImp implements GetArtistForName{
  @override
  ArtistEntity call(String name) {
    if (name.contains('michelangelo')) {
      return ArtistEntity(name: 'michelangelo', age: 99, nationality: 'italian', numberOfPaintings: 999);
    }
 return ArtistEntity(name: 'arthur', age: 19, nationality: 'br', numberOfPaintings: 999);
  }
}