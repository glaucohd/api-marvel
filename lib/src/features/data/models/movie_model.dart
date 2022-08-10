import 'package:movies_marvel/src/core/util/util.dart';
import 'package:movies_marvel/src/features/data/models/data_movie_model.dart';
import 'package:movies_marvel/src/features/domain/entities/data_movie_entity.dart';
import 'package:movies_marvel/src/features/domain/entities/movie_entity.dart';

class MovieModel extends MovieEntity {
  MovieModel({
    List<DataMovieEntity>? data,
    int? total,
  }) : super(
          data: data,
          total: total,
        );

  factory MovieModel.fromJson(dynamic json) {
    return MovieModel(
      data: Util.listJson(json['data'])
          .map((element) => DataMovieModel.fromJson(Util.getMapJson(element)))
          .toList(),
      total: Util.intJson(json['total']),
    );
  }
}
