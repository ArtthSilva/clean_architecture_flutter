import 'package:clean_architecture/layers/domain/entities/artist_entity.dart';

abstract class GetArtistForNameUseCase{
  ArtistEntity call(String name);
}