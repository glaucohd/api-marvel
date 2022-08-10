import 'package:movies_marvel/src/core/util/util.dart';
import 'package:movies_marvel/src/features/domain/entities/data_movie_entity.dart';

class DataMovieModel extends DataMovieEntity {
  DataMovieModel({
    int? id,
    String? title,
    String? releaseDate,
    String? boxOffice,
    int? duration,
    String? overview,
    String? coverUrl,
    String? trailerUrl,
    String? directedBy,
    int? phase,
    String? saga,
    int? chronology,
    int? postCreditScenes,
    String? imdbId,
  }) : super(
          id: id,
          title: title,
          releaseDate: releaseDate,
          boxOffice: boxOffice,
          duration: duration,
          overview: overview,
          coverUrl: coverUrl,
          trailerUrl: trailerUrl,
          directedBy: directedBy,
          phase: phase,
          saga: saga,
          chronology: chronology,
          postCreditScenes: postCreditScenes,
          imdbId: imdbId,
        );

  factory DataMovieModel.fromJson(dynamic json) {
    return DataMovieModel(
      id: Util.intJson(json['id']),
      title: Util.stringJson(json['title']),
      releaseDate: Util.stringJson(json['release_date']),
      boxOffice: Util.stringJson(json['box_office']),
      duration: Util.intJson(json['duration']),
      overview: Util.stringJson(json['overview']),
      coverUrl: Util.stringJson(json['cover_url']),
      trailerUrl: Util.stringJson(json['trailer_url']),
      directedBy: Util.stringJson(json['directed_by']),
      phase: Util.intJson(json['phase']),
      saga: Util.stringJson(json['saga']),
      chronology: Util.intJson(json['chronology']),
      postCreditScenes: Util.intJson(json['post_credit_scenes']),
      imdbId: Util.stringJson(json['imdb_id']),
    );
  }
}
