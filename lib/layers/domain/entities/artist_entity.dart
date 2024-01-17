class ArtistEntity {
  final String name;
  final int age;
  final String nationality;
  final int averageValueOfPaintings;
  ArtistEntity({
    required this.name,
    required this.age,
    required this.nationality,
    required this.averageValueOfPaintings
  });
  
  double get valueOfPaintings{
    return averageValueOfPaintings * 2;
  }
}
