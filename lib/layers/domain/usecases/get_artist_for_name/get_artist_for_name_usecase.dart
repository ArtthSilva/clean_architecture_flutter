import 'package:clean_architecture/layers/domain/entities/artist_entity.dart';

abstract class GetArtistForName{
  ArtistEntity call(String name);
}