// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:clean_architecture/layers/domain/entities/artist_entity.dart';

class ArtistDTO extends ArtistEntity {
  String artistName;
  int artistAge;
  String artistNationality;
  int averageOfPaintings;
  ArtistDTO({
    required this.artistName,
    required this.artistAge,
    required this.artistNationality,
    required this.averageOfPaintings,
  }) : super(
            name: artistName,
            age: artistAge,
            nationality: artistNationality,
            averageValueOfPaintings: averageOfPaintings);

  Map toMap() {
    return {
      'artistName': artistName,
      'artistAge': artistAge,
      'artistNationality': artistNationality,
      'averageOfPaintings': averageOfPaintings
    };
  }

  ArtistDTO fromMap(Map map) {
    return ArtistDTO(
      artistName: map['artistName'],
      artistAge: map['artistAge'],
      artistNationality: map['artistNationality'],
      averageOfPaintings: map['averageOfPaintings'],
    );
  }
}
