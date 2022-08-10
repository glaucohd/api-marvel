import 'package:movies_marvel/src/features/domain/entities/data_movie_entity.dart';

class MovieEntity {
  List<DataMovieEntity>? data;
  int? total;

  MovieEntity({
    this.data,
    this.total,
  });
}

