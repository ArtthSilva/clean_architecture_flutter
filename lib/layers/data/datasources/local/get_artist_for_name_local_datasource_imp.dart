import 'package:clean_architecture/layers/data/datasources/get_artist_for_name_datasource.dart';
import 'package:clean_architecture/layers/data/dto/artist_dto.dart';

class GetArtistForNameLocalDataSourceImp  implements GetArtistForNameDataSource{

  final jsonMichelangelo= {
        'artistName': 'michelangelo',
      'artistAge': 23,
      'artistNationality': 'italian',
      'averageOfPaintings': 2323
    };
  final jsonAny= {
        'artistName': 'arthur',
      'artistAge': 19,
      'artistNationality': 'br',
      'averageOfPaintings': 123
    };

  @override
  ArtistDTO call(String name) {
    if (name.contains('michelangelo')) {
      return ArtistDTO.fromMap(jsonMichelangelo);
    }
   return ArtistDTO.fromMap(jsonAny);
  }
  
}