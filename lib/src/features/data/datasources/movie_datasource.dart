import 'package:movies_marvel/src/features/data/models/movie_model.dart';

abstract class MovieDatasource {
  Future<MovieModel> getMoviesMarvelList();
}