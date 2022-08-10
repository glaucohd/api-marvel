import 'package:movies_marvel/src/features/domain/entities/movie_entity.dart';
import 'package:movies_marvel/src/features/domain/repositories/movie_repository.dart';

class GetMoviesMarvelUsecase {
  final MovieRepository repository;
  GetMoviesMarvelUsecase({required this.repository});

  Future<MovieEntity>call() async {
    return repository.getMoviesMarvelList();
  }
}