import 'package:clean_architecture/layers/presentation/controllers/artist_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';

class ArtistPage extends StatelessWidget {
  ArtistPage({super.key});

  ArtistController controller = GetIt.I.get<ArtistController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(controller.artist.name),
      ),
    );
  }
}
