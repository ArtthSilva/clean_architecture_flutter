import 'package:clean_architecture/layers/data/datasources/get_artist_for_name_datasource.dart';
import 'package:clean_architecture/layers/data/datasources/local/get_artist_for_name_local_datasource_imp.dart';
import 'package:clean_architecture/layers/data/repositories/get_artist_for_name_repository_imp.dart';
import 'package:clean_architecture/layers/data/repositories/save_favorite_artist_repository_imp.dart';
import 'package:clean_architecture/layers/domain/repositories/get_artist_for_name_repository.dart';
import 'package:clean_architecture/layers/domain/repositories/save_favorite_artist_repository.dart';
import 'package:clean_architecture/layers/domain/usecases/get_artist_for_name/get_artist_for_name_usecase.dart';
import 'package:clean_architecture/layers/domain/usecases/get_artist_for_name/get_artist_for_name_usecase_imp.dart';
import 'package:clean_architecture/layers/domain/usecases/save_favorite_artist/save_favorite_artist_usecase.dart';
import 'package:clean_architecture/layers/domain/usecases/save_favorite_artist/save_favorite_artist_usecase_imp.dart';
import 'package:clean_architecture/layers/presentation/controllers/artist_controller.dart';
import 'package:get_it/get_it.dart';

class Inject {
  static void init() {
  GetIt getIt = GetIt.instance;
    //datasources
    getIt.registerLazySingleton<GetArtistForNameDataSource>(
        () => GetArtistForNameLocalDataSourceImp());
    //repositories
    getIt.registerLazySingleton<GetArtistForNameRepository>(() =>
        GetArtistForNameRepositoryImp(getArtistForNameDataSource: getIt()));

    getIt.registerLazySingleton<SaveFavoriteArtistRepository>(
        () => SaveFavoriteArtistRepositoryImp());
    //usecases
    getIt.registerLazySingleton<GetArtistForNameUseCase>(
        () => GetArtistForNameUseCaseImp(getArtistForNameRepository: getIt()));

    getIt.registerLazySingleton<SaveFavoriteArtistUseCase>(
        () => SaveFavoriteArtistUseCaseImp(getIt()));
    //controllers
    getIt.registerFactory<ArtistController>(
        () => ArtistController(getIt(), getIt()));
  }
}
