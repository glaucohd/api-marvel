import 'package:movies_marvel/src/features/data/datasources/movie_datasource.dart';
import 'package:movies_marvel/src/features/domain/entities/movie_entity.dart';
import 'package:movies_marvel/src/features/domain/repositories/movie_repository.dart';

class MovieRepositoryImpl implements MovieRepository {
  final MovieDatasource datasource;

  MovieRepositoryImpl({required this.datasource});

  @override
  Future<MovieEntity> getMoviesMarvelList() async {
    final response = await datasource.getMoviesMarvelList();
    return MovieEntity(
      data: response.data,
      total: response.total,
    );
  }
}
