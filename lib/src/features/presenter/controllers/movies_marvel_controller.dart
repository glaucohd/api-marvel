import 'package:flutter/foundation.dart';
import 'package:movies_marvel/src/features/domain/usecases/get_movies_marvel_usecase.dart';

class MoviesMarvelController extends ChangeNotifier {
  final GetMoviesMarvelUsecase getMoviesMarvelUsecase;
  MoviesMarvelController({
    required this.getMoviesMarvelUsecase,
  });

  Future<void> init() async {
    final response = await getMoviesMarvelUsecase();
  }
}
