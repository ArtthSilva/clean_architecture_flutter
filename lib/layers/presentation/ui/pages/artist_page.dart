import 'package:clean_architecture/layers/data/datasources/local/get_artist_for_name_local_datasource_imp.dart';
import 'package:clean_architecture/layers/data/repositories/get_artist_for_name_repository_imp.dart';
import 'package:clean_architecture/layers/data/repositories/save_favorite_artist_repository_imp.dart';
import 'package:clean_architecture/layers/domain/usecases/get_artist_for_name/get_artist_for_name_usecase_imp.dart';
import 'package:clean_architecture/layers/domain/usecases/save_favorite_artist/save_favorite_artist_usecase_imp.dart';
import 'package:clean_architecture/layers/presentation/controllers/artist_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ArtistPage extends StatelessWidget {
   ArtistPage({super.key});
  
  ArtistController controller = ArtistController(
    GetArtistForNameUseCaseImp(
    getArtistForNameRepository: GetArtistForNameRepositoryImp(
    getArtistForNameDataSource: GetArtistForNameLocalDataSourceImp())),
    SaveFavoriteArtistUseCaseImp(SaveFavoriteArtistRepositoryImp()));


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(controller.artist.name),
      ),
    );
  }
}