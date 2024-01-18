import 'package:clean_architecture/layers/domain/entities/artist_entity.dart';

abstract class GetArtistForNameRepository {
  ArtistEntity call(String artist);  
}