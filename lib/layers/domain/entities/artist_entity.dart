class ArtistEntity {
  final String name;
  final int age;
  final String nationality;
  final int numberOfPaintings;
  ArtistEntity({
    required this.name,
    required this.age,
    required this.nationality,
    required this.numberOfPaintings
  });
  
  double get valueOfPaintings{
    return numberOfPaintings * 1000;
  }
}
