import 'package:clean_architecture/layers/domain/entities/artist_entity.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('the artist must not be null ', () {
    ArtistEntity artistEntity = ArtistEntity(
        name: 'art',
        age: 12,
        nationality: 'brazilian',
        averageValueOfPaintings: 12);
    expect(artistEntity, isNotNull);
  });

  test('the value of the paintings must be 24 ', () {
    ArtistEntity artistEntity = ArtistEntity(
        name: 'art',
        age: 12,
        nationality: 'brazilian',
        averageValueOfPaintings: 12);

        artistEntity.valueOfPaintings;
       int expectedValue = 24;
    expect(artistEntity.valueOfPaintings, expectedValue);
  });  
  
  test('the value of paintings must be 0', () {
    ArtistEntity artistEntity = ArtistEntity(
        name: 'art',
        age: 12,
        nationality: 'brazilian',
        averageValueOfPaintings: 0);

        artistEntity.valueOfPaintings;
       int expectedValue = 0;
    expect(artistEntity.valueOfPaintings, expectedValue);
  });
}
