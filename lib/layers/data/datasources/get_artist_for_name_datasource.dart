import 'package:clean_architecture/layers/data/dto/artist_dto.dart';

abstract class GetArtistForNameDataSource {
  ArtistDTO call(String name);
}