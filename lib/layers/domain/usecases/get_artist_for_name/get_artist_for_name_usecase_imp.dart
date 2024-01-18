import 'package:clean_architecture/layers/domain/entities/artist_entity.dart';
import 'package:clean_architecture/layers/domain/repositories/get_artist_for_name_repository.dart';
import 'package:clean_architecture/layers/domain/usecases/get_artist_for_name/get_artist_for_name_usecase.dart';

class GetArtistForNameUseCaseImp implements GetArtistForNameUseCase {
  final GetArtistForNameRepository _getArtistForNameRepository;

  GetArtistForNameUseCaseImp({required GetArtistForNameRepository getArtistForNameRepository}) : _getArtistForNameRepository = getArtistForNameRepository;
  @override
  ArtistEntity call(String name) {
    return  _getArtistForNameRepository(name);
  }
}

