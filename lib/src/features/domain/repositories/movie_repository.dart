import 'package:movies_marvel/src/features/domain/entities/movie_entity.dart';

abstract class MovieRepository {
  Future<MovieEntity> getMoviesMarvelList();
}