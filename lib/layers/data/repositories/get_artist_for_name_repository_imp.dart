import 'package:clean_architecture/layers/data/dto/artist_dto.dart';
import 'package:clean_architecture/layers/domain/entities/artist_entity.dart';
import 'package:clean_architecture/layers/domain/repositories/get_artist_for_name_repository.dart';

class GetArtistForNameRepositoryImp implements GetArtistForNameRepository {
  @override
  ArtistEntity call(String artist) {
    //fingindo chamada de API
    var json = {
        'artistName': 'michelangelo',
      'artistAge': 23,
      'artistNationality': 'italian',
      'averageOfPaintings': 2323
    };
  return ArtistDTO.fromMap(json);
     
}
}