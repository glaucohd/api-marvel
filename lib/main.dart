import 'package:flutter/material.dart';
import 'package:movies_marvel/src/features/data/datasources/movie_datasource_imp.dart';
import 'package:movies_marvel/src/features/data/repositories/movie_repository_impl.dart';
import 'package:movies_marvel/src/features/domain/usecases/get_movies_marvel_usecase.dart';
import 'package:movies_marvel/src/features/presenter/controllers/movies_marvel_controller.dart';
import 'package:movies_marvel/src/features/presenter/pages/movies_marvel_page.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => MoviesMarvelController(
            getMoviesMarvelUsecase: GetMoviesMarvelUsecase(
              repository: MovieRepositoryImpl(
                datasource: MovieDatasourceImpl(
                  client: http.Client(),
                ),
              ),
            ),
          ),
        ),
      ],
      child: const App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MoviesMarvelPage(),
    );
  }
}
