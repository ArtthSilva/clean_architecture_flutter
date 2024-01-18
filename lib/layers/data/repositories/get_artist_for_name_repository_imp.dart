import 'package:clean_architecture/layers/data/datasources/get_artist_for_name_datasource.dart';
import 'package:clean_architecture/layers/domain/entities/artist_entity.dart';
import 'package:clean_architecture/layers/domain/repositories/get_artist_for_name_repository.dart';

class GetArtistForNameRepositoryImp implements GetArtistForNameRepository {
  final GetArtistForNameDataSource _getArtistForNameDataSource;

  GetArtistForNameRepositoryImp({required GetArtistForNameDataSource getArtistForNameDataSource}) : _getArtistForNameDataSource = getArtistForNameDataSource;
  @override
  ArtistEntity call(String artist) {
  return _getArtistForNameDataSource(artist);
     
}
}